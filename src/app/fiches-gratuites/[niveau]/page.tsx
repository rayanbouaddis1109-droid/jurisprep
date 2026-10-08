export const dynamic = "force-dynamic";

import Link from "next/link";
import { notFound } from "next/navigation";
import type { Metadata } from "next";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";
import { ArrowLeft, ArrowRight } from "lucide-react";
import { createAdminClient } from "@/lib/supabase/admin";
import { findSample } from "@/lib/free-samples";

async function loadSample(niveau: string) {
  const sample = findSample(niveau);
  if (!sample) return null;
  const admin = createAdminClient();
  const { data: subject } = await admin
    .from("subjects")
    .select("id, name, slug")
    .eq("slug", sample.subjectSlug)
    .eq("is_published", true)
    .maybeSingle();
  if (!subject) return null;
  const { data: sheet } = await admin
    .from("revision_sheets")
    .select("title, chapter, summary, content")
    .eq("subject_id", subject.id)
    .eq("is_published", true)
    .order("order", { ascending: true })
    .limit(1)
    .maybeSingle();
  if (!sheet) return null;
  return { sample, subject, sheet };
}

export async function generateMetadata({ params }: { params: Promise<{ niveau: string }> }): Promise<Metadata> {
  const { niveau } = await params;
  const data = await loadSample(niveau);
  if (!data) return {};
  return {
    title: `${data.sheet.title} : fiche de droit ${data.sample.label}`,
    description: data.sheet.summary ?? `Fiche de cours gratuite de ${data.subject.name}.`,
  };
}

export default async function FicheGratuitePage({ params }: { params: Promise<{ niveau: string }> }) {
  const { niveau } = await params;
  const data = await loadSample(niveau);
  if (!data) notFound();
  const { sample, subject, sheet } = data;

  return (
    <div className="mx-auto max-w-3xl px-5 py-14" style={{ color: "#2C1810" }}>
      <Link href="/fiches-gratuites" className="inline-flex items-center gap-1 text-sm hover:opacity-70" style={{ color: "#7A5C4A" }}>
        <ArrowLeft className="h-4 w-4" /> Toutes les fiches gratuites
      </Link>
      <p className="mt-6 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
        {sample.label} · {subject.name}
      </p>
      <h1 className="mt-2 text-3xl font-extrabold tracking-tight sm:text-4xl" style={{ letterSpacing: "-0.03em" }}>
        {sheet.title}
      </h1>
      <article className="prose-jurisprep mt-8">
        <ReactMarkdown remarkPlugins={[remarkGfm]}>{(sheet.content as string).replace(/^\s*#\s+[^\n]*\n+/, "")}</ReactMarkdown>
      </article>

      <div className="mt-12 rounded-3xl p-8 text-center" style={{ background: "#2C1810" }}>
        <h2 className="text-2xl font-extrabold" style={{ color: "#FFF8EE", letterSpacing: "-0.02em" }}>
          Tu veux la suite&nbsp;?
        </h2>
        <p className="mx-auto mt-2 max-w-md text-sm" style={{ color: "rgba(255,248,238,0.6)" }}>
          Quiz corrigés, flashcards et exercices pour cette matière, et le premier chapitre de toutes les autres.
        </p>
        <Link href="/auth/signup" className="mt-6 inline-flex items-center gap-2 rounded-full px-7 py-3 text-sm font-bold"
          style={{ background: "#FFF8EE", color: "#2C1810", textDecoration: "none" }}>
          Créer un compte gratuit <ArrowRight className="h-4 w-4" />
        </Link>
      </div>
    </div>
  );
}
