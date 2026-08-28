import { NextRequest, NextResponse } from "next/server";
import { stripe } from "@/lib/stripe";
import { createClient } from "@/lib/supabase/server";

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  const body = await req.json();
  const priceId: string | undefined = body?.priceId;
  if (!priceId) {
    return NextResponse.json({ error: "priceId manquant" }, { status: 400 });
  }

  const { data: profile } = await supabase
    .from("profiles")
    .select("stripe_customer_id, plan, subscription_status")
    .eq("id", user.id)
    .maybeSingle();

  const origin =
    req.headers.get("origin") ??
    process.env.NEXT_PUBLIC_SITE_URL ??
    "https://jurisprep.fr";

  // Déjà abonné : renvoyer vers le portail de gestion au lieu de créer un
  // second abonnement
  const alreadySubscribed =
    profile?.stripe_customer_id &&
    profile.plan !== "free" &&
    (profile.subscription_status === "active" ||
      profile.subscription_status === "trialing");

  if (alreadySubscribed) {
    const portal = await stripe.billingPortal.sessions.create({
      customer: profile.stripe_customer_id!,
      return_url: `${origin}/compte`,
    });
    return NextResponse.json({ url: portal.url });
  }

  let customerId: string | undefined = profile?.stripe_customer_id ?? undefined;

  if (!customerId) {
    const customer = await stripe.customers.create({
      email: user.email!,
      metadata: { supabase_user_id: user.id },
    });
    customerId = customer.id;
    await supabase.from("profiles").upsert({
      id: user.id,
      stripe_customer_id: customerId,
      plan: "free",
    });
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
    subscription_data: {
      metadata: { supabase_user_id: user.id },
    },
  });

  return NextResponse.json({ url: session.url });
}
