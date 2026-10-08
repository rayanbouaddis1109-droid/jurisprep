import { stripe } from "@/lib/stripe";

// Dossier privé (préfixe "_") : aides partagées par les routes Stripe, ce n'est pas une route.

const OFFICIAL_SITE = "https://jurisprep.fr";

function toOrigin(url: string | undefined | null): string | null {
  if (!url) return null;
  try {
    return new URL(url).origin;
  } catch {
    return null;
  }
}

/**
 * Origine utilisée pour les URLs de retour Stripe (success, cancel, portail).
 * L'en-tête Origin vient du client : on ne l'utilise que s'il appartient à une
 * liste fermée (site officiel et sa variante avec/sans www), sinon on retombe
 * sur l'URL officielle. En développement, localhost est accepté.
 */
export function getSafeOrigin(req: Request): string {
  const official = toOrigin(process.env.NEXT_PUBLIC_SITE_URL) ?? OFFICIAL_SITE;

  const allowed = new Set<string>([official, OFFICIAL_SITE]);
  const { protocol, hostname, port } = new URL(official);
  const twin = hostname.startsWith("www.") ? hostname.slice(4) : `www.${hostname}`;
  allowed.add(`${protocol}//${twin}${port ? `:${port}` : ""}`);

  const origin = req.headers.get("origin");
  if (origin && allowed.has(origin)) return origin;
  if (
    origin &&
    process.env.NODE_ENV !== "production" &&
    /^http:\/\/localhost:\d+$/.test(origin)
  ) {
    return origin;
  }
  return official;
}

/**
 * Vérifie côté Stripe que le client appartient bien à cet utilisateur
 * (métadonnée supabase_user_id posée par le serveur à la création du client).
 * Ne repose pas sur la valeur stockée en base, au cas où elle serait modifiable.
 */
export async function customerBelongsToUser(
  customerId: string,
  userId: string
): Promise<boolean> {
  try {
    const customer = await stripe.customers.retrieve(customerId);
    if (customer.deleted) return false;
    return customer.metadata?.supabase_user_id === userId;
  } catch (err) {
    if ((err as { code?: string })?.code === "resource_missing") return false;
    throw err;
  }
}
