"use client";

import { useState } from "react";

export function WelcomeMailButtons() {
  const [msg, setMsg] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  async function run(mode: "test" | "recent") {
    if (mode === "recent" && !window.confirm("Envoyer le mail de bienvenue aux comptes créés depuis le 12 octobre qui ne l'ont pas reçu ?")) {
      return;
    }
    setBusy(true);
    setMsg(null);
    try {
      const res = await fetch("/api/admin/welcome", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ mode }),
      });
      const data = await res.json();
      if (!res.ok) setMsg(data.error ?? "Erreur");
      else if (mode === "test") setMsg(`Test envoyé à ${data.to}.`);
      else setMsg(`${data.sent} mail(s) envoyé(s)${data.failed ? `, ${data.failed} en échec` : ""}.`);
    } catch {
      setMsg("Erreur réseau.");
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="mb-8 rounded-xl p-4" style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}>
      <p className="mb-3 text-sm font-semibold">Mail de bienvenue</p>
      <div className="flex flex-wrap gap-2">
        <button
          type="button"
          disabled={busy}
          onClick={() => run("test")}
          className="rounded-full px-4 py-2 text-sm font-bold text-white disabled:opacity-50"
          style={{ background: "#2C1810" }}
        >
          M&apos;envoyer un test
        </button>
        <button
          type="button"
          disabled={busy}
          onClick={() => run("recent")}
          className="rounded-full px-4 py-2 text-sm font-bold text-white disabled:opacity-50"
          style={{ background: "#E07B39" }}
        >
          Envoyer aux inscrits récents
        </button>
      </div>
      {msg && <p className="mt-3 text-sm" style={{ color: "#7A5C4A" }}>{msg}</p>}
    </div>
  );
}
