export const dynamic = "force-dynamic";

import { notFound } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";

export const metadata = { robots: { index: false, follow: false } };

export default async function AdminIdeesPage() {
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
  if (profile?.role !== "admin") notFound();

  const admin = createAdminClient();
  const { data: rows } = await admin
    .from("feedback")
    .select("id, user_id, message, created_at")
    .order("created_at", { ascending: false })
    .limit(500);

  const {
    data: { users },
  } = await admin.auth.admin.listUsers({ perPage: 1000 });
  const byId = new Map(
    users.map((u) => [
      u.id,
      {
        email: u.email ?? "",
        fac: typeof u.user_metadata?.university === "string" ? (u.user_metadata.university as string) : "",
      },
    ]),
  );

  const when = (iso: string) =>
    new Date(iso).toLocaleString("fr-FR", {
      day: "numeric",
      month: "short",
      hour: "2-digit",
      minute: "2-digit",
      timeZone: "Europe/Paris",
    });

  return (
    <div style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}>
      <div className="mx-auto max-w-3xl px-4 py-10">
        <h1 className="mb-1 text-2xl font-extrabold">Idées des étudiants</h1>
        <p className="mb-8 text-sm" style={{ color: "#7A5C4A" }}>
          {rows?.length ?? 0} idée{(rows?.length ?? 0) > 1 ? "s" : ""}. Le formulaire est sur /idees.
        </p>
        {(rows ?? []).length === 0 ? (
          <p className="text-sm" style={{ color: "#7A5C4A" }}>Aucune idée pour le moment.</p>
        ) : (
          <ul className="space-y-3">
            {(rows ?? []).map((r) => {
              const u = byId.get(r.user_id as string);
              return (
                <li
                  key={r.id as string}
                  className="rounded-xl p-4 text-sm"
                  style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
                >
                  <p className="mb-2 whitespace-pre-wrap leading-relaxed">{r.message as string}</p>
                  <p className="text-xs" style={{ color: "#7A5C4A" }}>
                    {u?.email ?? "compte supprimé"}
                    {u?.fac ? ` · ${u.fac}` : ""} · {when(r.created_at as string)}
                  </p>
                </li>
              );
            })}
          </ul>
        )}
      </div>
    </div>
  );
}
