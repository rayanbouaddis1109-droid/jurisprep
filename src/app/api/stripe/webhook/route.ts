import { NextRequest, NextResponse } from "next/server";
import { stripe } from "@/lib/stripe";
import { createClient } from "@supabase/supabase-js";
import type Stripe from "stripe";

function serviceClient() {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!
  );
}

async function syncSubscription(
  supabase: ReturnType<typeof serviceClient>,
  userId: string,
  subscription: Stripe.Subscription
) {
  const priceId = subscription.items.data[0]?.price.id;
  const plan =
    priceId === process.env.STRIPE_CURSUS_PRICE_ID ? "cursus" : "etudiant";

  await supabase.from("profiles").upsert({
    id: userId,
    stripe_customer_id: subscription.customer as string,
    plan,
    subscription_status: subscription.status,
    subscription_end: subscription.items.data[0]?.current_period_end
      ? new Date((subscription.items.data[0].current_period_end as number) * 1000).toISOString()
      : null,
    updated_at: new Date().toISOString(),
  });
}

async function findUserByCustomer(
  supabase: ReturnType<typeof serviceClient>,
  customerId: string
): Promise<string | null> {
  const { data } = await supabase
    .from("profiles")
    .select("id")
    .eq("stripe_customer_id", customerId)
    .maybeSingle();
  return data?.id ?? null;
}

export async function POST(req: NextRequest) {
  const body = await req.text();
  const sig = req.headers.get("stripe-signature");

  if (!sig) {
    return NextResponse.json({ error: "Signature manquante" }, { status: 400 });
  }

  let event: Stripe.Event;
  try {
    event = stripe.webhooks.constructEvent(
      body,
      sig,
      process.env.STRIPE_WEBHOOK_SECRET!
    );
  } catch {
    return NextResponse.json({ error: "Signature invalide" }, { status: 400 });
  }

  const supabase = serviceClient();

  switch (event.type) {
    case "checkout.session.completed": {
      const session = event.data.object as Stripe.Checkout.Session;
      if (session.mode !== "subscription" || !session.subscription) break;

      const userId = session.client_reference_id;
      if (!userId) break;

      const subscription = await stripe.subscriptions.retrieve(
        session.subscription as string
      );
      await syncSubscription(supabase, userId, subscription);
      break;
    }

    case "customer.subscription.updated": {
      const subscription = event.data.object as Stripe.Subscription;
      const userId =
        subscription.metadata?.supabase_user_id ??
        (await findUserByCustomer(supabase, subscription.customer as string));
      if (!userId) break;
      await syncSubscription(supabase, userId, subscription);
      break;
    }

    case "customer.subscription.deleted": {
      const subscription = event.data.object as Stripe.Subscription;
      const customerId = subscription.customer as string;
      await supabase
        .from("profiles")
        .update({
          plan: "free",
          subscription_status: "canceled",
          subscription_end: null,
          updated_at: new Date().toISOString(),
        })
        .eq("stripe_customer_id", customerId);
      break;
    }
  }

  return NextResponse.json({ received: true });
}
