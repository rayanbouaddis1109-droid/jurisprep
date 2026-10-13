"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

// Barre fixe en bas de l'écran sur téléphone, pour les visiteurs sans compte.
export function MobileSignupBarClient({ days }: { days: number }) {
  const pathname = usePathname();
  if (pathname.startsWith("/auth")) return null;

  return (
    <>
      {/* Espace pour que la barre ne cache pas le bas de la page */}
      <div className="h-16 md:hidden" aria-hidden="true" />
      <div
        className="fixed inset-x-0 bottom-0 z-40 flex items-center justify-between gap-3 px-4 py-3 md:hidden"
        style={{ background: "#2C1810", boxShadow: "0 -4px 16px rgba(44,24,16,0.25)" }}
      >
        <p className="text-sm font-semibold leading-tight" style={{ color: "#FFF8EE" }}>
          Tout voir pendant {days} jours,
          <br />
          <span style={{ color: "#E07B39" }}>gratuit, sans carte</span>
        </p>
        <Link
          href="/auth/signup"
          className="flex-shrink-0 rounded-full px-4 py-2 text-sm font-extrabold text-white"
          style={{ background: "#E07B39" }}
        >
          Créer mon compte
        </Link>
      </div>
    </>
  );
}
