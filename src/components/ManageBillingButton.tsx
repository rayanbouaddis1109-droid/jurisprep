"use client";

import { useState } from "react";

export function ManageBillingButton() {
  const [loading, setLoading] = useState(false);

  async function handleClick() {
    setLoading(true);
    try {
      const res = await fetch("/api/stripe/portal", { method: "POST" });
      const data = await res.json();
      if (data.url) {
        window.location.href = data.url;
      }
    } finally {
      setLoading(false);
    }
  }

  return (
    <button
      onClick={handleClick}
      disabled={loading}
      className="inline-block rounded-full text-sm font-bold px-6 py-3 transition hover:opacity-90 disabled:opacity-50"
      style={{ background: "#2C1810", color: "white" }}
    >
      {loading ? "Chargement..." : "Gérer mon abonnement"}
    </button>
  );
}
