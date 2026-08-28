export const dynamic = "force-dynamic";

import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import type { Metadata } from "next";
import { ArrowLeft, BookOpen } from "lucide-react";
import { SubjectTabs } from "@/components/SubjectTabs";
import { levelSlug, levelLabel } from "@/lib/utils";
import { getUserPlan, hasFullAccess } from "@/lib/subscription";
import type {
  CaseLawSheet,
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
  // Connecté sans abonnement : la RLS ne renvoie que le chapitre gratuit,
  // on l'affiche avec une bannière d'abonnement en dessous. Visiteur non
  // connecté : rien ne quitte le serveur, bannière "crée un compte".
  const partial = isAuthed && !canAccessAll;
  const lockVariant: "subscribe" | "signup" = isAuthed ? "subscribe" : "signup";

  const [sheetsRes, caseLawRes, videosRes, quizzesRes, flashcardsRes, exercisesRes] = isAuthed
    ? await Promise.all([
        supabase.from("revision_sheets").select("*").eq("subject_id", subject.id).eq("is_published", true).order("order", { ascending: true }),
        supabase.from("case_law_sheets").select("*").eq("subject_id", subject.id).eq("is_published", true).order("decision_date", { ascending: false }),
        supabase.from("videos").select("*").eq("subject_id", subject.id).eq("is_published", true).order("order", { ascending: true }),
        supabase.from("quizzes").select("*").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
        supabase.from("flashcards").select("*").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
        supabase.from("exercises").select("*").eq("subject_id", subject.id).eq("is_published", true).order("created_at", { ascending: true }),
      ])
    : [null, null, null, null, null, null];

  // Totaux réels via le client admin pour les badges des onglets
  const admin = createAdminClient();
  const [sheetsCount, caseLawCount, videosCount, quizzesCount, flashcardsCount, exercisesCount] =
    canAccessAll
      ? [null, null, null, null, null, null]
      : await Promise.all([
          admin.from("revision_sheets").select("id", { count: "exact", head: true }).eq("subject_id", subject.id).eq("is_published", true),
          admin.from("case_law_sheets").select("id", { count: "exact", head: true }).eq("subject_id", subject.id).eq("is_published", true),
          admin.from("videos").select("id", { count: "exact", head: true }).eq("subject_id", subject.id).eq("is_published", true),
          admin.from("quizzes").select("id", { count: "exact", head: true }).eq("subject_id", subject.id).eq("is_published", true),
          admin.from("flashcards").select("id", { count: "exact", head: true }).eq("subject_id", subject.id).eq("is_published", true),
          admin.from("exercises").select("id", { count: "exact", head: true }).eq("subject_id", subject.id).eq("is_published", true),
        ]).then((r) => r.map((x) => x.count));

  const counts = {
    fiches: sheetsCount ?? sheetsRes?.data?.length ?? 0,
    arrets: caseLawCount ?? caseLawRes?.data?.length ?? 0,
    videos: videosCount ?? videosRes?.data?.length ?? 0,
    quiz: quizzesCount ?? quizzesRes?.data?.length ?? 0,
    flashcards: flashcardsCount ?? flashcardsRes?.data?.length ?? 0,
    exercices: exercisesCount ?? exercisesRes?.data?.length ?? 0,
  };

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
          sheets={(sheetsRes?.data ?? []) as RevisionSheet[]}
          caseLaw={(caseLawRes?.data ?? []) as CaseLawSheet[]}
          videos={(videosRes?.data ?? []) as Video[]}
          quizzes={(quizzesRes?.data ?? []) as Quiz[]}
          flashcards={(flashcardsRes?.data ?? []) as Flashcard[]}
          exercises={(exercisesRes?.data ?? []) as Exercise[]}
          hasAccess={isAuthed}
          partial={partial}
          counts={counts}
          lockVariant={lockVariant}
        />
      </section>
    </div>
  );
}
