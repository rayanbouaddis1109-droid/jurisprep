"use client";

import { useState } from "react";
import Link from "next/link";
import { createClient } from "@/lib/supabase/client";

export default function ForgotPasswordPage() {
  const supabase = createClient();
  const [email, setEmail] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [info, setInfo] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setInfo(null);
    setLoading(true);
    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: `${window.location.origin}/auth/callback?next=/auth/reinitialiser`,
    });
    setLoading(false);
    if (error) {
      setError(error.message);
      return;
    }
    setInfo(
      "Si un compte existe avec cet email, tu vas recevoir un lien pour choisir un nouveau mot de passe."
    );
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
          Mot de passe oublié
        </h1>
        <p className="text-sm mb-6" style={{ color: "#7A5C4A" }}>
          Entre ton email, on t&apos;envoie un lien pour en choisir un nouveau.
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

          {error && (
            <div
              className="rounded-xl p-3 text-sm"
              style={{ background: "#FFF0EE", color: "#7C2A0E", border: "1px solid #FFD0C0" }}
            >
              {error}
            </div>
          )}

          {info && (
            <div
              className="rounded-xl p-3 text-sm"
              style={{ background: "#E8FBF4", color: "#065E3F", border: "1px solid #B8F0DA" }}
            >
              {info}
            </div>
          )}

          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-full py-3 text-sm font-bold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
            style={{ background: "#E07B39" }}
          >
            {loading ? "Envoi…" : "Envoyer le lien"}
          </button>
        </form>

        <p className="mt-6 text-center text-sm" style={{ color: "#7A5C4A" }}>
          <Link
            href="/auth/login"
            className="font-semibold hover:underline"
            style={{ color: "#E07B39" }}
          >
            Retour à la connexion
          </Link>
        </p>
      </div>
    </div>
  );
}
