// Offre de bienvenue : accès complet pendant 14 jours à partir de la création du compte,
// sans carte bancaire. Mettre 0 pour la couper.
export const WELCOME_ACCESS_DAYS = 14;

// L'offre ne concerne que les comptes créés à partir de cette date (heure de Paris).
export const WELCOME_START = new Date("2026-10-12T00:00:00+02:00");

// Essai gratuit Stripe (carte demandée) : remplacé par l'accès de bienvenue ci-dessus.
export const WELCOME_TRIAL_DAYS = 0;

// Fin de la période offerte, ou null si le compte n'y a pas droit.
// createdAt vient de l'authentification (non modifiable par l'utilisateur).
export function welcomeEndsAt(createdAt: string | null | undefined): Date | null {
  if (!WELCOME_ACCESS_DAYS || !createdAt) return null;
  const start = new Date(createdAt).getTime();
  if (Number.isNaN(start) || start < WELCOME_START.getTime()) return null;
  return new Date(start + WELCOME_ACCESS_DAYS * 86400000);
}

// Jours restants arrondis au supérieur (0 si terminée ou sans droit).
export function welcomeDaysLeft(createdAt: string | null | undefined, now = Date.now()): number {
  const end = welcomeEndsAt(createdAt);
  if (!end) return 0;
  const left = (end.getTime() - now) / 86400000;
  return left > 0 ? Math.ceil(left) : 0;
}

// Période terminée pour un compte qui y avait droit.
export function welcomeExpired(createdAt: string | null | undefined, now = Date.now()): boolean {
  const end = welcomeEndsAt(createdAt);
  return end !== null && end.getTime() <= now;
}
