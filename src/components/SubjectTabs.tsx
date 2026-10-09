"use client";

import { useState } from "react";
import {
  FileText,
  Play,
  HelpCircle,
  Layers,
  PenSquare,
  ChevronDown,
  ChevronRight,
} from "lucide-react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import type {
  Exercise,
  Flashcard,
  Quiz,
  RevisionSheet,
  Subject,
  Video,
} from "@/lib/types";
import { QuizPlayer } from "./QuizPlayer";
import { FlashcardDeck } from "./FlashcardDeck";
import { LockedGrid, type LockedItem } from "./LockedPreview";

type TabKey = "fiches" | "videos" | "quiz" | "flashcards" | "exercices";

const LOCKED_LABELS: Record<TabKey, string> = {
  fiches: "chapitres",
  videos: "vidéos",
  quiz: "quiz",
  flashcards: "paquets",
  exercices: "exercices",
};

const EMPTY_LABELS: Record<TabKey, string> = {
  fiches: "les fiches",
  videos: "les vidéos",
  quiz: "les quiz",
  flashcards: "les flashcards",
  exercices: "les exercices",
};

export function SubjectTabs({
  sheets,
  videos,
  quizzes,
  flashcards,
  exercises,
  counts,
  locked = null,
  isLoggedIn = false,
  level,
  category,
}: {
  sheets: RevisionSheet[];
  videos: Video[];
  quizzes: Quiz[];
  flashcards: Flashcard[];
  exercises: Exercise[];
  counts?: Record<TabKey, number>;
  locked?: Record<TabKey, LockedItem[]> | null;
  isLoggedIn?: boolean;
  level?: Subject["level"];
  category?: Subject["category"];
}) {
  const isVocab = category === "anglais_juridique" || category === "culture_generale";
  const jourCount = new Set(
    flashcards.map((f) => f.deck_name ?? "").filter((d) => /^Jour \d+$/.test(d)),
  ).size;
  const allTabs: { key: TabKey | "jour"; label: string; icon: React.ReactNode; count: number; hideIfEmpty?: boolean; hideForLyceen?: boolean }[] = [
    { key: "fiches", label: "Fiches", icon: <FileText className="h-4 w-4" />, count: counts?.fiches ?? sheets.length },
    { key: "videos", label: "Vidéos", icon: <Play className="h-4 w-4" />, count: counts?.videos ?? videos.length, hideForLyceen: true },
    { key: "quiz", label: "Quiz", icon: <HelpCircle className="h-4 w-4" />, count: counts?.quiz ?? quizzes.length },
    { key: "flashcards", label: "Flashcards", icon: <Layers className="h-4 w-4" />, count: counts?.flashcards ?? flashcards.length },
    { key: "exercices", label: "Exercices", icon: <PenSquare className="h-4 w-4" />, count: counts?.exercices ?? exercises.length, hideForLyceen: true },
  ];
  // La section lycéen se limite aux fiches, aux quiz et aux flashcards.
  // Anglais juridique et culture générale : ni fiches ni vidéos, mais les mots du jour.
  const vocabTabs: typeof allTabs = [
    { key: "jour", label: "Mots du jour", icon: <FileText className="h-4 w-4" />, count: jourCount },
    ...allTabs.filter(
      (t) =>
        t.key !== "fiches" &&
        t.key !== "videos" &&
        !(t.key === "exercices" && category === "anglais_juridique"),
    ),
  ];
  const tabs = (isVocab ? vocabTabs : allTabs).filter(
    (t) => (!t.hideIfEmpty || t.count > 0) && !(t.hideForLyceen && level === "Lycéen"),
  );

  const firstWithContent = tabs.find((t) => t.count > 0)?.key ?? tabs[0].key;
  const [active, setActive] = useState<TabKey | "jour">(firstWithContent);
  const [videoFocus, setVideoFocus] = useState<string | null>(null);

  // Liaison fiches et vidéos. Une vidéo qui porte le titre d'une fiche couvre cette fiche seule ;
  // une vidéo dont le titre n'est celui d'aucune fiche couvre toutes les fiches de son chapitre.
  const ficheRefs: { title: string; chapter: string | null }[] = [];
  for (const sh of sheets) ficheRefs.push({ title: sh.title, chapter: sh.chapter });
  for (const l of locked?.fiches ?? []) {
    if (!ficheRefs.some((r) => r.title === l.title)) ficheRefs.push({ title: l.title, chapter: l.chapter ?? null });
  }
  const ficheTitles = new Set(ficheRefs.map((f) => f.title));
  const allVideos: { id: string; title: string; chapter: string | null }[] = [
    ...videos.map((v) => ({ id: v.id, title: v.title, chapter: v.chapter })),
    ...(locked?.videos ?? []).map((l) => ({ id: l.id, title: l.title, chapter: l.chapter ?? null })),
  ];
  const videoForFiche: Record<string, string> = {};
  for (const f of ficheRefs) {
    const own = allVideos.find((v) => v.title === f.title);
    const wide = allVideos.find((v) => v.chapter && v.chapter === f.chapter && !ficheTitles.has(v.title));
    const found = own ?? wide;
    if (found) videoForFiche[f.title] = found.id;
  }
  function watchVideo(id: string) {
    setVideoFocus(id);
    setActive("videos");
  }

  return (
    <div>
      <div className="flex flex-wrap gap-2 border-b border-ink-200">
        {tabs.map((t) => (
          <button
            key={t.key}
            onClick={() => setActive(t.key)}
            className={`flex items-center gap-2 rounded-t-md px-4 py-2 text-sm transition`}
            style={active === t.key
              ? { borderBottom: "2px solid #E07B39", color: "#E07B39" }
              : { color: "#7A5C4A" }}
          >
            {t.icon}
            {t.label}
            <span className="rounded-full px-2 py-0.5 text-xs" style={{ background: "#EDE0CC", color: "#7A5C4A" }}>
              {t.count}
            </span>
          </button>
        ))}
      </div>

      <div className="mt-6">
        {active === "jour" && <DailyWordsPanel flashcards={flashcards} />}
        {active === "fiches" && sheets.length > 0 && (
          <FichesPanel sheets={sheets} videoForFiche={videoForFiche} onWatch={watchVideo} />
        )}
        {active === "videos" && videos.length > 0 && (
          <VideosPanel videos={videos} fiches={ficheRefs} highlightId={videoFocus} />
        )}
        {active === "quiz" && quizzes.length > 0 && <QuizzesPanel quizzes={quizzes} />}
        {active === "flashcards" && flashcards.length > 0 && (
          <FlashcardsPanel flashcards={flashcards} />
        )}
        {active === "exercices" && exercises.length > 0 && (
          <ExercisesPanel exercises={exercises} />
        )}

        {locked && active !== "jour" && (
          <LockedGrid
            items={locked[active]}
            label={LOCKED_LABELS[active]}
            isLoggedIn={isLoggedIn}
          />
        )}

        {active !== "jour" && counts?.[active] === 0 && <EmptyState label={EMPTY_LABELS[active]} />}
      </div>
    </div>
  );
}

