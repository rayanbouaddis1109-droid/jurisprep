// Offre de bienvenue : accès complet pendant 14 jours à partir de la création du compte,
// sans carte bancaire. Mettre 0 pour la couper.
export const WELCOME_ACCESS_DAYS = 14;

// Essai gratuit Stripe (carte demandée) : remplacé par l'accès de bienvenue ci-dessus.
export const WELCOME_TRIAL_DAYS = 0;

// Jours restants (0 si la période est terminée ou inconnue). createdAt vient de l'authentification.
export function welcomeDaysLeft(createdAt: string | null | undefined, now = Date.now()): number {
  if (!WELCOME_ACCESS_DAYS || !createdAt) return 0;
  const start = new Date(createdAt).getTime();
  if (Number.isNaN(start)) return 0;
  const left = WELCOME_ACCESS_DAYS - (now - start) / 86400000;
  return left > 0 ? Math.ceil(left) : 0;
}
