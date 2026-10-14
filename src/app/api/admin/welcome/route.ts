import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import { firstNameOf, sendWelcomeOnce, sendWelcomeTo } from "@/lib/welcome-email";

// Réservé à l'administrateur. mode "test" : un exemplaire à l'adresse de l'administrateur.
// mode "recent" : envoi aux comptes créés depuis le 12 octobre 2026 qui ne l'ont pas encore reçu.
export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return NextResponse.json({ error: "Non authentifié" }, { status: 401 });

  const { data: profile } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .maybeSingle();
  if (profile?.role !== "admin") return NextResponse.json({ error: "Interdit" }, { status: 403 });

  if (!process.env.RESEND_API_KEY) {
    return NextResponse.json(
      { error: "RESEND_API_KEY n'est pas défini dans Vercel." },
      { status: 503 },
    );
  }

  const body = await req.json().catch(() => null);
  const mode = body?.mode;
  const admin = createAdminClient();

  try {
    if (mode === "test") {
      const { data } = await admin.auth.admin.getUserById(user.id);
      const meta = data.user?.user_metadata;
      await sendWelcomeTo(user.email as string, firstNameOf(meta?.full_name) || "Rayan");
      return NextResponse.json({ sent: 1, to: user.email });
    }

    if (mode === "recent") {
      const since = new Date("2026-10-12T00:00:00+02:00").getTime();
      const {
        data: { users },
      } = await admin.auth.admin.listUsers({ perPage: 1000 });
      let sent = 0;
      let failed = 0;
      for (const u of users) {
        if (!u.email || new Date(u.created_at).getTime() < since) continue;
        if (u.id === user.id) continue;
        try {
          const r = await sendWelcomeOnce(admin, u.id);
          if (r === "sent") sent++;
        } catch {
          failed++;
        }
      }
      return NextResponse.json({ sent, failed });
    }

    return NextResponse.json({ error: "Mode inconnu" }, { status: 400 });
  } catch (err) {
    console.error("[bienvenue admin]", err instanceof Error ? err.message : "erreur inconnue");
    return NextResponse.json({ error: "Envoi impossible. Vérifie la clé et l'expéditeur." }, { status: 500 });
  }
}
