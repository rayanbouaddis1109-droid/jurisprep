import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import {
  GraduationCap,
  Sparkles,
  Languages,
  Brain,
  BookOpen,
  CheckCircle2,
  MessageSquare,
  ArrowRight,
  Scale,
  Trophy,
  Users,
} from "lucide-react";

const YEARS = [
  {
    slug: "lyceen",
    title: "Lycéen",
    subtitle: "Préparation à la fac de droit",
    desc: "Méthodologie, vocabulaire et découverte des matières de L1 pour bien préparer ton entrée en faculté de droit.",
    gradient: "from-rose-500 to-pink-600",
    light: "bg-rose-50 border-rose-100",
    badge: "bg-rose-100 text-rose-700",
  },
  {
    slug: "l1",
    title: "L1",
    subtitle: "Première année",
    desc: "Introduction au droit, droit constitutionnel, droit civil de la famille, institutions judiciaires.",
    gradient: "from-violet-500 to-indigo-600",
    light: "bg-indigo-50 border-indigo-100",
    badge: "bg-indigo-100 text-indigo-700",
  },
  {
    slug: "l2",
    title: "L2",
    subtitle: "Deuxième année",
    desc: "Obligations, contrats, droit administratif, droit pénal, procédure pénale, droit de l'UE.",
    gradient: "from-emerald-500 to-teal-600",
    light: "bg-emerald-50 border-emerald-100",
    badge: "bg-emerald-100 text-emerald-700",
  },
  {
    slug: "l3",
    title: "L3",
    subtitle: "Troisième année",
    desc: "Libertés fondamentales, droit international, droit des biens, droit fiscal, procédure civile.",
    gradient: "from-amber-500 to-orange-600",
    light: "bg-amber-50 border-amber-100",
    badge: "bg-amber-100 text-amber-700",
  },
];

const FEATURES = [
  "Fiches de révision synthétiques et structurées",
  "Fiches d'arrêts complètes avec commentaire méthodologique",
  "Vidéos explicatives pour chaque matière",
  "Quiz interactifs avec explications de correction",
  "Flashcards pour mémoriser vocabulaire et notions clés",
  "Exercices corrigés : cas pratique, commentaire, dissertation",
];

