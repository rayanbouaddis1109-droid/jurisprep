import Link from "next/link";
import { ArrowRight } from "lucide-react";

export default function NotFound() {
  return (
    <div
      className="flex flex-col items-center justify-center px-5 py-32 text-center"
      style={{ background: "#FFF8EE", color: "#2C1810", minHeight: "60vh" }}
    >
      <div
        className="font-extrabold mb-4"
        style={{ fontSize: "6rem", color: "#E07B39", letterSpacing: "-0.05em", lineHeight: 1 }}
      >
        404
      </div>
      <h1 className="text-2xl font-bold mb-3">Page introuvable</h1>
      <p className="text-base mb-8" style={{ color: "#7A5C4A", maxWidth: 400, lineHeight: 1.65 }}>
        Cette page n&apos;existe pas ou a été déplacée. Retourne à l&apos;accueil pour continuer tes révisions.
      </p>
      <Link
        href="/"
        className="inline-flex items-center gap-2 rounded-full font-bold text-white transition-opacity hover:opacity-90"
        style={{ background: "#E07B39", padding: "14px 24px", fontSize: "0.9375rem" }}
      >
        Retour à l&apos;accueil <ArrowRight className="h-4 w-4" />
      </Link>
    </div>
  );
}
