import Link from "next/link";
import { createAdminClient } from "@/lib/supabase/admin";
import { ArrowRight, CheckCircle2 } from "lucide-react";

const YEARS = [
  {
    slug: "lyceen",
    tag: "Préparation",
    title: "Lycéen",
    desc: "Méthodologie, vocabulaire juridique et découverte des matières de L1.",
    bg: "#F5B700",
    light: "#FFFAE6",
    text: "#78590A",
  },
  {
    slug: "l1",
    tag: "Première année",
    title: "Licence 1",
    desc: "Introduction au droit, droit constitutionnel, droit civil, institutions judiciaires.",
    bg: "#F4622A",
    light: "#FFF2EE",
    text: "#7C2A0E",
  },
  {
    slug: "l2",
    tag: "Deuxième année",
    title: "Licence 2",
    desc: "Administratif, pénal, contrats, procédure pénale, UE, droit des affaires.",
    bg: "#0DB37A",
    light: "#E8FBF4",
    text: "#065E3F",
  },
  {
    slug: "l3",
    tag: "Troisième année",
    title: "Licence 3",
    desc: "Contentieux administratif, fiscal, social, droit international.",
    bg: "#5B5FE8",
    light: "#EEEEFF",
    text: "#2D2F8C",
  },
];

function formatCount(n: number | null): string {
  if (!n) return "—";
  if (n >= 100) return `${Math.floor(n / 10) * 10}+`;
  return String(n);
}

