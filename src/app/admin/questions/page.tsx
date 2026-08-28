export const dynamic = "force-dynamic";

import { notFound } from "next/navigation";
import { Clock, CheckCircle2 } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import { AnswerForm } from "@/components/AnswerForm";

export const metadata = { robots: { index: false, follow: false } };

interface Row {
  id: string;
  user_id: string;
  question: string;
  answer: string | null;
  status: string;
  created_at: string;
}

function formatDate(iso: string) {
  return new Date(iso).toLocaleString("fr-FR", {
    day: "numeric",
    month: "short",
    hour: "2-digit",
    minute: "2-digit",
  });
}

export default async function AdminQuestionsPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) notFound();

  const { data: profile } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .maybeSingle();

  // Page invisible pour tout le monde sauf l'administrateur
  if (profile?.role !== "admin") notFound();

  const { data } = await supabase
    .from("coaching_questions")
    .select("id, user_id, question, answer, status, created_at")
    .order("status", { ascending: true })
    .order("created_at", { ascending: false });

  const rows = (data ?? []) as Row[];

  // Emails des étudiants (lecture admin côté serveur uniquement)
  const admin = createAdminClient();
  const {
    data: { users },
  } = await admin.auth.admin.listUsers({ perPage: 1000 });
  const emailById = new Map(users.map((u) => [u.id, u.email ?? "—"]));

  const pending = rows.filter((r) => r.status !== "repondu");
  const answered = rows.filter((r) => r.status === "repondu");

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <div className="mx-auto max-w-3xl px-4 py-12">
        <h1 className="text-3xl font-bold mb-2">Questions des étudiants</h1>
        <p className="mb-8" style={{ color: "#7A5C4A" }}>
          {pending.length} en attente · {answered.length} traitée
          {answered.length > 1 ? "s" : ""}
        </p>

        {rows.length === 0 && (
          <div
            className="rounded-xl p-8 text-center text-sm"
            style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}
          >
            Aucune question pour le moment.
          </div>
        )}

        <div className="space-y-5">
          {[...pending, ...answered].map((r) => (
            <div
              key={r.id}
              className="rounded-2xl p-5"
              style={{
                border: r.status === "repondu" ? "1.5px solid #EDE0CC" : "1.5px solid #E07B39",
                background: "#FFFDF8",
              }}
            >
              <div className="flex flex-wrap items-center gap-2 mb-3 text-xs">
                {r.status === "repondu" ? (
                  <span
                    className="inline-flex items-center gap-1 rounded-full px-2.5 py-0.5 font-bold"
                    style={{ background: "#E8FBF4", color: "#065E3F" }}
                  >
                    <CheckCircle2 className="h-3 w-3" /> Répondu
                  </span>
                ) : (
                  <span
                    className="inline-flex items-center gap-1 rounded-full px-2.5 py-0.5 font-bold"
                    style={{ background: "#FFF0E6", color: "#E07B39" }}
                  >
                    <Clock className="h-3 w-3" /> En attente
                  </span>
                )}
                <span style={{ color: "#7A5C4A" }}>{emailById.get(r.user_id) ?? "—"}</span>
                <span style={{ color: "#7A5C4A" }}>· {formatDate(r.created_at)}</span>
              </div>

              <p
                className="text-sm whitespace-pre-wrap mb-4 rounded-xl p-3"
                style={{ background: "#FFF8EE", color: "#2C1810" }}
              >
                {r.question}
              </p>

              <AnswerForm id={r.id} existing={r.answer} />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
