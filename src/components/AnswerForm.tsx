"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export function AnswerForm({ id, existing }: { id: string; existing?: string | null }) {
  const router = useRouter();
  const [answer, setAnswer] = useState(existing ?? "");
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setLoading(true);
    const res = await fetch("/api/coaching/answer", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ id, answer }),
    });
    const data = await res.json().catch(() => ({}));
    setLoading(false);
    if (!res.ok) {
      setError(data.error ?? "Envoi impossible.");
      return;
    }
    router.refresh();
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-3">
      <textarea
        required
        rows={6}
        maxLength={20000}
        value={answer}
        onChange={(e) => setAnswer(e.target.value)}
        placeholder="Ta réponse à l'étudiant…"
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

      <button
        type="submit"
        disabled={loading}
        className="rounded-full px-6 py-2.5 text-sm font-bold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
        style={{ background: "#E07B39" }}
      >
        {loading ? "Envoi…" : existing ? "Modifier ma réponse" : "Envoyer la réponse"}
      </button>
    </form>
  );
}
