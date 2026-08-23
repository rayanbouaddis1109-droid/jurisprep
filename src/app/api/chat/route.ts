import { NextRequest, NextResponse } from "next/server";

const GROQ_API_URL = "https://api.groq.com/openai/v1/chat/completions";
const MAX_MESSAGES = 20;
const MAX_MESSAGE_LENGTH = 2000;

// In-memory rate limiter — 10 requêtes par minute par IP
// Note : réinitialisé à chaque redémarrage de l'instance serverless.
// Pour une protection cross-instance, utiliser Upstash Redis.
const ipRequests = new Map<string, { count: number; resetAt: number }>();

function checkRateLimit(ip: string): boolean {
  const now = Date.now();
  const windowMs = 60_000;
  const limit = 10;
  const record = ipRequests.get(ip);
  if (!record || now > record.resetAt) {
    ipRequests.set(ip, { count: 1, resetAt: now + windowMs });
    return true;
  }
  if (record.count >= limit) return false;
  record.count++;
  return true;
}

const SYSTEM_PROMPT = `Tu es le Professeur Legrand, un éminent professeur de droit français reconnu pour la clarté et la rigueur de ses explications. Tu as enseigné pendant 30 ans dans les meilleures facultés de droit françaises (Paris I Panthéon-Sorbonne, Paris II Panthéon-Assas).

MISSION : Tu réponds UNIQUEMENT aux questions juridiques des étudiants en droit. Si une question n'est pas liée au droit, tu déclines poliment et rappelles ta mission.

STYLE DE RÉPONSE :
- Recontextualise brièvement la question dans son cadre juridique
- Structure ta réponse avec des parties claires
- Cite les textes de référence (articles du Code civil, jurisprudence importante)
- Donne des exemples concrets et des arrêts emblématiques quand c'est pertinent
- Termine par un "Point essentiel à retenir" qui résume la règle principale
- Utilise un vocabulaire juridique précis mais accessible pour des étudiants de licence
- Ton ton est bienveillant, pédagogique et exigeant

DOMAINES : Droit civil, constitutionnel, pénal, administratif, européen, international privé, procédure civile et pénale, droit commercial, anglais juridique.

REFUS : finance personnelle, médecine, technologie, divertissement, etc.`;

export async function POST(req: NextRequest) {
  const ip =
    req.headers.get("x-forwarded-for")?.split(",")[0]?.trim() ?? "unknown";

  if (!checkRateLimit(ip)) {
    return NextResponse.json(
      { error: "Trop de requêtes. Réessaie dans une minute." },
      { status: 429 }
    );
  }

  try {
    const body = await req.json().catch(() => null);

    if (!body || !Array.isArray(body.messages)) {
      return NextResponse.json({ error: "Requête invalide." }, { status: 400 });
    }

    const { messages } = body;

    if (messages.length > MAX_MESSAGES) {
      return NextResponse.json(
        { error: "Historique trop long." },
        { status: 400 }
      );
    }

    for (const m of messages) {
      if (!m || typeof m.content !== "string" || m.content.length > MAX_MESSAGE_LENGTH) {
        return NextResponse.json(
          { error: "Message trop long ou invalide." },
          { status: 400 }
        );
      }
      if (!["user", "assistant"].includes(m.role)) {
        return NextResponse.json({ error: "Rôle invalide." }, { status: 400 });
      }
    }

    const response = await fetch(GROQ_API_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${process.env.GROQ_API_KEY}`,
      },
      body: JSON.stringify({
        model: "llama-3.3-70b-versatile",
        messages: [
          { role: "system", content: SYSTEM_PROMPT },
          ...messages.map((m: { role: string; content: string }) => ({
            role: m.role,
            content: m.content,
          })),
        ],
        max_tokens: 1500,
        temperature: 0.7,
      }),
    });

    const data = await response.json();
    const reply = data.choices?.[0]?.message?.content ?? "Erreur inconnue.";

    return NextResponse.json({ reply });
  } catch (err) {
    console.error("Chat API error:", err);
    return NextResponse.json(
      { error: "Une erreur est survenue. Réessaie dans un instant." },
      { status: 500 }
    );
  }
}
