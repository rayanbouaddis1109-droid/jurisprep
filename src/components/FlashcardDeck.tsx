"use client";

import { useState } from "react";
import { ChevronLeft, ChevronRight, RefreshCcw, Shuffle } from "lucide-react";
import type { Flashcard } from "@/lib/types";

export function FlashcardDeck({
  deckName,
  cards,
}: {
  deckName: string;
  cards: Flashcard[];
}) {
  const [order, setOrder] = useState(cards.map((_, i) => i));
  const [index, setIndex] = useState(0);
  const [flipped, setFlipped] = useState(false);

  if (cards.length === 0) return null;

  const card = cards[order[index]];

  function shuffle() {
    const newOrder = [...order].sort(() => Math.random() - 0.5);
    setOrder(newOrder);
    setIndex(0);
    setFlipped(false);
  }

  function prev() {
    setFlipped(false);
    setIndex((i) => (i - 1 + cards.length) % cards.length);
  }

  function next() {
    setFlipped(false);
    setIndex((i) => (i + 1) % cards.length);
  }

  function reset() {
    setOrder(cards.map((_, i) => i));
    setIndex(0);
    setFlipped(false);
  }

  return (
    <div className="rounded-xl border border-ink-200 bg-white p-6">
      <div className="flex items-center justify-between">
        <h3 className="text-lg font-bold text-ink-900">{deckName}</h3>
        <div className="flex items-center gap-2 text-sm text-ink-600">
          <span>
            {index + 1} / {cards.length}
          </span>
          <button
            onClick={shuffle}
            className="rounded-md border border-ink-200 px-2 py-1 text-xs hover:border-indigo-300 hover:text-indigo-600"
            title="Mélanger"
          >
            <Shuffle className="h-3.5 w-3.5" />
          </button>
          <button
            onClick={reset}
            className="rounded-md border border-ink-200 px-2 py-1 text-xs hover:border-indigo-300 hover:text-indigo-600"
            title="Réinitialiser"
          >
            <RefreshCcw className="h-3.5 w-3.5" />
          </button>
        </div>
      </div>

      <div className="mt-5 flex items-center gap-3">
        <button
          onClick={prev}
          className="rounded-full border border-ink-200 p-2 hover:border-indigo-300 hover:text-indigo-600"
        >
          <ChevronLeft className="h-5 w-5" />
        </button>

        <button
          onClick={() => setFlipped((f) => !f)}
          className="flashcard-perspective flex-1"
        >
          <div className={`flashcard-inner ${flipped ? "is-flipped" : ""}`}>
            <div className="flashcard-face flashcard-front">
              <div className="text-xs uppercase tracking-wide text-indigo-600">
                Recto · clique pour retourner
              </div>
              <div className="mt-4 text-xl font-semibold text-ink-900">{card.front}</div>
            </div>
            <div className="flashcard-face flashcard-back">
              <div className="text-xs uppercase tracking-wide text-emerald-600">
                Verso · clique pour retourner
              </div>
              <div className="mt-4 text-base text-ink-900">{card.back}</div>
            </div>
          </div>
        </button>

        <button
          onClick={next}
          className="rounded-full border border-ink-200 p-2 hover:border-indigo-300 hover:text-indigo-600"
        >
          <ChevronRight className="h-5 w-5" />
        </button>
      </div>

      {card.tags && card.tags.length > 0 && (
        <div className="mt-4 flex flex-wrap justify-center gap-1.5">
          {card.tags.map((t) => (
            <span key={t} className="rounded-full bg-ink-100 px-2 py-0.5 text-xs text-ink-700">
              {t}
            </span>
          ))}
        </div>
      )}
    </div>
  );
}
