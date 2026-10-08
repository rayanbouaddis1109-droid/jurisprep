import { NextRequest, NextResponse } from "next/server";
import { stripe } from "@/lib/stripe";
import { createClient } from "@/lib/supabase/server";
import { customerBelongsToUser, getSafeOrigin } from "@/app/api/_lib/billing";

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("stripe_customer_id")
    .eq("id", user.id)
    .maybeSingle();

  if (!profile?.stripe_customer_id) {
    return NextResponse.json({ error: "Aucun abonnement trouvé" }, { status: 404 });
  }

  try {
    // Le client Stripe doit appartenir à cet utilisateur (vérifié chez Stripe) : on ne
    // fait pas confiance à l'identifiant stocké dans le profil pour ouvrir un portail de facturation.
    if (!(await customerBelongsToUser(profile.stripe_customer_id, user.id))) {
      return NextResponse.json({ error: "Aucun abonnement trouvé" }, { status: 404 });
    }

    const session = await stripe.billingPortal.sessions.create({
      customer: profile.stripe_customer_id,
      return_url: `${getSafeOrigin(req)}/compte`,
    });

    return NextResponse.json({ url: session.url });
  } catch (err) {
    console.error("[portal] échec", err instanceof Error ? err.message : "erreur inconnue");
    return NextResponse.json(
      { error: "Impossible d'ouvrir la gestion de l'abonnement. Réessaie dans un instant." },
      { status: 500 },
    );
  }
}
