import type { Metadata } from "next";
import Link from "next/link";
import { CheckCircle2 } from "lucide-react";

export const metadata: Metadata = {
  title: "Tarifs",
  description:
    "Accède gratuitement à JurisPrép. Découvre nos formules pour lycéens, L1, L2 et L3 — sans engagement.",
};

const PLANS = [
  {
    name: "Gratuit",
    price: "0 €",
    period: "/ toujours",
    desc: "Découvre la plateforme et accède à un échantillon de contenu.",
    cta: { label: "Commencer", href: "/auth/signup" },
    features: [
      "Accès à 1 matière par niveau",
      "3 quiz et 1 deck de flashcards",
      "Fiches de révision sélectionnées",
      "Suivi de progression basique",
    ],
    highlight: false,
  },
  {
    name: "Étudiant",
    price: "9,90 €",
    period: "/ mois",
    desc: "L'accès complet pour réussir ton année. Sans engagement.",
    cta: { label: "S'abonner", href: "/auth/signup" },
    features: [
      "Toutes les matières de ton niveau (Lycéen, L1, L2 ou L3)",
      "Tous les quiz, flashcards et exercices corrigés",
      "Fiches d'arrêts complètes",
      "Vidéos explicatives",
      "Sections Anglais juridique et Culture générale",
      "Suivi de progression détaillé",
    ],
    highlight: true,
  },
  {
    name: "Cursus complet",
    price: "19,90 €",
    period: "/ mois",
    desc: "Tout JurisPrép, du lycée à la L3.",
    cta: { label: "S'abonner", href: "/auth/signup" },
    features: [
      "Accès à tous les niveaux (Lycéen, L1, L2, L3)",
      "Tous les modules transverses",
      "Toutes les fiches, quiz, exercices, vidéos",
      "Téléchargement PDF des fiches",
      "Support prioritaire",
    ],
    highlight: false,
  },
];

export default function TarifsPage() {
  return (
    <div style={{ background: "#FFF8EE", color: "#2C1810" }}>
      <section className="px-5 pt-14 pb-10 text-center" style={{ maxWidth: 680, margin: "0 auto" }}>
        <span
          className="inline-flex items-center gap-2 rounded-full px-3 py-1 text-xs font-bold uppercase tracking-widest mb-6"
          style={{ background: "#FFF0E6", color: "#E07B39" }}
        >
          Sans engagement, résiliable à tout moment
        </span>
        <h1
          className="font-extrabold tracking-tight mb-4"
          style={{ fontSize: "clamp(2rem, 7vw, 3rem)", letterSpacing: "-0.03em" }}
        >
          Nos formules
        </h1>
        <p style={{ color: "#7A5C4A", fontSize: "1rem", lineHeight: 1.65 }}>
          Commence gratuitement. Passe à un abonnement si tu veux accéder à tout le contenu.
        </p>
      </section>

      <section className="px-5 pb-16" style={{ maxWidth: 1100, margin: "0 auto" }}>
        <div className="grid gap-5 lg:grid-cols-3">
          {PLANS.map((p) => (
            <div
              key={p.name}
              className="flex flex-col rounded-2xl p-6"
              style={{
                background: p.highlight ? "#2C1810" : "#FFFDF8",
                border: p.highlight ? "none" : "1.5px solid #EDE0CC",
              }}
            >
              {p.highlight && (
                <div
                  className="mb-3 inline-flex w-fit items-center gap-1 rounded-full px-3 py-0.5 text-xs font-bold"
                  style={{ background: "#E07B39", color: "white" }}
                >
                  Le plus populaire
                </div>
              )}
              <h2
                className="text-2xl font-bold mb-1"
                style={{ color: p.highlight ? "#FFF8EE" : "#2C1810" }}
              >
                {p.name}
              </h2>
              <p
                className="text-sm mb-4"
                style={{ color: p.highlight ? "rgba(255,248,238,0.6)" : "#7A5C4A" }}
              >
                {p.desc}
              </p>
              <div className="flex items-baseline gap-1 mb-6">
                <span
                  className="text-4xl font-extrabold"
                  style={{ color: p.highlight ? "#FFF8EE" : "#2C1810", letterSpacing: "-0.04em" }}
                >
                  {p.price}
                </span>
                <span style={{ color: p.highlight ? "rgba(255,248,238,0.5)" : "#7A5C4A", fontSize: 13 }}>
                  {p.period}
                </span>
              </div>
              <ul className="flex-1 space-y-3 mb-6">
                {p.features.map((f) => (
                  <li
                    key={f}
                    className="flex items-start gap-2 text-sm"
                    style={{ color: p.highlight ? "rgba(255,248,238,0.8)" : "#7A5C4A" }}
                  >
                    <CheckCircle2
                      className="mt-0.5 h-4 w-4 flex-shrink-0"
                      style={{ color: p.highlight ? "#0DB37A" : "#0DB37A" }}
                    />
                    <span>{f}</span>
                  </li>
                ))}
              </ul>
              <Link
                href={p.cta.href}
                className="inline-block rounded-full text-center text-sm font-bold transition-opacity hover:opacity-90"
                style={{
                  background: p.highlight ? "#E07B39" : "#2C1810",
                  color: "white",
                  padding: "12px 20px",
                }}
              >
                {p.cta.label}
              </Link>
            </div>
          ))}
        </div>

        <div
          className="mt-10 rounded-2xl p-6 text-sm"
          style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC", color: "#7A5C4A" }}
        >
          <p className="font-bold mb-2" style={{ color: "#2C1810" }}>Phase de lancement</p>
          <p>
            JurisPrép est actuellement en accès gratuit. Les abonnements payants seront activés
            progressivement — tu seras notifié avant tout passage à un plan payant. Aucun
            prélèvement automatique.
          </p>
        </div>
      </section>
    </div>
  );
}
