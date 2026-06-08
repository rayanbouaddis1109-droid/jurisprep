import type { Metadata } from "next";
import "./globals.css";
import { Nav } from "@/components/Nav";
import { Footer } from "@/components/Footer";

export const metadata: Metadata = {
  title: "JurisPrép — Réussir ses études de droit",
  description:
    "Plateforme tout-en-un pour lycéens et étudiants en Licence de droit : fiches, fiches d'arrêts, vidéos, quiz, flashcards et exercices corrigés.",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="fr">
      <body className="min-h-screen flex flex-col">
        <Nav />
        <main className="flex-1">{children}</main>
        <Footer />
      </body>
    </html>
  );
}
