"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { Scale } from "lucide-react";

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
    <div className="mx-auto max-w-md px-4 py-16">
      <Link href="/" className="mb-8 flex items-center justify-center gap-2 text-ink-900">
        <Scale className="h-7 w-7 text-indigo-600" />
        <span className="text-2xl font-bold tracking-tight">JurisPrép</span>
      </Link>
      <div className="rounded-xl border border-ink-200 bg-white p-8 shadow-sm">
        <h1 className="text-2xl font-bold text-ink-900">Connexion</h1>
        <p className="mt-1 text-sm text-ink-600">
          Bon retour ! Connecte-toi pour reprendre tes révisions.
        </p>
        <form onSubmit={handleSubmit} className="mt-6 space-y-4">
          <div>
            <label className="text-sm font-medium text-ink-700">Email</label>
            <input
              type="email"
              required
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="mt-1 w-full rounded-md border border-ink-300 px-3 py-2 text-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500"
              placeholder="ton.email@exemple.fr"
            />
          </div>
          <div>
            <label className="text-sm font-medium text-ink-700">Mot de passe</label>
            <input
              type="password"
              required
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="mt-1 w-full rounded-md border border-ink-300 px-3 py-2 text-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500"
            />
          </div>
          {error && (
            <div className="rounded-md bg-rose-50 p-3 text-sm text-rose-700">{error}</div>
          )}
          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-md bg-indigo-600 px-4 py-2.5 text-sm font-semibold text-white shadow hover:bg-indigo-700 disabled:opacity-50"
          >
            {loading ? "Connexion…" : "Se connecter"}
          </button>
        </form>
        <p className="mt-6 text-center text-sm text-ink-600">
          Pas encore de compte ?{" "}
          <Link href="/auth/signup" className="font-medium text-indigo-600 hover:underline">
            Inscris-toi
          </Link>
        </p>
      </div>
    </div>
  );
}
