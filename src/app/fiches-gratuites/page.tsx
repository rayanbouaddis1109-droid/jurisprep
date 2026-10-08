export const dynamic = "force-dynamic";

import Link from "next/link";
import type { Metadata } from "next";
import { ArrowLeft, ArrowRight, FileText } from "lucide-react";
import { createAdminClient } from "@/lib/supabase/admin";
import { FREE_SAMPLES } from "@/lib/free-samples";

export const metadata: Metadata = {
  title: "Fiches de droit gratuites",
  description:
    "Une fiche de cours gratuite par niveau (lycéen, L1, L2, L3) pour découvrir JurisPrép, sans créer de compte.",
};

export default async function FichesGratuitesPage() {
  const admin = createAdminClient();
  const items = await Promise.all(
    FREE_SAMPLES.map(async (s) => {
      const { data: subject } = await admin
        .from("subjects")
        .select("id, name")
        .eq("slug", s.subjectSlug)
        .eq("is_published", true)
        .maybeSingle();
      if (!subject) return null;
      const { data: sheet } = await admin
        .from("revision_sheets")
        .select("title, summary")
        .eq("subject_id", subject.id)
        .eq("is_published", true)
        .order("order", { ascending: true })
        .limit(1)
        .maybeSingle();
      if (!sheet) return null;
      return { ...s, subjectName: subject.name as string, title: sheet.title as string, summary: (sheet.summary as string | null) ?? "" };
    }),
  );
  const cards = items.filter((x): x is NonNullable<typeof x> => x !== null);

  return (
    <div className="mx-auto max-w-4xl px-5 py-14" style={{ color: "#2C1810" }}>
      <Link href="/" className="inline-flex items-center gap-1 text-sm hover:opacity-70" style={{ color: "#7A5C4A" }}>
        <ArrowLeft className="h-4 w-4" /> Retour à l&apos;accueil
      </Link>
      <h1 className="mt-4 text-center text-4xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
        Fiches de droit gratuites
      </h1>
      <p className="mx-auto mt-3 max-w-xl text-center" style={{ color: "#7A5C4A" }}>
        Une fiche complète par niveau, lisible sans compte. Pour tout le reste (autres chapitres, quiz,
        flashcards, exercices), crée un compte gratuit.
      </p>

      <div className="mt-10 grid gap-4 sm:grid-cols-2">
        {cards.map((c) => (
          <Link
            key={c.niveau}
            href={`/fiches-gratuites/${c.niveau}`}
            className="flex flex-col rounded-2xl p-6 transition hover:-translate-y-0.5"
            style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC", textDecoration: "none" }}
          >
            <span className="mb-3 inline-flex w-fit items-center gap-1.5 rounded-full px-3 py-1 text-xs font-bold uppercase tracking-widest"
              style={{ background: "#FFF0E6", color: "#E07B39" }}>
              <FileText className="h-3.5 w-3.5" /> {c.label}
            </span>
            <p className="text-xs font-semibold" style={{ color: "#7A5C4A" }}>{c.subjectName}</p>
            <h2 className="mt-1 text-lg font-bold leading-snug" style={{ color: "#2C1810" }}>{c.title}</h2>
            {c.summary && <p className="mt-2 line-clamp-3 text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>{c.summary}</p>}
            <span className="mt-4 inline-flex items-center gap-1 text-sm font-bold" style={{ color: "#E07B39" }}>
              Lire la fiche <ArrowRight className="h-4 w-4" />
            </span>
          </Link>
        ))}
      </div>
    </div>
  );
}
