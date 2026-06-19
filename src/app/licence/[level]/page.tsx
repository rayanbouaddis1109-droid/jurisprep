export const dynamic = "force-dynamic";

import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { GraduationCap, ArrowLeft } from "lucide-react";
import type { Subject } from "@/lib/types";
import { slugToLevel, levelLabel } from "@/lib/utils";
// Subject type used for filter casts below
import { SubjectSearch } from "@/components/SubjectSearch";

const LEVEL_META: Record<
  string,
  { title: string; subtitle: string; color: string; iconColor: string }
> = {
  lyceen: {
    title: "Lycéen",
    subtitle: "Préparation à la fac de droit",
    color: "from-pink-50 to-white",
    iconColor: "text-pink-600",
  },
  l1: {
    title: "L1",
    subtitle: "Première année de Licence",
    color: "from-indigo-50 to-white",
    iconColor: "text-indigo-600",
  },
  l2: {
    title: "L2",
    subtitle: "Deuxième année de Licence",
    color: "from-emerald-50 to-white",
    iconColor: "text-emerald-600",
  },
  l3: {
    title: "L3",
    subtitle: "Troisième année de Licence",
    color: "from-amber-50 to-white",
    iconColor: "text-amber-600",
  },
};

export default async function LevelPage({
  params,
}: {
  params: { level: string };
}) {
  const meta = LEVEL_META[params.level];
  if (!meta) notFound();

  const level = slugToLevel(params.level);
  const supabase = createClient();
  const { data: subjects } = await supabase
    .from("subjects")
    .select("*")
    .eq("level", level)
    .eq("is_published", true)
    .order("semester", { ascending: true })
    .order("name", { ascending: true });

  const s1 = (subjects ?? []).filter((s: Subject) => s.semester === "S1");
  const s2 = (subjects ?? []).filter((s: Subject) => s.semester === "S2");
  const annuel = (subjects ?? []).filter(
    (s: Subject) => s.semester === "Annuel" || s.semester === null,
  );

  return (
    <div>
      <section className={`bg-gradient-to-b ${meta.color}`}>
        <div className="mx-auto max-w-6xl px-4 py-12">
          <Link
            href="/"
            className="inline-flex items-center gap-1 text-sm text-ink-600 hover:text-indigo-600"
          >
            <ArrowLeft className="h-4 w-4" /> Retour à l&apos;accueil
          </Link>
          <div className="mt-4 flex items-center gap-3">
            <GraduationCap className={`h-10 w-10 ${meta.iconColor}`} />
            <div>
              <h1 className="text-3xl font-bold text-ink-900 sm:text-4xl">
                {meta.title}
              </h1>
              <p className="text-ink-600">{meta.subtitle}</p>
            </div>
          </div>
          <p className="mt-4 max-w-2xl text-ink-700">
            Retrouve les matières du Bloc 1 organisées par semestre. Chaque matière contient des
            fiches de révision, des fiches d&apos;arrêts, des quiz, des flashcards et des exercices
            corrigés.
          </p>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-12">
        {(subjects?.length ?? 0) === 0 ? (
          <div className="rounded-lg border border-dashed border-ink-300 p-8 text-center text-ink-600">
            Aucune matière publiée pour {levelLabel(level)} pour le moment.
          </div>
        ) : (
          <SubjectSearch s1={s1} s2={s2} annuel={annuel} iconColor={meta.iconColor} />
        )}
      </section>
    </div>
  );
}

