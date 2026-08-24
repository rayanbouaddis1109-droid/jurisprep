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
      </div>
    </div>
  );
}
