"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import {
  OTHER_CHOICES,
  UNIVERSITIES,
  universityAliases,
  universityLabel,
} from "@/lib/universities";

function normalize(text: string): string {
  return text
    .toLowerCase()
    .normalize("NFD")
    .replace(/[̀-ͯ]/g, "")
    .replace(/[^a-z0-9 ]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

interface Option {
  label: string;
  haystack: string;
}

const OPTIONS: Option[] = [
  ...UNIVERSITIES.map((u) => ({
    label: universityLabel(u),
    haystack: normalize(`${u.name} ${u.city} ${universityAliases(u)}`),
  })),
  ...OTHER_CHOICES.map((label) => ({ label, haystack: normalize(label) })),
];

// Champ de recherche de la fac : on tape quelques lettres, on choisit dans la liste.
export function UniversitySelect({
  value,
  onChange,
  inputStyle,
}: {
  value: string;
  onChange: (label: string) => void;
  inputStyle?: React.CSSProperties;
}) {
  const [query, setQuery] = useState(value);
  const [open, setOpen] = useState(false);
  const [active, setActive] = useState(0);
  const boxRef = useRef<HTMLDivElement>(null);

  const results = useMemo(() => {
    const words = normalize(query).split(" ").filter(Boolean);
    if (words.length === 0) return OPTIONS.slice(0, 8);
    return OPTIONS.filter((o) => words.every((w) => o.haystack.includes(w))).slice(0, 8);
  }, [query]);

  useEffect(() => {
    function onClick(e: MouseEvent) {
      if (boxRef.current && !boxRef.current.contains(e.target as Node)) setOpen(false);
    }
    document.addEventListener("mousedown", onClick);
    return () => document.removeEventListener("mousedown", onClick);
  }, []);

  function choose(label: string) {
    onChange(label);
    setQuery(label);
    setOpen(false);
  }

  return (
    <div ref={boxRef} className="relative">
      <input
        type="text"
        role="combobox"
        aria-expanded={open}
        aria-autocomplete="list"
        autoComplete="off"
        value={query}
        placeholder="Tape le nom de ta fac ou de ta ville"
        onChange={(e) => {
          setQuery(e.target.value);
          setActive(0);
          setOpen(true);
          if (value) onChange("");
        }}
        onFocus={() => setOpen(true)}
        onKeyDown={(e) => {
          if (e.key === "ArrowDown") {
            e.preventDefault();
            setOpen(true);
            setActive((a) => Math.min(a + 1, results.length - 1));
          } else if (e.key === "ArrowUp") {
            e.preventDefault();
            setActive((a) => Math.max(a - 1, 0));
          } else if (e.key === "Enter" && open && results[active]) {
            e.preventDefault();
            choose(results[active].label);
          } else if (e.key === "Escape") {
            setOpen(false);
          }
        }}
        className="mt-1 w-full rounded-xl px-3 py-2.5 text-sm outline-none transition"
        style={inputStyle}
      />
      {open && (
        <ul
          role="listbox"
          className="absolute left-0 right-0 z-20 mt-1 max-h-64 overflow-auto rounded-xl py-1 text-sm shadow-lg"
          style={{ background: "#FFFDF8", border: "1.5px solid #EDE0CC" }}
        >
          {results.length === 0 ? (
            <li className="px-3 py-2" style={{ color: "#7A5C4A" }}>
              Aucune fac trouvée. Choisis « Autre établissement » si la tienne n&apos;apparaît pas.
            </li>
          ) : (
            results.map((o, i) => (
              <li
                key={o.label}
                role="option"
                aria-selected={i === active}
                onMouseDown={(e) => {
                  e.preventDefault();
                  choose(o.label);
                }}
                onMouseEnter={() => setActive(i)}
                className="cursor-pointer px-3 py-2"
                style={{ background: i === active ? "#FFF0E6" : "transparent", color: "#2C1810" }}
              >
                {o.label}
              </li>
            ))
          )}
        </ul>
      )}
    </div>
  );
}