export default async function HomePage() {
  // Compteurs via le client admin (serveur) : la RLS réserve désormais le
  // contenu aux abonnés, mais les totaux restent affichables publiquement.
  const supabase = createAdminClient();
  const [subjectsRes, sheetsRes, flashcardsRes, quizzesRes] = await Promise.all([
    supabase.from("subjects").select("*", { count: "exact", head: true }).eq("is_published", true),
    supabase.from("revision_sheets").select("id", { count: "exact", head: true }).eq("is_published", true),
    supabase.from("flashcards").select("id", { count: "exact", head: true }).eq("is_published", true),
    supabase.from("quizzes").select("id", { count: "exact", head: true }).eq("is_published", true),
  ]);
  const subjectsCount = subjectsRes.count;
  const sheetsCount = formatCount(sheetsRes.count);
  const flashcardsCount = formatCount(flashcardsRes.count);
  const quizzesCount = formatCount(quizzesRes.count);

  const FEATURES = [
    { num: sheetsCount, label: "Fiches de cours", desc: "Résumés clairs, par chapitre et par matière" },
    { num: quizzesCount, label: "Quiz corrigés", desc: "Teste-toi chapitre par chapitre, réponses expliquées" },
    { num: flashcardsCount, label: "Flashcards", desc: "Mémorisation active, organisée par matière et chapitre" },
    { num: "IA", label: "Assistant juridique", desc: "Pose tes questions de droit 24h/24, 7j/7" },
  ];

  return (
    <div style={{ background: "#FFF8EE", color: "#2C1810" }}>

      {/* ── HERO ── */}
      <section className="mx-auto px-5 pt-16 pb-12 text-center sm:pt-24" style={{ maxWidth: 820 }}>

        <span className="inline-flex items-center gap-2 rounded-full px-3 py-1 text-xs font-bold uppercase tracking-widest mb-6"
          style={{ background: "#FFF0E6", color: "#E07B39" }}>
          ✦ Lycée · L1 · L2 · L3
        </span>

        <h1 className="text-5xl font-extrabold leading-none tracking-tight mb-5"
          style={{ fontSize: "clamp(2.25rem, 9vw, 3.75rem)", lineHeight: 1.08, letterSpacing: "-0.03em" }}>
          Réussir tes études de droit,{" "}
          <em style={{ color: "#E07B39", fontStyle: "italic" }}>vraiment.</em>
        </h1>

        <p className="mx-auto mb-9 text-base leading-relaxed sm:text-lg" style={{ color: "#7A5C4A", maxWidth: 560 }}>
          Fiches, quiz corrigés, {flashcardsCount} flashcards et assistant IA — tout ce qu&apos;il te faut pour comprendre le droit, pas juste survivre aux partiels.
        </p>

        <div className="mx-auto mb-12 flex flex-col gap-3 sm:flex-row sm:justify-center" style={{ maxWidth: 520 }}>
          <Link href="/licence/l1"
            className="flex flex-1 items-center justify-center gap-2 rounded-2xl font-bold text-white transition-opacity hover:opacity-90"
            style={{ background: "#E07B39", padding: "15px 24px", fontSize: "0.9375rem", boxShadow: "0 4px 20px rgba(224,123,57,0.35)" }}>
            Explorer les modules <ArrowRight className="h-4 w-4" />
          </Link>
          <Link href="/assistant"
            className="btn-ghost flex flex-1 items-center justify-center gap-2 rounded-2xl font-semibold transition">
            Essayer l&apos;assistant IA ✦
          </Link>
        </div>

        {/* Stats chips */}
        <div className="flex flex-wrap justify-center gap-2 pt-8" style={{ borderTop: "1.5px solid #EDE0CC" }}>
          {[
            { num: flashcardsCount, label: "flashcards" },
            { num: quizzesCount, label: "quiz" },
            { num: sheetsCount, label: "fiches" },
            { num: subjectsCount ?? "—", label: "matières" },
          ].map((s) => (
            <span key={s.label}
              className="flex items-baseline gap-1.5 rounded-full px-3.5 py-1.5"
              style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}>
              <span className="font-extrabold text-sm tracking-tight" style={{ color: "#2C1810" }}>{s.num}</span>
              <span className="text-xs font-medium" style={{ color: "#7A5C4A" }}>{s.label}</span>
            </span>
          ))}
        </div>
      </section>


      {/* ── APERÇU DU PRODUIT ── */}
      <section className="mx-auto max-w-5xl px-5 pb-16">
        <div className="grid gap-4 md:grid-cols-2">
          <div className="rounded-2xl p-6" style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>Quiz corrigé</p>
            <p className="mb-4 font-bold" style={{ color: "#2C1810" }}>
              Quel article de la Constitution de 1958 permet au Président de la République de prendre les mesures exigées par des circonstances exceptionnelles&nbsp;?
            </p>
            <div className="space-y-2 text-sm">
              {["Article 5", "Article 16", "Article 49", "Article 89"].map((c, i) => (
                <div key={c} className="rounded-xl px-4 py-2.5 font-medium"
                  style={i === 1
                    ? { background: "#E8FBF4", border: "1.5px solid #0DB37A", color: "#065E3F" }
                    : { background: "#FFF8EE", border: "1.5px solid #EDE0CC", color: "#7A5C4A" }}>
                  {c}
                </div>
              ))}
            </div>
            <p className="mt-4 text-xs leading-relaxed" style={{ color: "#7A5C4A" }}>
              Chaque réponse est expliquée : tu comprends pourquoi, pas seulement quoi.
            </p>
          </div>

          <div className="rounded-2xl p-6" style={{ background: "#2C1810" }}>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>Flashcard</p>
            <p className="mb-6 text-xl font-extrabold" style={{ color: "#FFF8EE", letterSpacing: "-0.02em" }}>
              Que signifie l&apos;adage «&nbsp;Pacta sunt servanda&nbsp;»&nbsp;?
            </p>
            <div className="rounded-xl p-4 text-sm leading-relaxed"
              style={{ background: "rgba(255,248,238,0.08)", color: "rgba(255,248,238,0.8)" }}>
              Les conventions doivent être respectées : un contrat légalement formé tient lieu de loi à ceux qui l&apos;ont fait.
            </div>
            <p className="mt-4 text-xs leading-relaxed" style={{ color: "rgba(255,248,238,0.5)" }}>
              Retourne la carte, vérifie, recommence jusqu&apos;à ce que ce soit acquis.
            </p>
          </div>
        </div>
      </section>

      {/* ── COMMENT ÇA MARCHE ── */}
      <section className="mx-auto max-w-6xl px-5 pb-16">
        <p className="mb-2 text-center text-xs font-bold uppercase tracking-widest" style={{ color: "#7A5C4A" }}>Comment ça marche</p>
        <h2 className="mb-8 text-center text-3xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
          Trois étapes, pas plus
        </h2>
        <div className="grid gap-4 md:grid-cols-3">
          {[
            { n: "1", t: "Choisis ton niveau", d: "Lycéen, L1, L2 ou L3 : retrouve tes matières, chapitre par chapitre." },
            { n: "2", t: "Apprends", d: "Lis les fiches, puis fixe l'essentiel avec les flashcards." },
            { n: "3", t: "Teste-toi", d: "Quiz corrigés, exercices et sujets d'examen. Bloqué ? L'assistant IA t'aide." },
          ].map((x) => (
            <div key={x.n} className="rounded-2xl p-6 text-center" style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}>
              <div className="mx-auto mb-4 flex h-10 w-10 items-center justify-center rounded-full text-base font-extrabold text-white"
                style={{ background: "#E07B39" }}>{x.n}</div>
              <div className="mb-1 font-bold" style={{ color: "#2C1810" }}>{x.t}</div>
              <div className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>{x.d}</div>
            </div>
          ))}
        </div>
      </section>

      {/* ── NIVEAUX ── */}
      <section className="mx-auto max-w-6xl px-5 pb-16">
        <p className="mb-2 text-center text-xs font-bold uppercase tracking-widest" style={{ color: "#7A5C4A" }}>Par niveau</p>
        <h2 className="mb-8 text-center text-3xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
          Où en es-tu&nbsp;?
        </h2>

        <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
          {YEARS.map((y) => (
            <Link key={y.slug} href={`/licence/${y.slug}`}
              className="flex h-full flex-col overflow-hidden rounded-2xl transition hover:-translate-y-0.5"
              style={{ boxShadow: "0 2px 0 rgba(44,24,16,0.04)", textDecoration: "none" }}>
              {/* Coloured top */}
              <div className="flex items-start justify-between px-5 pt-5 pb-4"
                style={{ background: y.bg }}>
                <div>
                  <span className="inline-block rounded-full px-2.5 py-0.5 text-xs font-bold uppercase tracking-wider mb-2"
                    style={{ background: "rgba(255,255,255,0.25)", color: "white" }}>
                    {y.tag}
                  </span>
                  <div className="text-2xl font-extrabold text-white tracking-tight">{y.title}</div>
                </div>
                <div className="flex-shrink-0 w-9 h-9 rounded-full flex items-center justify-center text-white text-lg mt-1"
                  style={{ background: "rgba(255,255,255,0.2)" }}>
                  →
                </div>
              </div>
              {/* Light bottom */}
              <div className="flex-1 px-5 py-4 text-sm font-medium leading-snug"
                style={{ background: y.light, color: y.text }}>
                {y.desc}
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── FEATURES ── */}
      <section className="mx-auto max-w-6xl px-5 pb-16">
        <p className="mb-2 text-center text-xs font-bold uppercase tracking-widest" style={{ color: "#7A5C4A" }}>Méthode</p>
        <h2 className="mb-8 text-center text-3xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
          Pour vraiment progresser
        </h2>

        <div className="grid grid-cols-2 gap-4 lg:grid-cols-4">
          {FEATURES.map((f) => (
            <div key={f.label}
              className="rounded-2xl p-6 text-center transition"
              style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}>
              <div className="text-3xl font-extrabold mb-1 tracking-tight"
                style={{ color: "#E07B39", letterSpacing: "-0.04em", fontVariantNumeric: "tabular-nums" }}>
                {f.num}
              </div>
              <div className="font-bold text-sm mb-1" style={{ color: "#2C1810" }}>{f.label}</div>
              <div className="text-xs leading-relaxed" style={{ color: "#7A5C4A" }}>{f.desc}</div>
            </div>
          ))}
        </div>
      </section>

      {/* ── OUTILS TRANSVERSAUX ── */}
      <section className="mx-auto max-w-6xl px-5 pb-16">
        <p className="mb-2 text-center text-xs font-bold uppercase tracking-widest" style={{ color: "#7A5C4A" }}>Aller plus loin</p>
        <h2 className="mb-8 text-center text-3xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
          Outils transversaux
        </h2>

        <div className="mx-auto grid max-w-3xl gap-4 md:grid-cols-2">
          {[
            {
              href: "/transverse/anglais-juridique",
              label: "Anglais juridique",
              desc: "Vocabulaire et quiz pour maîtriser le lexique anglophone.",
              bg: "#5B5FE8",
              light: "#EEEEFF",
              text: "#2D2F8C",
            },
            {
              href: "/transverse/culture-generale",
              label: "Culture générale juridique",
              desc: "Grandes figures, adages latins, jurisprudences emblématiques.",
              bg: "#F4622A",
              light: "#FFF2EE",
              text: "#7C2A0E",
            },
          ].map((t) => (
            <Link key={t.href} href={t.href}
              className="flex h-full flex-col overflow-hidden rounded-2xl transition hover:-translate-y-0.5"
              style={{ textDecoration: "none" }}>
              <div className="flex items-center justify-between px-5 py-4" style={{ background: t.bg }}>
                <div className="text-lg font-extrabold text-white tracking-tight">{t.label}</div>
                <div className="text-white text-lg">→</div>
              </div>
              <div className="flex-1 px-5 py-4 text-sm font-medium" style={{ background: t.light, color: t.text }}>
                {t.desc}
              </div>
            </Link>
          ))}
        </div>
      </section>


      {/* ── CTA FINAL ── */}
      <section className="mx-auto max-w-4xl px-5 pb-20">
        <div className="rounded-3xl p-10 text-center sm:p-14" style={{ background: "#2C1810" }}>
          <h2 className="text-3xl font-extrabold tracking-tight mb-2"
            style={{ color: "#FFF8EE", letterSpacing: "-0.03em" }}>
            Prêt à changer ta façon de bosser&nbsp;?
          </h2>
          <p className="text-sm mb-7" style={{ color: "rgba(255,248,238,0.5)" }}>
            Gratuit pour commencer. Aucune carte requise.
          </p>
          <Link href="/auth/signup"
            className="inline-flex items-center gap-2 rounded-full font-bold transition-opacity hover:opacity-90"
            style={{ background: "#FFF8EE", color: "#2C1810", padding: "14px 28px", fontSize: "0.9375rem" }}>
            Accéder gratuitement <ArrowRight className="h-4 w-4" />
          </Link>
        </div>
      </section>

    </div>
  );
}
