import Link from "next/link";
import { ArrowLeft, Languages, BookOpen } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import type { Subject } from "@/lib/types";

export default async function AnglaisJuridiquePage() {
  const supabase = createClient();
  const { data: subject } = await supabase
    .from("subjects")
    .select("*")
    .eq("category", "anglais_juridique")
    .eq("is_published", true)
    .maybeSingle();

  return (
    <div>
      <section className="bg-gradient-to-b from-indigo-50 to-white">
        <div className="mx-auto max-w-6xl px-4 py-12">
          <Link
            href="/"
            className="inline-flex items-center gap-1 text-sm text-ink-600 hover:text-indigo-600"
          >
            <ArrowLeft className="h-4 w-4" /> Retour à l&apos;accueil
          </Link>
          <div className="mt-4 flex items-center gap-3">
            <Languages className="h-10 w-10 text-indigo-600" />
            <div>
              <h1 className="text-3xl font-bold text-ink-900 sm:text-4xl">
                Anglais juridique
              </h1>
              <p className="text-ink-600">
                Vocabulaire et expressions essentielles pour les juristes francophones.
              </p>
            </div>
          </div>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-12">
        <h2 className="mb-5 text-xl font-bold text-ink-900">Module disponible</h2>
        {subject ? (
          <SubjectLink subject={subject as Subject} />
        ) : (
          <div className="rounded-lg border border-dashed border-ink-300 p-8 text-center text-ink-600">
            Aucun module disponible pour le moment.
          </div>
        )}
      </section>
    </div>
  );
}

function SubjectLink({ subject }: { subject: Subject }) {
  return (
    <Link
      href={`/matiere/${subject.slug}`}
      className="group block max-w-md rounded-xl border border-ink-200 bg-white p-6 transition hover:border-indigo-300 hover:shadow-md"
    >
      <BookOpen className="mb-3 h-8 w-8 text-indigo-600" />
      <h3 className="text-lg font-bold text-ink-900 group-hover:text-indigo-700">
        {subject.name}
      </h3>
      {subject.description && (
        <p className="mt-2 text-sm text-ink-600">{subject.description}</p>
      )}
      <div className="mt-4 text-sm font-semibold text-indigo-600 group-hover:underline">
        Accéder au module →
      </div>
    </Link>
  );
}
