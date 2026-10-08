import Link from "next/link";
import { MessageSquare } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { LogoutButton } from "./LogoutButton";
import { MobileMenu } from "./MobileMenu";

export async function Nav() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <header className="sticky top-0 z-50" style={{ background: "rgba(255,248,238,0.9)", backdropFilter: "blur(12px)", WebkitBackdropFilter: "blur(12px)", borderBottom: "1.5px solid #EDE0CC" }}>
      <nav className="relative mx-auto flex max-w-6xl items-center justify-between px-4 py-3">
        {/* Logo */}
        <Link href="/" className="flex items-center gap-2.5" style={{ color: "#2C1810", textDecoration: "none" }}>
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img src="/logo.svg" alt="" width={32} height={32} className="h-8 w-8 rounded-lg" />
          <span className="text-lg font-extrabold tracking-tight" style={{ letterSpacing: "-0.02em" }}>
            Juris<span style={{ color: "#E07B39" }}>Prép</span>
          </span>
        </Link>

        {/* Links */}
        <div className="hidden items-center gap-1 text-sm md:flex" style={{ color: "#7A5C4A" }}>
          {[
            { href: "/licence/lyceen", label: "Lycéen" },
            { href: "/licence/l1", label: "L1" },
            { href: "/licence/l2", label: "L2" },
            { href: "/licence/l3", label: "L3" },
            { href: "/tarifs", label: "Tarifs" },
          ].map(({ href, label }) => (
            <Link key={href} href={href}
              className="rounded-lg px-3 py-1.5 font-medium transition hover:text-[#2C1810]"
              style={{ color: "#7A5C4A" }}>
              {label}
            </Link>
          ))}
        </div>

        {/* Right */}
        <div className="flex items-center gap-2 text-sm">
          <MobileMenu isLoggedIn={!!user} />
          <Link href="/assistant"
            className="hidden items-center gap-1.5 rounded-lg px-3 py-1.5 font-semibold transition md:flex"
            style={{ background: "#FFF0E6", color: "#E07B39" }}>
            <MessageSquare className="h-4 w-4" /> Assistant IA
          </Link>
          {user ? (
            <>
              <Link href="/compte"
                className="hidden rounded-lg px-3 py-1.5 font-medium transition hover:bg-[#EDE0CC] md:block"
                style={{ color: "#2C1810" }}>
                Mon compte
              </Link>
              <LogoutButton />
            </>
          ) : (
            <>
              <Link href="/auth/login"
                className="hidden rounded-lg px-3 py-1.5 font-medium transition hover:bg-[#EDE0CC] md:block"
                style={{ color: "#2C1810" }}>
                Connexion
              </Link>
              <Link href="/auth/signup"
                className="hidden rounded-full px-4 py-1.5 font-bold text-white transition hover:opacity-90 md:block"
                style={{ background: "#2C1810" }}>
                Inscription
              </Link>
            </>
          )}
        </div>
      </nav>
    </header>
  );
}

export function Footer() {
  return (
    <footer style={{ borderTop: "1.5px solid #EDE0CC", background: "#2C1810", color: "rgba(255,248,238,0.5)" }}>
      <div className="mx-auto max-w-6xl px-4 py-12">
        <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-4">
          {/* Brand */}
          <div className="md:col-span-1">
            <div className="flex items-center gap-2">
              {/* eslint-disable-next-line @next/next/no-img-element */}
              <img src="/logo.svg" alt="" width={32} height={32} className="h-8 w-8 rounded-lg" />
              <span className="text-lg font-extrabold text-white">
                Juris<span style={{ color: "#E07B39" }}>Prép</span>
              </span>
            </div>
            <p className="mt-3 text-sm leading-relaxed">
              La plateforme tout-en-un pour réussir ses études de droit, du lycée à la L3.
            </p>
            <p className="mt-3 text-sm">
              <a
                href="mailto:jurisprep1@gmail.com"
                className="transition hover:text-white"
                style={{ color: "rgba(255,248,238,0.5)" }}
              >
                jurisprep1@gmail.com
              </a>
            </p>
          </div>

          {/* Niveaux */}
          <div>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest" style={{ color: "rgba(255,248,238,0.3)" }}>
              Niveaux
            </p>
            {[
              { label: "Lycéen", slug: "lyceen" },
              { label: "L1", slug: "l1" },
              { label: "L2", slug: "l2" },
              { label: "L3", slug: "l3" },
            ].map((l) => (
              <Link
                key={l.slug}
                href={`/licence/${l.slug}`}
                className="block py-1 text-sm transition hover:text-white"
              >
                {l.label}
              </Link>
            ))}
          </div>

          {/* Outils */}
          <div>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest" style={{ color: "rgba(255,248,238,0.3)" }}>
              Outils
            </p>
            {[
              { label: "Anglais juridique", href: "/transverse/anglais-juridique" },
              { label: "Culture générale", href: "/transverse/culture-generale" },
              { label: "Assistant IA", href: "/assistant" },
              { label: "Tarifs", href: "/tarifs" },
            ].map(({ label, href }) => (
              <Link
                key={href}
                href={href}
                className="block py-1 text-sm transition hover:text-white"
              >
                {label}
              </Link>
            ))}
          </div>

          {/* Légal */}
          <div>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest" style={{ color: "rgba(255,248,238,0.3)" }}>
              Légal
            </p>
            {[
              { label: "Fiches gratuites", href: "/fiches-gratuites" },
              { label: "Connexion", href: "/auth/login" },
              { label: "Inscription", href: "/auth/signup" },
              { label: "Mentions légales", href: "/mentions-legales" },
              { label: "CGV", href: "/cgv" },
              { label: "Confidentialité", href: "/confidentialite" },
            ].map(({ label, href }) => (
              <Link
                key={href}
                href={href}
                className="block py-1 text-sm transition hover:text-white"
              >
                {label}
              </Link>
            ))}
            <a
              href="https://www.mediateur-consommation-smp.fr"
              target="_blank"
              rel="noopener noreferrer"
              className="block py-1 text-sm transition hover:text-white"
            >
              Médiation de la consommation
            </a>
          </div>
        </div>

        <div
          className="mt-10 pt-6 text-center text-xs"
          style={{ borderTop: "1px solid rgba(255,248,238,0.08)", color: "rgba(255,248,238,0.25)" }}
        >
          © {new Date().getFullYear()} JurisPrép. Contenu pédagogique original. Tous droits réservés.
        </div>
      </div>
    </footer>
  );
}
