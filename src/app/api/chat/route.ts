import { NextRequest, NextResponse } from "next/server";

const GROQ_API_URL = "https://api.groq.com/openai/v1/chat/completions";

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
  try {
    const { messages } = await req.json();

    if (!messages || !Array.isArray(messages)) {
      return NextResponse.json({ error: "Messages invalides" }, { status: 400 });
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
