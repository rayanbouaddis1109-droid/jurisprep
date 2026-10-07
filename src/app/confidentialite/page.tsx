import type { Metadata } from "next";
import Link from "next/link";

export const metadata: Metadata = {
  title: "Politique de confidentialité",
  description:
    "Quelles données JurisPrép collecte, pourquoi, combien de temps, et comment exercer tes droits.",
};

const text = { color: "#7A5C4A" } as const;

export default function ConfidentialitePage() {
  return (
    <div className="mx-auto max-w-3xl px-5 py-16" style={{ color: "#2C1810" }}>
      <h1 className="mb-2 text-3xl font-extrabold tracking-tight" style={{ letterSpacing: "-0.03em" }}>
        Politique de confidentialité
      </h1>
      <p className="mb-12 text-sm" style={text}>
        Dernière mise à jour : octobre 2026
      </p>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Responsable du traitement</h2>
        <p className="text-sm leading-relaxed" style={text}>
          Le responsable du traitement est l&apos;éditeur de JurisPrép, dont l&apos;identité figure dans
          les{" "}
          <Link href="/mentions-legales" className="underline" style={{ color: "#E07B39" }}>
            mentions légales
          </Link>
          . Contact pour toute question sur tes données :{" "}
          <a href="mailto:jurisprep1@gmail.com" style={{ color: "#E07B39" }}>
            jurisprep1@gmail.com
          </a>
          .
        </p>
      </section>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Données collectées et finalités</h2>
        <ul className="list-disc space-y-2 pl-5 text-sm leading-relaxed" style={text}>
          <li>
            <strong>Compte</strong> : adresse e-mail, nom, mot de passe (conservé uniquement sous forme
            hachée). Finalité : créer ton compte et te connecter. Base légale : exécution du contrat.
          </li>
          <li>
            <strong>Progression</strong> : quiz réalisés, fiches consultées. Finalité : afficher ton suivi
            de révision. Base légale : exécution du contrat.
          </li>
          <li>
            <strong>Abonnement</strong> : formule choisie, statut de l&apos;abonnement, identifiant client
            Stripe. Les données de carte bancaire sont saisies sur les pages de Stripe et ne transitent
            jamais par nos serveurs. Base légale : exécution du contrat et obligations comptables.
          </li>
          <li>
            <strong>Assistant IA</strong> : les questions que tu poses sont transmises à notre prestataire
            Groq pour générer la réponse. N&apos;y saisis aucune donnée personnelle sensible. Base légale :
            exécution du contrat.
          </li>
          <li>
            <strong>Sécurité</strong> : journaux techniques et limitation du nombre de requêtes, pour
            protéger le service contre les abus. Base légale : intérêt légitime.
          </li>
        </ul>
        <p className="mt-3 text-sm leading-relaxed" style={text}>
          Tes données ne sont pas vendues et ne servent à aucune publicité.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Destinataires et sous-traitants</h2>
        <ul className="list-disc space-y-2 pl-5 text-sm leading-relaxed" style={text}>
          <li>Supabase, Inc. : base de données et authentification (serveurs en Europe).</li>
          <li>Vercel Inc. : hébergement du site (États-Unis).</li>
          <li>Stripe, Inc. : paiement des abonnements.</li>
          <li>Groq, Inc. : génération des réponses de l&apos;assistant IA (États-Unis).</li>
        </ul>
        <p className="mt-3 text-sm leading-relaxed" style={text}>
          Plusieurs de ces prestataires sont établis aux États-Unis. Les transferts de données hors de
          l&apos;Union européenne s&apos;appuient sur les garanties prévues par le RGPD (clauses
          contractuelles types de la Commission européenne ou décision d&apos;adéquation, selon le
          prestataire).
        </p>
      </section>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Durée de conservation</h2>
        <p className="text-sm leading-relaxed" style={text}>
          Les données de ton compte sont conservées tant que ton compte est actif, puis supprimées dans
          les 90 jours suivant une demande de fermeture. Les données de facturation sont conservées le
          temps exigé par les obligations comptables et fiscales.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Cookies</h2>
        <p className="text-sm leading-relaxed" style={text}>
          JurisPrép dépose uniquement des cookies strictement nécessaires : le cookie de connexion, qui
          garde ta session ouverte jusqu&apos;à ta déconnexion ou à son expiration. Aucun cookie
          publicitaire ni de mesure d&apos;audience n&apos;est utilisé, donc aucun bandeau de consentement
          n&apos;est nécessaire.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Tes droits</h2>
        <p className="mb-3 text-sm leading-relaxed" style={text}>
          Tu peux demander l&apos;accès à tes données, leur rectification, leur effacement, la limitation
          ou l&apos;opposition à leur traitement, ainsi que leur portabilité. Écris à{" "}
          <a href="mailto:jurisprep1@gmail.com" style={{ color: "#E07B39" }}>
            jurisprep1@gmail.com
          </a>
          . Nous répondons sous 30 jours maximum.
        </p>
        <p className="text-sm leading-relaxed" style={text}>
          Si tu estimes que tes droits ne sont pas respectés, tu peux introduire une réclamation auprès
          de la CNIL (
          <a href="https://www.cnil.fr/fr/plaintes" style={{ color: "#E07B39" }}>
            cnil.fr/fr/plaintes
          </a>
          ).
        </p>
      </section>

      <section className="mb-10">
        <h2 className="mb-3 text-xl font-bold">Mineurs</h2>
        <p className="text-sm leading-relaxed" style={text}>
          L&apos;inscription est réservée aux personnes de 15 ans ou plus. En dessous de cet âge,
          l&apos;accord d&apos;un parent ou d&apos;un représentant légal est nécessaire.
        </p>
      </section>
    </div>
  );
}
