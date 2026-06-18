"use client";

import { useState } from "react";
import { CheckCircle2, XCircle, RefreshCcw } from "lucide-react";
import type { Quiz } from "@/lib/types";

export function QuizPlayer({ quiz }: { quiz: Quiz }) {
  const [index, setIndex] = useState(0);
  const [selected, setSelected] = useState<number | null>(null);
  const [score, setScore] = useState(0);
  const [done, setDone] = useState(false);

  const questions = quiz.questions ?? [];
  const total = questions.length;
  const current = questions[index];

  if (total === 0) {
    return (
      <div className="rounded-xl border border-ink-200 bg-white p-6 text-ink-600">
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
  }

  if (done) {
    const pct = Math.round((score / total) * 100);
    return (
      <div className="rounded-xl border border-ink-200 bg-white p-6">
        <h3 className="text-xl font-bold text-ink-900">{quiz.title} — Terminé !</h3>
        <p className="mt-2 text-ink-600">
          Score : <span className="font-semibold text-indigo-700">{score} / {total}</span> ({pct}%)
        </p>
        <button
          onClick={reset}
          className="mt-4 inline-flex items-center gap-2 rounded-md bg-indigo-600 px-4 py-2 text-sm text-white hover:bg-indigo-700"
        >
          <RefreshCcw className="h-4 w-4" /> Recommencer
        </button>
      </div>
    );
  }

  return (
    <div className="rounded-xl border border-ink-200 bg-white p-6">
      <div className="flex items-center justify-between text-xs text-ink-500">
        <span>{quiz.title}</span>
        <span>
          Question {index + 1} / {total}
        </span>
      </div>
      <div className="mt-3 h-1.5 w-full overflow-hidden rounded-full bg-ink-100">
        <div
          className="h-full bg-indigo-600 transition-all"
          style={{ width: `${((index + (selected !== null ? 1 : 0)) / total) * 100}%` }}
        />
      </div>
      <h3 className="mt-5 text-lg font-semibold text-ink-900">{current.question}</h3>
      <div className="mt-4 space-y-2">
        {current.choices.map((choice, i) => {
          const isCorrect = i === current.correct_index;
          const isSelected = selected === i;
          const reveal = selected !== null;
          let cls =
            "flex w-full items-center justify-between rounded-lg border px-4 py-3 text-left text-sm transition ";
          if (!reveal) {
            cls += "border-ink-200 hover:border-indigo-300 hover:bg-indigo-50";
          } else if (isCorrect) {
            cls += "border-emerald-400 bg-emerald-50 text-emerald-900";
          } else if (isSelected) {
            cls += "border-rose-400 bg-rose-50 text-rose-900";
          } else {
            cls += "border-ink-200 opacity-60";
          }
          return (
            <button
              key={i}
              onClick={() => selectAnswer(i)}
              disabled={reveal}
              className={cls}
            >
              <span>{choice}</span>
              {reveal && isCorrect && <CheckCircle2 className="h-5 w-5 text-emerald-600" />}
              {reveal && isSelected && !isCorrect && <XCircle className="h-5 w-5 text-rose-600" />}
            </button>
          );
        })}
      </div>
      {selected !== null && current.explanation && (
        <div className="mt-4 rounded-lg bg-indigo-50 p-4 text-sm text-indigo-900">
          <span className="font-semibold">Explication : </span>
          {current.explanation}
        </div>
      )}
      {selected !== null && (
        <button
          onClick={next}
          className="mt-4 rounded-md bg-indigo-600 px-4 py-2 text-sm text-white hover:bg-indigo-700"
        >
          {index + 1 >= total ? "Voir le score" : "Question suivante"}
        </button>
      )}
    </div>
  );
}
