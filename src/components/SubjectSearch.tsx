"use client";

import { useState } from "react";
import Link from "next/link";
import { BookOpen, Search } from "lucide-react";
import type { Subject } from "@/lib/types";

export function SubjectSearch({
  s1,
  s2,
  annuel,
  iconColor,
}: {
  s1: Subject[];
  s2: Subject[];
  annuel: Subject[];
  iconColor: string;
}) {
  const [query, setQuery] = useState("");
  const q = query.toLowerCase().trim();

  function filter(subjects: Subject[]) {
    if (!q) return subjects;
    return subjects.filter(
      (s) =>
        s.name.toLowerCase().includes(q) ||
        (s.description ?? "").toLowerCase().includes(q),
    );
  }

  const fs1 = filter(s1);
  const fs2 = filter(s2);
  const fannuel = filter(annuel);
  const total = fs1.length + fs2.length + fannuel.length;

  return (
    <div>
      {/* Search bar */}
      <div className="mb-8 relative max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-ink-400" />
        <input
          type="text"
          placeholder="Rechercher une matière…"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          className="w-full rounded-xl border border-ink-200 bg-white pl-9 pr-4 py-2.5 text-sm text-ink-900 placeholder-ink-400 focus:border-indigo-400 focus:outline-none focus:ring-2 focus:ring-indigo-100"
        />
      </div>

      {total === 0 && q && (
        <div className="rounded-lg border border-dashed border-ink-300 p-8 text-center text-ink-600">
          Aucune matière trouvée pour « {query} ».
        </div>
      )}

      {fs1.length > 0 && (
        <SemesterBlock title="Semestre 1" subjects={fs1} iconColor={iconColor} />
      )}
      {fs2.length > 0 && (
        <SemesterBlock title="Semestre 2" subjects={fs2} iconColor={iconColor} />
      )}
      {fannuel.length > 0 && (
        <SemesterBlock title="Annuel" subjects={fannuel} iconColor={iconColor} />
      )}
    </div>
  );
}

function SemesterBlock({
  title,
  subjects,
  iconColor,
}: {
  title: string;
  subjects: Subject[];
  iconColor: string;
}) {
  return (
    <div className="mb-12">
      <h2 className="mb-5 text-xl font-bold text-ink-900">{title}</h2>
      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        {subjects.map((s) => (
          <Link
            key={s.id}
            href={`/matiere/${s.slug}`}
            className="group rounded-xl border border-ink-200 bg-white p-5 transition hover:border-indigo-300 hover:shadow-md"
          >
            <BookOpen className={`mb-3 h-7 w-7 ${iconColor}`} />
            <h3 className="font-semibold text-ink-900 group-hover:text-indigo-700">
              {s.name}
            </h3>
            {s.description && (
              <p className="mt-2 line-clamp-3 text-sm text-ink-600">{s.description}</p>
            )}
            <div className="mt-4 text-sm font-medium text-indigo-600 group-hover:underline">
              Étudier →
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}
