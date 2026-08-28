export const dynamic = "force-dynamic";

import Link from "next/link";
import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { GraduationCap, ArrowLeft } from "lucide-react";
import { getUserPlan, hasFullAccess } from "@/lib/subscription";
import type { Subject } from "@/lib/types";
import { slugToLevel, levelLabel } from "@/lib/utils";
import { SubjectSearch } from "@/components/SubjectSearch";
import type { Metadata } from "next";

const LEVEL_META: Record<
  string,
  { title: string; subtitle: string; iconColor: string }
> = {
  lyceen: {
    title: "Lycéen",
    subtitle: "Préparation à la fac de droit",
    iconColor: "#E07B39",
  },
  l1: {
    title: "L1",
    subtitle: "Première année de Licence",
    iconColor: "#E07B39",
  },
  l2: {
    title: "L2",
    subtitle: "Deuxième année de Licence",
    iconColor: "#E07B39",
  },
  l3: {
    title: "L3",
    subtitle: "Troisième année de Licence",
    iconColor: "#E07B39",
  },
};

export async function generateMetadata({
  params,
}: {
  params: Promise<{ level: string }>;
}): Promise<Metadata> {
  const { level } = await params;
  const meta = LEVEL_META[level];
  if (!meta) return {};
  return {
    title: meta.title,
    description: `Fiches, quiz, flashcards et exercices corrigés pour les étudiants en ${meta.title} — ${meta.subtitle}.`,
  };
}

export default async function LevelPage({
  params,
}: {
  params: Promise<{ level: string }>;
}) {
  const { level: levelParam } = await params;
  const meta = LEVEL_META[levelParam];
  if (!meta) notFound();

  const level = slugToLevel(levelParam);
  const supabase = await createClient();
  const { data: subjects } = await supabase
    .from("subjects")
    .select("*")
    .eq("level", level)
    .eq("is_published", true)
    .order("semester", { ascending: true })
    .order("name", { ascending: true });

  const isSubscriber = hasFullAccess(await getUserPlan());

  const s1 = (subjects ?? []).filter((s: Subject) => s.semester === "S1");
  const s2 = (subjects ?? []).filter((s: Subject) => s.semester === "S2");
  const annuel = (subjects ?? []).filter(
    (s: Subject) => s.semester === "Annuel" || s.semester === null,
  );

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
            <GraduationCap className="h-10 w-10" style={{ color: meta.iconColor }} />
            <div>
              <h1 className="text-3xl font-bold sm:text-4xl" style={{ color: "#2C1810" }}>
                {meta.title}
              </h1>
              <p style={{ color: "#7A5C4A" }}>{meta.subtitle}</p>
            </div>
          </div>
          <p className="mt-4 max-w-2xl" style={{ color: "#7A5C4A" }}>

            Retrouve les matières organisées par semestre. Chaque matière contient des
            fiches de révision, des fiches d&apos;arrêts, des quiz, des flashcards et des exercices
            corrigés.{!isSubscriber && " Le premier chapitre de chaque matière est en accès gratuit avec un simple compte."}
          </p>
        </div>
      </section>

      <section className="mx-auto max-w-6xl px-4 py-12">
        {(subjects?.length ?? 0) === 0 ? (
          <div className="rounded-lg p-8 text-center text-sm" style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}>
            Aucune matière publiée pour {levelLabel(level)} pour le moment.
          </div>
        ) : (
          <SubjectSearch s1={s1} s2={s2} annuel={annuel} showFreeBadge={!isSubscriber} />
        )}
      </section>
    </div>
  );
}
