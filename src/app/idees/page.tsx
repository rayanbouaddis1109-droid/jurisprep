import Link from "next/link";
import type { Metadata } from "next";
import { createClient } from "@/lib/supabase/server";
import { FeedbackForm } from "@/components/FeedbackForm";

export const metadata: Metadata = {
  title: "Propose une idée",
  description: "Dis-nous ce qui t'aiderait : une matière, une section, un exercice, une fonction.",
};

export default async function IdeesPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <div style={{ background: "#FFF8EE", color: "#2C1810", minHeight: "70vh" }}>
      <div className="mx-auto max-w-xl px-5 py-12">
        <h1 className="mb-3 text-3xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
          Dis-nous ce qui t&apos;aiderait
        </h1>
        <p className="mb-8 text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép est le site des étudiants, fait pour les étudiants. Une matière manque, une section
          t&apos;aiderait, un exercice n&apos;est pas clair : écris-le ici. Chaque message est lu, et sert à
          construire la suite.
        </p>
        {user ? (
          <FeedbackForm />
        ) : (
          <div className="rounded-2xl p-6 text-sm" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
            <p className="mb-4">Connecte-toi pour envoyer ton idée.</p>
            <Link
              href="/auth/login?redirect=/idees"
              className="rounded-full px-5 py-2.5 text-sm font-bold text-white"
              style={{ background: "#E07B39" }}
            >
              Me connecter
            </Link>
          </div>
        )}
      </div>
    </div>
  );
}
