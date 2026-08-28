import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const ITEM_TYPES = [
  "revision_sheet",
  "case_law_sheet",
  "video",
  "quiz",
  "flashcard",
  "exercise",
] as const;

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

  if (!ITEM_TYPES.includes(itemType) || typeof itemId !== "string" || !UUID.test(itemId)) {
    return NextResponse.json({ error: "Paramètres invalides" }, { status: 400 });
  }

  const cleanScore =
    typeof score === "number" && score >= 0 && score <= 100 ? Math.round(score) : null;

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
