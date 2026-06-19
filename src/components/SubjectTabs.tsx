"use client";

import { useState } from "react";
import {
  FileText,
  Gavel,
  Play,
  HelpCircle,
  Layers,
  PenSquare,
  ChevronDown,
  ChevronRight,
  FolderOpen,
  Scale,
} from "lucide-react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import type {
  CaseLawSheet,
  Exercise,
  Flashcard,
  Quiz,
  RevisionSheet,
  Video,
} from "@/lib/types";
import { QuizPlayer } from "./QuizPlayer";
import { FlashcardDeck } from "./FlashcardDeck";

type TabKey = "fiches" | "arrets" | "videos" | "quiz" | "flashcards" | "exercices";

export function SubjectTabs({
  sheets,
  caseLaw,
  videos,
  quizzes,
  flashcards,
  exercises,
}: {
  sheets: RevisionSheet[];
  caseLaw: CaseLawSheet[];
  videos: Video[];
  quizzes: Quiz[];
  flashcards: Flashcard[];
  exercises: Exercise[];
}) {
  const allTabs: { key: TabKey; label: string; icon: React.ReactNode; count: number; hideIfEmpty?: boolean }[] = [
    { key: "fiches", label: "Fiches", icon: <FileText className="h-4 w-4" />, count: sheets.length },
    { key: "arrets", label: "Arrêts", icon: <Gavel className="h-4 w-4" />, count: caseLaw.length, hideIfEmpty: true },
    { key: "videos", label: "Vidéos", icon: <Play className="h-4 w-4" />, count: videos.length },
    { key: "quiz", label: "Quiz", icon: <HelpCircle className="h-4 w-4" />, count: quizzes.length },
    { key: "flashcards", label: "Flashcards", icon: <Layers className="h-4 w-4" />, count: flashcards.length },
    { key: "exercices", label: "Exercices", icon: <PenSquare className="h-4 w-4" />, count: exercises.length },
  ];
  const tabs = allTabs.filter((t) => !t.hideIfEmpty || t.count > 0);

  const firstWithContent = tabs.find((t) => t.count > 0)?.key ?? "fiches";
  const [active, setActive] = useState<TabKey>(firstWithContent);

  return (
    <div>
      <div className="flex flex-wrap gap-2 border-b border-ink-200">
        {tabs.map((t) => (
          <button
            key={t.key}
            onClick={() => setActive(t.key)}
            className={`flex items-center gap-2 rounded-t-md px-4 py-2 text-sm transition ${
              active === t.key
                ? "border-b-2 border-indigo-600 text-indigo-700"
                : "text-ink-600 hover:text-indigo-600"
            }`}
          >
            {t.icon}
            {t.label}
            <span className="rounded-full bg-ink-100 px-2 py-0.5 text-xs text-ink-700">
              {t.count}
            </span>
          </button>
        ))}
      </div>

      <div className="mt-6">
        {active === "fiches" && <FichesPanel sheets={sheets} />}
        {active === "arrets" && <ArretsPanel items={caseLaw} />}
        {active === "videos" && <VideosPanel videos={videos} />}
        {active === "quiz" && <QuizzesPanel quizzes={quizzes} />}
        {active === "flashcards" && <FlashcardsPanel flashcards={flashcards} />}
        {active === "exercices" && <ExercisesPanel exercises={exercises} />}
      </div>
    </div>
  );
}

function EmptyState({ label }: { label: string }) {
  return (
    <div className="rounded-lg border border-dashed border-ink-300 p-8 text-center text-ink-600">
      Aucun contenu publié pour {label} pour le moment.
    </div>
  );
}

