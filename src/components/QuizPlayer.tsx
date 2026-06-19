"use client";

import { useState } from "react";
import { CheckCircle2, XCircle, RefreshCcw, Trophy, BookOpen } from "lucide-react";
import type { Quiz } from "@/lib/types";

export function QuizPlayer({ quiz }: { quiz: Quiz }) {
  const [started, setStarted] = useState(false);
  const [index, setIndex] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [score, setScore] = useState(0);
  const [done, setDone] = useState(false);

  const questions = quiz.questions ?? [];
  const total = questions.length;
  const current = questions[index];

  if (total === 0) {
    return (
      <div className="rounded-2xl border border-ink-200 bg-white p-8 text-center text-ink-500">
        Ce quiz n&apos;a pas encore de questions.
      </div>
    );
  }

  function selectAnswer(i: number) {
    if (selected !== null) return;
    setSelected(i);
    if (i === current.correct_index) setScore((s) => s + 1);
  }

  function next() {
    if (index + 1 >= total) {
      setDone(true);
    } else {
      setIndex(index + 1);
      setSelected(null);
    }
  }

  function reset() {
    setIndex(0);
    setSelected(null);
    setScore(0);
    setDone(false);
    setStarted(false);
  }

  /* ── Écran de démarrage ── */
  if (!started) {
    return (
      <div className="overflow-hidden rounded-2xl border border-indigo-100 bg-gradient-to-br from-indigo-600 to-violet-700 shadow-lg">
        <div className="px-8 py-10 text-center text-white">
          <div className="mx-auto mb-4 flex h-14 w-14 items-center justify-center rounded-full bg-white/20 backdrop-blur-sm">
            <BookOpen className="h-7 w-7 text-white" />
          </div>
          <h2 className="text-2xl font-extrabold leading-tight">{quiz.title}</h2>
          {quiz.description && (
            <p className="mt-2 text-sm text-indigo-200">{quiz.description}</p>
          )}
          <div className="mt-6 flex justify-center gap-6 text-sm">
            <div className="flex flex-col items-center gap-1">
              <span className="text-3xl font-bold">{total}</span>
              <span className="text-indigo-200">questions</span>
            </div>
            <div className="w-px bg-white/20" />
            <div className="flex flex-col items-center gap-1">
              <span className="text-3xl font-bold">{quiz.difficulty ?? "moyen"}</span>
              <span className="text-indigo-200">difficulté</span>
            </div>
          </div>
          <button
            onClick={() => setStarted(true)}
            className="mt-8 rounded-xl bg-white px-8 py-3 text-base font-bold text-indigo-700 shadow-md transition hover:bg-indigo-50 active:scale-95"
          >
            Commencer le quiz →
          </button>
        </div>
      </div>
    );
  }

  /* ── Écran résultat ── */
  if (done) {
    const pct = Math.round((score / total) * 100);
    const emoji = pct >= 80 ? "🏆" : pct >= 50 ? "👍" : "💪";
    const msg =
      pct >= 80
        ? "Excellent travail !"
        : pct >= 50
        ? "Bon résultat, continue !"
        : "Courage, tu vas y arriver !";

    return (
      <div className="overflow-hidden rounded-2xl border border-indigo-100 bg-gradient-to-br from-indigo-600 to-violet-700 shadow-lg">
        <div className="px-8 py-10 text-center text-white">
          <div className="mx-auto mb-3 flex h-16 w-16 items-center justify-center rounded-full bg-white/20 text-4xl">
            {emoji}
          </div>
          <h2 className="text-2xl font-extrabold">{quiz.title}</h2>
          <p className="mt-1 text-indigo-200 text-sm">Quiz terminé !</p>
          <div className="mt-6 rounded-xl bg-white/10 px-6 py-5 backdrop-blur-sm">
            <div className="text-5xl font-black">{pct}%</div>
            <div className="mt-1 text-indigo-200 text-sm">
              {score} bonne{score > 1 ? "s" : ""} réponse{score > 1 ? "s" : ""} sur {total}
            </div>
            <div className="mt-4 h-3 w-full overflow-hidden rounded-full bg-white/20">
              <div
                className="h-full rounded-full bg-emerald-400 transition-all"
                style={{ width: `${pct}%` }}
              />
            </div>
          </div>
          <p className="mt-4 text-lg font-semibold">{msg}</p>
          <button
            onClick={reset}
            className="mt-6 inline-flex items-center gap-2 rounded-xl bg-white px-6 py-3 text-sm font-bold text-indigo-700 hover:bg-indigo-50"
          >
            <RefreshCcw className="h-4 w-4" /> Recommencer
          </button>
        </div>
      </div>
    );
  }

  /* ── Écran question ── */
  const progress = ((index + (selected !== null ? 1 : 0)) / total) * 100;

  return (
    <div className="overflow-hidden rounded-2xl border border-indigo-100 shadow-md">
      {/* En-tête avec titre bien visible */}
      <div className="bg-gradient-to-r from-indigo-600 to-violet-700 px-6 py-4">
        <h2 className="text-base font-bold text-white leading-snug">{quiz.title}</h2>
        <div className="mt-3 flex items-center gap-3">
          <div className="flex-1 h-2 overflow-hidden rounded-full bg-white/25">
            <div
              className="h-full rounded-full bg-white transition-all duration-500"
              style={{ width: `${progress}%` }}
            />
          </div>
          <span className="shrink-0 text-xs font-semibold text-white/80">
            {index + 1} / {total}
          </span>
        </div>
      </div>

      {/* Question */}
      <div className="bg-white px-6 py-6">
        <p className="text-lg font-semibold text-ink-900 leading-snug">{current.question}</p>

        <div className="mt-5 space-y-3">
          {current.choices.map((choice, i) => {
            const isCorrect = i === current.correct_index;
            const isSelected = selected === i;
            const reveal = selected !== null;

            let cls =
              "flex w-full items-center gap-3 rounded-xl border-2 px-4 py-3.5 text-left text-sm font-medium transition-all ";

            if (!reveal) {
              cls += "border-ink-200 bg-white hover:border-indigo-400 hover:bg-indigo-50 cursor-pointer";
            } else if (isCorrect) {
              cls += "border-emerald-400 bg-emerald-50 text-emerald-900";
            } else if (isSelected) {
              cls += "border-rose-400 bg-rose-50 text-rose-900";
            } else {
              cls += "border-ink-200 bg-white opacity-50";
            }

            const letter = ["A", "B", "C", "D"][i];

            return (
              <button
                key={i}
                onClick={() => selectAnswer(i)}
                disabled={reveal}
                className={cls}
              >
                <span
                  className={`flex h-7 w-7 shrink-0 items-center justify-center rounded-full text-xs font-bold
                    ${!reveal ? "bg-indigo-100 text-indigo-700" : isCorrect ? "bg-emerald-500 text-white" : isSelected ? "bg-rose-500 text-white" : "bg-ink-100 text-ink-500"}`}
                >
                  {letter}
                </span>
                <span className="flex-1">{choice}</span>
                {reveal && isCorrect && <CheckCircle2 className="h-5 w-5 shrink-0 text-emerald-500" />}
                {reveal && isSelected && !isCorrect && <XCircle className="h-5 w-5 shrink-0 text-rose-500" />}
              </button>
            );
          })}
        </div>

        {selected !== null && current.explanation && (
          <div className="mt-5 flex gap-3 rounded-xl bg-indigo-50 p-4 text-sm text-indigo-900 border border-indigo-100">
            <span className="mt-0.5 text-indigo-400">💡</span>
            <div>
              <span className="font-semibold">Explication : </span>
              {current.explanation}
            </div>
          </div>
        )}

        {selected !== null && (
          <button
            onClick={next}
            className="mt-5 w-full rounded-xl bg-indigo-600 py-3 text-sm font-bold text-white hover:bg-indigo-700 transition active:scale-95"
          >
            {index + 1 >= total ? "Voir mon score 🏆" : "Question suivante →"}
          </button>
        )}
      </div>
    </div>
  );
}
