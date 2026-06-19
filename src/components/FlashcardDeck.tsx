"use client";

import { useState } from "react";
import { ChevronLeft, ChevronRight, RefreshCcw, Shuffle, Layers } from "lucide-react";
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
  const [known, setKnown] = useState<Set<number>>(new Set());

  if (cards.length === 0) return null;

  const card = cards[order[index]];
  const cardId = order[index];
  const isKnown = known.has(cardId);
  const progress = Math.round((known.size / cards.length) * 100);

  function shuffle() {
    const newOrder = [...order].sort(() => Math.random() - 0.5);
    setOrder(newOrder);
    setIndex(0);
    setFlipped(false);
  }

  function prev() {
    setFlipped(false);
    setTimeout(() => setIndex((i) => (i - 1 + cards.length) % cards.length), 50);
  }

  function next() {
    setFlipped(false);
    setTimeout(() => setIndex((i) => (i + 1) % cards.length), 50);
  }

  function reset() {
    setOrder(cards.map((_, i) => i));
    setIndex(0);
    setFlipped(false);
    setKnown(new Set());
  }

  function markKnown() {
    setKnown((prev) => {
      const s = new Set(prev);
      s.add(cardId);
      return s;
    });
    next();
  }

  function markUnknown() {
    setKnown((prev) => {
      const s = new Set(prev);
      s.delete(cardId);
      return s;
    });
    next();
  }

  return (
    <div className="overflow-hidden rounded-2xl border border-indigo-100 shadow-md">
      {/* En-tête */}
      <div className="bg-gradient-to-r from-violet-600 to-indigo-600 px-6 py-4">
        <div className="flex items-start justify-between gap-3">
          <div className="flex items-center gap-2">
            <div className="flex h-8 w-8 shrink-0 items-center justify-center rounded-lg bg-white/20">
              <Layers className="h-4 w-4 text-white" />
            </div>
            <h3 className="text-base font-bold text-white leading-snug">{deckName}</h3>
          </div>
          <div className="flex shrink-0 items-center gap-1.5">
            <button
              onClick={shuffle}
              className="rounded-lg bg-white/15 p-1.5 text-white hover:bg-white/25 transition"
              title="Mélanger"
            >
              <Shuffle className="h-3.5 w-3.5" />
            </button>
            <button
              onClick={reset}
              className="rounded-lg bg-white/15 p-1.5 text-white hover:bg-white/25 transition"
              title="Réinitialiser"
            >
              <RefreshCcw className="h-3.5 w-3.5" />
            </button>
          </div>
        </div>

        {/* Barre de progression */}
        <div className="mt-3 flex items-center gap-3">
          <div className="flex-1 h-2 overflow-hidden rounded-full bg-white/25">
            <div
              className="h-full rounded-full bg-emerald-400 transition-all duration-500"
              style={{ width: `${progress}%` }}
            />
          </div>
          <span className="shrink-0 text-xs font-semibold text-white/80">
            {index + 1}/{cards.length} · {known.size} maîtrisée{known.size > 1 ? "s" : ""}
          </span>
        </div>
      </div>

      {/* Zone de la carte */}
      <div className="bg-slate-50 px-6 py-6">
        <button
          onClick={() => setFlipped((f) => !f)}
          className="flashcard-perspective w-full"
          style={{ minHeight: 220 }}
        >
          <div className={`flashcard-inner ${flipped ? "is-flipped" : ""}`}>
            {/* Recto */}
            <div className="flashcard-face flashcard-front rounded-2xl border-2 border-indigo-200 bg-white shadow-sm">
              <div className="flex flex-col items-center justify-center h-full px-8 py-8 text-center">
                <span className="mb-3 inline-flex items-center gap-1.5 rounded-full bg-indigo-50 px-3 py-1 text-xs font-semibold text-indigo-600 border border-indigo-100">
                  ✦ Notion à définir
                </span>
                <p className="text-2xl font-extrabold text-ink-900 leading-snug">{card.front}</p>
                <p className="mt-5 text-xs text-ink-400">Clique pour voir la définition</p>
              </div>
            </div>
            {/* Verso */}
            <div className="flashcard-face flashcard-back rounded-2xl border-2 border-violet-200 bg-gradient-to-br from-violet-50 to-indigo-50 shadow-sm">
              <div className="flex flex-col items-center justify-center h-full px-8 py-8 text-center">
                <span className="mb-3 inline-flex items-center gap-1.5 rounded-full bg-violet-100 px-3 py-1 text-xs font-semibold text-violet-700 border border-violet-200">
                  ✦ Définition
                </span>
                <p className="text-base font-medium text-ink-800 leading-relaxed">{card.back}</p>
                <p className="mt-5 text-xs text-ink-400">Clique pour retourner</p>
              </div>
            </div>
          </div>
        </button>

        {/* Navigation */}
        <div className="mt-4 flex items-center justify-between gap-3">
          <button
            onClick={prev}
            className="flex h-10 w-10 items-center justify-center rounded-full border-2 border-ink-200 bg-white text-ink-600 hover:border-indigo-400 hover:text-indigo-600 transition"
          >
            <ChevronLeft className="h-5 w-5" />
          </button>

          {/* Boutons maîtrisé / à revoir */}
          <div className="flex flex-1 gap-2">
            <button
              onClick={markUnknown}
              className="flex-1 rounded-xl border-2 border-rose-200 bg-rose-50 py-2 text-xs font-bold text-rose-600 hover:bg-rose-100 transition"
            >
              😕 À revoir
            </button>
            <button
              onClick={markKnown}
              className="flex-1 rounded-xl border-2 border-emerald-200 bg-emerald-50 py-2 text-xs font-bold text-emerald-700 hover:bg-emerald-100 transition"
            >
              ✅ Maîtrisé
            </button>
          </div>

          <button
            onClick={next}
            className="flex h-10 w-10 items-center justify-center rounded-full border-2 border-ink-200 bg-white text-ink-600 hover:border-indigo-400 hover:text-indigo-600 transition"
          >
            <ChevronRight className="h-5 w-5" />
          </button>
        </div>

        {/* Indicateur connue */}
        {isKnown && (
          <div className="mt-3 text-center text-xs font-medium text-emerald-600">
            ✅ Tu as marqué cette carte comme maîtrisée
          </div>
        )}
      </div>
    </div>
  );
}
