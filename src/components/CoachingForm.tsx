"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function CoachingForm() {
  const router = useRouter();
  const [question, setQuestion] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [info, setInfo] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setInfo(null);
    setLoading(true);
    const res = await fetch("/api/coaching", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ question }),
    });
    const data = await res.json().catch(() => ({}));
    setLoading(false);
    if (!res.ok) {
      setError(data.error ?? "Envoi impossible pour le moment.");
      return;
    }
    setQuestion("");
    setInfo("Question envoyée. Tu recevras une réponse ici même.");
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-3">
      <textarea
        required
        minLength={10}
        maxLength={4000}
        rows={5}
        value={question}
        onChange={(e) => setQuestion(e.target.value)}
        placeholder="Explique ta difficulté : la notion qui bloque, l'exercice que tu ne comprends pas, la méthode dont tu as besoin…"
        className="w-full rounded-xl px-4 py-3 text-sm outline-none transition"
        style={{
          border: "1.5px solid #EDE0CC",
          background: "#FFF8EE",
          color: "#2C1810",
          resize: "vertical",
        }}
      />

      {error && (
        <div
          className="rounded-xl p-3 text-sm"
          style={{ background: "#FFF0EE", color: "#7C2A0E", border: "1px solid #FFD0C0" }}
        >
          {error}
        </div>
      )}

      {info && (
        <div
          className="rounded-xl p-3 text-sm"
          style={{ background: "#E8FBF4", color: "#065E3F", border: "1px solid #B8F0DA" }}
        >
          {info}
        </div>
      )}

      <button
        type="submit"
        disabled={loading}
        className="rounded-full px-6 py-3 text-sm font-bold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
        style={{ background: "#E07B39" }}
      >
        {loading ? "Envoi…" : "Envoyer ma question"}
      </button>
    </form>
  );
}
