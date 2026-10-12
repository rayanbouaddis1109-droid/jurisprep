import { unstable_cache } from "next/cache";
import { stripe } from "@/lib/stripe";

// Prix affichés : lus chez Stripe pour qu'ils correspondent toujours à ce qui est facturé.
// En cas d'erreur, valeurs de secours.
const FALLBACK = { etudiant: "9,90 €", cursus: "19,90 €" };

function format(amount: number | null, currency: string): string | null {
  if (amount == null) return null;
  return new Intl.NumberFormat("fr-FR", { style: "currency", currency: currency.toUpperCase() })
    .format(amount / 100)
    .replace(/ | /g, " ");
}

async function priceLabel(id: string | undefined, fallback: string): Promise<string> {
  if (!id) return fallback;
  try {
    const p = await stripe.prices.retrieve(id);
    return format(p.unit_amount, p.currency) ?? fallback;
  } catch {
    return fallback;
  }
}

export const getPlanPrices = unstable_cache(
  async () => ({
    etudiant: await priceLabel(process.env.STRIPE_ETUDIANT_PRICE_ID, FALLBACK.etudiant),
    cursus: await priceLabel(process.env.STRIPE_CURSUS_PRICE_ID, FALLBACK.cursus),
  }),
  ["plan-prices-v1"],
  { revalidate: 300 }
);
