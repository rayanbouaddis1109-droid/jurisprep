import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Créer un compte",
  description:
    "Crée ton compte JurisPrép gratuitement : fiches de cours, quiz corrigés, flashcards et assistant IA pour réussir tes études de droit.",
};

export default function SignupLayout({ children }: { children: React.ReactNode }) {
  return <>{children}</>;
}
