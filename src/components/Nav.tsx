import Link from "next/link";
import { Scale } from "lucide-react";
import { createClient } from "@/lib/supabase/server";
import { LogoutButton } from "./LogoutButton";

export async function Nav() {
  const supabase = createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  return (
    <header className="border-b border-ink-200 bg-white">
      <nav className="mx-auto flex max-w-6xl items-center justify-between px-4 py-3">
        <Link href="/" className="flex items-center gap-2 text-ink-900">
          <Scale className="h-6 w-6 text-indigo-600" />
          <span className="text-xl font-bold tracking-tight">JurisPrép</span>
        </Link>
        <div className="hidden gap-6 text-sm text-ink-700 md:flex">
          <Link href="/licence/l1" className="hover:text-indigo-600">
            L1
          </Link>
          <Link href="/licence/l2" className="hover:text-indigo-600">
            L2
          </Link>
          <Link href="/licence/l3" className="hover:text-indigo-600">
            L3
          </Link>
          <Link href="/transverse/anglais-juridique" className="hover:text-indigo-600">
            Anglais juridique
          </Link>
          <Link href="/transverse/culture-generale" className="hover:text-indigo-600">
            Culture générale
          </Link>
          <Link href="/tarifs" className="hover:text-indigo-600">
            Tarifs
          </Link>
        </div>
        <div className="flex items-center gap-3 text-sm">
          {user ? (
            <>
              <span className="hidden text-ink-600 md:inline">{user.email}</span>
              <LogoutButton />
            </>
          ) : (
            <>
              <Link href="/auth/login" className="text-ink-700 hover:text-indigo-600">
                Connexion
              </Link>
              <Link
                href="/auth/signup"
                className="rounded-md bg-indigo-600 px-3 py-1.5 text-white shadow hover:bg-indigo-700"
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
