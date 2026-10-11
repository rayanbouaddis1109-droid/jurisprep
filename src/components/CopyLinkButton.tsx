"use client";

import { useState } from "react";

export function CopyLinkButton({ link }: { link: string }) {
  const [copied, setCopied] = useState(false);

  async function copy() {
    try {
      await navigator.clipboard.writeText(link);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      // Copie impossible : le lien reste affiché et sélectionnable.
    }
  }

  return (
    <button
      type="button"
      onClick={copy}
      className="rounded-full text-sm font-bold px-5 py-2.5 transition hover:opacity-90"
      style={{ background: "#E07B39", color: "white" }}
    >
      {copied ? "Lien copié" : "Copier mon lien"}
    </button>
  );
}
