import Link from "next/link";
import { Lock } from "lucide-react";

export interface LockedItem {
  id: string;
  title: string;
  chapter?: string | null;
}

/** Barres grises floutées : squelette de contenu, aucune donnée réelle n'est envoyée. */
function BlurredSkeleton() {
  const widths = ["100%", "92%", "97%", "78%", "95%", "60%"];
  return (
    <div
      aria-hidden="true"
      className="mt-4 space-y-2 select-none"
      style={{ filter: "blur(3px)", opacity: 0.55 }}
    >
      {widths.map((w, i) => (
        <div
          key={i}
          className="h-2.5 rounded-full"
          style={{ width: w, background: "#EDE0CC" }}
        />
      ))}
    </div>
  );
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
  if (items.length === 0) return null;

  return (
    <section className="mt-8">
      <div className="mb-4 flex items-center gap-2">
        <Lock className="h-4 w-4" style={{ color: "#E07B39" }} />
        <h3 className="text-sm font-bold" style={{ color: "#2C1810" }}>
          {items.length} {label} {items.length > 1 ? "verrouillés" : "verrouillé"}
        </h3>
      </div>

      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        {items.map((item) => (
          <article
            key={item.id}
            className="relative overflow-hidden rounded-xl p-5"
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
                  className="mt-1 text-sm font-bold leading-snug"
                  style={{ color: "#2C1810" }}
                >
                  {item.title}
                </h4>
              </div>
              <div
                className="flex h-7 w-7 flex-shrink-0 items-center justify-center rounded-full"
                style={{ background: "#FFF0E6" }}
              >
                <Lock className="h-3.5 w-3.5" style={{ color: "#E07B39" }} />
              </div>
            </div>

            <BlurredSkeleton />
          </article>
        ))}
      </div>

      <div
        className="mt-5 rounded-2xl p-6 text-center"
        style={{ background: "#2C1810" }}
      >
        <p className="text-base font-bold mb-1" style={{ color: "#FFF8EE" }}>
          {isLoggedIn
            ? "Débloque tout le programme"
            : "Crée un compte pour commencer gratuitement"}
        </p>
        <p
          className="mx-auto mb-5 max-w-md text-sm"
          style={{ color: "rgba(255,248,238,0.6)" }}
        >
          {isLoggedIn
            ? "Toutes les fiches, tous les quiz, toutes les flashcards et les exercices corrigés, dans toutes les matières."
            : "Le premier chapitre de chaque matière est offert. Aucune carte bancaire demandée."}
        </p>
        <Link
          href={isLoggedIn ? "/tarifs" : "/auth/signup"}
          className="inline-block rounded-full px-6 py-3 text-sm font-bold transition hover:opacity-90"
          style={{ background: "#E07B39", color: "white" }}
        >
          {isLoggedIn ? "Voir les formules" : "Créer mon compte gratuit"}
        </Link>
      </div>
    </section>
  );
}
