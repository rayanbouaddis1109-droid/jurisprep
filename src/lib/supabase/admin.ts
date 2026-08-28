import { createClient } from "@supabase/supabase-js";

// Client serveur uniquement (clé service role, contourne la RLS).
// Réservé aux agrégats non sensibles (compteurs) et aux routes API serveur.
// Ne jamais importer depuis un composant client.
export function createAdminClient() {
  return createClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.SUPABASE_SERVICE_ROLE_KEY!
  );
}
