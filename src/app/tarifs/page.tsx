import Link from "next/link";
import { CheckCircle2, Sparkles } from "lucide-react";

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
    desc: "Tout JurisPrép, du lycée à la L3 — idéal pour anticiper.",
    cta: { label: "S'abonner", href: "/auth/signup" },
    features: [
      "Accès à TOUS les niveaux (Lycéen, L1, L2, L3)",
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
    <div>
      <section className="bg-gradient-to-b from-indigo-50 to-white">
        <div className="mx-auto max-w-6xl px-4 py-16 text-center">
          <div className="inline-flex items-center gap-2 rounded-full bg-indigo-100 px-3 py-1 text-sm text-indigo-700">
            <Sparkles className="h-4 w-4" />
            Sans engagement, résiliable à tout moment
          </div>
          <h1 className="mt-6 text-4xl font-bold text-ink-900 sm:text-5xl">Nos formules</h1>
          <p className="mt-3 text-ink-600">
            Choisis l&apos;abonnement qui correspond à ton parcours. Tu peux essayer gratuitement avant
            de t&apos;engager.
          </p>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 pb-20">
        <div className="grid gap-6 lg:grid-cols-3">
          {PLANS.map((p) => (
            <div
              key={p.name}
              className={`flex flex-col rounded-xl border-2 p-6 transition ${
                p.highlight
                  ? "border-indigo-600 bg-white shadow-lg"
                  : "border-ink-200 bg-white"
              }`}
            >
              {p.highlight && (
                <div className="mb-3 inline-flex w-fit items-center gap-1 rounded-full bg-indigo-600 px-3 py-0.5 text-xs font-medium text-white">
                  Le plus populaire
                </div>
              )}
              <h2 className="text-2xl font-bold text-ink-900">{p.name}</h2>
              <p className="mt-1 text-sm text-ink-600">{p.desc}</p>
              <div className="mt-4 flex items-baseline gap-1">
                <span className="text-4xl font-bold text-ink-900">{p.price}</span>
                <span className="text-sm text-ink-500">{p.period}</span>
              </div>
              <ul className="mt-6 flex-1 space-y-3">
                {p.features.map((f) => (
                  <li key={f} className="flex items-start gap-2 text-sm text-ink-700">
                    <CheckCircle2 className="mt-0.5 h-4 w-4 flex-shrink-0 text-emerald-500" />
                    <span>{f}</span>
                  </li>
                ))}
              </ul>
              <Link
                href={p.cta.href}
                className={`mt-6 inline-block rounded-lg px-4 py-2.5 text-center text-sm font-semibold transition ${
                  p.highlight
                    ? "bg-indigo-600 text-white hover:bg-indigo-700"
                    : "border border-ink-300 bg-white text-ink-800 hover:border-indigo-400"
                }`}
              >
                {p.cta.label}
              </Link>
            </div>
          ))}
        </div>

        <div className="mt-12 rounded-xl border border-ink-200 bg-ink-50 p-6 text-sm text-ink-700">
          <p className="font-semibold text-ink-900">À noter</p>
          <p className="mt-2">
            JurisPrép est actuellement en accès gratuit pendant la phase de lancement. Les abonnements
            payants seront activés progressivement — tu seras notifié(e) avant tout passage à un plan
            payant. Aucun prélèvement automatique.
          </p>
        </div>
      </section>
    </div>
  );
}
