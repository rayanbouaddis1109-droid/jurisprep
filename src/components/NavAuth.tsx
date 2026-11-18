"use client";

import Link from "next/link";
import { MessageSquare } from "lucide-react";
import { LogoutButton } from "./LogoutButton";
import { MobileMenu } from "./MobileMenu";
import { useSessionUser } from "./useSessionUser";

export function WelcomeBanner({ days }: { days: number }) {
  const user = useSessionUser();
  if (user !== null || days <= 0) return null;
  return (
    <div
      className="flex flex-wrap items-center justify-center gap-x-4 gap-y-2 px-4 py-3 text-center"
      style={{ background: "#E07B39", color: "white" }}
    >
      <span className="text-base font-extrabold sm:text-lg" style={{ letterSpacing: "-0.01em" }}>
        Offre de lancement : crée gratuitement un compte pour tout voir pendant {days} jours, sans carte bancaire ni engagement
      </span>
      <Link
        href="/auth/signup"
        className="rounded-full px-5 py-1.5 text-sm font-extrabold transition hover:opacity-90"
        style={{ background: "#2C1810", color: "white" }}
      >
        Créer mon compte
      </Link>
    </div>
  );
}

export function NavRight() {
  const user = useSessionUser();
  const loading = user === undefined;

  return (
    <div className="flex items-center gap-2 text-sm">
      {user === null && (
        <Link
          href="/auth/signup"
          className="rounded-full px-3 py-1.5 text-xs font-bold text-white md:hidden"
          style={{ background: "#E07B39" }}
        >
          Créer un compte
        </Link>
      )}
      <MobileMenu isLoggedIn={!!user} />
      <Link href="/assistant"
        className="hidden items-center gap-1.5 rounded-lg px-3 py-1.5 font-semibold transition md:flex"
        style={{ background: "#FFF0E6", color: "#E07B39" }}>
        <MessageSquare className="h-4 w-4" /> Assistant IA
      </Link>
      {user ? (
        <>
          <Link href="/compte"
            className="hidden rounded-lg px-3 py-1.5 font-medium transition hover:bg-[#EDE0CC] md:block"
            style={{ color: "#2C1810" }}>
            Mon compte
          </Link>
          <LogoutButton />
        </>
      ) : (
        // Pendant le chargement, les boutons gardent leur place mais restent invisibles.
        <div className={`flex items-center gap-2 ${loading ? "invisible" : ""}`} aria-hidden={loading}>
          <Link href="/auth/login"
            className="hidden rounded-lg px-3 py-1.5 font-medium transition hover:bg-[#EDE0CC] md:block"
            style={{ color: "#2C1810" }}>
            Connexion
          </Link>
          <Link href="/auth/signup"
            className="hidden rounded-full px-4 py-1.5 font-bold text-white transition hover:opacity-90 md:block"
            style={{ background: "#2C1810" }}>
            Inscription
          </Link>
        </div>
      )}
    </div>
  );
}
