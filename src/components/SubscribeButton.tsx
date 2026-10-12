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
  const router = useRouter();

  async function handleClick() {
    setLoading(true);
    try {
      const res = await fetch("/api/stripe/checkout", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ priceId }),
      });

      if (res.status === 401) {
        router.push("/auth/login?redirect=/tarifs");
        return;
      }

      const data = await res.json();
      if (data.url) {
        window.location.href = data.url;
      }
    } finally {
      setLoading(false);
    }
  }

  return (
    <div>
      <button
        onClick={handleClick}
        disabled={loading}
        className={className}
        style={{ ...style, width: "100%" }}
      >
        {loading ? "Chargement..." : children}
      </button>
    </div>
  );
}
