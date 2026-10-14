import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";

const MAX_PER_DAY = 5;

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) return NextResponse.json({ error: "Connecte-toi pour envoyer une idée." }, { status: 401 });

  const body = await req.json().catch(() => null);
  const message = typeof body?.message === "string" ? body.message.trim() : "";
  if (message.length < 3 || message.length > 1000) {
    return NextResponse.json(
      { error: "Ton message doit faire entre 3 et 1000 caractères." },
      { status: 400 },
    );
  }

  const admin = createAdminClient();
  const since = new Date(Date.now() - 24 * 3600 * 1000).toISOString();
  const { count, error: countError } = await admin
    .from("feedback")
    .select("id", { count: "exact", head: true })
    .eq("user_id", user.id)
    .gte("created_at", since);
  if (countError) {
    return NextResponse.json({ error: "Envoi impossible pour le moment." }, { status: 500 });
  }
  if ((count ?? 0) >= MAX_PER_DAY) {
    return NextResponse.json(
      { error: "Tu as déjà envoyé plusieurs idées aujourd'hui. Reviens demain." },
      { status: 429 },
    );
  }

  const { error } = await admin.from("feedback").insert({ user_id: user.id, message });
  if (error) {
    return NextResponse.json({ error: "Envoi impossible pour le moment." }, { status: 500 });
  }
  return NextResponse.json({ ok: true });
}
