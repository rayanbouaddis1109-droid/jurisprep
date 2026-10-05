import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

const GROQ_API_URL = "https://api.groq.com/openai/v1/chat/completions";
const MAX_MESSAGES = 100; // l'historique envoyé à Groq est de toute façon réduit aux 6 derniers messages
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

const SYSTEM_PROMPT = `Tu es l'assistant de révision de JurisPrép, destiné aux étudiants en droit français (licence).

MISSION : tu réponds uniquement aux questions juridiques. Si une question n'est pas liée au droit, tu le dis poliment et rappelles ta mission.

SOURCES : quand des extraits de fiches de cours JurisPrép sont fournis plus bas, appuie-toi d'abord sur eux. N'invente jamais un arrêt, une date, un numéro d'article ou un chiffre. Si tu n'es pas certain d'une référence, dis-le clairement plutôt que de la deviner.

STYLE :
- Situe la question dans son cadre juridique
- Structure la réponse en parties claires
- Cite les textes et la jurisprudence pertinents quand tu en es sûr
- Termine par "Point essentiel à retenir" qui résume la règle
- Vocabulaire juridique précis mais accessible, ton pédagogique et exigeant`;

const STOPWORDS = new Set(["quelle","quelles","quel","quels","est","sont","dans","pour","avec","comment","pourquoi","quoi","entre","cette","celui","celle","plus","fait","faire","peut","doit","arret","arrêt","droit","solution","date","regle","règle","principe","explique","expliquer","quoi","quest"]);

// Recherche plein texte dans les fiches de cours publiées (lecture sous RLS, avec la session de l'utilisateur)
async function findCourseExcerpts(
  supabase: Awaited<ReturnType<typeof createClient>>,
  question: string
): Promise<string> {
  const words = Array.from(
    new Set(
      question
        .toLowerCase()
        .replace(/[^a-zà-ÿ0-9 ]/gi, " ")
        .split(/\s+/)
        .filter((w) => w.length > 3 && !STOPWORDS.has(w))
    )
  ).slice(0, 8);
  if (words.length === 0) return "";

  const search = async (op: string) => {
    const { data } = await supabase
      .from("revision_sheets")
      .select("title, chapter, content")
      .eq("is_published", true)
      .textSearch("content", words.join(op), { type: "websearch", config: "french" })
      .limit(40);
    return data ?? [];
  };

  // Fiches contenant tous les mots, complétées si besoin par celles qui en contiennent au moins un
  let rows = await search(" ");
  if (rows.length < 3) {
    const seen = new Set(rows.map((r) => r.title));
    rows = rows.concat((await search(" or ")).filter((r) => !seen.has(r.title)));
  }
  if (rows.length === 0) return "";

  // Classement : occurrences des mots, pondérées par leur rareté, bonus si le titre les contient
  const norm = (t: string) => t.toLowerCase().normalize("NFD").replace(/[\u0300-\u036f]/g, "");
  const keys = words.map(norm);
  const bodies = rows.map((r) => norm(String(r.content)));
  const weights = keys.map((k) => 1 / (bodies.filter((b) => b.includes(k)).length || 1));
  const scored = rows
    .map((r, i) => {
      const title = norm(String(r.title));
      let score = 0;
      keys.forEach((k, j) => {
        score += weights[j] * Math.min(bodies[i].split(k).length - 1, 10);
        if (title.includes(k)) score += 5 * weights[j];
      });
      return { r, score };
    })
    .sort((x, y) => y.score - x.score)
    .slice(0, 2);

  return scored
    .map(({ r }) => `### ${r.title} (${r.chapter ?? ""})\n${String(r.content).slice(0, 2500)}`)
    .join("\n\n");
}

export async function POST(req: NextRequest) {
  const ip =
    req.headers.get("x-forwarded-for")?.split(",")[0]?.trim() ?? "unknown";

  if (!checkRateLimit(ip)) {
    return NextResponse.json(
      { error: "Trop de requêtes. Réessaie dans une minute." },
      { status: 429 }
    );
  }

  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) {
    return NextResponse.json(
      { error: "Connecte-toi pour utiliser l'assistant." },
      { status: 401 }
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
      // La limite de longueur ne vise que les messages de l'étudiant : les réponses de l'assistant sont souvent plus longues
      if (!m || typeof m.content !== "string" || (m.role === "user" && m.content.length > MAX_MESSAGE_LENGTH)) {
        return NextResponse.json(
          { error: "Message trop long (2000 caractères maximum) ou invalide." },
          { status: 400 }
        );
      }
      if (!["user", "assistant"].includes(m.role)) {
        return NextResponse.json({ error: "Rôle invalide." }, { status: 400 });
      }
    }

    const lastUser = [...messages].reverse().find((m: { role: string }) => m.role === "user");
    const excerpts = lastUser ? await findCourseExcerpts(supabase, lastUser.content) : "";
    const system = excerpts
      ? `${SYSTEM_PROMPT}\n\nEXTRAITS DES FICHES DE COURS JURISPRÉP :\n\n${excerpts}`
      : SYSTEM_PROMPT;

    if (!process.env.GROQ_API_KEY) {
      return NextResponse.json(
        { error: "L'assistant n'est pas configuré (clé GROQ_API_KEY absente sur le serveur)." },
        { status: 503 }
      );
    }

    const response = await fetch(GROQ_API_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${process.env.GROQ_API_KEY}`,
      },
      body: JSON.stringify({
        // llama-3.3-70b-versatile retiré par Groq le 2026-08-16, remplacé par gpt-oss-120b
        model: "openai/gpt-oss-120b",
        reasoning_effort: "low",
        include_reasoning: false,
        messages: [
          { role: "system", content: system },
          // Seuls les 6 derniers messages sont renvoyés, réponses tronquées, pour rester sous la limite du plan gratuit Groq
          ...messages.slice(-6).map((m: { role: string; content: string }) => ({
            role: m.role,
            content: m.role === "assistant" ? m.content.slice(0, 1500) : m.content,
          })),
        ],
        max_completion_tokens: 2500,
        temperature: 0.3,
      }),
    });

    const data = await response.json();
    if (!response.ok) {
      console.error("Groq error:", response.status, data?.error?.message);
      // Code d'erreur Groq affiché (jamais la clé) pour diagnostiquer sans accès aux logs
      const code = data?.error?.code ?? data?.error?.type ?? "inconnu";
      return NextResponse.json(
        { error: `L'assistant est momentanément indisponible (Groq ${response.status}, ${code}). Réessaie plus tard.` },
        { status: 502 }
      );
    }
    const choice = data.choices?.[0];
    const reply = typeof choice?.message?.content === "string" ? choice.message.content.trim() : "";
    if (!reply) {
      // Réponse vide : le plus souvent le modèle a épuisé sa limite de longueur en raisonnant
      return NextResponse.json(
        { error: `L'assistant n'a pas produit de réponse (fin : ${choice?.finish_reason ?? "inconnue"}). Reformule ta question plus simplement.` },
        { status: 502 }
      );
    }

    return NextResponse.json({ reply });
  } catch (err) {
    console.error("Chat API error:", err);
    return NextResponse.json(
      { error: "Une erreur est survenue. Réessaie dans un instant." },
      { status: 500 }
    );
  }
}
