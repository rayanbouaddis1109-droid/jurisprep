import type { Metadata } from "next";

export const metadata: Metadata = {
  title: "Mentions légales — JurisPrép",
  description: "Mentions légales, politique de confidentialité et informations sur les cookies de JurisPrép.",
};

export default function MentionsLegalesPage() {
  return (
    <div
      className="mx-auto max-w-3xl px-5 py-16"
      style={{ color: "#2C1810" }}
    >
      <h1
        className="text-3xl font-extrabold tracking-tight mb-2"
        style={{ letterSpacing: "-0.03em" }}
      >
        Mentions légales
      </h1>
      <p className="text-sm mb-12" style={{ color: "#7A5C4A" }}>
        Dernière mise à jour : août 2026
      </p>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Éditeur</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép est un service en ligne édité à titre personnel. Contact :{" "}
          <a href="mailto:jurisprep1@gmail.com" style={{ color: "#E07B39" }}>
            jurisprep1@gmail.com
          </a>
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Hébergement</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Le site est hébergé par Vercel Inc., 340 Pine Street, Suite 701, San Francisco, CA 94104,
          États-Unis. Base de données hébergée par Supabase, Inc. (serveurs en Europe).
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Données personnelles</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Les données collectées lors de l&apos;inscription (adresse email, nom, progression dans les
          cours) servent exclusivement à faire fonctionner le service. Elles ne sont pas vendues ni
          transmises à des tiers à des fins commerciales.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Conformément au Règlement (UE) 2016/679 (RGPD), tu peux à tout moment demander l&apos;accès,
          la rectification ou la suppression de tes données en écrivant à{" "}
          <a href="mailto:jurisprep1@gmail.com" style={{ color: "#E07B39" }}>
            jurisprep1@gmail.com
          </a>
          . Délai de réponse maximal : 30 jours.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Les mots de passe sont hachés et ne sont jamais stockés en clair. Les données sont
          conservées tant que le compte est actif et supprimées dans les 90 jours suivant une demande
          de fermeture de compte.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          <strong>Paiements :</strong> les paiements sont traités par Stripe, Inc. (prestataire de
          paiement certifié). Les données de carte bancaire sont saisies directement sur les pages
          sécurisées de Stripe et ne transitent jamais par nos serveurs. Stripe traite ces données
          en qualité de sous-traitant, conformément à sa politique de confidentialité.
        </p>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          <strong>Assistant IA :</strong> les questions posées à l&apos;assistant sont transmises à
          notre prestataire d&apos;intelligence artificielle (Groq, Inc., États-Unis) pour générer
          les réponses. N&apos;y saisis pas de données personnelles sensibles. Ces échanges ne sont
          pas utilisés à des fins publicitaires.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Cookies</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép dépose un unique cookie de session technique, nécessaire au maintien de ta
          connexion. Ce cookie ne contient aucune donnée personnelle identifiable, n&apos;est pas
          partagé avec des tiers et disparaît à la fermeture du navigateur ou à la déconnexion.
          Aucun cookie publicitaire, analytique ou de traçage tiers n&apos;est déposé. Aucun
          consentement n&apos;est requis pour ce cookie, qui est strictement nécessaire au
          fonctionnement du service.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Propriété intellectuelle</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          L&apos;ensemble du contenu de JurisPrép (fiches de cours, fiches d&apos;arrêts, flashcards,
          textes) est protégé par le droit d&apos;auteur. Toute reproduction, même partielle, sans
          autorisation écrite préalable est interdite.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Limitation de responsabilité</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Le contenu de JurisPrép est fourni à titre pédagogique et ne constitue pas un conseil
          juridique. Pour toute situation nécessitant un avis professionnel, consulte un avocat ou
          un professionnel du droit qualifié.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">Conditions générales d&apos;utilisation</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          L&apos;accès au service est réservé aux personnes majeures ou, pour les mineurs, sous
          responsabilité parentale. En créant un compte, tu acceptes les présentes conditions.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          L&apos;utilisation du contenu est strictement personnelle et non commerciale. Il est interdit
          de reproduire, redistribuer, revendre ou exploiter de quelque façon que ce soit les
          ressources de la plateforme (fiches, quiz, flashcards, exercices) sans autorisation
          écrite préalable.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          JurisPrép se réserve le droit de suspendre ou supprimer tout compte en cas d&apos;utilisation
          abusive, de tentative de contournement des mesures techniques, ou de violation des
          présentes conditions.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Les abonnements payants sont sans engagement et résiliables à tout moment depuis la page
          Mon compte. Les conditions de vente détaillées (prix, renouvellement, résiliation,
          rétractation) figurent dans les{" "}
          <a href="/cgv" style={{ color: "#E07B39" }}>
            conditions générales de vente
          </a>
          .
        </p>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép se réserve le droit de modifier ces conditions à tout moment. Les
          utilisateurs seront informés par email en cas de modification substantielle.
        </p>
      </section>

      <section>
        <h2 className="text-xl font-bold mb-3">Contact</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Pour toute question relative à ces mentions légales ou à tes données personnelles :{" "}
          <a href="mailto:jurisprep1@gmail.com" style={{ color: "#E07B39" }}>
            jurisprep1@gmail.com
          </a>
        </p>
      </section>
    </div>
  );
}
