"use client";

import { useEffect, useState } from "react";

// Compte à rebours de la période offerte : jours, heures, minutes et secondes restantes.
export function WelcomeCountdown({ endsAt, price }: { endsAt: string; price: string }) {
  const [now, setNow] = useState<number | null>(null);

  useEffect(() => {
    setNow(Date.now());
    const id = setInterval(() => setNow(Date.now()), 1000);
    return () => clearInterval(id);
  }, []);

  const end = new Date(endsAt).getTime();
  const left = now === null ? null : Math.max(0, end - now);

  let label = "";
  if (left !== null) {
    const d = Math.floor(left / 86400000);
    const h = Math.floor((left % 86400000) / 3600000);
    const m = Math.floor((left % 3600000) / 60000);
    const s = Math.floor((left % 60000) / 1000);
    label = `${d} ${d > 1 ? "jours" : "jour"} ${h} h ${String(m).padStart(2, "0")} min ${String(s).padStart(2, "0")} s`;
  }

  return (
    <div
      className="mb-6 rounded-xl px-4 py-3"
      style={{ background: "#FFF0E6", border: "1.5px solid #F5C9A6", color: "#2C1810" }}
    >
      <p className="text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
        Accès complet gratuit
      </p>
      <p className="mt-1 text-lg font-extrabold" style={{ letterSpacing: "-0.02em" }}>
        Encore {label || "..."} gratuit
      </p>
      <p className="mt-1 text-sm" style={{ color: "#7A5C4A" }}>
        Ensuite, {price} par mois, sans engagement. Rien n&apos;est prélevé automatiquement.
      </p>
    </div>
  );
}
