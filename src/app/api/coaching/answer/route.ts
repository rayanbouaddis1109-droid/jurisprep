import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const MAX_LENGTH = 20000;
const ID_FORMAT = /^[A-Za-z0-9_-]{1,64}$/;

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  // Seul l'administrateur peut répondre : rôle lu en base côté serveur, jamais fourni par le client.
  const { data: profile } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .maybeSingle();

  if (profile?.role !== "admin") {
    return NextResponse.json({ error: "Action non autorisée" }, { status: 403 });
  }

  const body = await req.json().catch(() => null);
  const id = typeof body?.id === "string" ? body.id : "";
  const answer = typeof body?.answer === "string" ? body.answer.trim() : "";

  if (!ID_FORMAT.test(id) || answer.length < 2 || answer.length > MAX_LENGTH) {
    return NextResponse.json({ error: "Paramètres invalides" }, { status: 400 });
  }

  // La policy RLS reste une seconde barrière : elle refuse aussi la mise à jour si l'utilisateur n'est pas admin
  const { data, error } = await supabase
    .from("coaching_questions")
    .update({
      answer,
      status: "repondu",
      answered_at: new Date().toISOString(),
    })
    .eq("id", id)
    .select("id");

  if (error) {
    return NextResponse.json({ error: "Action non autorisée" }, { status: 403 });
  }
  if (!data?.length) {
    return NextResponse.json({ error: "Question introuvable" }, { status: 404 });
  }

  return NextResponse.json({ ok: true });
}
