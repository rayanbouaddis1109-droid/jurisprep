"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

interface Props {
  priceId: string;
  children: React.ReactNode;
  className?: string;
  style?: React.CSSProperties;
  dark?: boolean;
}

export function SubscribeButton({ priceId, children, className, style, dark = false }: Props) {
  const [loading, setLoading] = useState(false);
  // L'accord est recueilli sur la page de paiement Stripe. La case n'apparaît ici que si
  // Stripe ne peut pas la collecter (le serveur le signale).
  const [waiver, setWaiver] = useState(false);
  const [needsWaiver, setNeedsWaiver] = useState(false);
  const router = useRouter();

  async function handleClick() {
    setLoading(true);
    try {
      const res = await fetch("/api/stripe/checkout", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ priceId, waiver }),
      });

      if (res.status === 401) {
        router.push("/auth/login?redirect=/tarifs");
        return;
      }

      const data = await res.json();
      if (res.status === 409 && data.needsWaiver) {
        setNeedsWaiver(true);
        return;
      }
      if (data.url) {
        window.location.href = data.url;
      }
    } finally {
      setLoading(false);
    }
  }

  return (
    <div>
      {needsWaiver && (
      <label
        className="mb-3 flex items-start gap-2 text-left text-xs"
        style={{ color: dark ? "rgba(255,248,238,0.85)" : "#7A5C4A" }}
      >
        <input
          type="checkbox"
          checked={waiver}
          onChange={(e) => setWaiver(e.target.checked)}
          className="mt-0.5"
        />
        <span>
          Je veux accéder au contenu tout de suite (sans droit de rétractation) et j&apos;accepte les{" "}
          <a href="/cgv" target="_blank" rel="noopener noreferrer" className="underline">
            conditions de vente
          </a>
          .
        </span>
      </label>
      )}
      <button
        onClick={handleClick}
        disabled={loading || (needsWaiver && !waiver)}
        className={className}
        style={{ ...style, width: "100%" }}
      >
        {loading ? "Chargement..." : children}
      </button>
    </div>
  );
}
