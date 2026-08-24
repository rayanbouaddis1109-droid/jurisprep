import Link from "next/link";
import { Lock } from "lucide-react";

export function PaywallBanner() {
  return (
    <div
      className="rounded-2xl p-10 text-center"
      style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
    >
      <div
        className="mx-auto mb-4 flex h-12 w-12 items-center justify-center rounded-full"
        style={{ background: "#FFF0E6" }}
      >
        <Lock className="h-6 w-6" style={{ color: "#E07B39" }} />
      </div>
      <h3 className="text-lg font-bold mb-2" style={{ color: "#2C1810" }}>
        Contenu réservé aux abonnés
      </h3>
      <p className="text-sm mb-6 max-w-sm mx-auto" style={{ color: "#7A5C4A" }}>
        Accède à l&apos;intégralité des fiches, quiz, flashcards et exercices
        corrigés avec un abonnement JurisPrép.
      </p>
      <Link
        href="/tarifs"
        className="inline-block rounded-full text-sm font-bold px-6 py-3 transition hover:opacity-90"
        style={{ background: "#E07B39", color: "white" }}
      >
        Voir les formules
      </Link>
    </div>
  );
}
