"use client";

import { useState } from "react";

export function FeedbackForm() {
  const [message, setMessage] = useState("");
  const [state, setState] = useState<"idle" | "sending" | "done">("idle");
  const [error, setError] = useState<string | null>(null);

  async function submit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setState("sending");
    try {
      const res = await fetch("/api/feedback", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ message }),
      });
      const data = await res.json();
      if (!res.ok) {
        setError(data.error ?? "Envoi impossible.");
        setState("idle");
        return;
      }
      setMessage("");
      setState("done");
    } catch {
      setError("Erreur réseau. Réessaie dans un instant.");
      setState("idle");
    }
  }

  if (state === "done") {
    return (
      <div
        className="rounded-2xl p-6 text-sm"
        style={{ background: "#E8FBF4", color: "#065E3F", border: "1.5px solid #B8F0DA" }}
      >
        <p className="mb-1 text-base font-bold">Merci, c&apos;est bien reçu.</p>
        <p>On lit chaque idée et on s&apos;en sert pour construire la suite.</p>
        <button
          type="button"
          onClick={() => setState("idle")}
          className="mt-4 rounded-full px-4 py-2 text-sm font-bold text-white"
          style={{ background: "#E07B39" }}
        >
          Envoyer une autre idée
        </button>
      </div>
    );
  }

  return (
    <form onSubmit={submit} className="space-y-3">
      <textarea
        required
        minLength={3}
        maxLength={1000}
        rows={6}
        value={message}
        onChange={(e) => setMessage(e.target.value)}
        placeholder="Une matière à ajouter, un type d'exercice, une section, quelque chose qui n'est pas clair..."
        className="w-full rounded-xl px-3 py-2.5 text-sm outline-none"
        style={{ border: "1.5px solid #EDE0CC", background: "#FFF8EE", color: "#2C1810" }}
      />
      <div className="flex items-center justify-between text-xs" style={{ color: "#7A5C4A" }}>
        <span>{message.length} / 1000</span>
      </div>
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
        disabled={state === "sending" || message.trim().length < 3}
        className="rounded-full px-6 py-3 text-sm font-bold text-white disabled:opacity-50"
        style={{ background: "#E07B39" }}
      >
        {state === "sending" ? "Envoi..." : "Envoyer mon idée"}
      </button>
    </form>
  );
}
