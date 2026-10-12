import { after } from "next/server";
import { createAdminClient } from "@/lib/supabase/admin";

// Flux d'actualité juridique : sources officielles, lues côté serveur.
// Seuls les titres, une courte introduction et le lien vers la source sont repris.

export interface NewsItem {
  summary?: string;
  title: string;
  excerpt: string;
  link: string;
  date: Date;
  source: string;
}

const FEEDS = [
  { name: "Conseil constitutionnel", url: "https://www.conseil-constitutionnel.fr/flux/rss.xml", host: "www.conseil-constitutionnel.fr" },
  { name: "Conseil d'État", url: "https://www.conseil-etat.fr/rss/actualites-rss", host: "www.conseil-etat.fr" },
  { name: "Ministère de la Justice", url: "https://www.justice.gouv.fr/rss.xml", host: "www.justice.gouv.fr" },
] as const;

const ENTITIES: Record<string, string> = {
  amp: "&", lt: "<", gt: ">", quot: '"', apos: "'", nbsp: " ", rsquo: "’", lsquo: "‘",
  laquo: "«", raquo: "»", hellip: "…", ndash: "–", eacute: "é", egrave: "è", agrave: "à",
};

function decode(text: string): string {
  return text
    .replace(/&#(\d+);/g, (_, n) => String.fromCodePoint(Number(n)))
    .replace(/&#x([0-9a-f]+);/gi, (_, n) => String.fromCodePoint(parseInt(n, 16)))
    .replace(/&([a-z]+);/gi, (m, n) => ENTITIES[n.toLowerCase()] ?? m);
}

function clean(raw: string): string {
  const noCdata = raw.replace(/<!\[CDATA\[([\s\S]*?)\]\]>/g, "$1");
  // Décodage avant retrait des balises : certains flux échappent leur HTML.
  const text = decode(noCdata).replace(/<[^>]*>/g, " ");
  return decode(text).replace(/\s+/g, " ").trim();
}

function tag(item: string, name: string): string {
  const m = item.match(new RegExp(`<${name}(?:\\s[^>]*)?>([\\s\\S]*?)</${name}>`, "i"));
  return m ? clean(m[1]) : "";
}

function parseFeed(xml: string, source: string, host: string): NewsItem[] {
  const out: NewsItem[] = [];
  for (const m of xml.matchAll(/<item>([\s\S]*?)<\/item>/gi)) {
    const item = m[1];
    const title = tag(item, "title");
    const link = tag(item, "link");
    const date = new Date(tag(item, "pubDate") || tag(item, "dc:date"));
    if (!title || Number.isNaN(date.getTime())) continue;
    // Lien accepté seulement s'il pointe vers le site de la source.
    let safe = "";
    try {
      const u = new URL(link);
      if (u.protocol === "https:" && u.hostname === host) safe = u.toString();
    } catch {
      continue;
    }
    if (!safe) continue;
    let excerpt = tag(item, "description");
    if (excerpt === title) excerpt = "";
    if (excerpt.length > 220) excerpt = excerpt.slice(0, 217).replace(/\s+\S*$/, "") + "…";
    out.push({ title, excerpt, link: safe, date, source });
  }
  return out;
}

async function load(feed: (typeof FEEDS)[number]): Promise<NewsItem[]> {
  try {
    const res = await fetch(feed.url, {
      headers: { "User-Agent": "Mozilla/5.0 (compatible; JurisPrepBot/1.0)", Accept: "application/rss+xml, application/xml, text/xml" },
      next: { revalidate: 3600 },
      signal: AbortSignal.timeout(8000),
    });
    if (!res.ok) return [];
    return parseFeed(await res.text(), feed.name, feed.host);
  } catch {
    return [];
  }
}

export async function getLegalNews(limit = 40): Promise<{ items: NewsItem[]; failed: number }> {
  const results = await Promise.all(FEEDS.map(load));
  const failed = results.filter((r) => r.length === 0).length;
  const now = Date.now();
  const items = results
    .flat()
    // On écarte les éléments datés dans le futur (annonces) pour garder un fil "à ce jour".
    .filter((i) => i.date.getTime() <= now + 86400000)
    .sort((a, b) => b.date.getTime() - a.date.getTime())
    .slice(0, limit);
  return { items, failed };
}

// ── Résumés ──────────────────────────────────────────────────────────────
// Le texte de l'article officiel est résumé en quelques phrases, uniquement à partir de ce texte.
// Le résumé est mis en cache 30 jours par article : une seule génération par article.

function articleText(html: string): string {
  const main = html.match(/<main[\s\S]*?<\/main>/i)?.[0] ?? html;
  const body = main.replace(/<(script|style|nav|header|footer|aside|form)[\s\S]*?<\/\1>/gi, " ");
  return clean(body).slice(0, 9000);
}

async function generateSummary(link: string, title: string, host: string): Promise<string> {
  const key = process.env.GROQ_API_KEY;
  if (!key) throw new Error("clé manquante");
  const u = new URL(link);
  if (u.protocol !== "https:" || u.hostname !== host) throw new Error("hôte refusé");

  const page = await fetch(link, {
    headers: { "User-Agent": "Mozilla/5.0 (compatible; JurisPrepBot/1.0)" },
    signal: AbortSignal.timeout(8000),
  });
  if (!page.ok) throw new Error("page illisible");
  const text = articleText(await page.text());
  if (text.length < 200) return "";

  const res = await fetch("https://api.groq.com/openai/v1/chat/completions", {
    method: "POST",
    headers: { "Content-Type": "application/json", Authorization: `Bearer ${key}` },
    body: JSON.stringify({
      model: "openai/gpt-oss-120b",
      temperature: 0,
      max_tokens: 2500,
      reasoning_effort: "low",
      messages: [
        {
          role: "system",
          content:
            "Tu rédiges le résumé d'une actualité juridique pour des étudiants en droit, à partir du seul texte fourni. Écris 4 à 6 phrases COURTES en français clair, en un seul paragraphe : le contexte, ce que décide ou annonce l'institution, puis les points importants. Une idée par phrase, pas de point-virgule, pas de phrase de plus de 30 mots. Reprends exactement les références du texte (numéros de décision, articles, dates, noms d'institutions) et n'ajoute aucun fait, chiffre, date ni nom qui n'y figure pas. N'ajoute aucun commentaire sur l'utilité ou l'intérêt de l'information, aucune explication personnelle, aucune parenthèse explicative : chaque phrase doit correspondre à une information présente dans le texte. Relis ton texte pour vérifier l'orthographe de chaque mot. Explique en une demi-phrase les termes techniques indispensables. Si le texte ne permet pas de résumer, réponds exactement VIDE. Pas de tiret cadratin, pas d'emoji, pas de liste, pas de mise en forme, pas de formule d'introduction comme « Cet article ».",
        },
        { role: "user", content: `Titre : ${title}\n\nTexte :\n${text}` },
      ],
    }),
    signal: AbortSignal.timeout(15000),
  });
  if (!res.ok) throw new Error("résumé indisponible");
  const data = await res.json();
  const out = String(data?.choices?.[0]?.message?.content ?? "").trim();
  if (!out || /^VIDE\b/i.test(out)) return "";
  // Réponse coupée ou trop courte pour être un résumé : on ne la garde pas.
  if (out.length < 120 || out.length > 1600 || !/[.!?»)]$/.test(out)) throw new Error("résumé incomplet");
  // Le modèle ajoute parfois ses propres définitions entre parenthèses ou en fin de texte :
  // elles ne viennent pas de l'article et peuvent être fausses, on les retire.
  const stripped = out
    .replace(/\s*—\s*/g, ", ")
    .replace(/\s*\([^()]*[:=][^()]*\)/g, "")
    .split(/(?<=[.!?])\s+/)
    .filter(
      (sentence) =>
        // Les espaces avant « : » et « ; » peuvent être insécables.
        !(/[\s\u00a0\u202f]:/.test(sentence) && /[\s\u00a0\u202f];/.test(sentence)) &&
        !/\s(désigne|signifie)\s/.test(sentence)
    )
    .join(" ")
    .trim();
  if (stripped.length < 120) throw new Error("résumé incomplet");
  return stripped;
}

const hostOf = (l: string) => new URL(l).hostname;

// Résumés déjà générés : lus en base (serveur). Les manquants sont générés après la réponse,
// quelques-uns à la fois, pour ne pas ralentir la page ni saturer le service de résumé.
export async function withSummaries(items: NewsItem[], count = 12, perVisit = 4): Promise<NewsItem[]> {
  const head = items.slice(0, count);
  // Version de la clé : changer ce préfixe force la régénération des résumés.
  const K = (l: string) => `v5:${l}`;
  const links = head.map((i) => K(i.link));
  let stored = new Map<string, string>();
  try {
    const db = createAdminClient();
    const { data, error } = await db.from("news_summaries").select("link, summary").in("link", links);
    if (error) return items;
    stored = new Map((data ?? []).map((r) => [(r.link as string).replace(/^v5:/, ""), r.summary as string]));

    const missing = head.filter((i) => !stored.has(i.link)).slice(0, perVisit);
    if (missing.length > 0) {
      after(async () => {
        for (const it of missing) {
          try {
            const summary = await generateSummary(it.link, it.title, hostOf(it.link));
            if (summary) await db.from("news_summaries").upsert({ link: K(it.link), summary });
          } catch {
            // Échec ponctuel : l'article sera retenté à une prochaine visite.
          }
        }
      });
    }
  } catch {
    return items;
  }
  return items.map((it) => (stored.has(it.link) ? { ...it, summary: stored.get(it.link) } : it));
}
