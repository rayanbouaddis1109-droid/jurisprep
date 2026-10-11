import { createServerClient } from "@supabase/ssr";
import { NextResponse, type NextRequest } from "next/server";
import { REF_CODE_RE, REF_COOKIE } from "@/lib/referral-code";

const PROTECTED_ROUTES = ["/assistant", "/compte", "/suivi", "/admin"];

export async function proxy(request: NextRequest) {
  let response = NextResponse.next({ request });

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() {
          return request.cookies.getAll();
        },
        setAll(cookiesToSet: any) {
          cookiesToSet.forEach(({ name, value }: any) =>
            request.cookies.set(name, value)
          );
          response = NextResponse.next({ request });
          cookiesToSet.forEach(({ name, value, options }: any) =>
            response.cookies.set(name, value, options)
          );
        },
      },
    }
  );

  const {
    data: { user },
  } = await supabase.auth.getUser();

  const isProtected = PROTECTED_ROUTES.some((r) =>
    request.nextUrl.pathname.startsWith(r)
  );

  if (isProtected && !user) {
    const redirectUrl = new URL("/auth/login", request.url);
    redirectUrl.searchParams.set("redirect", request.nextUrl.pathname);
    return NextResponse.redirect(redirectUrl);
  }

  // Lien de parrainage : on garde le code 30 jours (format vérifié, valeur sans effet seule).
  const ref = request.nextUrl.searchParams.get("ref");
  if (ref && REF_CODE_RE.test(ref)) {
    response.cookies.set(REF_COOKIE, ref, {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      sameSite: "lax",
      maxAge: 60 * 60 * 24 * 30,
      path: "/",
    });
  }

  return response;
}

export const config = {
  matcher: [
    "/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)",
  ],
};
