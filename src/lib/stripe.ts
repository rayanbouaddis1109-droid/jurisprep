import Stripe from "stripe";

// Client créé au premier usage : le build n'exige plus STRIPE_SECRET_KEY.
let client: Stripe | null = null;

function getStripe(): Stripe {
  if (!client) {
    const key = process.env.STRIPE_SECRET_KEY;
    if (!key) throw new Error("STRIPE_SECRET_KEY manquante");
    client = new Stripe(key);
  }
  return client;
}

export const stripe = new Proxy({} as Stripe, {
  get(_target, prop) {
    const value = Reflect.get(getStripe(), prop);
    return typeof value === "function" ? value.bind(getStripe()) : value;
  },
});
