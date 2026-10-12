import type { Metadata } from "next";
import { getLegalNews, withSummaries } from "@/lib/legal-news";
import { ExternalLink } from "lucide-react";

export const revalidate = 3600;

export const metadata: Metadata = {
  title: "Actualité juridique",
  description:
    "L'actualité du droit, mise à jour automatiquement : Conseil constitutionnel, Conseil d'État, ministère de la Justice.",
};

const SOURCE_COLORS: Record<string, { bg: string; fg: string }> = {
  "Conseil constitutionnel": { bg: "#EEF0FF", fg: "#3B46B5" },
  "Conseil d'État": { bg: "#E8FBF4", fg: "#0B7A55" },
  "Ministère de la Justice": { bg: "#FFF0E6", fg: "#B85A1C" },
};

function dayLabel(d: Date): string {
  return d.toLocaleDateString("fr-FR", { weekday: "long", day: "numeric", month: "long", year: "numeric", timeZone: "Europe/Paris" });
}

export default async function ActuPage() {
  const { items: raw, failed } = await getLegalNews();
  const items = await withSummaries(raw, 12);

  const groups: { label: string; items: typeof items }[] = [];
  for (const item of items) {
    const label = dayLabel(item.date);
    const last = groups[groups.length - 1];
    if (last && last.label === label) last.items.push(item);
    else groups.push({ label, items: [item] });
  }

  return (
    <div style={{ background: "#FFF8EE", color: "#2C1810", minHeight: "70vh" }}>
      <div className="mx-auto max-w-3xl px-5 py-12">
        <p className="mb-2 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
          {dayLabel(new Date())}
        </p>
        <h1 className="mb-3 text-3xl font-extrabold tracking-tight sm:text-4xl" style={{ letterSpacing: "-0.03em" }}>
          Actualité juridique
        </h1>
        <p className="mb-8 text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Les dernières publications des institutions, résumées en quelques phrases et mises à jour
          automatiquement. Tu as l'essentiel ici, et un bouton pour lire l'article complet sur le site officiel.
        </p>

        {items.length === 0 ? (
          <div className="rounded-2xl p-8 text-center text-sm" style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}>
            L&apos;actualité n&apos;a pas pu être chargée. Reviens dans quelques minutes.
          </div>
        ) : (
          groups.map((g) => (
            <section key={g.label} className="mb-8">
              <h2 className="mb-3 text-sm font-bold capitalize" style={{ color: "#7A5C4A" }}>
                {g.label}
              </h2>
              <ul className="space-y-3">
                {g.items.map((n) => {
                  const c = SOURCE_COLORS[n.source] ?? { bg: "#EDE0CC", fg: "#7A5C4A" };
                  return (
                    <li key={n.link}>
                      <article
                        className="rounded-2xl p-5"
                        style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}
                      >
                        <span
                          className="mb-2 inline-block rounded-full px-2.5 py-0.5 text-xs font-bold"
                          style={{ background: c.bg, color: c.fg }}
                        >
                          {n.source}
                        </span>
                        <h3 className="text-base font-bold leading-snug">
                          <a
                            href={n.link}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="hover:underline"
                            style={{ color: "#2C1810" }}
                          >
                            {n.title}
                          </a>
                        </h3>
                        {(n.summary || n.excerpt) && (
                          <p className="mt-2 text-sm leading-relaxed" style={{ color: n.summary ? "#2C1810" : "#7A5C4A" }}>
                            {n.summary || n.excerpt}
                          </p>
                        )}
                        <a
                          href={n.link}
                          target="_blank"
                          rel="noopener noreferrer"
                          className="mt-3 inline-flex items-center gap-1.5 rounded-full px-4 py-1.5 text-xs font-bold transition hover:opacity-90"
                          style={{ background: "#E07B39", color: "white" }}
                        >
                          Lire l&apos;article complet sur le site de {n.source} <ExternalLink className="h-3 w-3" />
                        </a>
                      </article>
                    </li>
                  );
                })}
              </ul>
            </section>
          ))
        )}

        {failed > 0 && items.length > 0 && (
          <p className="text-xs" style={{ color: "#7A5C4A" }}>
            Une des sources n&apos;a pas répondu, elle réapparaîtra à la prochaine mise à jour.
          </p>
        )}
      </div>
    </div>
  );
}
