"use client";

import { WELCOME_ACCESS_DAYS } from "@/lib/offer";
import { MobileSignupBarClient } from "./MobileSignupBarClient";
import { useSessionUser } from "./useSessionUser";

// Connexion lue dans le navigateur : la mise en page reste statique côté serveur.
export function MobileSignupBar() {
  const user = useSessionUser();
  if (WELCOME_ACCESS_DAYS <= 0 || user !== null) return null;
  return <MobileSignupBarClient days={WELCOME_ACCESS_DAYS} />;
}
