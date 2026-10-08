export const dynamic = "force-dynamic";

import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import type { LockedItem } from "@/components/LockedPreview";
import type { Metadata } from "next";

type LockedSet = Record<
  "fiches" | "videos" | "quiz" | "flashcards" | "exercices",
  LockedItem[]
>;
import { ArrowLeft, BookOpen } from "lucide-react";
import { SubjectTabs } from "@/components/SubjectTabs";
import { levelSlug, levelLabel } from "@/lib/utils";
import { getUserPlan, hasFullAccess } from "@/lib/subscription";
import type {
  Exercise,
  Flashcard,
  Quiz,
  RevisionSheet,
  Subject,
  Video,
} from "@/lib/types";

export async function generateMetadata({
  params,
}: {
  params: Promise<{ slug: string }>;
}): Promise<Metadata> {
  const { slug } = await params;
  const supabase = await createClient();
  const { data: subject } = await supabase
    .from("subjects")
    .select("name, description")
    .eq("slug", slug)
    .eq("is_published", true)
    .maybeSingle();
  if (!subject) return {};
  return {
    title: subject.name,
    description: subject.description ?? `Fiches, quiz, flashcards et exercices corrigés — ${subject.name}.`,
  };
}

export default async function SubjectPage({ params }: { params: Promise<{ slug: string }> }) {
  const { slug } = await params;
  const supabase = await createClient();

  const { data: subject } = await supabase
    .from("subjects")
    .select("*")
    .eq("slug", slug)
    .eq("is_published", true)
    .maybeSingle();

  if (!subject) notFound();

  const {
    data: { user },
  } = await supabase.auth.getUser();
  const plan = await getUserPlan();
  const isAuthed = Boolean(user);
  const canAccessAll = hasFullAccess(plan);

  const [sheetsRes, videosRes, quizzesRes, flashcardsRes, exercisesRes] = isAuthed
    ? await Promise.all([
        supabase.from("revision_sheets").select("*").eq("subject_id", subject.id).eq("is_published", true).order("order", { ascending: true }),
        supabase.from("videos").select("*").eq("subject_id", subject.id).eq("is_published", true).order("order", { ascending: true }),
        supabase.from("quizzes").select("*").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
        supabase.from("flashcards").select("*").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
        supabase.from("exercises").select("*").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
      ])
    : [null, null, null, null, null];

  // Premier chapitre gratuit : la première fiche (et ce qui va avec) est lisible
  // par tous, y compris les visiteurs non connectés. Lecture serveur, un seul chapitre.
  const sheetsData: RevisionSheet[] = [...((sheetsRes?.data ?? []) as RevisionSheet[])];
  const quizzesData: Quiz[] = [...((quizzesRes?.data ?? []) as Quiz[])];
  const flashcardsData: Flashcard[] = [...((flashcardsRes?.data ?? []) as Flashcard[])];
  const exercisesData: Exercise[] = [...((exercisesRes?.data ?? []) as Exercise[])];
  if (!canAccessAll) {
    const adm = createAdminClient();
    const add = <T extends { id: string }>(list: T[], rows: T[] | null | undefined) => {
      for (const r of rows ?? []) if (!list.some((x) => x.id === r.id)) list.push(r);
    };
    const isVocabSubject = subject.category === "anglais_juridique" || subject.category === "culture_generale";
    // Premier exercice gratuit, pour toutes les matières
    const { data: exo } = await adm
      .from("exercises").select("*").eq("subject_id", subject.id).eq("is_published", true)
      .order("created_at", { ascending: true }).limit(1);
    add(exercisesData, exo as Exercise[] | null);
    if (!isVocabSubject) {
      // Premier paquet de flashcards gratuit
      const { data: firstCard } = await adm
        .from("flashcards").select("deck_name").eq("subject_id", subject.id).eq("is_published", true)
        .order("created_at", { ascending: true }).limit(1);
      const deck = (firstCard as { deck_name: string | null }[] | null)?.[0]?.deck_name;
      if (deck) {
        const { data: cards } = await adm
          .from("flashcards").select("*").eq("subject_id", subject.id).eq("is_published", true)
          .eq("deck_name", deck);
        add(flashcardsData, cards as Flashcard[] | null);
      }
      const { data: first } = await adm
        .from("revision_sheets").select("*").eq("subject_id", subject.id).eq("is_published", true)
        .order("order", { ascending: true }).limit(1);
      add(sheetsData, first as RevisionSheet[] | null);
      const chapter = (first as RevisionSheet[] | null)?.[0]?.chapter;
      if (chapter) {
        const { data: q } = await adm
          .from("quizzes").select("*").eq("subject_id", subject.id).eq("is_published", true)
          .eq("chapter", chapter).limit(1);
        add(quizzesData, q as Quiz[] | null);
      }
    } else {
      const { data: q } = await adm
        .from("quizzes").select("*").eq("subject_id", subject.id).eq("is_published", true)
        .order("created_at", { ascending: true }).limit(1);
      add(quizzesData, q as Quiz[] | null);
      const { data: cards } = await adm
        .from("flashcards").select("*").eq("subject_id", subject.id).eq("is_published", true)
        .eq("deck_name", "Jour 01");
      add(flashcardsData, cards as Flashcard[] | null);
    }
  }

  // Titres du contenu verrouillé (métadonnées seulement, jamais le contenu) :
  // ils sont affichés floutés pour montrer ce que débloque l'abonnement.
  let counts = {
    fiches: sheetsRes?.data?.length ?? 0,
    videos: videosRes?.data?.length ?? 0,
    quiz: quizzesRes?.data?.length ?? 0,
    flashcards: flashcardsRes?.data?.length ?? 0,
    exercices: exercisesRes?.data?.length ?? 0,
  };
  let locked: LockedSet | null = null;

  if (!canAccessAll) {
    const admin = createAdminClient();
    const [aSheets, aVideos, aQuizzes, aCards, aExos] = await Promise.all([
      admin.from("revision_sheets").select("id, title, chapter, order").eq("subject_id", subject.id).eq("is_published", true).order("order", { ascending: true }),
      admin.from("videos").select("id, title, chapter, order").eq("subject_id", subject.id).eq("is_published", true).order("order", { ascending: true }),
      admin.from("quizzes").select("id, title, chapter").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
      admin.from("flashcards").select("id, deck_name").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
      admin.from("exercises").select("id, title").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
    ]);

    const openIds = (rows: { id: string }[] | null | undefined) =>
      new Set((rows ?? []).map((r) => r.id));

    const openSheets = openIds(sheetsData);
    const openVideos = openIds(videosRes?.data);
    const openQuizzes = openIds(quizzesData);
    const openExos = openIds(exercisesData);
    const openDecks = new Set(
      flashcardsData.map((f) => f.deck_name ?? "Général")
    );

    // Les flashcards se comptent par paquet, pas par carte
    const allDecks: string[] = [];
    for (const c of (aCards.data ?? []) as { deck_name: string | null }[]) {
      const name = c.deck_name ?? "Général";
      if (!allDecks.includes(name)) allDecks.push(name);
    }

    counts = {
      fiches: aSheets.data?.length ?? 0,
      videos: aVideos.data?.length ?? 0,
      quiz: aQuizzes.data?.length ?? 0,
      flashcards: allDecks.length,
      exercices: aExos.data?.length ?? 0,
    };

    locked = {
      fiches: (aSheets.data ?? []).filter((r) => !openSheets.has(r.id)).map((r) => ({ id: r.id, title: r.title, chapter: r.chapter })),
      videos: (aVideos.data ?? []).filter((r) => !openVideos.has(r.id)).map((r) => ({ id: r.id, title: r.title, chapter: r.chapter })),
      quiz: (aQuizzes.data ?? []).filter((r) => !openQuizzes.has(r.id)).map((r) => ({ id: r.id, title: r.title, chapter: r.chapter })),
      flashcards: allDecks.filter((d) => !openDecks.has(d)).map((d) => ({ id: d, title: `Paquet ${d}` })),
      exercices: (aExos.data ?? []).filter((r) => !openExos.has(r.id)).map((r) => ({ id: r.id, title: r.title })),
    };
  }

  const s: Subject = subject;
  const backHref =
    s.level === "Transverse"
      ? s.category === "anglais_juridique"
        ? "/transverse/anglais-juridique"
        : s.category === "culture_generale"
          ? "/transverse/culture-generale"
          : "/"
      : `/licence/${levelSlug(s.level)}`;

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <section style={{ background: "#FFF8EE" }}>
        <div className="mx-auto max-w-6xl px-4 py-10">
          <Link
            href={backHref}
            className="inline-flex items-center gap-1 text-sm transition hover:opacity-70"
            style={{ color: "#7A5C4A" }}
          >
            <ArrowLeft className="h-4 w-4" /> Retour
          </Link>
          <div className="mt-4 flex items-start gap-3">
            <BookOpen className="mt-1 h-8 w-8" style={{ color: "#E07B39" }} />
            <div className="flex-1">
              <div className="flex flex-wrap items-center gap-2 text-xs">
                <span className="rounded-full px-2 py-0.5 font-semibold" style={{ background: "#FFF0E6", color: "#E07B39" }}>
                  {levelLabel(s.level)}
                </span>
                {s.semester && (
                  <span className="rounded-full px-2 py-0.5" style={{ background: "#EDE0CC", color: "#7A5C4A" }}>
                    {s.semester}
                  </span>
                )}
              </div>
              <h1 className="mt-2 text-3xl font-bold" style={{ color: "#2C1810" }}>{s.name}</h1>
              {s.description && <p className="mt-2" style={{ color: "#7A5C4A" }}>{s.description}</p>}
            </div>
          </div>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-8">
        <SubjectTabs
          sheets={sheetsData}
          videos={(videosRes?.data ?? []) as Video[]}
          quizzes={quizzesData}
          flashcards={flashcardsData}
          exercises={exercisesData}
          counts={counts}
          locked={locked}
          isLoggedIn={isAuthed}
          level={subject.level}
          category={subject.category}
        />
      </section>
    </div>
  );
}
