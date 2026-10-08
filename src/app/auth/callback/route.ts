import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

// N'accepte qu'un chemin interne au site, pour éviter les redirections vers un autre domaine.
function safeNext(next: string | null): string {
  if (!next || !next.startsWith("/") || next.startsWith("//") || next.includes("\\")) return "/";
  return next;
}

export async function GET(request: Request) {
  const { searchParams, origin } = new URL(request.url);
  const code = searchParams.get("code");
  const next = safeNext(searchParams.get("next"));

  if (code) {
    const supabase = await createClient();
    const { error } = await supabase.auth.exchangeCodeForSession(code);
    if (error) {
      return NextResponse.redirect(new URL("/auth/login?error=lien", origin));
    }
  }

  const target = new URL(next, origin);
  if (target.origin !== origin) return NextResponse.redirect(new URL("/", origin));
  return NextResponse.redirect(target);
}
