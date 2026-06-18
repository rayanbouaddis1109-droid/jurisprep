import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { ArrowLeft, BookOpen } from "lucide-react";
import { SubjectTabs } from "@/components/SubjectTabs";
import { levelSlug, levelLabel } from "@/lib/utils";
import type {
  CaseLawSheet,
  Exercise,
  Flashcard,
  Quiz,
  RevisionSheet,
  Subject,
  Video,
} from "@/lib/types";

export default async function SubjectPage({ params }: { params: { slug: string } }) {
  const supabase = createClient();

  const { data: subject } = await supabase
    .from("subjects")
    .select("*")
    .eq("slug", params.slug)
    .eq("is_published", true)
    .maybeSingle();

  if (!subject) notFound();

  const [sheetsRes, caseLawRes, videosRes, quizzesRes, flashcardsRes, exercisesRes] =
    await Promise.all([
      supabase
        .from("revision_sheets")
        .select("*")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("order", { ascending: true }),
      supabase
        .from("case_law_sheets")
        .select("*")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("decision_date", { ascending: false }),
      supabase
        .from("videos")
        .select("*")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("order", { ascending: true }),
      supabase
        .from("quizzes")
        .select("*")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("created_at", { ascending: true }),
      supabase
        .from("flashcards")
        .select("*")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("created_at", { ascending: true }),
      supabase
        .from("exercises")
        .select("*")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("created_at", { ascending: true }),
    ]);

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
    <div>
      <section className="bg-gradient-to-b from-indigo-50 to-white">
        <div className="mx-auto max-w-6xl px-4 py-10">
          <Link
            href={backHref}
            className="inline-flex items-center gap-1 text-sm text-ink-600 hover:text-indigo-600"
          >
            <ArrowLeft className="h-4 w-4" /> Retour
          </Link>
          <div className="mt-4 flex items-start gap-3">
            <BookOpen className="mt-1 h-8 w-8 text-indigo-600" />
            <div className="flex-1">
              <div className="flex flex-wrap items-center gap-2 text-xs">
                <span className="rounded-full bg-indigo-100 px-2 py-0.5 text-indigo-700">
                  {levelLabel(s.level)}
                </span>
                {s.semester && (
                  <span className="rounded-full bg-ink-100 px-2 py-0.5 text-ink-700">
                    {s.semester}
                  </span>
                )}
              </div>
              <h1 className="mt-2 text-3xl font-bold text-ink-900">{s.name}</h1>
              {s.description && <p className="mt-2 text-ink-600">{s.description}</p>}
            </div>
          </div>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-8">
        <SubjectTabs
          sheets={(sheetsRes.data ?? []) as RevisionSheet[]}
          caseLaw={(caseLawRes.data ?? []) as CaseLawSheet[]}
          videos={(videosRes.data ?? []) as Video[]}
          quizzes={(quizzesRes.data ?? []) as Quiz[]}
          flashcards={(flashcardsRes.data ?? []) as Flashcard[]}
          exercises={(exercisesRes.data ?? []) as Exercise[]}
        />
      </section>
    </div>
  );
}
