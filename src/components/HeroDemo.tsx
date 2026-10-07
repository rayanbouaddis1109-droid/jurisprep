"use client";

import { useEffect, useState } from "react";

// Démonstration animée en boucle : un quiz, une flashcard, puis l'assistant IA.
const SCENES = ["Quiz", "Flashcard", "Assistant IA"] as const;
const QUESTION =
  "Quel article de la Constitution de 1958 permet au Président de la République de prendre les mesures exigées par des circonstances exceptionnelles ?";
const CHOICES = ["Article 5", "Article 16", "Article 49", "Article 89"];
const CHAT_Q = "C'est quoi le principe de légalité des délits et des peines ?";
const CHAT_A =
  "Nul ne peut être puni pour un fait qui n'était pas défini comme une infraction par la loi au moment où il a été commis, ni d'une peine qui n'était pas prévue par la loi.";

const SCENE_MS = [5200, 5200, 8200];

export function HeroDemo() {
  const [scene, setScene] = useState(0);
  const [tick, setTick] = useState(0); // temps écoulé dans la scène, en pas de 100 ms
  const [reduced, setReduced] = useState(false);

  useEffect(() => {
    setReduced(window.matchMedia("(prefers-reduced-motion: reduce)").matches);
  }, []);

  useEffect(() => {
    if (reduced) return;
    const id = setInterval(() => setTick((t) => t + 1), 100);
    return () => clearInterval(id);
  }, [reduced]);

  useEffect(() => {
    if (reduced) return;
    if (tick * 100 >= SCENE_MS[scene]) {
      setScene((s) => (s + 1) % SCENES.length);
      setTick(0);
    }
  }, [tick, scene, reduced]);

  const ms = tick * 100;
  const progress = Math.min(100, (ms / SCENE_MS[scene]) * 100);

  // Quiz : la bonne réponse se sélectionne après 1,8 s
  const picked = reduced || ms > 1800;
  // Flashcard : la carte se retourne après 2,2 s
  const flipped = reduced || ms > 2200;
  // Assistant : la question puis la réponse s'écrivent lettre par lettre
  const qChars = reduced ? CHAT_Q.length : Math.min(CHAT_Q.length, Math.floor(ms / 28));
  const aStart = 1300;
  const aChars = reduced ? CHAT_A.length : Math.max(0, Math.min(CHAT_A.length, Math.floor((ms - aStart) / 22)));

  const shownScene = reduced ? 0 : scene;

  return (
    <div
      className="mx-auto w-full overflow-hidden rounded-2xl"
      style={{
        maxWidth: 760,
        background: "#FFFDF8",
        border: "1.5px solid #EDE0CC",
        boxShadow: "0 24px 60px -24px rgba(44,24,16,0.35)",
      }}
      aria-label="Démonstration animée du site : un quiz, une flashcard et l'assistant IA"
    >
      {/* Barre de fenêtre */}
      <div className="flex items-center gap-3 px-4 py-3" style={{ background: "#F6EBD9", borderBottom: "1.5px solid #EDE0CC" }}>
        <div className="flex gap-1.5">
          <span className="h-2.5 w-2.5 rounded-full" style={{ background: "#F4622A" }} />
          <span className="h-2.5 w-2.5 rounded-full" style={{ background: "#F5B700" }} />
          <span className="h-2.5 w-2.5 rounded-full" style={{ background: "#0DB37A" }} />
        </div>
        <div className="flex flex-1 justify-center gap-1.5">
          {SCENES.map((name, i) => (
            <span
              key={name}
              className="rounded-full px-3 py-1 text-xs font-bold transition"
              style={
                i === shownScene
                  ? { background: "#E07B39", color: "white" }
                  : { background: "transparent", color: "#7A5C4A" }
              }
            >
              {name}
            </span>
          ))}
        </div>
        <div className="w-10" />
      </div>

      {/* Scène */}
      <div className="px-5 py-6 sm:px-8" style={{ minHeight: 330 }}>
        {shownScene === 0 && (
          <div key="quiz" className="jp-scene">
            <p className="mb-3 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
              Quiz corrigé
            </p>
            <p className="mb-5 text-left font-bold leading-snug" style={{ color: "#2C1810" }}>
              {QUESTION}
            </p>
            <div className="space-y-2 text-left text-sm">
              {CHOICES.map((c, i) => {
                const good = i === 1 && picked;
                return (
                  <div
                    key={c}
                    className="rounded-xl px-4 py-2.5 font-medium transition-all duration-500"
                    style={{
                      background: good ? "#E8FBF4" : "#FFF8EE",
                      border: `1.5px solid ${good ? "#0DB37A" : "#EDE0CC"}`,
                      color: good ? "#065E3F" : "#7A5C4A",
                      transform: good ? "scale(1.02)" : "scale(1)",
                    }}
                  >
                    {c}
                  </div>
                );
              })}
            </div>
            <p
              className="mt-4 text-left text-xs leading-relaxed transition-opacity duration-500"
              style={{ color: "#7A5C4A", opacity: picked ? 1 : 0 }}
            >
              Bonne réponse. Chaque réponse est expliquée : tu comprends pourquoi, pas seulement quoi.
            </p>
          </div>
        )}

        {shownScene === 1 && (
          <div key="card" className="jp-scene flex flex-col items-center">
            <p className="mb-4 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
              Flashcard
            </p>
            <div style={{ perspective: 900, width: "100%", maxWidth: 460 }}>
              <div
                className="relative transition-transform duration-700"
                style={{
                  height: 200,
                  transformStyle: "preserve-3d",
                  transform: flipped ? "rotateY(180deg)" : "rotateY(0deg)",
                }}
              >
                <div
                  className="absolute inset-0 flex items-center justify-center rounded-2xl p-6 text-center"
                  style={{ background: "#2C1810", backfaceVisibility: "hidden" }}
                >
                  <p className="text-xl font-extrabold" style={{ color: "#FFF8EE", letterSpacing: "-0.02em" }}>
                    Que signifie l&apos;adage « Pacta sunt servanda » ?
                  </p>
                </div>
                <div
                  className="absolute inset-0 flex items-center justify-center rounded-2xl p-6 text-center"
                  style={{
                    background: "#E8FBF4",
                    border: "1.5px solid #0DB37A",
                    backfaceVisibility: "hidden",
                    transform: "rotateY(180deg)",
                  }}
                >
                  <p className="text-sm font-medium leading-relaxed" style={{ color: "#065E3F" }}>
                    Les conventions doivent être respectées : un contrat légalement formé tient lieu de loi à ceux qui l&apos;ont fait.
                  </p>
                </div>
              </div>
            </div>
            <p className="mt-4 text-xs" style={{ color: "#7A5C4A" }}>
              Retourne la carte, vérifie, recommence jusqu&apos;à ce que ce soit acquis.
            </p>
          </div>
        )}

        {shownScene === 2 && (
          <div key="chat" className="jp-scene space-y-3 text-left text-sm">
            <p className="mb-1 text-xs font-bold uppercase tracking-widest" style={{ color: "#E07B39" }}>
              Assistant IA
            </p>
            <div className="ml-auto max-w-[85%] rounded-2xl rounded-br-md px-4 py-3" style={{ background: "#E07B39", color: "white" }}>
              {CHAT_Q.slice(0, qChars)}
            </div>
            {aChars > 0 && (
              <div
                className="max-w-[90%] rounded-2xl rounded-bl-md px-4 py-3 leading-relaxed"
                style={{ background: "#FFF8EE", border: "1.5px solid #EDE0CC", color: "#2C1810" }}
              >
                {CHAT_A.slice(0, aChars)}
              </div>
            )}
          </div>
        )}
      </div>

      {/* Barre de progression */}
      <div className="h-1" style={{ background: "#EDE0CC" }}>
        <div className="h-full" style={{ width: `${reduced ? 100 : progress}%`, background: "#E07B39", transition: "width 0.1s linear" }} />
      </div>
    </div>
  );
}
