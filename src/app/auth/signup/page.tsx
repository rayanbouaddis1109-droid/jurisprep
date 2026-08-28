"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function SignupPage() {
  const router = useRouter();
  const supabase = createClient();
  const [fullName, setFullName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [info, setInfo] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setInfo(null);
    if (password !== confirmPassword) {
      setError("Les deux mots de passe ne sont pas identiques.");
      return;
    }
    setLoading(true);
    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        data: { full_name: fullName },
        emailRedirectTo:
          typeof window !== "undefined"
            ? `${window.location.origin}/auth/callback`
            : undefined,
      },
    });
    setLoading(false);
    if (error) {
      setError(error.message);
      return;
    }
    if (data.user && !data.session) {
      setInfo(
        "Compte créé. Un email de confirmation vient de t'être envoyé — clique sur le lien pour activer ton accès."
      );
    } else {
      router.refresh();
      router.push("/");
    }
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
          Créer un compte
        </h1>
        <p className="text-sm mb-6" style={{ color: "#7A5C4A" }}>
          Gratuit. 30 secondes.
        </p>

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="text-sm font-semibold" style={{ color: "#2C1810" }}>
              Nom complet
            </label>
            <input
              type="text"
              required
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              className="mt-1 w-full rounded-xl px-3 py-2.5 text-sm outline-none transition"
              style={{
                border: "1.5px solid #EDE0CC",
                background: "#FFF8EE",
                color: "#2C1810",
              }}
              placeholder="Prénom Nom"
            />
          </div>

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
              <span className="ml-1 font-normal" style={{ color: "#7A5C4A" }}>
                (8 caractères minimum)
              </span>
            </label>
            <input
              type="password"
              required
              minLength={8}
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

          <div>
            <label className="text-sm font-semibold" style={{ color: "#2C1810" }}>
              Confirme ton mot de passe
            </label>
            <input
              type="password"
              required
              minLength={8}
              value={confirmPassword}
              onChange={(e) => setConfirmPassword(e.target.value)}
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
            {loading ? "Création…" : "Créer mon compte"}
          </button>

          <p className="text-center text-xs" style={{ color: "#7A5C4A" }}>
            En créant un compte, tu acceptes les{" "}
            <Link href="/mentions-legales" className="underline" style={{ color: "#E07B39" }}>
              conditions d&apos;utilisation
            </Link>{" "}
            et la politique de confidentialité.
          </p>
        </form>

        <p className="mt-6 text-center text-sm" style={{ color: "#7A5C4A" }}>
          Déjà inscrit ?{" "}
          <Link
            href="/auth/login"
            className="font-semibold hover:underline"
            style={{ color: "#E07B39" }}
          >
            Connexion
          </Link>
        </p>
      </div>
    </div>
  );
}
