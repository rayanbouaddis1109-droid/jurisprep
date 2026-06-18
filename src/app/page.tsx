import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import {
  GraduationCap,
  Sparkles,
  Languages,
  Brain,
  BookOpen,
  CheckCircle2,
} from "lucide-react";

const YEARS = [
  {
    slug: "lyceen",
    title: "Lycéen",
    subtitle: "Préparation à la fac de droit",
    desc: "Méthodologie, vocabulaire et découverte des matières de L1 pour bien préparer ton entrée en faculté de droit.",
    color: "bg-pink-50 border-pink-200 text-pink-700",
    iconColor: "text-pink-600",
  },
  {
    slug: "l1",
    title: "L1",
    subtitle: "Première année de Licence",
    desc: "Introduction au droit, droit constitutionnel, droit civil de la famille, institutions.",
    color: "bg-indigo-50 border-indigo-200 text-indigo-700",
    iconColor: "text-indigo-600",
  },
  {
    slug: "l2",
    title: "L2",
    subtitle: "Deuxième année de Licence",
    desc: "Obligations, contrats, droit administratif, droit pénal, procédure pénale, droit de l'UE.",
    color: "bg-emerald-50 border-emerald-200 text-emerald-700",
    iconColor: "text-emerald-600",
  },
  {
    slug: "l3",
    title: "L3",
    subtitle: "Troisième année de Licence",
    desc: "Libertés fondamentales, droit international, droit des biens, droit fiscal, procédure civile…",
    color: "bg-amber-50 border-amber-200 text-amber-700",
    iconColor: "text-amber-600",
  },
];

export default async function HomePage() {
  const supabase = createClient();
  const { count: subjectsCount } = await supabase
    .from("subjects")
    .select("*", { count: "exact", head: true })
    .eq("is_published", true);

  return (
    <div>
      {/* HERO */}
      <section className="bg-gradient-to-b from-indigo-50 to-white">
        <div className="mx-auto max-w-6xl px-4 py-16 sm:py-24">
          <div className="max-w-3xl">
            <div className="inline-flex items-center gap-2 rounded-full bg-indigo-100 px-3 py-1 text-sm text-indigo-700">
              <Sparkles className="h-4 w-4" />
              Pour lycéens & étudiants en Licence de Droit
            </div>
            <h1 className="mt-6 text-4xl font-bold tracking-tight text-ink-900 sm:text-5xl">
              Réussir ses études de droit, en toute clarté.
            </h1>
            <p className="mt-4 text-lg text-ink-700">
              Fiches de révision, fiches d&apos;arrêts, vidéos explicatives, quiz, flashcards et
              exercices corrigés — tout ce qu&apos;il te faut pour progresser, de la Terminale jusqu&apos;à la
              L3.
            </p>
            <div className="mt-8 flex flex-wrap gap-3">
              <Link
                href="/licence/l1"
                className="inline-flex items-center gap-2 rounded-lg bg-indigo-600 px-5 py-2.5 text-white shadow hover:bg-indigo-700"
              >
                <GraduationCap className="h-5 w-5" /> Explorer les modules
              </Link>
              <Link
                href="/tarifs"
                className="inline-flex items-center gap-2 rounded-lg border border-ink-300 bg-white px-5 py-2.5 text-ink-800 hover:border-indigo-400"
              >
                Voir les tarifs
              </Link>
            </div>
            <p className="mt-6 text-sm text-ink-500">
              {subjectsCount ?? "—"} matières disponibles dans le catalogue.
            </p>
          </div>
        </div>
      </section>

      {/* MODULES PAR ANNÉE */}
      <section className="mx-auto max-w-6xl px-4 py-16">
        <h2 className="text-2xl font-bold text-ink-900">Choisis ton niveau</h2>
        <p className="mt-2 text-ink-600">
          Chaque module regroupe les matières du Bloc 1 (compétences juridiques fondamentales),
          organisées par semestre.
        </p>
        <div className="mt-8 grid gap-5 sm:grid-cols-2 lg:grid-cols-4">
          {YEARS.map((y) => (
            <Link
              key={y.slug}
              href={`/licence/${y.slug}`}
              className={`group rounded-xl border-2 p-6 transition hover:shadow-lg ${y.color}`}
            >
              <BookOpen className={`mb-4 h-8 w-8 ${y.iconColor}`} />
              <div className="text-3xl font-bold">{y.title}</div>
              <div className="text-sm font-medium">{y.subtitle}</div>
              <p className="mt-3 text-sm text-ink-700">{y.desc}</p>
              <div className="mt-4 text-sm font-semibold text-ink-800 group-hover:underline">
                Découvrir →
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* SECTIONS TRANSVERSES */}
      <section className="bg-ink-50">
        <div className="mx-auto max-w-6xl px-4 py-16">
          <h2 className="text-2xl font-bold text-ink-900">Outils transversaux</h2>
          <p className="mt-2 text-ink-600">
            Deux espaces dédiés pour renforcer ton anglais juridique et ta culture juridique générale.
          </p>
          <div className="mt-8 grid gap-5 md:grid-cols-2">
            <Link
              href="/transverse/anglais-juridique"
              className="group rounded-xl border-2 border-indigo-200 bg-indigo-50 p-6 text-indigo-700 hover:shadow-lg"
            >
              <Languages className="mb-4 h-8 w-8 text-indigo-600" />
              <div className="text-xl font-bold">Anglais juridique</div>
              <p className="mt-3 text-sm text-ink-700">
                Vocabulaire et expressions essentielles : tribunaux, contrats, infractions, procédure.
                Quiz et flashcards pour ancrer le lexique.
              </p>
              <div className="mt-4 text-sm font-semibold text-ink-800 group-hover:underline">
                Explorer →
              </div>
            </Link>
            <Link
              href="/transverse/culture-generale"
              className="group rounded-xl border-2 border-pink-200 bg-pink-50 p-6 text-pink-700 hover:shadow-lg"
            >
              <Brain className="mb-4 h-8 w-8 text-pink-600" />
              <div className="text-xl font-bold">Culture générale juridique</div>
              <p className="mt-3 text-sm text-ink-700">
                Grandes figures, dates clés, adages latins, jurisprudences emblématiques et principes
                fondateurs du droit français.
              </p>
              <div className="mt-4 text-sm font-semibold text-ink-800 group-hover:underline">
                Explorer →
              </div>
            </Link>
          </div>
        </div>
      </section>

      {/* VALUE PROP */}
      <section className="mx-auto max-w-6xl px-4 py-16">
        <h2 className="text-2xl font-bold text-ink-900">Ce que JurisPrép t&apos;apporte</h2>
        <div className="mt-8 grid gap-6 sm:grid-cols-2 lg:grid-cols-3">
          {[
            "Fiches de révision synthétiques et structurées",
            "Fiches d'arrêts complètes (faits, procédure, problème de droit, solution, portée)",
            "Vidéos explicatives pour chaque matière",
            "Quiz interactifs avec explications de correction",
            "Flashcards pour mémoriser le vocabulaire et les notions clés",
            "Exercices corrigés (cas pratique, commentaire d'arrêt, dissertation)",
          ].map((line) => (
            <div key={line} className="flex items-start gap-3 rounded-lg bg-white p-4">
              <CheckCircle2 className="mt-0.5 h-5 w-5 flex-shrink-0 text-emerald-500" />
              <p className="text-ink-700">{line}</p>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}