export default async function HomePage() {
  const supabase = createClient();
  const { count: subjectsCount } = await supabase
    .from("subjects")
    .select("*", { count: "exact", head: true })
    .eq("is_published", true);

  return (
    <div className="bg-white">
      {/* ── HERO ── */}
      <section className="relative overflow-hidden bg-gradient-to-br from-slate-900 via-indigo-950 to-slate-900">
        {/* Decorative blobs */}
        <div className="pointer-events-none absolute -top-32 -left-32 h-[500px] w-[500px] rounded-full bg-indigo-600/20 blur-3xl" />
        <div className="pointer-events-none absolute -bottom-24 right-0 h-[400px] w-[400px] rounded-full bg-violet-600/20 blur-3xl" />

        <div className="relative mx-auto max-w-6xl px-4 py-20 sm:py-32">
          <div className="flex flex-col items-start gap-10 lg:flex-row lg:items-center">
            {/* Text */}
            <div className="flex-1">
              <span className="inline-flex items-center gap-2 rounded-full border border-indigo-400/30 bg-indigo-500/10 px-4 py-1.5 text-sm font-medium text-indigo-300">
                <Sparkles className="h-3.5 w-3.5" />
                Lycée · Licence de Droit · L1 à L3
              </span>
              <h1 className="mt-6 text-4xl font-extrabold leading-tight tracking-tight text-white sm:text-5xl lg:text-6xl">
                Réussir ses études{" "}
                <span className="bg-gradient-to-r from-indigo-400 to-violet-400 bg-clip-text text-transparent">
                  de droit
                </span>
                , en toute clarté.
              </h1>
              <p className="mt-5 max-w-xl text-lg leading-relaxed text-slate-300">
                Fiches, arrêts, vidéos, quiz, flashcards et exercices corrigés — tout ce qu&apos;il
                te faut pour progresser, de la Terminale jusqu&apos;à la L3.
              </p>
              <div className="mt-8 flex flex-wrap gap-3">
                <Link
                  href="/licence/l1"
                  className="inline-flex items-center gap-2 rounded-xl bg-indigo-600 px-6 py-3 font-semibold text-white shadow-lg shadow-indigo-500/30 transition hover:bg-indigo-500 hover:shadow-indigo-500/50"
                >
                  <GraduationCap className="h-5 w-5" /> Explorer les modules
                  <ArrowRight className="h-4 w-4" />
                </Link>
                <Link
                  href="/assistant"
                  className="inline-flex items-center gap-2 rounded-xl border border-white/20 bg-white/10 px-6 py-3 font-semibold text-white backdrop-blur transition hover:bg-white/20"
                >
                  <MessageSquare className="h-5 w-5" /> Assistant IA
                </Link>
              </div>
              <p className="mt-6 text-sm text-slate-400">
                <span className="font-semibold text-white">{subjectsCount ?? "—"}</span> matières
                disponibles dans le catalogue.
              </p>
            </div>

            {/* Stats card */}
            <div className="w-full max-w-xs shrink-0 lg:w-72">
              <div className="rounded-2xl border border-white/10 bg-white/5 p-6 backdrop-blur">
                <p className="mb-5 text-sm font-semibold uppercase tracking-widest text-slate-400">
                  La plateforme en chiffres
                </p>
                {[
                  { icon: BookOpen, label: "Fiches de cours", value: "80+" },
                  { icon: Scale, label: "Arrêts commentés", value: "150+" },
                  { icon: Trophy, label: "Quiz & flashcards", value: "500+" },
                  { icon: Users, label: "Niveaux couverts", value: "Lycée → L3" },
                ].map(({ icon: Icon, label, value }) => (
                  <div key={label} className="flex items-center gap-3 border-b border-white/10 py-3 last:border-0">
                    <div className="flex h-9 w-9 items-center justify-center rounded-lg bg-indigo-500/20">
                      <Icon className="h-4 w-4 text-indigo-400" />
                    </div>
                    <div className="flex-1">
                      <p className="text-xs text-slate-400">{label}</p>
                      <p className="font-bold text-white">{value}</p>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ── NIVEAUX ── */}
      <section className="mx-auto max-w-6xl px-4 py-20">
        <div className="mb-10 text-center">
          <h2 className="text-3xl font-extrabold tracking-tight text-slate-900">
            Choisis ton niveau
          </h2>
          <p className="mt-2 text-slate-500">
            Chaque module regroupe les matières fondamentales, organisées par semestre.
          </p>
        </div>
        <div className="grid gap-5 sm:grid-cols-2 lg:grid-cols-4">
          {YEARS.map((y) => (
            <Link
              key={y.slug}
              href={`/licence/${y.slug}`}
              className={`group relative overflow-hidden rounded-2xl border p-6 transition hover:-translate-y-1 hover:shadow-xl ${y.light}`}
            >
              {/* Gradient accent top */}
              <div className={`absolute inset-x-0 top-0 h-1 bg-gradient-to-r ${y.gradient}`} />
              <span className={`inline-block rounded-full px-2.5 py-0.5 text-xs font-bold ${y.badge} mb-4`}>
                {y.subtitle}
              </span>
              <div className="text-4xl font-extrabold text-slate-900">{y.title}</div>
              <p className="mt-3 text-sm leading-relaxed text-slate-600">{y.desc}</p>
              <div className="mt-5 flex items-center gap-1 text-sm font-semibold text-slate-700 group-hover:gap-2 transition-all">
                Découvrir <ArrowRight className="h-4 w-4" />
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── TRANSVERSES ── */}
      <section className="bg-gradient-to-b from-slate-50 to-white">
        <div className="mx-auto max-w-6xl px-4 py-20">
          <div className="mb-10 text-center">
            <h2 className="text-3xl font-extrabold tracking-tight text-slate-900">
              Outils transversaux
            </h2>
            <p className="mt-2 text-slate-500">
              Deux espaces dédiés pour renforcer ton anglais juridique et ta culture juridique.
            </p>
          </div>
          <div className="grid gap-6 md:grid-cols-3">
            <Link
              href="/transverse/anglais-juridique"
              className="group relative overflow-hidden rounded-2xl bg-gradient-to-br from-indigo-600 to-violet-700 p-8 text-white transition hover:-translate-y-1 hover:shadow-2xl hover:shadow-indigo-500/30 md:col-span-1"
            >
              <div className="pointer-events-none absolute -right-8 -top-8 h-40 w-40 rounded-full bg-white/10" />
              <Languages className="mb-4 h-10 w-10 opacity-90" />
              <div className="text-2xl font-bold">Anglais juridique</div>
              <p className="mt-3 text-sm leading-relaxed text-indigo-100">
                Vocabulaire, expressions et quiz pour maîtriser le lexique juridique anglophone.
              </p>
              <div className="mt-5 flex items-center gap-1 text-sm font-semibold opacity-80 group-hover:opacity-100 transition-all">
                Explorer <ArrowRight className="h-4 w-4" />
              </div>
            </Link>

            <Link
              href="/transverse/culture-generale"
              className="group relative overflow-hidden rounded-2xl bg-gradient-to-br from-rose-500 to-pink-700 p-8 text-white transition hover:-translate-y-1 hover:shadow-2xl hover:shadow-rose-500/30 md:col-span-1"
            >
              <div className="pointer-events-none absolute -right-8 -top-8 h-40 w-40 rounded-full bg-white/10" />
              <Brain className="mb-4 h-10 w-10 opacity-90" />
              <div className="text-2xl font-bold">Culture générale juridique</div>
              <p className="mt-3 text-sm leading-relaxed text-rose-100">
                Grandes figures, adages latins, jurisprudences emblématiques et principes fondateurs.
              </p>
              <div className="mt-5 flex items-center gap-1 text-sm font-semibold opacity-80 group-hover:opacity-100 transition-all">
                Explorer <ArrowRight className="h-4 w-4" />
              </div>
            </Link>

            <Link
              href="/assistant"
              className="group relative overflow-hidden rounded-2xl bg-gradient-to-br from-emerald-600 to-teal-700 p-8 text-white transition hover:-translate-y-1 hover:shadow-2xl hover:shadow-emerald-500/30 md:col-span-1"
            >
              <div className="pointer-events-none absolute -right-8 -top-8 h-40 w-40 rounded-full bg-white/10" />
              <MessageSquare className="mb-4 h-10 w-10 opacity-90" />
              <div className="text-2xl font-bold">Assistant IA juridique</div>
              <p className="mt-3 text-sm leading-relaxed text-emerald-100">
                Pose tes questions de droit à un assistant expert — disponible 24h/24, 7j/7.
              </p>
              <div className="mt-5 flex items-center gap-1 text-sm font-semibold opacity-80 group-hover:opacity-100 transition-all">
                Poser une question <ArrowRight className="h-4 w-4" />
              </div>
            </Link>
          </div>
        </div>
      </section>

      {/* ── FEATURES ── */}
      <section className="mx-auto max-w-6xl px-4 py-20">
        <div className="mb-10 text-center">
          <h2 className="text-3xl font-extrabold tracking-tight text-slate-900">
            Ce que JurisPrép t&apos;apporte
          </h2>
          <p className="mt-2 text-slate-500">
            Une plateforme complète pour ne rien laisser au hasard.
          </p>
        </div>
        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
          {FEATURES.map((line) => (
            <div
              key={line}
              className="flex items-start gap-4 rounded-xl border border-slate-100 bg-slate-50 p-5 transition hover:border-indigo-200 hover:bg-indigo-50"
            >
              <CheckCircle2 className="mt-0.5 h-5 w-5 shrink-0 text-indigo-500" />
              <p className="text-sm leading-relaxed text-slate-700">{line}</p>
            </div>
          ))}
        </div>
      </section>

      {/* ── CTA BANNER ── */}
      <section className="mx-auto max-w-6xl px-4 pb-20">
        <div className="relative overflow-hidden rounded-3xl bg-gradient-to-br from-indigo-600 to-violet-700 px-8 py-14 text-center text-white shadow-2xl shadow-indigo-500/30">
          <div className="pointer-events-none absolute -left-20 -top-20 h-60 w-60 rounded-full bg-white/10 blur-2xl" />
          <div className="pointer-events-none absolute -right-20 -bottom-20 h-60 w-60 rounded-full bg-white/10 blur-2xl" />
          <Scale className="mx-auto mb-4 h-12 w-12 opacity-80" />
          <h2 className="text-3xl font-extrabold sm:text-4xl">
            Prêt à booster tes révisions ?
          </h2>
          <p className="mt-3 text-indigo-100">
            Rejoins JurisPrép et accède à tout le contenu pédagogique dès aujourd&apos;hui.
          </p>
          <div className="mt-8 flex flex-wrap justify-center gap-3">
            <Link
              href="/auth/signup"
              className="rounded-xl bg-white px-7 py-3 font-bold text-indigo-700 shadow-lg transition hover:bg-indigo-50"
            >
              Créer un compte gratuit
            </Link>
            <Link
              href="/tarifs"
              className="rounded-xl border border-white/30 bg-white/10 px-7 py-3 font-semibold text-white backdrop-blur transition hover:bg-white/20"
            >
              Voir les tarifs
            </Link>
          </div>
        </div>
      </section>
    </div>
  );
}
