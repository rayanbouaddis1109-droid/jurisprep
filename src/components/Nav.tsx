import Link from "next/link";
import { Scale, MessageSquare } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { LogoutButton } from "./LogoutButton";

export async function Nav() {
  const supabase = createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <header className="sticky top-0 z-50 border-b border-slate-200/80 bg-white/90 backdrop-blur-md">
      <nav className="mx-auto flex max-w-6xl items-center justify-between px-4 py-3">
        {/* Logo */}
        <Link href="/" className="flex items-center gap-2.5 text-slate-900">
          <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-indigo-600">
            <Scale className="h-4 w-4 text-white" />
          </div>
          <span className="text-xl font-extrabold tracking-tight">
            Juris<span className="text-indigo-600">Prép</span>
          </span>
        </Link>

        {/* Links */}
        <div className="hidden items-center gap-1 text-sm text-slate-600 md:flex">
          {[
            { href: "/licence/l1", label: "L1" },
            { href: "/licence/l2", label: "L2" },
            { href: "/licence/l3", label: "L3" },
            { href: "/transverse/anglais-juridique", label: "Anglais juridique" },
            { href: "/transverse/culture-generale", label: "Culture générale" },
            { href: "/tarifs", label: "Tarifs" },
          ].map(({ href, label }) => (
            <Link
              key={href}
              href={href}
              className="rounded-lg px-3 py-1.5 font-medium transition hover:bg-slate-100 hover:text-slate-900"
            >
              {label}
            </Link>
          ))}
        </div>

        {/* Right */}
        <div className="flex items-center gap-2 text-sm">
          <Link
            href="/assistant"
            className="hidden items-center gap-1.5 rounded-lg bg-indigo-50 px-3 py-1.5 font-medium text-indigo-700 transition hover:bg-indigo-100 md:flex"
          >
            <MessageSquare className="h-4 w-4" /> Assistant IA
          </Link>
          {user ? (
            <>
              <span className="hidden truncate max-w-[140px] text-slate-500 md:inline">
                {user.email}
              </span>
              <LogoutButton />
            </>
          ) : (
            <>
              <Link
                href="/auth/login"
                className="rounded-lg px-3 py-1.5 font-medium text-slate-700 transition hover:bg-slate-100"
              >
                Connexion
              </Link>
              <Link
                href="/auth/signup"
                className="rounded-lg bg-indigo-600 px-4 py-1.5 font-semibold text-white shadow-sm transition hover:bg-indigo-700"
              >
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
    <footer className="border-t border-slate-200 bg-slate-900 text-slate-400">
      <div className="mx-auto max-w-6xl px-4 py-12">
        <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-4">
          {/* Brand */}
          <div className="md:col-span-1">
            <div className="flex items-center gap-2 text-white">
              <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-indigo-600">
                <Scale className="h-4 w-4 text-white" />
              </div>
              <span className="text-lg font-extrabold">
                Juris<span className="text-indigo-400">Prép</span>
              </span>
            </div>
            <p className="mt-3 text-sm leading-relaxed">
              La plateforme tout-en-un pour réussir ses études de droit, du lycée à la L3.
            </p>
          </div>

          {/* Niveaux */}
          <div>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest text-slate-500">
              Niveaux
            </p>
            {["Lycéen", "L1", "L2", "L3"].map((l) => (
              <Link
                key={l}
                href={`/licence/${l.toLowerCase()}`}
                className="block py-1 text-sm transition hover:text-white"
              >
                {l}
              </Link>
            ))}
          </div>

          {/* Outils */}
          <div>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest text-slate-500">
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

          {/* Compte */}
          <div>
            <p className="mb-3 text-xs font-bold uppercase tracking-widest text-slate-500">
              Compte
            </p>
            {[
              { label: "Connexion", href: "/auth/login" },
              { label: "Inscription", href: "/auth/signup" },
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
        </div>

        <div className="mt-10 border-t border-slate-800 pt-6 text-center text-xs text-slate-600">
          © {new Date().getFullYear()} JurisPrép — Contenu pédagogique original. Tous droits réservés.
        </div>
      </div>
    </footer>
  );
}
