export const dynamic = "force-dynamic";

import type { Metadata } from "next";
import Link from "next/link";
import { redirect } from "next/navigation";
import { MessageCircle, Clock, CheckCircle2, Crown } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { getUserPlan } from "@/lib/subscription";
import { CoachingForm } from "@/components/CoachingForm";

export const metadata: Metadata = {
  title: "Mon suivi personnalisé",
  description:
    "Pose tes questions de droit et reçois une réponse personnalisée — inclus dans la formule Cursus complet.",
};

interface CoachingQuestion {
  id: string;
  question: string;
  answer: string | null;
  status: string;
  created_at: string;
  answered_at: string | null;
}

function formatDate(iso: string) {
  return new Date(iso).toLocaleDateString("fr-FR", {
    day: "numeric",
    month: "long",
    year: "numeric",
  });
}

export default async function SuiviPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/auth/login?redirect=/suivi");

  const plan = await getUserPlan();
  const hasCoaching = plan === "cursus";

  const { data } = hasCoaching
    ? await supabase
        .from("coaching_questions")
        .select("id, question, answer, status, created_at, answered_at")
        .order("created_at", { ascending: false })
    : { data: null };

  const questions = (data ?? []) as CoachingQuestion[];

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <div className="mx-auto max-w-2xl px-4 py-12">
        <h1 className="text-3xl font-bold mb-2">Mon suivi personnalisé</h1>
        <p className="mb-8" style={{ color: "#7A5C4A" }}>
          Une difficulté sur une notion, un exercice, une méthode ? Pose ta question, tu reçois une
          réponse écrite personnalisée.
        </p>

        {!hasCoaching ? (
          <div
            className="rounded-2xl p-10 text-center"
            style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
          >
            <div
              className="mx-auto mb-4 flex h-12 w-12 items-center justify-center rounded-full"
              style={{ background: "#FFF0E6" }}
            >
              <Crown className="h-6 w-6" style={{ color: "#E07B39" }} />
            </div>
            <h2 className="text-lg font-bold mb-2">Inclus dans le Cursus complet</h2>
            <p className="text-sm mb-6 max-w-sm mx-auto" style={{ color: "#7A5C4A" }}>
              Le suivi personnalisé te permet de poser tes questions et de recevoir une réponse
              rédigée, adaptée à ta situation. Il est réservé à la formule Cursus complet.
            </p>
            <Link
              href="/tarifs"
              className="inline-block rounded-full text-sm font-bold px-6 py-3 transition hover:opacity-90"
              style={{ background: "#E07B39", color: "white" }}
            >
              Découvrir la formule
            </Link>
          </div>
        ) : (
          <>
            <div
              className="rounded-2xl p-6 mb-8"
              style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
            >
              <h2 className="text-lg font-bold mb-4">Poser une question</h2>
              <CoachingForm />
            </div>

            <h2 className="text-lg font-bold mb-4">Mes questions</h2>

            {questions.length === 0 ? (
              <div
                className="rounded-xl p-8 text-center text-sm"
                style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}
              >
                Tu n&apos;as pas encore posé de question.
              </div>
            ) : (
              <div className="space-y-4">
                {questions.map((q) => (
                  <div
                    key={q.id}
                    className="rounded-2xl p-5"
                    style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
                  >
                    <div className="flex items-center gap-2 mb-3 text-xs">
                      {q.status === "repondu" ? (
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
                      <span style={{ color: "#7A5C4A" }}>{formatDate(q.created_at)}</span>
                    </div>

                    <p className="text-sm whitespace-pre-wrap mb-4" style={{ color: "#2C1810" }}>
                      {q.question}
                    </p>

                    {q.answer && (
                      <div
                        className="rounded-xl p-4"
                        style={{ background: "#FFF8EE", border: "1px solid #EDE0CC" }}
                      >
                        <div
                          className="flex items-center gap-1.5 mb-2 text-xs font-bold uppercase tracking-widest"
                          style={{ color: "#E07B39" }}
                        >
                          <MessageCircle className="h-3.5 w-3.5" /> Réponse
                        </div>
                        <p
                          className="text-sm whitespace-pre-wrap leading-relaxed"
                          style={{ color: "#2C1810" }}
                        >
                          {q.answer}
                        </p>
                      </div>
                    )}
                  </div>
                ))}
              </div>
            )}
          </>
        )}
      </div>
    </div>
  );
}
