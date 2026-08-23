"use client";

import { useState } from "react";
import Link from "next/link";
import { BookOpen, Search } from "lucide-react";
import type { Subject } from "@/lib/types";

export function SubjectSearch({
  s1,
  s2,
  annuel,
}: {
  s1: Subject[];
  s2: Subject[];
  annuel: Subject[];
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
      <div className="mb-8 relative max-w-md">
        <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4" style={{ color: "#7A5C4A" }} />
        <input
          type="text"
          placeholder="Rechercher une matière…"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          className="w-full rounded-xl pl-9 pr-4 py-2.5 text-sm outline-none transition"
          style={{
            border: "1.5px solid #EDE0CC",
            background: "#FFFDF8",
            color: "#2C1810",
          }}
        />
      </div>

      {total === 0 && q && (
        <div className="rounded-lg p-8 text-center text-sm" style={{ border: "1.5px dashed #EDE0CC", color: "#7A5C4A" }}>
          Aucune matière trouvée pour &laquo; {query} &raquo;.
        </div>
      )}

      {fs1.length > 0 && <SemesterBlock title="Semestre 1" subjects={fs1} />}
      {fs2.length > 0 && <SemesterBlock title="Semestre 2" subjects={fs2} />}
      {fannuel.length > 0 && <SemesterBlock title="Annuel" subjects={fannuel} />}
    </div>
  );
}

function SemesterBlock({
  title,
  subjects,
}: {
  title: string;
  subjects: Subject[];
}) {
  return (
    <div className="mb-12">
      <h2 className="mb-5 text-xl font-bold" style={{ color: "#2C1810" }}>{title}</h2>
      <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
        {subjects.map((s) => (
          <Link
            key={s.id}
            href={`/matiere/${s.slug}`}
            className="group rounded-xl p-5 transition hover:shadow-md"
            style={{ border: "1.5px solid #EDE0CC", background: "#FFFDF8" }}
          >
            <BookOpen className="mb-3 h-7 w-7" style={{ color: "#E07B39" }} />
            <h3 className="font-semibold" style={{ color: "#2C1810" }}>
              {s.name}
            </h3>
            {s.description && (
              <p className="mt-2 line-clamp-3 text-sm" style={{ color: "#7A5C4A" }}>{s.description}</p>
            )}
            <div className="mt-4 text-sm font-semibold group-hover:underline" style={{ color: "#E07B39" }}>
              Étudier →
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}
