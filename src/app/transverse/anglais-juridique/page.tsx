import Link from "next/link";
import { ArrowLeft, Languages, BookOpen } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import type { Subject } from "@/lib/types";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Anglais juridique",
  description: "Vocabulaire et expressions essentielles en anglais juridique pour les juristes francophones.",
};

export default async function AnglaisJuridiquePage() {
  const supabase = await createClient();
  const { data: subject } = await supabase
    .from("subjects")
    .select("*")
    .eq("category", "anglais_juridique")
    .eq("is_published", true)
    .maybeSingle();

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <section style={{ background: "#FFF8EE" }}>
        <div className="mx-auto max-w-6xl px-4 py-12">
          <Link
            href="/"
            className="inline-flex items-center gap-1 text-sm transition hover:opacity-70"
            style={{ color: "#7A5C4A" }}
          >
            <ArrowLeft className="h-4 w-4" /> Retour à l&apos;accueil
          </Link>
          <div className="mt-4 flex items-center gap-3">
            <Languages className="h-10 w-10" style={{ color: "#E07B39" }} />
            <div>
              <h1 className="text-3xl font-bold sm:text-4xl" style={{ color: "#2C1810" }}>
                Anglais juridique
              </h1>
              <p style={{ color: "#7A5C4A" }}>
                Vocabulaire et expressions essentielles pour les juristes francophones.
              </p>
            </div>
          </div>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-12">
        <h2 className="mb-5 text-xl font-bold" style={{ color: "#2C1810" }}>Module disponible</h2>
        {subject ? (
          <SubjectLink subject={subject as Subject} />
        ) : (
          <div className="rounded-lg p-8 text-center text-sm" style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}>
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
      className="group block max-w-md rounded-xl p-6 transition hover:shadow-md"
      style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
    >
      <BookOpen className="mb-3 h-8 w-8" style={{ color: "#E07B39" }} />
      <h3 className="text-lg font-bold" style={{ color: "#2C1810" }}>
        {subject.name}
      </h3>
      {subject.description && (
        <p className="mt-2 text-sm" style={{ color: "#7A5C4A" }}>{subject.description}</p>
      )}
      <div className="mt-4 text-sm font-semibold group-hover:underline" style={{ color: "#E07B39" }}>
        Accéder au module →
      </div>
    </Link>
  );
}
