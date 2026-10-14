export const dynamic = "force-dynamic";

import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";

export const metadata = { robots: { index: false, follow: false } };

export default async function AdminInscritsPage() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();
  if (!user) notFound();

  const { data: profile } = await supabase
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .maybeSingle();

  // Page invisible pour tout le monde sauf l'administrateur
  if (profile?.role !== "admin") notFound();

  const admin = createAdminClient();
  const {
    data: { users },
  } = await admin.auth.admin.listUsers({ perPage: 1000 });

  const rows = users
    .map((u) => ({
      email: u.email ?? "",
      phone: typeof u.user_metadata?.phone === "string" ? (u.user_metadata.phone as string) : "",
      created: u.created_at,
      lastSignIn: u.last_sign_in_at ?? null,
      university:
        typeof u.user_metadata?.university === "string" && u.user_metadata.university
          ? (u.user_metadata.university as string)
          : "Non renseignée",
    }))
    .sort((a, b) => b.created.localeCompare(a.created));

  const now = Date.now();
  const recent = (iso: string | null, minutes: number) =>
    iso !== null && now - new Date(iso).getTime() < minutes * 60000;
  const onlineNow = rows.filter((r) => recent(r.lastSignIn, 30)).length;
  const last24h = rows.filter((r) => recent(r.lastSignIn, 24 * 60)).length;
  const byConnection = [...rows].sort((a, b) => (b.lastSignIn ?? "").localeCompare(a.lastSignIn ?? ""));

  const ago = (iso: string | null) => {
    if (!iso) return "jamais connecté";
    const min = Math.floor((now - new Date(iso).getTime()) / 60000);
    if (min < 1) return "à l'instant";
    if (min < 60) return `il y a ${min} min`;
    const h = Math.floor(min / 60);
    if (h < 24) return `il y a ${h} h`;
    const d = Math.floor(h / 24);
    return `il y a ${d} ${d > 1 ? "jours" : "jour"}`;
  };
  const dateTime = (iso: string) =>
    new Date(iso).toLocaleString("fr-FR", {
      day: "numeric",
      month: "short",
      hour: "2-digit",
      minute: "2-digit",
      timeZone: "Europe/Paris",
    });

  const counts = new Map<string, number>();
  for (const r of rows) counts.set(r.university, (counts.get(r.university) ?? 0) + 1);
  const byFac = Array.from(counts.entries()).sort((a, b) => b[1] - a[1]);

  const date = (iso: string) =>
    new Date(iso).toLocaleDateString("fr-FR", { day: "numeric", month: "short", year: "numeric" });

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <div className="mx-auto max-w-3xl px-4 py-10">
        <h1 className="mb-1 text-2xl font-extrabold">Inscrits par fac</h1>
        <p className="mb-8 text-sm" style={{ color: "#7A5C4A" }}>
          {rows.length} comptes. La fac est demandée à l&apos;inscription depuis le 13 octobre 2026.
        </p>

        <div className="mb-10 grid grid-cols-2 gap-3">
          <div className="rounded-xl p-4" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
            <p className="text-2xl font-extrabold" style={{ color: "#16a34a" }}>{onlineNow}</p>
            <p className="text-xs" style={{ color: "#7A5C4A" }}>connectés depuis moins de 30 min</p>
          </div>
          <div className="rounded-xl p-4" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
            <p className="text-2xl font-extrabold" style={{ color: "#E07B39" }}>{last24h}</p>
            <p className="text-xs" style={{ color: "#7A5C4A" }}>connectés dans les dernières 24 h</p>
          </div>
        </div>

        <h2 className="mb-3 text-lg font-bold">Répartition</h2>
        <ul className="mb-10 divide-y rounded-xl" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
          {byFac.map(([fac, n]) => (
            <li key={fac} className="flex items-center justify-between gap-4 px-4 py-2.5 text-sm">
              <span>{fac}</span>
              <span className="font-bold" style={{ color: "#E07B39" }}>
                {n}
              </span>
            </li>
          ))}
        </ul>

        <h2 className="mb-1 text-lg font-bold">Liste, par dernière connexion</h2>
        <p className="mb-3 text-xs" style={{ color: "#7A5C4A" }}>
          La dernière connexion est la dernière fois que la personne s&apos;est identifiée. Le point vert
          signale une connexion il y a moins de 30 minutes.
        </p>
        <ul className="divide-y rounded-xl" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
          {byConnection.map((r) => (
            <li key={r.email + r.created} className="px-4 py-2.5 text-sm">
              <p className="flex items-center gap-2 font-semibold">
                <span
                  aria-hidden="true"
                  className="inline-block h-2 w-2 rounded-full"
                  style={{ background: recent(r.lastSignIn, 30) ? "#16a34a" : "#D8CBB8" }}
                />
                {r.email}
              </p>
              <p style={{ color: "#7A5C4A" }}>
                {r.university} · inscrit le {date(r.created)}
              </p>
              <p style={{ color: "#7A5C4A" }}>
                Dernière connexion :{" "}
                {r.lastSignIn ? `${dateTime(r.lastSignIn)} (${ago(r.lastSignIn)})` : "jamais connecté"}
              </p>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
