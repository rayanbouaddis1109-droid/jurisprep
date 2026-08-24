import { createClient } from "./supabase/server";

export type Plan = "free" | "etudiant" | "cursus";

export async function getUserPlan(): Promise<Plan> {
  try {
    const supabase = await createClient();
    const {
      data: { user },
    } = await supabase.auth.getUser();
    if (!user) return "free";

    const { data: profile, error } = await supabase
      .from("profiles")
      .select("plan, subscription_status")
      .eq("id", user.id)
      .maybeSingle();

    if (error || !profile) return "free";
    if (!profile.subscription_status) return "free";
    if (
      profile.subscription_status !== "active" &&
      profile.subscription_status !== "trialing"
    )
      return "free";

    return profile.plan as Plan;
  } catch {
    return "free";
  }
}

export function hasFullAccess(plan: Plan): boolean {
  return plan === "etudiant" || plan === "cursus";
}
