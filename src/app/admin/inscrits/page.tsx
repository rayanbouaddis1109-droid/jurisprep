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
      created: u.created_at,
      university:
        typeof u.user_metadata?.university === "string" && u.user_metadata.university
          ? (u.user_metadata.university as string)
          : "Non renseignée",
    }))
    .sort((a, b) => b.created.localeCompare(a.created));

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

        <h2 className="mb-3 text-lg font-bold">Liste</h2>
        <ul className="divide-y rounded-xl" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
          {rows.map((r) => (
            <li key={r.email + r.created} className="px-4 py-2.5 text-sm">
              <p className="font-semibold">{r.email}</p>
              <p style={{ color: "#7A5C4A" }}>
                {r.university} · inscrit le {date(r.created)}
              </p>
            </li>
          ))}
        </ul>
      </div>
    </div>
  );
}
