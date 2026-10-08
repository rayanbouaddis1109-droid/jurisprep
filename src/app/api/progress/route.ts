import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

// Table de contenu correspondant à chaque type d'élément suivi
const TABLE_BY_TYPE = {
  revision_sheet: "revision_sheets",
  case_law_sheet: "case_law_sheets",
  video: "videos",
  quiz: "quizzes",
  flashcard: "flashcards",
  exercise: "exercises",
} as const;

type ItemType = keyof typeof TABLE_BY_TYPE;

function isItemType(value: unknown): value is ItemType {
  return typeof value === "string" && Object.hasOwn(TABLE_BY_TYPE, value);
}

const UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

export async function POST(req: NextRequest) {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return NextResponse.json({ error: "Non authentifié" }, { status: 401 });
  }

  const body = await req.json().catch(() => null);
  const itemType = body?.itemType;
  const itemId = body?.itemId;
  const score = body?.score;

  if (!isItemType(itemType) || typeof itemId !== "string" || !UUID.test(itemId)) {
    return NextResponse.json({ error: "Paramètres invalides" }, { status: 400 });
  }

  const cleanScore =
    typeof score === "number" && score >= 0 && score <= 100 ? Math.round(score) : null;

  // Le contenu doit exister et être publié (lecture sous RLS). Sans cela, un utilisateur
  // pourrait remplir la table avec des identifiants inventés.
  const { data: item } = await supabase
    .from(TABLE_BY_TYPE[itemType])
    .select("id")
    .eq("id", itemId)
    .eq("is_published", true)
    .maybeSingle();

  if (!item) {
    return NextResponse.json({ error: "Contenu introuvable" }, { status: 404 });
  }

  // L'utilisateur vient toujours de la session, jamais du corps de la requête
  const { error } = await supabase.from("user_progress").upsert(
    {
      user_id: user.id,
      item_type: itemType,
      item_id: itemId,
      status: cleanScore !== null && cleanScore >= 80 ? "mastered" : "completed",
      score: cleanScore,
      last_viewed_at: new Date().toISOString(),
    },
    { onConflict: "user_id,item_type,item_id" }
  );

  if (error) {
    return NextResponse.json({ error: "Enregistrement impossible" }, { status: 500 });
  }

  return NextResponse.json({ ok: true });
}
