"use client";

import { useState } from "react";
import Link from "next/link";
import { Menu, X, MessageSquare } from "lucide-react";

const NAV_LINKS = [
  { href: "/licence/lyceen", label: "Lycéen" },
  { href: "/licence/l1", label: "L1" },
  { href: "/licence/l2", label: "L2" },
  { href: "/licence/l3", label: "L3" },
  { href: "/transverse/anglais-juridique", label: "Anglais juridique" },
  { href: "/transverse/culture-generale", label: "Culture générale" },
  { href: "/tarifs", label: "Tarifs" },
  { href: "/assistant", label: "Assistant IA" },
];

export function MobileMenu({ isLoggedIn }: { isLoggedIn: boolean }) {
  const [open, setOpen] = useState(false);

  return (
    <div className="md:hidden">
      <button
        onClick={() => setOpen((o) => !o)}
        className="flex h-9 w-9 items-center justify-center rounded-lg text-slate-600 hover:bg-slate-100"
        aria-label="Menu"
      >
        {open ? <X className="h-5 w-5" /> : <Menu className="h-5 w-5" />}
      </button>

      {open && (
        <div className="absolute inset-x-0 top-[57px] z-50 border-b border-slate-200 bg-white shadow-lg">
          <nav className="mx-auto max-w-6xl divide-y divide-slate-100 px-4 py-2">
            {NAV_LINKS.map(({ href, label }) => (
              <Link
                key={href}
                href={href}
                onClick={() => setOpen(false)}
                className="flex items-center gap-2 py-3 text-sm font-medium text-slate-700 hover:text-indigo-600"
              >
                {label === "Assistant IA" && <MessageSquare className="h-4 w-4 text-indigo-600" />}
                {label}
              </Link>
            ))}
            {!isLoggedIn && (
              <div className="flex gap-3 py-4">
                <Link
                  href="/auth/login"
                  onClick={() => setOpen(false)}
                  className="flex-1 rounded-lg border border-slate-200 py-2 text-center text-sm font-semibold text-slate-700"
                >
                  Connexion
                </Link>
                <Link
                  href="/auth/signup"
                  onClick={() => setOpen(false)}
                  className="flex-1 rounded-lg bg-indigo-600 py-2 text-center text-sm font-semibold text-white"
                >
                  Inscription
                </Link>
              </div>
            )}
          </nav>
        </div>
      )}
    </div>
  );
}
