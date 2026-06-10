"use client";

import { useState } from "react";
import {
  FileText,
  Gavel,
  Play,
  HelpCircle,
  Layers,
  PenSquare,
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
  const tabs: { key: TabKey; label: string; icon: React.ReactNode; count: number }[] = [
    { key: "fiches", label: "Fiches", icon: <FileText className="h-4 w-4" />, count: sheets.length },
    { key: "arrets", label: "Arrêts", icon: <Gavel className="h-4 w-4" />, count: caseLaw.length },
    { key: "videos", label: "Vidéos", icon: <Play className="h-4 w-4" />, count: videos.length },
    { key: "quiz", label: "Quiz", icon: <HelpCircle className="h-4 w-4" />, count: quizzes.length },
    { key: "flashcards", label: "Flashcards", icon: <Layers className="h-4 w-4" />, count: flashcards.length },
    { key: "exercices", label: "Exercices", icon: <PenSquare className="h-4 w-4" />, count: exercises.length },
  ];

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
                    ⏱ {s.estimated_read_time} min de lecture
                  </p>
                )}
              </header>
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
      {videos.map((v) => {
        const isDirectVideo = /\.(mp4|webm|mov|m4v)(\?|$)/i.test(v.video_url);
        return (
          <article key={v.id} className="overflow-hidden rounded-xl border border-ink-200 bg-white">
            <div className="relative flex aspect-video w-full items-center justify-center bg-ink-900">
              {isDirectVideo ? (
                <video
                  src={v.video_url}
                  controls
                  playsInline
                  preload="metadata"
                  poster={v.thumbnail_url ?? undefined}
                  className="max-h-full max-w-full object-contain"
                />
              ) : (
                <iframe
                  src={v.video_url}
                  title={v.title}
                  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                  allowFullScreen
                  className="absolute inset-0 h-full w-full"
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
        );
      })}
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

function ExercisesPanel({ exercises }: { exercises: Exercise[] }) {
  if (exercises.length === 0) return <EmptyState label="les exercices" />;
  return (
    <div className="space-y-6">
      {exercises.map((e) => (
        <ExerciseCard key={e.id} ex={e} />
      ))}
    </div>
  );
}

function ExerciseCard({ ex }: { ex: Exercise }) {
  const [showCorrection, setShowCorrection] = useState(false);
  const typeLabel: Record<string, string> = {
    cas_pratique: "Cas pratique",
    commentaire_arret: "Commentaire d'arrêt",
    dissertation: "Dissertation",
    commentaire_article: "Commentaire d'article",
    qrc: "QRC",
  };
  return (
    <article className="rounded-xl border border-ink-200 bg-white p-6">
      <div className="flex flex-wrap items-center gap-2 text-xs">
        {ex.type && (
          <span className="rounded-full bg-indigo-100 px-2 py-0.5 text-indigo-700">
            {typeLabel[ex.type]}
          </span>
        )}
        {ex.difficulty && (
          <span className="rounded-full bg-amber-100 px-2 py-0.5 text-amber-800">
            {ex.difficulty}
          </span>
        )}
        {ex.estimated_time_minutes && (
          <span className="text-ink-500">⏱ {ex.estimated_time_minutes} min</span>
        )}
      </div>
      <h3 className="mt-3 text-lg font-bold text-ink-900">{ex.title}</h3>
      <div className="prose-jurisprep mt-4">
        <ReactMarkdown remarkPlugins={[remarkGfm]}>{ex.statement}</ReactMarkdown>
      </div>
      {ex.methodology_tips && (
        <details className="mt-4 rounded-lg bg-indigo-50 p-4">
          <summary className="cursor-pointer text-sm font-semibold text-indigo-700">
            💡 Méthodologie
          </summary>
          <div className="prose-jurisprep mt-2 text-sm">
            <ReactMarkdown remarkPlugins={[remarkGfm]}>
              {ex.methodology_tips}
            </ReactMarkdown>
          </div>
        </details>
      )}
      {ex.correction && (
        <div className="mt-4">
          <button
            onClick={() => setShowCorrection((v) => !v)}
            className="rounded-md bg-emerald-600 px-4 py-2 text-sm text-white hover:bg-emerald-700"
          >
            {showCorrection ? "Masquer la correction" : "Voir la correction"}
          </button>
          {showCorrection && (
            <div className="prose-jurisprep mt-4 rounded-lg border border-emerald-200 bg-emerald-50 p-4">
              <ReactMarkdown remarkPlugins={[remarkGfm]}>{ex.correction}</ReactMarkdown>
            </div>
          )}
        </div>
      )}
    </article>
  );
}
