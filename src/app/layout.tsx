import type { Metadata } from "next";
import { Plus_Jakarta_Sans } from "next/font/google";
import "./globals.css";
import { Nav, Footer } from "@/components/Nav";

const plusJakarta = Plus_Jakarta_Sans({
  subsets: ["latin"],
  weight: ["400", "500", "600", "700", "800"],
  variable: "--font-jakarta",
});

const BASE_URL = process.env.NEXT_PUBLIC_SITE_URL ?? "https://www.jurisprep.fr";

export const metadata: Metadata = {
  metadataBase: new URL(BASE_URL),
  title: {
    default: "JurisPrép — Réussir ses études de droit",
    template: "%s — JurisPrép",
  },
  description:
    "Plateforme tout-en-un pour lycéens et étudiants en Licence de droit : fiches de cours, quiz corrigés, flashcards et assistant IA.",
  openGraph: {
    siteName: "JurisPrép",
    type: "website",
    locale: "fr_FR",
    url: BASE_URL,
    title: "JurisPrép — Réussir ses études de droit",
    description:
      "Fiches de cours, quiz corrigés, flashcards et assistant IA pour réussir ses études de droit du lycée à la L3.",
  },
  twitter: {
    card: "summary_large_image",
    title: "JurisPrép — Réussir ses études de droit",
    description:
      "Fiches de cours, quiz corrigés, flashcards et assistant IA pour réussir ses études de droit.",
  },
  icons: {
    icon: [
      { url: "/favicon.ico", sizes: "48x48" },
      { url: "/favicon.svg", type: "image/svg+xml" },
      { url: "/favicon-48.png", sizes: "48x48", type: "image/png" },
      { url: "/favicon-96.png", sizes: "96x96", type: "image/png" },
      { url: "/icon-192.png", sizes: "192x192", type: "image/png" },
    ],
    apple: [{ url: "/apple-touch-icon.png", sizes: "180x180" }],
  },
  robots: {
    index: true,
    follow: true,
  },
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
