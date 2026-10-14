"use client";

import { useState, useRef, useEffect } from "react";
import { Scale, Send, Bot, User, Sparkles, BookOpen, Gavel, FileText } from "lucide-react";
import ReactMarkdown from "react-markdown";
import remarkGfm from "remark-gfm";

interface Message {
  role: "user" | "assistant";
  content: string;
}

const SUGGESTIONS = [
  "Quelle est la différence entre la nullité relative et la nullité absolue ?",
  "Comment fonctionne la responsabilité délictuelle en droit français ?",
  "Explique-moi le principe de légalité en droit pénal.",
  "Qu'est-ce qu'un contrat synallagmatique ?",
  "Quelle est la portée de l'arrêt Blieck en droit de la responsabilité ?",
  "Comment rédiger un commentaire d'arrêt en droit ?",
];

export default function AssistantPage() {
  const [messages, setMessages] = useState<Message[]>([]);
  const [input, setInput] = useState("");
  const [loading, setLoading] = useState(false);
  const bottomRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages, loading]);

  async function sendMessage(text?: string) {
    const content = text ?? input.trim();
    if (!content || loading) return;

    const newMessages: Message[] = [...messages, { role: "user", content }];
    setMessages(newMessages);
    setInput("");
    setLoading(true);

    try {
      const res = await fetch("/api/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ messages: newMessages }),
      });
      const data = await res.json();
      setMessages((prev) => [
        ...prev,
        { role: "assistant", content: data.reply ?? data.error ?? "Erreur inconnue." },
      ]);
    } catch {
      setMessages((prev) => [
        ...prev,
        { role: "assistant", content: "Une erreur est survenue. Vérifie ta connexion et réessaie." },
      ]);
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="flex h-[calc(100vh-57px)] flex-col bg-[#FFF8EE]">
      {/* Header */}
      <div className="border-b border-[#EDE0CC] bg-[#FFFDF8] px-4 py-4 shadow-sm">
        <div className="mx-auto flex max-w-3xl items-center gap-3">
          <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-[#E07B39] shadow">
            <Scale className="h-5 w-5 text-white" />
          </div>
          <div>
            <h1 className="text-lg font-bold text-[#2C1810]">Professeur Legrand</h1>
            <p className="text-xs text-[#7A5C4A]">Assistant IA · Droit français · Réponses pédagogiques</p>
          </div>
          <span className="ml-auto flex items-center gap-1.5 rounded-full bg-emerald-100 px-3 py-1 text-xs font-semibold text-emerald-700">
            <span className="h-1.5 w-1.5 rounded-full bg-emerald-500 animate-pulse" />
            En ligne
          </span>
        </div>
      </div>

      {/* Chat area */}
      <div className="flex-1 overflow-y-auto px-4 py-6">
        <div className="mx-auto max-w-3xl space-y-6">
          {messages.length === 0 && (
            <div className="text-center">
              {/* Welcome */}
              <div className="mx-auto mb-6 flex h-20 w-20 items-center justify-center rounded-2xl bg-gradient-to-br from-[#E07B39] to-[#C96A2B] shadow-xl shadow-[#E07B39]/30">
                <Bot className="h-10 w-10 text-white" />
              </div>
              <h2 className="text-2xl font-extrabold text-[#2C1810]">
                Bonjour, je suis le Professeur Legrand
              </h2>
              <p className="mt-2 text-[#7A5C4A]">
                Pose-moi toutes tes questions de droit — je suis là pour t&apos;aider à comprendre et progresser.
              </p>

              {/* Domaines */}
              <div className="mt-8 flex flex-wrap justify-center gap-3">
                {[
                  { icon: BookOpen, label: "Droit civil" },
                  { icon: Gavel, label: "Droit pénal" },
                  { icon: Scale, label: "Droit administratif" },
                  { icon: FileText, label: "Méthodologie" },
                ].map(({ icon: Icon, label }) => (
                  <span
                    key={label}
                    className="flex items-center gap-2 rounded-full border border-[#F5C9A6] bg-[#FFF0E6] px-4 py-2 text-sm font-medium text-[#B85A1C]"
                  >
                    <Icon className="h-4 w-4" />
                    {label}
                  </span>
                ))}
              </div>

              {/* Suggestions */}
              <div className="mt-8 text-left">
                <p className="mb-3 flex items-center gap-1.5 text-xs font-bold uppercase tracking-widest text-[#B89F8A]">
                  <Sparkles className="h-3.5 w-3.5" /> Suggestions
                </p>
                <div className="grid gap-2 sm:grid-cols-2">
                  {SUGGESTIONS.map((s) => (
                    <button
                      key={s}
                      onClick={() => sendMessage(s)}
                      className="rounded-xl border border-[#EDE0CC] bg-[#FFFDF8] px-4 py-3 text-left text-sm text-[#2C1810] transition hover:border-[#F5C9A6] hover:bg-[#FFF0E6] hover:text-[#B85A1C]"
                    >
                      {s}
                    </button>
                  ))}
                </div>
              </div>
            </div>
          )}

          {messages.map((m, i) => (
            <div
              key={i}
              className={`flex gap-3 ${m.role === "user" ? "flex-row-reverse" : "flex-row"}`}
            >
              {/* Avatar */}
              <div
                className={`flex h-9 w-9 shrink-0 items-center justify-center rounded-xl ${
                  m.role === "user"
                    ? "bg-[#E07B39] text-white"
                    : "bg-[#EDE0CC] text-[#7A5C4A]"
                }`}
              >
                {m.role === "user" ? (
                  <User className="h-4 w-4" />
                ) : (
                  <Bot className="h-4 w-4" />
                )}
              </div>

              {/* Bubble */}
              <div
                className={`max-w-[80%] rounded-2xl px-5 py-4 text-sm leading-relaxed shadow-sm ${
                  m.role === "user"
                    ? "rounded-tr-sm bg-[#E07B39] text-white"
                    : "rounded-tl-sm bg-[#FFFDF8] text-[#2C1810]"
                }`}
              >
                {m.role === "assistant" ? (
                  <div className="prose-jurisprep text-sm">
                    <ReactMarkdown remarkPlugins={[remarkGfm]}>{m.content}</ReactMarkdown>
                  </div>
                ) : (
                  <p className="whitespace-pre-wrap">{m.content}</p>
                )}
              </div>
            </div>
          ))}

          {loading && (
            <div className="flex gap-3">
              <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-xl bg-[#EDE0CC] text-[#7A5C4A]">
                <Bot className="h-4 w-4" />
              </div>
              <div className="rounded-2xl rounded-tl-sm bg-[#FFFDF8] px-5 py-4 shadow-sm">
                <div className="flex items-center gap-1.5">
                  {[0, 1, 2].map((i) => (
                    <span
                      key={i}
                      className="h-2 w-2 rounded-full bg-[#E07B39] animate-bounce"
                      style={{ animationDelay: `${i * 0.15}s` }}
                    />
                  ))}
                </div>
              </div>
            </div>
          )}

          <div ref={bottomRef} />
        </div>
      </div>

      {/* Input */}
      <div className="border-t border-[#EDE0CC] bg-[#FFFDF8] px-4 py-4">
        <div className="mx-auto max-w-3xl">
          <form
            onSubmit={(e) => {
              e.preventDefault();
              sendMessage();
            }}
            className="flex items-end gap-3"
          >
            <textarea
              value={input}
              onChange={(e) => setInput(e.target.value)}
              onKeyDown={(e) => {
                if (e.key === "Enter" && !e.shiftKey) {
                  e.preventDefault();
                  sendMessage();
                }
              }}
              placeholder="Pose ta question de droit… (Entrée pour envoyer)"
              rows={1}
              className="flex-1 resize-none rounded-xl border border-[#EDE0CC] bg-[#FFF8EE] px-4 py-3 text-sm text-[#2C1810] placeholder-[#B89F8A] outline-none focus:border-[#E07B39] focus:bg-[#FFFDF8] focus:ring-2 focus:ring-[#FFF0E6] transition"
              style={{ minHeight: "48px", maxHeight: "160px" }}
              onInput={(e) => {
                const t = e.currentTarget;
                t.style.height = "auto";
                t.style.height = Math.min(t.scrollHeight, 160) + "px";
              }}
            />
            <button
              type="submit"
              disabled={!input.trim() || loading}
              className="flex h-12 w-12 shrink-0 items-center justify-center rounded-xl bg-[#E07B39] text-white shadow transition hover:bg-[#C96A2B] disabled:opacity-40 disabled:cursor-not-allowed"
            >
              <Send className="h-5 w-5" />
            </button>
          </form>
          <p className="mt-2 text-center text-xs text-[#B89F8A]">
            Le Professeur Legrand répond uniquement aux questions juridiques. Pour les urgences légales, consultez un avocat.
          </p>
        </div>
      </div>
    </div>
  );
}
