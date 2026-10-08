import { NextRequest, NextResponse } from "next/server";
import { stripe } from "@/lib/stripe";
import { createAdminClient } from "@/lib/supabase/admin";
import type Stripe from "stripe";

type Db = ReturnType<typeof createAdminClient>;

const UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function idOf(ref: string | { id: string } | null | undefined): string | null {
  if (!ref) return null;
  return typeof ref === "string" ? ref : ref.id;
}

function validUserId(value: unknown): string | null {
  return typeof value === "string" && UUID.test(value) ? value : null;
}

// Le plan vient uniquement du prix Stripe, jamais d'une donnée envoyée par le navigateur.
// Prix inconnu : aucun accès n'est accordé.
function planFor(subscription: Stripe.Subscription): "cursus" | "etudiant" | null {
  const prices = subscription.items.data.map((item) => item.price.id);
  const cursus = process.env.STRIPE_CURSUS_PRICE_ID;
  const etudiant = process.env.STRIPE_ETUDIANT_PRICE_ID;
  if (cursus && prices.includes(cursus)) return "cursus";
  if (etudiant && prices.includes(etudiant)) return "etudiant";
  return null;
}

// Abonnement à retenir pour un client : un abonnement en cours prime sur un abonnement
// résilié. Évite qu'un ancien événement (reçu en retard) n'écrase un abonnement plus récent.
const RANK: Record<string, number> = {
  active: 0,
  trialing: 0,
  past_due: 1,
  unpaid: 2,
  paused: 3,
  incomplete: 4,
};

function pickCurrent(subscriptions: Stripe.Subscription[]): Stripe.Subscription | null {
  const live = subscriptions.filter((s) => s.status in RANK);
  live.sort((a, b) => RANK[a.status] - RANK[b.status] || b.created - a.created);
  return live[0] ?? null;
}

// Identité de l'utilisateur : métadonnées posées par notre serveur à la création de
// l'abonnement puis du client Stripe. En dernier recours, un profil déjà lié à ce client,
// accepté seulement s'il est unique.
async function resolveUserId(
  supabase: Db,
  subscription: Stripe.Subscription,
  customerId: string
): Promise<string | null> {
  const fromSubscription = validUserId(subscription.metadata?.supabase_user_id);
  if (fromSubscription) return fromSubscription;

  const customer = await stripe.customers.retrieve(customerId);
  if (!customer.deleted) {
    const fromCustomer = validUserId(customer.metadata?.supabase_user_id);
    if (fromCustomer) return fromCustomer;
  }

  const { data, error } = await supabase
    .from("profiles")
    .select("id")
    .eq("stripe_customer_id", customerId)
    .limit(2);
  if (error) throw new Error(`lecture profil impossible (${error.code})`);
  return data?.length === 1 ? data[0].id : null;
}

async function updateProfile(
  supabase: Db,
  userId: string,
  fields: Record<string, string | null>
) {
  const { data, error } = await supabase
    .from("profiles")
    .update({ ...fields, updated_at: new Date().toISOString() })
    .eq("id", userId)
    .select("id");
  // Erreur base : on lève, la réponse 500 fera rejouer l'événement par Stripe.
  if (error) throw new Error(`mise à jour profil impossible (${error.code})`);
  if (!data?.length) console.error("[stripe webhook] profil introuvable pour un abonnement");
}

// Resynchronise le profil d'après l'état actuel des abonnements du client chez Stripe
// (et non d'après le contenu de l'événement) : le traitement est idempotent et ne dépend
// pas de l'ordre d'arrivée des événements.
async function syncFromSubscription(
  supabase: Db,
  eventSubscription: Stripe.Subscription,
  expectedUserId?: string | null
) {
  const customerId = idOf(eventSubscription.customer);
  if (!customerId) return;

  const userId = await resolveUserId(supabase, eventSubscription, customerId);
  if (!userId) {
    console.error("[stripe webhook] utilisateur introuvable pour l'abonnement", eventSubscription.id);
    return;
  }
  if (expectedUserId && expectedUserId !== userId) {
    console.error("[stripe webhook] identifiants utilisateur incohérents", eventSubscription.id);
    return;
  }

  const list = await stripe.subscriptions.list({
    customer: customerId,
    status: "all",
    limit: 20,
  });
  // La liste Stripe peut être en léger retard sur un abonnement qui vient d'être créé.
  const known = list.data.some((s) => s.id === eventSubscription.id);
  const current = pickCurrent(known ? list.data : [...list.data, eventSubscription]);

  if (!current) {
    await updateProfile(supabase, userId, {
      stripe_customer_id: customerId,
      plan: "free",
      subscription_status: "canceled",
      subscription_end: null,
    });
    return;
  }

  const plan = planFor(current);
  if (!plan) {
    console.error("[stripe webhook] prix d'abonnement inconnu", current.id);
    return;
  }

  const periodEnd = current.items.data[0]?.current_period_end;
  await updateProfile(supabase, userId, {
    stripe_customer_id: customerId,
    plan,
    subscription_status: current.status,
    subscription_end: periodEnd ? new Date(periodEnd * 1000).toISOString() : null,
  });
}

export async function POST(req: NextRequest) {
  // Corps brut indispensable : la signature porte sur les octets exacts reçus.
  const body = await req.text();
  const sig = req.headers.get("stripe-signature");

  if (!sig) {
    return NextResponse.json({ error: "Signature manquante" }, { status: 400 });
  }

  const secret = process.env.STRIPE_WEBHOOK_SECRET;
  if (!secret) {
    console.error("[stripe webhook] STRIPE_WEBHOOK_SECRET non défini");
    return NextResponse.json({ error: "Erreur interne" }, { status: 500 });
  }

  let event: Stripe.Event;
  try {
    event = stripe.webhooks.constructEvent(body, sig, secret);
  } catch {
    return NextResponse.json({ error: "Signature invalide" }, { status: 400 });
  }

  try {
    const supabase = createAdminClient();

    switch (event.type) {
      case "checkout.session.completed": {
        const session = event.data.object as Stripe.Checkout.Session;
        const subscriptionId = idOf(session.subscription);
        if (session.mode !== "subscription" || !subscriptionId) break;

        const subscription = await stripe.subscriptions.retrieve(subscriptionId);
        await syncFromSubscription(
          supabase,
          subscription,
          validUserId(session.client_reference_id)
        );
        break;
      }

      case "customer.subscription.created":
      case "customer.subscription.updated":
      case "customer.subscription.deleted": {
        const subscription = event.data.object as Stripe.Subscription;
        await syncFromSubscription(supabase, subscription);
        break;
      }
    }
  } catch (err) {
    // Détail dans les journaux serveur uniquement, jamais dans la réponse.
    console.error(
      "[stripe webhook] échec de traitement",
      event.type,
      event.id,
      err instanceof Error ? err.message : "erreur inconnue"
    );
    return NextResponse.json({ error: "Erreur de traitement" }, { status: 500 });
  }

  return NextResponse.json({ received: true });
}