// Le paquet du jour tourne automatiquement : un nouveau paquet de 20 mots chaque jour.
function DailyWordsPanel({ flashcards }: { flashcards: Flashcard[] }) {
  const decks = Array.from(
    new Set(flashcards.map((f) => f.deck_name ?? "").filter((d) => /^Jour \d+$/.test(d))),
  ).sort();
  const [shown, setShown] = useState<Record<string, boolean>>({});
  if (decks.length === 0) {
    return <EmptyState label="les mots du jour" />;
  }
  const dayIndex = Math.floor(Date.now() / 86400000) % decks.length;
  const deck = decks[dayIndex];
  const cards = flashcards.filter((f) => f.deck_name === deck);
  return (
    <div>
      <div className="mb-4">
        <p className="text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
          Aujourd&apos;hui · {deck}
        </p>
        <h2 className="mt-1 text-xl font-bold" style={{ color: "#2C1810" }}>
          {cards.length} mots à apprendre
        </h2>
        <p className="mt-1 text-sm" style={{ color: "#7A5C4A" }}>
          Lis chaque mot, essaie de retrouver la réponse, puis touche la ligne pour la vérifier.
          Reviens demain pour 20 nouveaux mots, ou retrouve tous les jours dans les flashcards.
        </p>
      </div>
      <ul className="divide-y rounded-xl" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
        {cards.map((c) => (
          <li key={c.id}>
            <button
              onClick={() => setShown((p) => ({ ...p, [c.id]: !p[c.id] }))}
              className="w-full px-4 py-3 text-left"
            >
              <span className="font-semibold" style={{ color: "#2C1810" }}>{c.front}</span>
              {shown[c.id] && (
                <span className="mt-1 block text-sm" style={{ color: "#7A5C4A" }}>{c.back}</span>
              )}
            </button>
          </li>
        ))}
      </ul>
    </div>
  );
}

function EmptyState({ label }: { label: string }) {
  return (
    <div className="rounded-lg p-8 text-center text-sm" style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}>
      Aucun contenu publié pour {label} pour le moment.
    </div>
  );
}

