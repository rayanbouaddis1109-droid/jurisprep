import { NextResponse } from "next/server";
import { after } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import { sendWelcomeOnce } from "@/lib/welcome-email";

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
    const { data: exchanged, error } = await supabase.auth.exchangeCodeForSession(code);
    if (error) {
      return NextResponse.redirect(new URL("/auth/login?error=lien", origin));
    }
    // Mail de bienvenue après la confirmation de l'email, une seule fois, sans retarder la page.
    const newUserId = exchanged?.user?.id;
    if (newUserId && process.env.RESEND_API_KEY) {
      after(async () => {
        try {
          await sendWelcomeOnce(createAdminClient(), newUserId);
        } catch (err) {
          console.error("[bienvenue] envoi impossible", err instanceof Error ? err.message : "erreur inconnue");
        }
      });
    }
  }

  const target = new URL(next, origin);
  if (target.origin !== origin) return NextResponse.redirect(new URL("/", origin));
  return NextResponse.redirect(target);
}
