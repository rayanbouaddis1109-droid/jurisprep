import { createAdminClient } from "@/lib/supabase/admin";

type Db = ReturnType<typeof createAdminClient>;

const SITE = "https://www.jurisprep.fr";

function escapeHtml(s: string): string {
  return s
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

// Premier mot du nom saisi à l'inscription, avec une majuscule initiale.
export function firstNameOf(fullName: unknown): string {
  if (typeof fullName !== "string") return "";
  const first = fullName.trim().split(/\s+/)[0] ?? "";
  if (!first || first.includes("@") || first.length > 40) return "";
  const lower = first.toLowerCase();
  return lower.charAt(0).toUpperCase() + lower.slice(1);
}

const ITEMS = [
  "Les fiches de cours, du lycée à la L3, matière par matière",
  "Les quiz corrigés et les flashcards pour réviser chaque chapitre",
  "Les exercices corrigés",
  "Les vidéos de cours",
  "L'anglais juridique et les mots du jour",
  "La culture générale juridique",
  "L'actualité juridique, mise à jour chaque jour à partir des sources officielles",
  "L'assistant IA, pour poser tes questions de droit à toute heure",
  "Le suivi de ta progression, sur ta page Mon compte",
];

export function buildWelcome(
  firstName: string,
  variant: "new" | "existing" = "new",
): { subject: string; text: string; html: string } {
  const hello = firstName ? `Bonjour ${firstName},` : "Bonjour,";
  const intro = "Bienvenue sur JurisPrép, et merci de t'être inscrit.";
  const who =
    variant === "new"
      ? "JurisPrép est le site des étudiants, fait pour les étudiants. Voici tout ce à quoi tu as accès :"
      : "JurisPrép est le site des étudiants, fait pour les étudiants. Voici ce que tu y trouves :";
  const access =
    variant === "new"
      ? ""
      : "Le premier chapitre de chaque matière est gratuit, avec ses quiz, ses flashcards et sa vidéo. Le reste du contenu est inclus dans la formule Étudiant.";
  const ask =
    "Une chose compte vraiment pour nous : que le site te serve. Si tu as besoin de quelque chose en plus, une matière, une section, un type d'exercice, une fonction, ou si quelque chose ne te paraît pas clair, dis-le-nous. Réponds simplement à ce mail, on lit chaque message et on s'en sert pour construire la suite.";
  const goal = "Le but est de faire le site le plus utile possible pour toi.";
  const bye = "Bonne révision,";

  const text = [
    hello,
    "",
    intro,
    "",
    who,
    "",
    ...ITEMS.map((i) => `- ${i}`),
    "",
    ...(access ? [access, ""] : []),
    ask,
    "",
    goal,
    "",
    bye,
    "JurisPrép",
    "",
    "jurisprep.fr",
  ].join("\n");

  const p = (s: string) =>
    `<p style="margin:0 0 16px;font-size:16px;line-height:1.6;color:#2C1810;">${escapeHtml(s)}</p>`;
  const html = `<!doctype html>
<html lang="fr"><body style="margin:0;padding:0;background:#FFF8EE;">
<div style="max-width:560px;margin:0 auto;padding:32px 20px;font-family:-apple-system,Segoe UI,Helvetica,Arial,sans-serif;">
<p style="margin:0 0 24px;font-size:22px;font-weight:700;color:#2C1810;">Juris<span style="color:#E07B39;">Prép</span></p>
${p(hello)}
${p(intro)}
${p(who)}
<ul style="margin:0 0 16px;padding-left:20px;font-size:16px;line-height:1.7;color:#2C1810;">
${ITEMS.map((i) => `<li>${escapeHtml(i)}</li>`).join("\n")}
</ul>
${access ? p(access) : ""}
${p(ask)}
${p(goal)}
${p(bye)}
<p style="margin:0;font-size:16px;color:#2C1810;">JurisPrép<br><a href="${SITE}" style="color:#E07B39;">jurisprep.fr</a></p>
</div></body></html>`;

  return { subject: "Bienvenue sur JurisPrép", text, html };
}

// Envoi par l'API Resend. Réponses aux messages : jurisprep1@gmail.com.
export async function sendWelcomeTo(
  email: string,
  firstName: string,
  variant: "new" | "existing" = "new",
): Promise<void> {
  const key = process.env.RESEND_API_KEY;
  if (!key) throw new Error("RESEND_API_KEY non défini");
  const from = process.env.WELCOME_FROM || "JurisPrép <contact@jurisprep.fr>";
  const { subject, text, html } = buildWelcome(firstName, variant);

  const res = await fetch("https://api.resend.com/emails", {
    method: "POST",
    headers: { Authorization: `Bearer ${key}`, "Content-Type": "application/json" },
    body: JSON.stringify({
      from,
      to: [email],
      reply_to: "jurisprep1@gmail.com",
      subject,
      text,
      html,
    }),
    signal: AbortSignal.timeout(10000),
  });
  if (!res.ok) {
    const detail = (await res.text()).slice(0, 200);
    throw new Error(`envoi refusé (${res.status}) ${detail}`);
  }
}

// Envoie le mail de bienvenue une seule fois par compte (drapeau dans app_metadata).
export async function sendWelcomeOnce(db: Db, userId: string): Promise<"sent" | "already" | "skipped"> {
  const { data, error } = await db.auth.admin.getUserById(userId);
  if (error || !data.user?.email) return "skipped";
  const user = data.user;
  if (user.app_metadata?.welcome_sent) return "already";

  // Les comptes créés avant l'offre de 7 jours n'ont pas l'accès complet offert : texte adapté.
  // Tous les comptes ont l'accès complet de 7 jours : même texte pour tout le monde.
  const variant = "new" as const;
  await sendWelcomeTo(user.email as string, firstNameOf(user.user_metadata?.full_name), variant);
  await db.auth.admin.updateUserById(userId, {
    app_metadata: { ...user.app_metadata, welcome_sent: new Date().toISOString() },
  });
  return "sent";
}
