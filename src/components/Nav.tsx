import Link from "next/link";
import { MessageSquare } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { LogoutButton } from "./LogoutButton";
import { MobileMenu } from "./MobileMenu";
import { WELCOME_ACCESS_DAYS } from "@/lib/offer";
import { getPlanPrices } from "@/lib/pricing";

export async function Nav() {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  // Barre « Octobre rose » : affichée jusqu'au 31 octobre 2026 inclus (heure de Paris).
  const octobreRose = new Date() < new Date("2026-11-01T00:00:00+01:00");

  return (
    <>
    {octobreRose && (
      <div
        className="flex items-center justify-center gap-2 px-4 py-2 text-center text-sm"
        style={{ background: "#F9D5E2", color: "#7A1F45" }}
      >
        <svg
          aria-hidden="true"
          width="16"
          height="20"
          viewBox="0 0 16 20"
          className="flex-shrink-0"
          fill="#D6336C"
        >
          <path d="M8 0c3 0 5.2 2 5.2 4.6 0 2.4-1.6 4-3.3 5.9L14.5 18c.3.9-.6 1.6-1.4 1.1L8 15.7 2.9 19.1c-.8.5-1.7-.2-1.4-1.1l4.6-7.5C4.4 8.6 2.8 7 2.8 4.6 2.8 2 5 0 8 0Zm0 2.2c-1.4 0-2.6.9-2.6 2.4 0 1.2.8 2.3 2.6 4.3 1.8-2 2.6-3.1 2.6-4.3 0-1.5-1.2-2.4-2.6-2.4Z" />
        </svg>
        <span>
          Octobre rose : JurisPrép a une pensée pour toutes les femmes qui se battent contre le cancer du
          sein, et pour leurs proches. Courage à elles.
        </span>
      </div>
    )}
    {!user && WELCOME_ACCESS_DAYS > 0 && (
      <div
        className="flex flex-wrap items-center justify-center gap-x-4 gap-y-2 px-4 py-3 text-center"
        style={{ background: "#E07B39", color: "white" }}
      >
        <span className="text-base font-extrabold sm:text-lg" style={{ letterSpacing: "-0.01em" }}>
          Offre de lancement : crée gratuitement un compte pour tout voir pendant {WELCOME_ACCESS_DAYS} jours, sans carte bancaire ni engagement
        </span>
        <Link
          href="/auth/signup"
          className="rounded-full px-5 py-1.5 text-sm font-extrabold transition hover:opacity-90"
          style={{ background: "#2C1810", color: "white" }}
        >
          Créer mon compte
        </Link>
      </div>
    )}
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
            { href: "/actu", label: "Actu" },
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
    </>
  );
}

export async function Footer() {
  const prices = await getPlanPrices();
  return (
    <footer style={{ borderTop: "1.5px solid #EDE0CC", background: "#2C1810", color: "rgba(255,248,238,0.5)" }}>
      <div className="mx-auto max-w-6xl px-4 py-12">
        {/* Tarifs */}
        <div className="mb-12 rounded-2xl p-6" style={{ background: "rgba(255,248,238,0.05)", border: "1px solid rgba(255,248,238,0.1)" }}>
          <p className="mb-1 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
            Offre de lancement
          </p>
          <p className="mb-5 text-lg font-extrabold text-white">
            {WELCOME_ACCESS_DAYS} jours gratuits, accès à tout dès la création d&apos;un compte
          </p>
          <div className="grid gap-3 sm:grid-cols-3">
            {[
              { name: "Gratuit", price: "0 €", note: "Le premier chapitre de chaque matière" },
              { name: "Étudiant", price: `${prices.etudiant} / mois`, note: "Tout le contenu de ton niveau" },
              { name: "Cursus complet", price: `${prices.cursus} / mois`, note: "Tout JurisPrép et un suivi personnalisé" },
            ].map((t) => (
              <div key={t.name} className="rounded-xl p-4" style={{ background: "rgba(255,248,238,0.06)" }}>
                <p className="text-sm font-bold text-white">{t.name}</p>
                <p className="text-lg font-extrabold" style={{ color: "#E07B39" }}>{t.price}</p>
                <p className="mt-1 text-xs">{t.note}</p>
              </div>
            ))}
          </div>
          <p className="mt-4 text-xs leading-relaxed">
            Un prix volontairement bas, pour l&apos;égalité des chances : réussir en droit ne doit pas
            dépendre du budget de ta famille.
          </p>
          <div className="mt-5 flex flex-wrap items-center gap-4">
            <Link
              href="/auth/signup"
              className="rounded-full px-5 py-2.5 text-sm font-bold text-white transition hover:opacity-90"
              style={{ background: "#E07B39" }}
            >
              Créer mon compte gratuit
            </Link>
            <Link href="/tarifs" className="text-sm underline transition hover:text-white">
              Voir le détail des formules
            </Link>
          </div>
        </div>

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
              { label: "Actualité juridique", href: "/actu" },
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
