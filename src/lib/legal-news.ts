import { unstable_cache } from "next/cache";

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
  return clean(body).slice(0, 6000);
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
      temperature: 0.2,
      max_tokens: 400,
      messages: [
        {
          role: "system",
          content:
            "Tu résumes une actualité juridique pour des étudiants en droit. Écris 2 à 3 phrases en français clair, uniquement à partir du texte fourni : n'ajoute aucun fait, aucun chiffre, aucune date ni aucun nom qui n'y figure pas. Va à l'essentiel : qui, quoi, ce que cela change. Si le texte ne permet pas de résumer, réponds exactement VIDE. Pas de tiret cadratin, pas d'emoji, pas de mise en forme, pas de formule d'introduction.",
        },
        { role: "user", content: `Titre : ${title}\n\nTexte :\n${text}` },
      ],
    }),
    signal: AbortSignal.timeout(15000),
  });
  if (!res.ok) throw new Error("résumé indisponible");
  const data = await res.json();
  const out = String(data?.choices?.[0]?.message?.content ?? "").trim();
  if (!out || /^VIDE\b/i.test(out) || out.length > 900) return "";
  return out.replace(/\s*—\s*/g, ", ");
}

const cachedSummary = unstable_cache(
  async (link: string, title: string, host: string) => generateSummary(link, title, host),
  ["legal-news-summary-v1"],
  { revalidate: 60 * 60 * 24 * 30 }
);

export async function withSummaries(items: NewsItem[], count = 8): Promise<NewsItem[]> {
  const hostOf = (l: string) => new URL(l).hostname;
  const head = await Promise.all(
    items.slice(0, count).map(async (it) => {
      try {
        const summary = await Promise.race([
          cachedSummary(it.link, it.title, hostOf(it.link)),
          new Promise<string>((r) => setTimeout(() => r(""), 20000)),
        ]);
        return summary ? { ...it, summary } : it;
      } catch {
        return it;
      }
    })
  );
  return [...head, ...items.slice(count)];
}