// Découpe une fiche en grandes parties pour colorer l'introduction et le « À retenir ».
function FicheContent({ content }: { content: string }) {
  const parts: { kind: "intro" | "retenir" | "main"; md: string }[] = [];
  const lines = content.split("\n");
  let current: string[] = [];
  let kind: "intro" | "retenir" | "main" = "main";
  let inFence = false;
  const flush = () => {
    const md = current.join("\n").trim();
    if (md) parts.push({ kind, md });
    current = [];
  };
  for (const line of lines) {
    if (line.startsWith("```")) inFence = !inFence;
    if (!inFence && line.startsWith("## ")) {
      flush();
      const t = line.slice(3).trim().toLowerCase();
      kind = t.startsWith("introduction") ? "intro" : t.startsWith("à retenir") ? "retenir" : "main";
    }
    current.push(line);
  }
  flush();
  return (
    <>
      {parts.map((p, i) => (
        <div key={i} className={p.kind === "main" ? undefined : `fiche-sec-${p.kind}`}>
          <ReactMarkdown remarkPlugins={[remarkGfm]}>{p.md}</ReactMarkdown>
        </div>
      ))}
    </>
  );
}

function FichesPanel({
  sheets,
  videoForFiche,
  onWatch,
}: {
  sheets: RevisionSheet[];
  videoForFiche: Record<string, string>;
  onWatch: (videoId: string) => void;
}) {
  const [openId, setOpenId] = useState<string | null>(sheets[0]?.id ?? null);
  if (sheets.length === 0) return <EmptyState label="les fiches" />;
  return (
    <div className="grid gap-6 lg:grid-cols-[260px_1fr]">
      <aside className="space-y-2">
        {sheets.map((s) => (
          <button
            key={s.id}
            onClick={() => setOpenId(s.id)}
            className="block w-full rounded-md border px-3 py-2 text-left text-sm transition"
            style={openId === s.id
              ? { borderColor: "#E07B39", background: "#FFF0E6", color: "#E07B39" }
              : { borderColor: "#EDE0CC", background: "#FFFDF8", color: "#2C1810" }}
          >
            <div className="font-medium">{s.title}</div>
            {s.chapter && <div className="text-xs" style={{ color: "#7A5C4A" }}>{s.chapter}</div>}
          </button>
        ))}
      </aside>
      <article className="rounded-xl p-6" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
        {sheets
          .filter((s) => s.id === openId)
          .map((s) => (
            <div key={s.id}>
              <header className="mb-4 pb-4" style={{ borderBottom: "1px solid #EDE0CC" }}>
                <h2 className="text-2xl font-bold" style={{ color: "#2C1810" }}>{s.title}</h2>
                {videoForFiche[s.title] && (
                  <button
                    type="button"
                    onClick={() => onWatch(videoForFiche[s.title])}
                    className="mt-3 inline-flex items-center gap-2 rounded-full px-4 py-1.5 text-xs font-semibold transition hover:opacity-90"
                    style={{ background: "#FFF0E6", color: "#E07B39" }}
                  >
                    <Play className="h-3.5 w-3.5" />
                    Voir la vidéo qui couvre cette fiche
                  </button>
                )}
                {s.summary && <p className="mt-2" style={{ color: "#7A5C4A" }}>{s.summary}</p>}
                {s.key_concepts && s.key_concepts.length > 0 && (
                  <div className="mt-3 flex flex-wrap gap-1.5">
                    {s.key_concepts.map((c) => (
                      <span
                        key={c}
                        className="rounded-full px-2 py-0.5 text-xs font-semibold"
                        style={{ background: "#FFF0E6", color: "#E07B39" }}
                      >
                        {c}
                      </span>
                    ))}
                  </div>
                )}
                {s.estimated_read_time && (
                  <p className="mt-2 text-xs" style={{ color: "#7A5C4A" }}>
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
                <FicheContent content={s.content} />
              </div>
            </div>
          ))}
      </article>
    </div>
  );
}

// Seules les adresses https de YouTube sont intégrées dans une iframe.
function isYouTubeEmbed(url: string): boolean {
  try {
    const u = new URL(url);
    return (
      u.protocol === "https:" &&
      ["www.youtube.com", "youtube.com", "www.youtube-nocookie.com", "youtube-nocookie.com"].includes(u.hostname)
    );
  } catch {
    return false;
  }
}

function VideoPlayer({ url, poster, title }: { url: string; poster: string | null; title: string }) {
  const [started, setStarted] = useState(false);
  if (isYouTubeEmbed(url)) {
    return (
      <div className="relative w-full bg-black" style={{ paddingTop: "56.25%" }}>
        <iframe
          src={url}
          sandbox="allow-scripts allow-same-origin allow-presentation"
          title={title}
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowFullScreen
          className="absolute inset-0 h-full w-full"
        />
      </div>
    );
  }
  return (
    <div className="relative w-full" style={{ paddingTop: "56.25%", background: "#F6EFE4" }}>
      {started ? (
        <video
          src={url}
          poster={poster ?? undefined}
          controls
          autoPlay
          playsInline
          className="absolute inset-0 h-full w-full object-contain"
          style={{ background: "#000" }}
        />
      ) : (
        <button
          type="button"
          onClick={() => setStarted(true)}
          aria-label={`Lire la vidéo : ${title}`}
          className="group absolute inset-0 h-full w-full"
        >
          {poster && (
            // eslint-disable-next-line @next/next/no-img-element
            <img src={poster} alt="" className="absolute inset-0 h-full w-full object-cover" loading="lazy" />
          )}
          <span
            className="absolute left-1/2 top-1/2 flex h-16 w-16 -translate-x-1/2 -translate-y-1/2 items-center justify-center rounded-full transition-transform group-hover:scale-110"
            style={{ background: "rgba(224,123,57,0.95)", boxShadow: "0 6px 20px rgba(44,24,16,0.25)" }}
          >
            <Play className="ml-1 h-7 w-7" style={{ color: "#FFFFFF", fill: "#FFFFFF" }} />
          </span>
        </button>
      )}
    </div>
  );
}

function VideosPanel({
  videos,
  fiches,
  highlightId,
}: {
  videos: Video[];
  fiches: { title: string; chapter: string | null }[];
  highlightId: string | null;
}) {
  if (videos.length === 0) return <EmptyState label="les vidéos" />;
  return (
    <div className="grid items-start gap-6 md:grid-cols-2">
      {videos.map((v, index) => {
        const own = fiches.filter((f) => f.title === v.title);
        const covered = own.length > 0 ? own : v.chapter ? fiches.filter((f) => f.chapter === v.chapter) : [];
        const highlighted = highlightId !== null && v.id === highlightId;
        const isChapter = v.title.startsWith("Vidéo du chapitre");
        const shortTitle = isChapter ? v.title.replace(/^Vidéo du chapitre\s*:\s*/, "") : v.title;
        return (
          <article
            key={v.id}
            className="overflow-hidden rounded-2xl transition-shadow hover:shadow-lg"
            style={{
              background: "#FFFDF8",
              border: highlighted ? "2px solid #E07B39" : "1.5px solid #EDE0CC",
              boxShadow: highlighted ? "0 8px 24px rgba(224,123,57,0.18)" : "0 2px 10px rgba(44,24,16,0.05)",
            }}
          >
            <VideoPlayer url={v.video_url} poster={v.thumbnail_url} title={v.title} />
            <div className="p-5">
              <div className="flex flex-wrap items-center gap-2">
                {isChapter && (
                  <span
                    className="rounded-full px-2.5 py-0.5 text-xs font-semibold"
                    style={{ background: "#FFF0E6", color: "#E07B39" }}
                  >
                    Vidéo {index + 1} sur {videos.length}
                  </span>
                )}
                {v.chapter && (
                  <span className="text-xs font-semibold uppercase tracking-wider" style={{ color: "#B89F8A" }}>
                    {v.chapter}
                  </span>
                )}
              </div>
              <h3 className="mt-2 text-xl font-bold leading-snug" style={{ color: "#2C1810" }}>
                {shortTitle}
              </h3>
              {v.description && (
                <p
                  className="mt-2 text-sm leading-relaxed"
                  style={{
                    color: "#7A5C4A",
                    display: "-webkit-box",
                    WebkitLineClamp: 3,
                    WebkitBoxOrient: "vertical",
                    overflow: "hidden",
                  }}
                >
                  {v.description}
                </p>
              )}
              {covered.length > 0 && (
                <details className="group mt-4 rounded-xl" style={{ background: "#FFF8EE", border: "1px solid #EDE0CC" }}>
                  <summary
                    className="flex cursor-pointer list-none items-center justify-between px-4 py-2.5 text-sm font-semibold"
                    style={{ color: "#2C1810" }}
                  >
                    <span>
                      {covered.length > 1
                        ? `${covered.length} fiches couvertes par cette vidéo`
                        : "Fiche couverte par cette vidéo"}
                    </span>
                    <ChevronDown className="h-4 w-4 transition-transform group-open:rotate-180" style={{ color: "#E07B39" }} />
                  </summary>
                  <ol className="list-decimal space-y-1 px-4 pb-3 pl-8 text-sm" style={{ color: "#7A5C4A" }}>
                    {covered.map((f) => (
                      <li key={f.title}>{f.title}</li>
                    ))}
                  </ol>
                </details>
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
    <div className={`overflow-hidden rounded-2xl border-2 ${color.border} shadow-sm`} style={{ background: "#FFFDF8" }}>
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
    <article className="px-6 py-5" style={{ background: "#FFFDF8" }}>
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
              : `${color.border} ${color.text} bg-[#FFFDF8]`
          }`}
        >
          {showStatement ? "▲ Masquer le sujet" : "▼ Voir le sujet"}
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
