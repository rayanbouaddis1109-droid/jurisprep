import { NextRequest, NextResponse } from "next/server";
import { stripe } from "@/lib/stripe";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import { customerBelongsToUser, getSafeOrigin } from "@/app/api/_lib/billing";

export async function POST(req: NextRequest) {
  // Paiements fermés tant que PAYMENTS_OPEN n'est pas défini à "true".
  if (process.env.PAYMENTS_OPEN !== "true") {
    return NextResponse.json({ error: "Les abonnements ne sont pas encore ouverts." }, { status: 503 });
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  const body = await req.json().catch(() => null);
  const priceId = typeof body?.priceId === "string" ? body.priceId : "";
  if (!priceId) {
    return NextResponse.json({ error: "priceId manquant" }, { status: 400 });
  }

  // Liste fermée : seuls nos deux prix sont vendables. Sans cela, n'importe quel prix
  // du compte Stripe (moins cher, ou sans rapport avec le site) pourrait être envoyé.
  const sellablePrices = [
    process.env.STRIPE_ETUDIANT_PRICE_ID,
    process.env.STRIPE_CURSUS_PRICE_ID,
  ].filter((p): p is string => Boolean(p));
  if (!sellablePrices.includes(priceId)) {
    return NextResponse.json({ error: "Offre inconnue" }, { status: 400 });
  }

  if (body?.waiver !== true) {
    return NextResponse.json(
      { error: "Accord sur l'accès immédiat et la renonciation à la rétractation requis" },
      { status: 400 },
    );
  }

  try {
    const { data: profile } = await supabase
      .from("profiles")
      .select("stripe_customer_id, plan, subscription_status")
      .eq("id", user.id)
      .maybeSingle();

    const origin = getSafeOrigin(req);

    // Le client Stripe enregistré doit appartenir à cet utilisateur (vérifié chez Stripe),
    // sinon on ne s'en sert pas.
    let customerId: string | undefined = profile?.stripe_customer_id ?? undefined;
    if (customerId && !(await customerBelongsToUser(customerId, user.id))) {
      customerId = undefined;
    }

    // Déjà abonné : renvoyer vers le portail de gestion au lieu de créer un
    // second abonnement
    const alreadySubscribed =
      customerId &&
      profile?.plan !== "free" &&
      (profile?.subscription_status === "active" ||
        profile?.subscription_status === "trialing");

    if (customerId && alreadySubscribed) {
      const portal = await stripe.billingPortal.sessions.create({
        customer: customerId,
        return_url: `${origin}/compte`,
      });
      return NextResponse.json({ url: portal.url });
    }

    if (!customerId) {
      const customer = await stripe.customers.create({
        email: user.email ?? undefined,
        metadata: { supabase_user_id: user.id },
      });
      customerId = customer.id;

      // Écriture côté serveur (clé service) : la colonne stripe_customer_id n'a pas à être
      // modifiable depuis le navigateur. Le webhook la renseigne aussi, un échec ici n'est pas bloquant.
      const admin = createAdminClient();
      const { data: updated, error: updateError } = await admin
        .from("profiles")
        .update({ stripe_customer_id: customerId, updated_at: new Date().toISOString() })
        .eq("id", user.id)
        .select("id");
      if (!updateError && !updated?.length) {
        await admin
          .from("profiles")
          .insert({ id: user.id, stripe_customer_id: customerId, plan: "free" });
      } else if (updateError) {
        console.error("[checkout] liaison profil / client Stripe impossible", updateError.code);
      }
    }

    const session = await stripe.checkout.sessions.create({
      customer: customerId,
      client_reference_id: user.id,
      mode: "subscription",
      line_items: [{ price: priceId, quantity: 1 }],
      success_url: `${origin}/compte?success=1`,
      cancel_url: `${origin}/tarifs?canceled=1`,
      locale: "fr",
      allow_promotion_codes: true,
      custom_text: {
        submit: {
          message:
            "En confirmant, tu demandes l'accès immédiat au contenu et tu renonces à ton droit de rétractation (art. L221-28 du Code de la consommation).",
        },
      },
      subscription_data: {
        metadata: { supabase_user_id: user.id },
      },
    });

    if (!session.url) {
      throw new Error("session Stripe sans URL");
    }
    return NextResponse.json({ url: session.url });
  } catch (err) {
    console.error("[checkout] échec", err instanceof Error ? err.message : "erreur inconnue");
    return NextResponse.json(
      { error: "Impossible de lancer le paiement. Réessaie dans un instant." },
      { status: 500 },
    );
  }
}
