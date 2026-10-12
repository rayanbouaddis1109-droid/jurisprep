"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import { Lock, X } from "lucide-react";
import { WELCOME_ACCESS_DAYS } from "@/lib/offer";

export interface LockedItem {
  id: string;
  title: string;
  chapter?: string | null;
}

export function LockedGrid({
  items,
  label,
  isLoggedIn,
}: {
  items: LockedItem[];
  label: string;
  isLoggedIn: boolean;
}) {
  const [selected, setSelected] = useState<LockedItem | null>(null);

  useEffect(() => {
    if (!selected) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setSelected(null);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [selected]);

  if (items.length === 0) return null;

  return (
    <section className="mt-8">
      <div className="mb-4 flex items-center gap-2">
        <Lock className="h-4 w-4" style={{ color: "#E07B39" }} />
        <h3 className="text-sm font-bold" style={{ color: "#2C1810" }}>
          {items.length} {label} {isLoggedIn ? "inclus dans la formule Étudiant" : "à débloquer"}
        </h3>
      </div>
      {!isLoggedIn && WELCOME_ACCESS_DAYS > 0 && (
        <Link
          href="/auth/signup"
          className="mb-4 block rounded-xl px-4 py-3 text-sm font-bold transition hover:opacity-90"
          style={{ background: "#E07B39", color: "white" }}
        >
          Crée gratuitement un compte pour tout voir pendant {WELCOME_ACCESS_DAYS} jours
        </Link>
      )}

      <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
        {items.map((item) => (
          <button
            key={item.id}
            type="button"
            onClick={() => setSelected(item)}
            className="rounded-xl p-4 text-left transition hover:shadow-sm"
            style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
          >
            <div className="flex items-start justify-between gap-2">
              <div className="min-w-0">
                {item.chapter && (
                  <p
                    className="text-xs font-semibold uppercase tracking-widest"
                    style={{ color: "#E07B39" }}
                  >
                    {item.chapter}
                  </p>
                )}
                <h4
                  className="mt-1 text-sm font-semibold leading-snug"
                  style={{ color: "#2C1810" }}
                >
                  {item.title}
                </h4>
              </div>
              <Lock
                className="mt-0.5 h-3.5 w-3.5 flex-shrink-0"
                style={{ color: "#B89F8A" }}
              />
            </div>
          </button>
        ))}
      </div>

      <p className="mt-4 text-xs" style={{ color: "#7A5C4A" }}>
        {isLoggedIn
          ? "Le premier chapitre de chaque matière reste gratuit, sans carte bancaire."
          : `Crée gratuitement un compte pour tout voir pendant ${WELCOME_ACCESS_DAYS} jours, sans carte bancaire ni engagement.`}
      </p>

      {selected && (
        <div
          className="fixed inset-0 z-50 flex items-end justify-center p-4 sm:items-center"
          style={{ background: "rgba(44,24,16,0.35)" }}
          onClick={() => setSelected(null)}
        >
          <div
            role="dialog"
            aria-modal="true"
            aria-label="Chapitre inclus dans la formule Étudiant"
            className="relative w-full max-w-sm rounded-2xl p-6"
            style={{ background: "#FFF8EE", border: "1.5px solid #EDE0CC" }}
            onClick={(e) => e.stopPropagation()}
          >
            <button
              type="button"
              onClick={() => setSelected(null)}
              aria-label="Fermer"
              className="absolute right-3 top-3 rounded-full p-1 transition hover:opacity-70"
              style={{ color: "#7A5C4A" }}
            >
              <X className="h-4 w-4" />
            </button>
            <p
              className="text-xs font-semibold uppercase tracking-widest"
              style={{ color: "#E07B39" }}
            >
              {isLoggedIn
                ? "Inclus dans la formule Étudiant"
                : `Crée gratuitement un compte pour tout voir pendant ${WELCOME_ACCESS_DAYS} jours`}
            </p>
            <h4 className="mt-2 text-base font-semibold" style={{ color: "#2C1810" }}>
              {selected.title}
            </h4>
            <p className="mt-2 text-sm" style={{ color: "#7A5C4A" }}>
              {isLoggedIn
                ? "Ce contenu fait partie de la formule Étudiant, qui ouvre toutes les matières de ton niveau. Sans engagement, tu peux arrêter quand tu veux."
                : "Sans carte bancaire et sans engagement : tu accèdes à tous les contenus de toutes les matières pendant 14 jours, et tu décides ensuite si tu continues."}
            </p>
            <div className="mt-5 flex flex-wrap items-center gap-3">
              <Link
                href={isLoggedIn ? "/tarifs" : "/auth/signup"}
                className="rounded-full px-5 py-2 text-sm font-semibold transition hover:opacity-90"
                style={{ background: "#E07B39", color: "white" }}
              >
                {isLoggedIn ? "Voir les formules" : "Créer gratuitement mon compte"}
              </Link>
              <button
                type="button"
                onClick={() => setSelected(null)}
                className="text-sm transition hover:opacity-70"
                style={{ color: "#7A5C4A" }}
              >
                Plus tard
              </button>
            </div>
          </div>
        </div>
      )}
    </section>
  );
}
