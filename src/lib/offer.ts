// Offre de bienvenue : accès complet pendant 7 jours à partir de la création du compte,
// sans carte bancaire. Mettre 0 pour la couper.
export const WELCOME_ACCESS_DAYS = 7;

// Tous les comptes ont droit à 7 jours d'accès complet : à compter de leur création, ou à
// compter de cette date pour les comptes plus anciens (heure de Paris).
export const WELCOME_START = new Date("2026-10-14T00:00:00+02:00");

// Essai gratuit Stripe (carte demandée) : remplacé par l'accès de bienvenue ci-dessus.
export const WELCOME_TRIAL_DAYS = 0;

// Fin de la période offerte, ou null si la date de création est inconnue.
// createdAt vient de l'authentification (non modifiable par l'utilisateur).
export function welcomeEndsAt(createdAt: string | null | undefined): Date | null {
  if (!WELCOME_ACCESS_DAYS || !createdAt) return null;
  const created = new Date(createdAt).getTime();
  if (Number.isNaN(created)) return null;
  const base = Math.max(created, WELCOME_START.getTime());
  return new Date(base + WELCOME_ACCESS_DAYS * 86400000);
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
