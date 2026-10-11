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
  const items = await withSummaries(raw, 8);

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
          automatiquement. Tu as l'essentiel ici, et le lien vers la source si tu veux le texte complet.
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
                      <a
                        href={n.link}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="block rounded-2xl p-5 transition hover:-translate-y-0.5"
                        style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC", textDecoration: "none", color: "#2C1810" }}
                      >
                        <span
                          className="mb-2 inline-block rounded-full px-2.5 py-0.5 text-xs font-bold"
                          style={{ background: c.bg, color: c.fg }}
                        >
                          {n.source}
                        </span>
                        <span className="block text-base font-bold leading-snug">{n.title}</span>
                        {n.summary ? (
                          <span className="mt-2 block text-sm leading-relaxed" style={{ color: "#2C1810" }}>
                            {n.summary}
                          </span>
                        ) : n.excerpt && (
                          <span className="mt-1 block text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
                            {n.excerpt}
                          </span>
                        )}
                        <span className="mt-2 inline-flex items-center gap-1 text-xs font-semibold" style={{ color: "#E07B39" }}>
                          Texte officiel <ExternalLink className="h-3 w-3" />
                        </span>
                      </a>
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
