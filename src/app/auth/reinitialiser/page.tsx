"use client";

import { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";

export default function ResetPasswordPage() {
  const router = useRouter();
  const supabase = createClient();
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [hasSession, setHasSession] = useState<boolean | null>(null);

  useEffect(() => {
    supabase.auth.getSession().then(({ data }) => {
      setHasSession(Boolean(data.session));
    });
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    if (password !== confirmPassword) {
      setError("Les deux mots de passe ne sont pas identiques.");
      return;
    }
    setLoading(true);
    const { error } = await supabase.auth.updateUser({ password });
    setLoading(false);
    if (error) {
      setError(error.message);
      return;
    }
    router.refresh();
    router.push("/?password_updated=1");
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
          Nouveau mot de passe
        </h1>
        <p className="text-sm mb-6" style={{ color: "#7A5C4A" }}>
          Choisis ton nouveau mot de passe.
        </p>

        {hasSession === false && (
          <div
            className="rounded-xl p-3 text-sm mb-4"
            style={{ background: "#FFF0EE", color: "#7C2A0E", border: "1px solid #FFD0C0" }}
          >
            Ce lien a expiré ou n&apos;est plus valide.{" "}
            <Link
              href="/auth/mot-de-passe-oublie"
              className="font-semibold underline"
              style={{ color: "#7C2A0E" }}
            >
              Redemande un lien ici.
            </Link>
          </div>
        )}

        <form onSubmit={handleSubmit} className="space-y-4">
          <div>
            <label className="text-sm font-semibold" style={{ color: "#2C1810" }}>
              Nouveau mot de passe
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
              Confirme ton nouveau mot de passe
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

          <button
            type="submit"
            disabled={loading || hasSession === false}
            className="w-full rounded-full py-3 text-sm font-bold text-white transition-opacity hover:opacity-90 disabled:opacity-50"
            style={{ background: "#E07B39" }}
          >
            {loading ? "Enregistrement…" : "Enregistrer"}
          </button>
        </form>
      </div>
    </div>
  );
}