function FichesPanel({ sheets }: { sheets: RevisionSheet[] }) {
  const [openId, setOpenId] = useState<string | null>(sheets[0]?.id ?? null);
  if (sheets.length === 0) return <EmptyState label="les fiches" />;
  return (
    <div className="grid gap-6 lg:grid-cols-[260px_1fr]">
      <aside className="space-y-2">
        {sheets.map((s) => (
          <button
            key={s.id}
            onClick={() => setOpenId(s.id)}
            className={`block w-full rounded-md border px-3 py-2 text-left text-sm transition ${
              openId === s.id
                ? "border-indigo-300 bg-indigo-50 text-indigo-700"
                : "border-ink-200 bg-white hover:border-indigo-200"
            }`}
          >
            <div className="font-medium">{s.title}</div>
            {s.chapter && <div className="text-xs text-ink-500">{s.chapter}</div>}
          </button>
        ))}
      </aside>
      <article className="rounded-xl border border-ink-200 bg-white p-6">
        {sheets
          .filter((s) => s.id === openId)
          .map((s) => (
            <div key={s.id}>
              <header className="mb-4 border-b border-ink-100 pb-4">
                <h2 className="text-2xl font-bold text-ink-900">{s.title}</h2>
                {s.summary && <p className="mt-2 text-ink-600">{s.summary}</p>}
                {s.key_concepts && s.key_concepts.length > 0 && (
                  <div className="mt-3 flex flex-wrap gap-1.5">
                    {s.key_concepts.map((c) => (
                      <span
                        key={c}
                        className="rounded-full bg-indigo-50 px-2 py-0.5 text-xs text-indigo-700"
                      >
                        {c}
                      </span>
                    ))}
                  </div>
                )}
                {s.estimated_read_time && (
                  <p className="mt-2 text-xs text-ink-500">
                    {s.estimated_read_time} min de lecture
                  </p>
                )}
              </header>
              {/* Légende du code couleur */}
              <div className="mb-5 flex flex-wrap gap-2 rounded-lg border border-slate-200 bg-slate-50 px-4 py-3">
                <span className="text-[10px] font-bold uppercase tracking-widest text-slate-500 w-full mb-1">Code couleur</span>
                <span className="flex items-center gap-1.5 text-xs font-semibold text-blue-700"><span className="inline-block h-2.5 w-2.5 rounded-full bg-blue-600"></span>Titres principaux</span>
                <span className="flex items-center gap-1.5 text-xs font-semibold text-red-600"><span className="inline-block h-2.5 w-2.5 rounded-full bg-red-600"></span>Sous-titres &amp; mots-clés</span>
                <span className="flex items-center gap-1.5 text-xs font-semibold text-green-700"><span className="inline-block h-2.5 w-2.5 rounded-full bg-green-600"></span>Définitions &amp; points à retenir</span>
                <span className="flex items-center gap-1.5 text-xs font-semibold text-orange-700"><span className="inline-block h-2.5 w-2.5 rounded-full bg-orange-500"></span>Articles de loi &amp; citations</span>
              </div>
              <div className="prose-jurisprep">
                <ReactMarkdown remarkPlugins={[remarkGfm]}>{s.content}</ReactMarkdown>
              </div>
            </div>
          ))}
      </article>
    </div>
  );
}

function ArretsPanel({ items }: { items: CaseLawSheet[] }) {
  if (items.length === 0) return <EmptyState label="les arrêts" />;
  return (
    <div className="grid gap-5 md:grid-cols-2">
      {items.map((a) => (
        <article
          key={a.id}
          className="rounded-xl border border-ink-200 bg-white p-5 transition hover:shadow-md"
        >
          <h3 className="text-lg font-bold text-ink-900">{a.title}</h3>
          <p className="mt-1 text-xs text-ink-500">
            {a.jurisdiction} · {a.reference}
          </p>
          <div className="mt-4 space-y-3 text-sm">
            {a.facts && (
              <Section title="Faits">
                <p>{a.facts}</p>
              </Section>
            )}
            {a.procedure && (
              <Section title="Procédure">
                <p>{a.procedure}</p>
              </Section>
            )}
            {a.legal_question && (
              <Section title="Problème de droit">
                <p>{a.legal_question}</p>
              </Section>
            )}
            {a.solution && (
              <Section title="Solution">
                <p>{a.solution}</p>
              </Section>
            )}
            {a.portee && (
              <Section title="Portée">
                <p>{a.portee}</p>
              </Section>
            )}
            {a.related_articles && a.related_articles.length > 0 && (
              <div className="flex flex-wrap gap-1.5 pt-2">
                {a.related_articles.map((r) => (
                  <span
                    key={r}
                    className="rounded-full bg-ink-100 px-2 py-0.5 text-xs text-ink-700"
                  >
                    {r}
                  </span>
                ))}
              </div>
            )}
          </div>
        </article>
      ))}
    </div>
  );
}

