"use client";

import { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { Scale } from "lucide-react";

export default function SignupPage() {
  const router = useRouter();
  const supabase = createClient();
  const [fullName, setFullName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [info, setInfo] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError(null);
    setInfo(null);
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
        "Inscription validée ! Un email de confirmation vient de t'être envoyé. Clique sur le lien pour activer ton compte.",
      );
    } else {
      router.refresh();
      router.push("/");
    }
  }

  return (
    <div className="mx-auto max-w-md px-4 py-16">
      <Link href="/" className="mb-8 flex items-center justify-center gap-2 text-ink-900">
        <Scale className="h-7 w-7 text-indigo-600" />
        <span className="text-2xl font-bold tracking-tight">JurisPrép</span>
      </Link>
      <div className="rounded-xl border border-ink-200 bg-white p-8 shadow-sm">
        <h1 className="text-2xl font-bold text-ink-900">Créer un compte</h1>
        <p className="mt-1 text-sm text-ink-600">
          Crée ton compte gratuit en 30 secondes et commence à réviser.
        </p>
        <form onSubmit={handleSubmit} className="mt-6 space-y-4">
          <div>
            <label className="text-sm font-medium text-ink-700">Nom complet</label>
            <input
              type="text"
              required
              value={fullName}
              onChange={(e) => setFullName(e.target.value)}
              className="mt-1 w-full rounded-md border border-ink-300 px-3 py-2 text-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500"
              placeholder="Prénom Nom"
            />
          </div>
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
            <label className="text-sm font-medium text-ink-700">
              Mot de passe (8 caractères minimum)
            </label>
            <input
              type="password"
              required
              minLength={8}
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="mt-1 w-full rounded-md border border-ink-300 px-3 py-2 text-sm focus:border-indigo-500 focus:outline-none focus:ring-1 focus:ring-indigo-500"
            />
          </div>
          {error && (
            <div className="rounded-md bg-rose-50 p-3 text-sm text-rose-700">{error}</div>
          )}
          {info && (
            <div className="rounded-md bg-emerald-50 p-3 text-sm text-emerald-700">{info}</div>
          )}
          <button
            type="submit"
            disabled={loading}
            className="w-full rounded-md bg-indigo-600 px-4 py-2.5 text-sm font-semibold text-white shadow hover:bg-indigo-700 disabled:opacity-50"
          >
            {loading ? "Création…" : "Créer mon compte"}
          </button>
        </form>
        <p className="mt-6 text-center text-sm text-ink-600">
          Déjà inscrit ?{" "}
          <Link href="/auth/login" className="font-medium text-indigo-600 hover:underline">
            Connexion
          </Link>
        </p>
      </div>
    </div>
  );
}
