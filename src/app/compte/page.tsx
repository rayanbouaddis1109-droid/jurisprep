import { redirect } from "next/navigation";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { getUserPlan } from "@/lib/subscription";
import { ManageBillingButton } from "@/components/ManageBillingButton";
import { CheckCircle2, Crown, BookOpen } from "lucide-react";
import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Mon compte",
};

const PLAN_LABELS: Record<string, string> = {
  free: "Gratuit",
  etudiant: "Étudiant",
  cursus: "Cursus complet",
};

export default async function ComptePage({
  searchParams,
}: {
  searchParams: Promise<{ success?: string }>;
}) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) redirect("/auth/login?redirect=/compte");

  const { success } = await searchParams;

  const { data: profile } = await supabase
    .from("profiles")
    .select("plan, subscription_status, subscription_end")
    .eq("id", user.id)
    .maybeSingle();

  const plan = await getUserPlan();
  const isPaid = plan === "etudiant" || plan === "cursus";

  const { data: progressRows } = await supabase
    .from("user_progress")
    .select("score, status")
    .eq("item_type", "quiz");

  const quizzesDone = progressRows?.length ?? 0;
  const scores = (progressRows ?? [])
    .map((r) => r.score)
    .filter((s): s is number => typeof s === "number");
  const averageScore = scores.length
    ? Math.round(scores.reduce((a, b) => a + b, 0) / scores.length)
    : null;
  const mastered = (progressRows ?? []).filter((r) => r.status === "mastered").length;

  const endDate = profile?.subscription_end
    ? new Date(profile.subscription_end).toLocaleDateString("fr-FR", {
        day: "numeric",
        month: "long",
        year: "numeric",
      })
    : null;

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <div className="mx-auto max-w-2xl px-4 py-12">
        <h1 className="text-3xl font-bold mb-2" style={{ color: "#2C1810" }}>
          Mon compte
        </h1>
        <p className="mb-8" style={{ color: "#7A5C4A" }}>
          {user.email}
        </p>

        {success === "1" && (
          <div
            className="mb-6 flex items-center gap-3 rounded-xl p-4 text-sm font-semibold"
            style={{ background: "#F0FDF4", color: "#16a34a", border: "1.5px solid #bbf7d0" }}
          >
            <CheckCircle2 className="h-5 w-5 flex-shrink-0" />
            Abonnement activé. Bienvenue dans JurisPrép.
          </div>
        )}

        <div
          className="rounded-2xl p-6 mb-6"
          style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
        >
          <div className="flex items-center gap-3 mb-4">
            {isPaid ? (
              <Crown className="h-6 w-6" style={{ color: "#E07B39" }} />
            ) : (
              <BookOpen className="h-6 w-6" style={{ color: "#7A5C4A" }} />
            )}
            <div>
              <p className="text-xs font-bold uppercase tracking-widest" style={{ color: "#7A5C4A" }}>
                Formule actuelle
              </p>
              <p className="text-xl font-bold" style={{ color: "#2C1810" }}>
                {PLAN_LABELS[plan] ?? "Gratuit"}
              </p>
            </div>
          </div>

          {isPaid && endDate && (
            <p className="text-sm mb-5" style={{ color: "#7A5C4A" }}>
              Renouvellement le {endDate}
            </p>
          )}

          {isPaid ? (
            <ManageBillingButton />
          ) : (
            <Link
              href="/tarifs"
              className="inline-block rounded-full text-sm font-bold px-6 py-3 transition hover:opacity-90"
              style={{ background: "#E07B39", color: "white" }}
            >
              Passer à un abonnement
            </Link>
          )}
        </div>

        <div
          className="rounded-2xl p-6 mb-6"
          style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
        >
          <h2 className="text-lg font-bold mb-4">Ma progression</h2>
          {quizzesDone === 0 ? (
            <p className="text-sm" style={{ color: "#7A5C4A" }}>
              Tu n&apos;as pas encore terminé de quiz. Tes scores apparaîtront ici au fur et à
              mesure.
            </p>
          ) : (
            <div className="grid grid-cols-3 gap-4">
              {[
                { value: String(quizzesDone), label: quizzesDone > 1 ? "quiz terminés" : "quiz terminé" },
                { value: averageScore !== null ? `${averageScore}%` : "—", label: "score moyen" },
                { value: String(mastered), label: mastered > 1 ? "quiz maîtrisés" : "quiz maîtrisé" },
              ].map((s) => (
                <div key={s.label}>
                  <div
                    className="text-2xl font-extrabold"
                    style={{ color: "#E07B39", letterSpacing: "-0.02em" }}
                  >
                    {s.value}
                  </div>
                  <div className="text-xs" style={{ color: "#7A5C4A" }}>
                    {s.label}
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        <div
          className="rounded-2xl p-6"
          style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
        >
          <h2 className="text-lg font-bold mb-2">Suivi personnalisé</h2>
          <p className="text-sm mb-5" style={{ color: "#7A5C4A" }}>
            {plan === "cursus"
              ? "Pose tes questions de droit, tu reçois une réponse écrite personnalisée."
              : "Inclus dans la formule Cursus complet : pose tes questions, reçois une réponse écrite personnalisée."}
          </p>
          <Link
            href="/suivi"
            className="inline-block rounded-full text-sm font-bold px-6 py-3 transition hover:opacity-90"
            style={{
              background: plan === "cursus" ? "#E07B39" : "#2C1810",
              color: "white",
            }}
          >
            {plan === "cursus" ? "Accéder à mon suivi" : "En savoir plus"}
          </Link>
        </div>
      </div>
    </div>
  );
}
