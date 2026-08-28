import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const MAX_LENGTH = 4000;

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  const body = await req.json().catch(() => null);
  const question = typeof body?.question === "string" ? body.question.trim() : "";

  if (question.length < 10) {
    return NextResponse.json(
      { error: "Ta question est trop courte (10 caractères minimum)." },
      { status: 400 }
    );
  }
  if (question.length > MAX_LENGTH) {
    return NextResponse.json(
      { error: `Ta question est trop longue (${MAX_LENGTH} caractères maximum).` },
      { status: 400 }
    );
  }

  // Limite anti-abus : 5 questions en attente au maximum
  const { count } = await supabase
    .from("coaching_questions")
    .select("id", { count: "exact", head: true })
    .eq("user_id", user.id)
    .eq("status", "en_attente");

  if ((count ?? 0) >= 5) {
    return NextResponse.json(
      { error: "Tu as déjà 5 questions en attente de réponse. Patiente un peu." },
      { status: 429 }
    );
  }

  // La policy RLS refuse l'insertion si l'utilisateur n'a pas le plan Cursus
  const { error } = await supabase
    .from("coaching_questions")
    .insert({ user_id: user.id, question });

  if (error) {
    return NextResponse.json(
      { error: "Le suivi personnalisé est réservé à la formule Cursus complet." },
      { status: 403 }
    );
  }

  return NextResponse.json({ ok: true });
}
