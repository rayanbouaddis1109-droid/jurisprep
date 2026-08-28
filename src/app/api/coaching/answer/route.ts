import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const MAX_LENGTH = 20000;

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  const body = await req.json().catch(() => null);
  const id = typeof body?.id === "string" ? body.id : "";
  const answer = typeof body?.answer === "string" ? body.answer.trim() : "";

  if (!id || answer.length < 2 || answer.length > MAX_LENGTH) {
    return NextResponse.json({ error: "Paramètres invalides" }, { status: 400 });
  }

  // La policy RLS refuse la mise à jour si l'utilisateur n'est pas admin
  const { data, error } = await supabase
    .from("coaching_questions")
    .update({
      answer,
      status: "repondu",
      answered_at: new Date().toISOString(),
    })
    .eq("id", id)
    .select("id");

  if (error || !data?.length) {
    return NextResponse.json({ error: "Action non autorisée" }, { status: 403 });
  }

  return NextResponse.json({ ok: true });
}
