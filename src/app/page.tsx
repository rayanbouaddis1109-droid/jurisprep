import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
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

const FEATURES = [
  { num: "80+", label: "Fiches de cours", desc: "Résumés clairs, par chapitre et par matière" },
  { num: "150+", label: "Arrêts commentés", desc: "Les décisions fondamentales, analysées pas à pas" },
  { num: "1 440", label: "Flashcards", desc: "Mémorisation active, organisée par matière et chapitre" },
  { num: "IA", label: "Assistant juridique", desc: "Pose tes questions de droit 24h/24, 7j/7" },
];

export default async function HomePage() {
  const supabase = createClient();
  const { count: subjectsCount } = await supabase
    .from("subjects")
    .select("*", { count: "exact", head: true })
    .eq("is_published", true);

  return (
    <div style={{ background: "#FFF8EE", color: "#2C1810" }}>

      {/* ── HERO ── */}
      <section className="px-5 pt-14 pb-10" style={{ maxWidth: 680 }}>

        <span className="inline-flex items-center gap-2 rounded-full px-3 py-1 text-xs font-bold uppercase tracking-widest mb-6"
          style={{ background: "#FFF0E6", color: "#E07B39" }}>
          ✦ Lycée · L1 · L2 · L3
        </span>

        <h1 className="text-5xl font-extrabold leading-none tracking-tight mb-5"
          style={{ fontSize: "clamp(2.25rem, 9vw, 3.75rem)", lineHeight: 1.08, letterSpacing: "-0.03em" }}>
          Réussir tes études de droit,{" "}
          <em style={{ color: "#E07B39", fontStyle: "italic" }}>vraiment.</em>
        </h1>

        <p className="text-base leading-relaxed mb-8" style={{ color: "#7A5C4A", maxWidth: 480 }}>
          Fiches, arrêts commentés, 1&nbsp;440 flashcards et assistant IA — tout ce qu&apos;il te faut pour comprendre le droit, pas juste survivre aux partiels.
        </p>

        <div className="flex flex-col gap-3 mb-10" style={{ maxWidth: 400 }}>
          <Link href="/licence/l1"
            className="flex items-center justify-center gap-2 rounded-2xl font-bold text-white transition-opacity hover:opacity-90"
            style={{ background: "#E07B39", padding: "15px 24px", fontSize: "0.9375rem", boxShadow: "0 4px 20px rgba(224,123,57,0.35)" }}>
            Explorer les modules <ArrowRight className="h-4 w-4" />
          </Link>
          <Link href="/assistant"
            className="btn-ghost flex items-center justify-center gap-2 rounded-2xl font-semibold transition">
            Essayer l&apos;assistant IA ✦
          </Link>
        </div>

        {/* Stats chips */}
        <div className="flex flex-wrap gap-2 pt-7" style={{ borderTop: "1.5px solid #EDE0CC" }}>
          {[
            { num: "1 440", label: "flashcards" },
            { num: "150+", label: "arrêts" },
            { num: "80+", label: "fiches" },
            { num: subjectsCount ?? "31", label: "matières" },
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

      {/* ── NIVEAUX ── */}
      <section className="px-5 pb-12">
        <p className="text-xs font-bold uppercase tracking-widest mb-2" style={{ color: "#7A5C4A" }}>Par niveau</p>
        <h2 className="text-3xl font-extrabold tracking-tight mb-6" style={{ letterSpacing: "-0.03em" }}>
          Où en es-tu&nbsp;?
        </h2>

        <div className="flex flex-col gap-3">
          {YEARS.map((y) => (
            <Link key={y.slug} href={`/licence/${y.slug}`}
              className="block rounded-2xl overflow-hidden transition hover:-translate-y-0.5"
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
              <div className="px-5 py-3 text-sm font-medium leading-snug"
                style={{ background: y.light, color: y.text }}>
                {y.desc}
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── FEATURES ── */}
      <section className="px-5 pb-12">
        <p className="text-xs font-bold uppercase tracking-widest mb-2" style={{ color: "#7A5C4A" }}>Méthode</p>
        <h2 className="text-3xl font-extrabold tracking-tight mb-6" style={{ letterSpacing: "-0.03em" }}>
          Pour vraiment progresser
        </h2>

        <div className="grid grid-cols-2 gap-3">
          {FEATURES.map((f) => (
            <div key={f.label}
              className="rounded-2xl p-5 transition"
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
      <section className="px-5 pb-12">
        <p className="text-xs font-bold uppercase tracking-widest mb-2" style={{ color: "#7A5C4A" }}>Aller plus loin</p>
        <h2 className="text-3xl font-extrabold tracking-tight mb-6" style={{ letterSpacing: "-0.03em" }}>
          Outils transversaux
        </h2>

        <div className="flex flex-col gap-3">
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
              className="block rounded-2xl overflow-hidden transition hover:-translate-y-0.5"
              style={{ textDecoration: "none" }}>
              <div className="flex items-center justify-between px-5 py-4" style={{ background: t.bg }}>
                <div className="text-lg font-extrabold text-white tracking-tight">{t.label}</div>
                <div className="text-white text-lg">→</div>
              </div>
              <div className="px-5 py-3 text-sm font-medium" style={{ background: t.light, color: t.text }}>
                {t.desc}
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* ── TÉMOIGNAGE ── */}
      <section className="px-5 pb-12">
        <div className="rounded-2xl p-6" style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}>
          <div className="text-xl mb-3" style={{ color: "#F5B700" }}>★★★★★</div>
          <p className="text-base leading-relaxed mb-5 italic" style={{ color: "#2C1810" }}>
            &ldquo;JurisPrep m&apos;a permis de passer mes partiels de L2 sereinement. Les flashcards sont exactement ce qu&apos;il me fallait pour mémoriser sans stresser.&rdquo;
          </p>
          <div className="flex items-center gap-3">
            <div className="w-9 h-9 rounded-full flex items-center justify-center text-xs font-bold flex-shrink-0"
              style={{ background: "#EEEEFF", border: "2px solid #5B5FE8", color: "#5B5FE8" }}>
              SL
            </div>
            <div>
              <div className="font-bold text-sm" style={{ color: "#2C1810" }}>Sofia L.</div>
              <div className="text-xs" style={{ color: "#7A5C4A" }}>Étudiante L2 Droit — Paris II</div>
            </div>
          </div>
        </div>
      </section>

      {/* ── CTA FINAL ── */}
      <section className="px-5 pb-14">
        <div className="rounded-3xl p-10 text-center" style={{ background: "#2C1810" }}>
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