function Section({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <div>
      <div className="text-xs font-semibold uppercase tracking-wide text-indigo-600">
        {title}
      </div>
      <div className="mt-1 text-ink-700">{children}</div>
    </div>
  );
}

function VideosPanel({ videos }: { videos: Video[] }) {
  if (videos.length === 0) return <EmptyState label="les vidéos" />;
  return (
    <div className="grid gap-5 md:grid-cols-2 lg:grid-cols-3">
      {videos.map((v) => (
        <article key={v.id} className="rounded-xl border border-ink-200 bg-white">
          <div className="relative w-full rounded-t-xl overflow-hidden bg-black" style={{ paddingTop: "56.25%" }}>
            {v.video_url.includes("youtube.com") || v.video_url.includes("youtu.be") ? (
              <iframe
                src={v.video_url}
                title={v.title}
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowFullScreen
                className="absolute inset-0 h-full w-full"
              />
            ) : (
              <video
                src={`${v.video_url}#t=0.001`}
                controls
                className="absolute inset-0 h-full w-full object-contain"
                preload="metadata"
              />
            )}
          </div>
          <div className="p-4">
            <h3 className="font-semibold text-ink-900">{v.title}</h3>
            {v.description && (
              <p className="mt-2 text-sm text-ink-600">{v.description}</p>
            )}
          </div>
        </article>
      ))}
    </div>
  );
}

function QuizzesPanel({ quizzes }: { quizzes: Quiz[] }) {
  if (quizzes.length === 0) return <EmptyState label="les quiz" />;
  return (
    <div className="space-y-6">
      {quizzes.map((q) => (
        <QuizPlayer key={q.id} quiz={q} />
      ))}
    </div>
  );
}

function FlashcardsPanel({ flashcards }: { flashcards: Flashcard[] }) {
  if (flashcards.length === 0) return <EmptyState label="les flashcards" />;
  const decks = Array.from(
    new Set(flashcards.map((f) => f.deck_name ?? "Général")),
  );
  return (
    <div className="space-y-8">
      {decks.map((deck) => (
        <FlashcardDeck
          key={deck}
          deckName={deck}
          cards={flashcards.filter((f) => (f.deck_name ?? "Général") === deck)}
        />
      ))}
    </div>
  );
}

const CHAPTER_ORDER = [
  "Introduction : notion d'obligation et de contrat",
  "La formation du contrat : offre et acceptation",
  "Pourparlers et avant-contrats",
  "Le consentement et ses vices",
  "Capacité, contenu et conditions de validité",
  "La nullité du contrat",
  "Les effets du contrat : force obligatoire et inexécution",
  "L'effet relatif et l'opposabilité du contrat",
];

