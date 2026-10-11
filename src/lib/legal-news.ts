// Flux d'actualité juridique : sources officielles, lues côté serveur.
// Seuls les titres, une courte introduction et le lien vers la source sont repris.

export interface NewsItem {
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
