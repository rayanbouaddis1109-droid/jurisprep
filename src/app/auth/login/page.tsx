"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function LoginPage() {
  const router = useRouter();
  const supabase = createClient();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setLoading(true);
    const { error } = await supabase.auth.signInWithPassword({ email, password });
    setLoading(false);
    if (error) {
      setError(error.message);
      return;
    }
    router.refresh();
    router.push("/");
  }

  return (
    <div
      className="mx-auto max-w-md px-4 py-16"
      style={{ background: "#FFF8EE", minHeight: "100vh", color: "#2C1810" }}
    >
      <Link
        href="/"
        className="mb-8 flex items-center justify-center gap-2"
        style={{ textDecoration: "none" }}
      >
        <div
          className="flex h-8 w-8 items-center justify-center rounded-lg font-extrabold text-sm text-white"
          style={{ background: "#E07B39", letterSpacing: "-0.02em" }}
        >
          JP
        </div>
        <span className="text-xl font-extrabold" style={{ letterSpacing: "-0.02em" }}>
          Juris<span style={{ color: "#E07B39" }}>Prép</span>
        </span>
      </Link>

      <div
        className="rounded-2xl p-8"
        style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}
      >
        <h1 className="text-2xl font-extrabold mb-1" style={{ letterSpacing: "-0.03em" }}>
          Connexion
        </h1>
        <p className="text-sm mb-6" style={{ color: "#7A5C4A" }}>
          Bon retour. Reprends là où tu t&apos;es arrêté.
        </p>

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="text-sm font-semibold" style={{ color: "#2C1810" }}>
              Email
            </label>
            <input
              type="email"
              required
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="mt-1 w-full rounded-xl px-3 py-2.5 text-sm outline-none transition"
              style={{
                border: "1.5px solid #EDE0CC",
                background: "#FFF8EE",
                color: "#2C1810",
              }}
              placeholder="ton.email@exemple.fr"
            />
          </div>

          <div>
            <label className="text-sm font-semibold" style={{ color: "#2C1810" }}>
              Mot de passe
            </label>
            <input
              type="password"
              required
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="mt-1 w-full rounded-xl px-3 py-2.5 text-sm outline-none transition"
              style={{
                border: "1.5px solid #EDE0CC",
                background: "#FFF8EE",
                color: "#2C1810",
              }}
            />
          </div>

          {error && (
            <div
              className="rounded-xl p-3 text-sm"
              style={{ background: "#FFF0EE", color: "#7C2A0E", border: "1px solid #FFD0C0" }}
            >
              {error}
            </div>
          )}

          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-full py-3 text-sm font-bold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
            style={{ background: "#E07B39" }}
          >
            {loading ? "Connexion…" : "Se connecter"}
          </button>
        </form>

        <p className="mt-6 text-center text-sm" style={{ color: "#7A5C4A" }}>
          Pas encore de compte ?{" "}
          <Link
            href="/auth/signup"
            className="font-semibold hover:underline"
            style={{ color: "#E07B39" }}
          >
            Inscris-toi
          </Link>
        </p>
      </div>
    </div>
  );
}