const DOSSIER_COLORS = [
  { bg: "bg-blue-600", light: "bg-blue-50", border: "border-blue-200", text: "text-blue-700", badge: "bg-blue-100 text-blue-700" },
  { bg: "bg-emerald-600", light: "bg-emerald-50", border: "border-emerald-200", text: "text-emerald-700", badge: "bg-emerald-100 text-emerald-700" },
  { bg: "bg-orange-500", light: "bg-orange-50", border: "border-orange-200", text: "text-orange-700", badge: "bg-orange-100 text-orange-700" },
  { bg: "bg-red-600", light: "bg-red-50", border: "border-red-200", text: "text-red-700", badge: "bg-red-100 text-red-700" },
  { bg: "bg-sky-600", light: "bg-sky-50", border: "border-sky-200", text: "text-sky-700", badge: "bg-sky-100 text-sky-700" },
  { bg: "bg-teal-600", light: "bg-teal-50", border: "border-teal-200", text: "text-teal-700", badge: "bg-teal-100 text-teal-700" },
  { bg: "bg-indigo-600", light: "bg-indigo-50", border: "border-indigo-200", text: "text-indigo-700", badge: "bg-indigo-100 text-indigo-700" },
  { bg: "bg-rose-600", light: "bg-rose-50", border: "border-rose-200", text: "text-rose-700", badge: "bg-rose-100 text-rose-700" },
] as const;

type DossierColor = typeof DOSSIER_COLORS[number];

function ExercisesPanel({ exercises }: { exercises: Exercise[] }) {
  if (exercises.length === 0) return <EmptyState label="les exercices" />;

  const grouped: Record<string, Exercise[]> = {};
  for (const ex of exercises) {
    const ch = ex.chapter ?? "Autres";
    if (!grouped[ch]) grouped[ch] = [];
    grouped[ch].push(ex);
  }

  const orderedChapters = [
    ...CHAPTER_ORDER.filter((c) => grouped[c]),
    ...Object.keys(grouped).filter((c) => !CHAPTER_ORDER.includes(c)),
  ];

  return (
    <div className="space-y-3">
      {orderedChapters.map((chapter, idx) => (
        <ExerciseDossier
          key={chapter}
          chapter={chapter}
          exercises={grouped[chapter]}
          seanceNum={idx + 1}
          color={DOSSIER_COLORS[idx % DOSSIER_COLORS.length]}
        />
      ))}
    </div>
  );
}

function ExerciseDossier({
  chapter,
  exercises,
  seanceNum,
  color,
}: {
  chapter: string;
  exercises: Exercise[];
  seanceNum: number;
  color: DossierColor;
}) {
  const [open, setOpen] = useState(false);

  return (
    <div className={`overflow-hidden rounded-2xl border-2 ${color.border} bg-white shadow-sm`}>
      <button
        onClick={() => setOpen((o) => !o)}
        className={`flex w-full items-center gap-4 px-5 py-4 text-left transition hover:brightness-95 ${color.light}`}
      >
        <div className={`flex h-10 w-10 shrink-0 items-center justify-center rounded-xl ${color.bg} text-white font-bold text-sm`}>
          {seanceNum}
        </div>
        <div className="flex-1 min-w-0">
          <p className={`text-[10px] font-bold uppercase tracking-widest ${color.text}`}>
            Séance {seanceNum} · {exercises.length} exercice{exercises.length > 1 ? "s" : ""}
          </p>
          <p className="mt-0.5 text-sm font-bold text-ink-900 leading-snug">{chapter}</p>
        </div>
        {open
          ? <ChevronDown className={`h-5 w-5 shrink-0 ${color.text}`} />
          : <ChevronRight className={`h-5 w-5 shrink-0 ${color.text}`} />}
      </button>

      {open && (
        <div className="divide-y divide-ink-100">
          {exercises.map((ex, i) => (
            <ExerciseCard key={ex.id} ex={ex} index={i + 1} color={color} />
          ))}
        </div>
      )}
    </div>
  );
}

