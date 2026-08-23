import type { Metadata } from "next";
import { Plus_Jakarta_Sans } from "next/font/google";
import "./globals.css";
import { Nav, Footer } from "@/components/Nav";

const plusJakarta = Plus_Jakarta_Sans({
  subsets: ["latin"],
  weight: ["400", "500", "600", "700", "800"],
  variable: "--font-jakarta",
});

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
    <html lang="fr" className={plusJakarta.variable}>
      <body className="min-h-screen flex flex-col font-jakarta">
        <Nav />
        <main className="flex-1">{children}</main>
        <Footer />
      </body>
    </html>
  );
}
