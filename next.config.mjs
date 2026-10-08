const isDev = process.env.NODE_ENV !== "production";

// Domaine Supabase du projet (API, auth, stockage des videos, websockets realtime).
const SUPABASE = "https://lpnmeekqtrqrkccecfqo.supabase.co";
const SUPABASE_WS = "wss://lpnmeekqtrqrkccecfqo.supabase.co";

// Content-Security-Policy.
// Next.js injecte des scripts et styles inline, d'ou 'unsafe-inline' (pas de nonce).
// 'unsafe-eval' uniquement en developpement (React l'utilise pour le debug).
const csp = [
  "default-src 'self'",
  `script-src 'self' 'unsafe-inline'${isDev ? " 'unsafe-eval'" : ""}`,
  "style-src 'self' 'unsafe-inline'",
  `img-src 'self' data: blob: ${SUPABASE}`,
  "font-src 'self' data:",
  `connect-src 'self' ${SUPABASE} ${SUPABASE_WS}${isDev ? " ws://localhost:* http://localhost:*" : ""}`,
  `media-src 'self' blob: ${SUPABASE}`,
  "frame-src https://www.youtube.com https://www.youtube-nocookie.com",
  "object-src 'none'",
  "base-uri 'self'",
  "form-action 'self'",
  "frame-ancestors 'none'",
].join("; ");

/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  async headers() {
    return [
      {
        source: "/(.*)",
        headers: [
          { key: "Content-Security-Policy", value: csp },
          { key: "Strict-Transport-Security", value: "max-age=63072000; includeSubDomains" },
          { key: "X-Frame-Options", value: "DENY" },
          { key: "X-Content-Type-Options", value: "nosniff" },
          { key: "Referrer-Policy", value: "strict-origin-when-cross-origin" },
          { key: "X-XSS-Protection", value: "1; mode=block" },
          { key: "Permissions-Policy", value: "camera=(), microphone=(), geolocation=()" },
        ],
      },
    ];
  },
};

export default nextConfig;
