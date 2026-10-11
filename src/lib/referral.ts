import { randomInt } from "crypto";
import { stripe } from "@/lib/stripe";
import { createAdminClient } from "@/lib/supabase/admin";
import { customerBelongsToUser } from "@/app/api/_lib/billing";
import { REF_ALPHABET, REF_CODE_RE } from "@/lib/referral-code";

type Db = ReturnType<typeof createAdminClient>;

// Plafond de mois offerts par parrain (limite les abus).
export const MAX_REWARDS_PER_REFERRER = 12;

function newCode(): string {
  let out = "";
  for (let i = 0; i < 8; i++) out += REF_ALPHABET[randomInt(REF_ALPHABET.length)];
  return out;
}

// Code de parrainage de l'utilisateur, créé au premier appel. Serveur uniquement.
export async function getOrCreateReferralCode(db: Db, userId: string): Promise<string | null> {
  const existing = await db
    .from("referral_codes")
    .select("code")
    .eq("user_id", userId)
    .maybeSingle();
  if (existing.error) return null;
  if (existing.data?.code) return existing.data.code;

  for (let attempt = 0; attempt < 5; attempt++) {
    const code = newCode();
    const { error } = await db.from("referral_codes").insert({ user_id: userId, code });
    if (!error) return code;
    if (error.code === "23505") {
      // Soit le code existe déjà, soit une création concurrente a eu lieu pour cet utilisateur.
      const again = await db
        .from("referral_codes")
        .select("code")
        .eq("user_id", userId)
        .maybeSingle();
      if (again.data?.code) return again.data.code;
      continue;
    }
    return null;
  }
  return null;
}

// Enregistre le parrainage au moment où le filleul lance son premier paiement.
// Renvoie l'identifiant du parrainage à joindre à l'abonnement, ou null.
export async function prepareReferral(
  db: Db,
  userId: string,
  subscriptionStatus: string | null | undefined,
  cookieCode: string | undefined
): Promise<string | null> {
  // Seul un premier abonnement ouvre droit au parrainage.
  if (subscriptionStatus) return null;

  const existing = await db
    .from("referrals")
    .select("id, status")
    .eq("referred_id", userId)
    .maybeSingle();
  if (existing.error) return null;
  if (existing.data) return existing.data.status === "pending" ? existing.data.id : null;

  if (!cookieCode || !REF_CODE_RE.test(cookieCode)) return null;
  const owner = await db
    .from("referral_codes")
    .select("user_id")
    .eq("code", cookieCode)
    .maybeSingle();
  if (owner.error || !owner.data || owner.data.user_id === userId) return null;

  const created = await db
    .from("referrals")
    .insert({ referrer_id: owner.data.user_id, referred_id: userId })
    .select("id")
    .single();
  if (created.error) return null;
  return created.data.id;
}

// Crédit d'un mois de formule Étudiant sur le compte client Stripe du parrain
// (déduit de sa prochaine facture). Lève une erreur en cas d'échec : Stripe rejoue l'événement.
export async function rewardReferral(
  db: Db,
  referralId: string,
  referredUserId: string
): Promise<void> {
  const ref = await db
    .from("referrals")
    .select("id, referrer_id, referred_id, status")
    .eq("id", referralId)
    .maybeSingle();
  if (ref.error) throw new Error(`lecture parrainage impossible (${ref.error.code})`);
  const row = ref.data;
  if (!row || row.status !== "pending" || row.referred_id !== referredUserId) return;

  const rewarded = await db
    .from("referrals")
    .select("id", { count: "exact", head: true })
    .eq("referrer_id", row.referrer_id)
    .eq("status", "rewarded");
  if (rewarded.error) throw new Error(`comptage parrainage impossible (${rewarded.error.code})`);
  if ((rewarded.count ?? 0) >= MAX_REWARDS_PER_REFERRER) {
    await db.from("referrals").update({ status: "capped" }).eq("id", row.id).eq("status", "pending");
    return;
  }

  // Prise en charge atomique : un seul traitement peut passer de pending à rewarded.
  const claim = await db
    .from("referrals")
    .update({ status: "rewarded", rewarded_at: new Date().toISOString() })
    .eq("id", row.id)
    .eq("status", "pending")
    .select("id");
  if (claim.error) throw new Error(`prise en charge du parrainage impossible (${claim.error.code})`);
  if (!claim.data?.length) return;

  try {
    const priceId = process.env.STRIPE_ETUDIANT_PRICE_ID;
    if (!priceId) throw new Error("STRIPE_ETUDIANT_PRICE_ID non défini");
    const price = await stripe.prices.retrieve(priceId);
    if (!price.unit_amount) throw new Error("prix Étudiant sans montant");

    const profile = await db
      .from("profiles")
      .select("stripe_customer_id")
      .eq("id", row.referrer_id)
      .maybeSingle();
    if (profile.error) throw new Error(`lecture profil parrain impossible (${profile.error.code})`);

    let customerId = profile.data?.stripe_customer_id ?? null;
    if (customerId && !(await customerBelongsToUser(customerId, row.referrer_id))) {
      customerId = null;
    }
    if (!customerId) {
      const auth = await db.auth.admin.getUserById(row.referrer_id);
      const customer = await stripe.customers.create(
        {
          email: auth.data.user?.email ?? undefined,
          metadata: { supabase_user_id: row.referrer_id },
        },
        { idempotencyKey: `referrer-customer-${row.referrer_id}` }
      );
      customerId = customer.id;
      await db
        .from("profiles")
        .update({ stripe_customer_id: customerId, updated_at: new Date().toISOString() })
        .eq("id", row.referrer_id);
    }

    await stripe.customers.createBalanceTransaction(
      customerId,
      {
        amount: -price.unit_amount,
        currency: price.currency,
        description: "Parrainage JurisPrép : un mois offert",
        metadata: { referral_id: row.id },
      },
      { idempotencyKey: `referral-credit-${row.id}` }
    );
  } catch (err) {
    // Remet le parrainage en attente pour qu'un nouvel essai puisse le traiter.
    await db
      .from("referrals")
      .update({ status: "pending", rewarded_at: null })
      .eq("id", row.id);
    throw err;
  }
}
