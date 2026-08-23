import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Assistant IA — JurisPrép",
  description:
    "Pose tes questions de droit au Professeur Legrand, assistant IA spécialisé en droit français. Disponible 24h/24, 7j/7.",
};

export default function AssistantLayout({ children }: { children: React.ReactNode }) {
  return <>{children}</>;
}