function ExerciseCard({
  ex,
  index,
  color,
}: {
  ex: Exercise;
  index: number;
  color: DossierColor;
}) {
  const [showStatement, setShowStatement] = useState(false);
  const [showMethodo, setShowMethodo] = useState(false);
  const [showCorrection, setShowCorrection] = useState(false);

  const typeLabel: Record<string, string> = {
    cas_pratique: "Cas pratique",
    commentaire_arret: "Commentaire d'arrêt",
    dissertation: "Dissertation",
    commentaire_article: "Commentaire d'article",
    qrc: "QRC",
  };

  return (
    <article className="bg-white px-6 py-5">
      <div className="flex items-start gap-3">
        <div className={`flex h-8 w-8 shrink-0 items-center justify-center rounded-lg ${color.bg} text-white text-sm font-bold`}>
          {index}
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex flex-wrap items-center gap-2 mb-1">
            {ex.type && (
              <span className={`rounded-full px-2 py-0.5 text-xs font-semibold ${color.badge}`}>
                {typeLabel[ex.type] ?? ex.type}
              </span>
            )}
            {ex.estimated_time_minutes && (
              <span className="text-xs text-ink-500 font-medium">{ex.estimated_time_minutes} min</span>
            )}
          </div>
          <h3 className="text-sm font-bold text-ink-900 leading-snug">{ex.title}</h3>
        </div>
      </div>

      <div className="mt-4 flex flex-wrap gap-2">
        <button
          onClick={() => setShowStatement((v) => !v)}
          className={`rounded-lg border-2 px-3 py-1.5 text-xs font-bold transition ${
            showStatement
              ? `${color.bg} text-white border-transparent`
              : `${color.border} ${color.text} bg-white`
          }`}
        >
          {showStatement ? "▲ Masquer l'arrêt" : "▼ Lire l'arrêt complet"}
        </button>
        {ex.methodology_tips && (
          <button
            onClick={() => setShowMethodo((v) => !v)}
            className={`rounded-lg border-2 px-3 py-1.5 text-xs font-bold transition ${
              showMethodo
                ? "bg-amber-500 text-white border-transparent"
                : "border-amber-300 text-amber-700 bg-white"
            }`}
          >
            {showMethodo ? "▲ Masquer" : "▼ Méthodologie & Plan"}
          </button>
        )}
        {ex.correction && (
          <button
            onClick={() => setShowCorrection((v) => !v)}
            className={`rounded-lg border-2 px-3 py-1.5 text-xs font-bold transition ${
              showCorrection
                ? "bg-emerald-600 text-white border-transparent"
                : "border-emerald-300 text-emerald-700 bg-white"
            }`}
          >
            {showCorrection ? "▲ Masquer la correction" : "▼ Voir la correction"}
          </button>
        )}
      </div>

      {showStatement && (
        <div className={`mt-4 rounded-xl border-2 ${color.border} ${color.light} p-5`}>
          <p className={`mb-3 text-[10px] font-bold uppercase tracking-widest ${color.text}`}>
            Texte de l'arrêt
          </p>
          <pre className="text-xs leading-relaxed text-ink-800 whitespace-pre-wrap font-sans">
            {ex.statement}
          </pre>
        </div>
      )}

      {showMethodo && ex.methodology_tips && (
        <div className="mt-4 rounded-xl border-2 border-amber-200 bg-amber-50 p-5">
          <p className="mb-3 text-[10px] font-bold uppercase tracking-widest text-amber-700">
            Méthodologie & Plan suggéré
          </p>
          <div className="prose-jurisprep text-sm">
            <ReactMarkdown remarkPlugins={[remarkGfm]}>{ex.methodology_tips}</ReactMarkdown>
          </div>
        </div>
      )}

      {showCorrection && ex.correction && (
        <div className="mt-4 rounded-xl border-2 border-emerald-200 bg-emerald-50 p-5">
          <p className="mb-3 text-[10px] font-bold uppercase tracking-widest text-emerald-700">
            Éléments de correction
          </p>
          <div className="prose-jurisprep text-sm">
            <ReactMarkdown remarkPlugins={[remarkGfm]}>{ex.correction}</ReactMarkdown>
          </div>
        </div>
      )}
    </article>
  );
}
