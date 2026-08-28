import type { Metadata } from "next";
import Link from "next/link";

export const metadata: Metadata = {
  title: "Conditions générales de vente",
  description:
    "Conditions générales de vente des abonnements JurisPrép : prix, renouvellement, résiliation, droit de rétractation.",
};

export default function CgvPage() {
  return (
    <div className="mx-auto max-w-3xl px-5 py-16" style={{ color: "#2C1810" }}>
      <h1
        className="text-3xl font-extrabold tracking-tight mb-2"
        style={{ letterSpacing: "-0.03em" }}
      >
        Conditions générales de vente
      </h1>
      <p className="text-sm mb-12" style={{ color: "#7A5C4A" }}>
        Dernière mise à jour : août 2026
      </p>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">1. Vendeur</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép est un service en ligne de révision du droit. L&apos;identité complète de
          l&apos;éditeur figure dans les{" "}
          <Link href="/mentions-legales" style={{ color: "#E07B39" }}>
            mentions légales
          </Link>
          . Contact :{" "}
          <a href="mailto:contact@jurisprep.fr" style={{ color: "#E07B39" }}>
            contact@jurisprep.fr
          </a>
          .
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">2. Le service</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép propose des contenus pédagogiques de révision du droit (fiches de cours, fiches
          d&apos;arrêts, quiz, flashcards, exercices corrigés, vidéos) accessibles en ligne. Une
          partie du contenu est gratuite ; l&apos;accès complet nécessite un abonnement payant.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">3. Prix</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Les prix des abonnements sont affichés en euros sur la page{" "}
          <Link href="/tarifs" style={{ color: "#E07B39" }}>
            Tarifs
          </Link>
          . Le prix applicable est celui affiché au moment de la souscription. JurisPrép peut
          modifier ses tarifs ; toute modification est notifiée par email au moins 30 jours avant de
          s&apos;appliquer aux abonnements en cours, avec possibilité de résilier avant son entrée
          en vigueur.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">4. Souscription et paiement</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          La souscription nécessite un compte JurisPrép. Le paiement s&apos;effectue par carte
          bancaire via notre prestataire de paiement sécurisé Stripe. Aucune donnée de carte
          bancaire ne transite par nos serveurs ni n&apos;y est conservée.
        </p>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          L&apos;accès au contenu payant est ouvert immédiatement après validation du paiement.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">5. Durée et renouvellement</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Les abonnements sont mensuels, sans engagement de durée. Ils se renouvellent
          automatiquement chaque mois par tacite reconduction, jusqu&apos;à résiliation. Le montant
          est prélevé à chaque échéance mensuelle sur le moyen de paiement enregistré.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">6. Résiliation</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Tu peux résilier à tout moment, en ligne, en quelques clics : page{" "}
          <Link href="/compte" style={{ color: "#E07B39" }}>
            Mon compte
          </Link>{" "}
          → « Gérer mon abonnement » → « Annuler l&apos;abonnement ».
        </p>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          La résiliation prend effet à la fin de la période mensuelle en cours : l&apos;accès au
          contenu payant reste ouvert jusqu&apos;à cette date, et aucun prélèvement ultérieur
          n&apos;est effectué. La période entamée n&apos;est pas remboursée au prorata.
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">7. Droit de rétractation</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Conformément à l&apos;article L221-18 du Code de la consommation, tu disposes en principe
          d&apos;un délai de 14 jours pour te rétracter d&apos;un achat en ligne.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          L&apos;abonnement JurisPrép donne accès immédiatement à un contenu numérique. En
          souscrivant, tu demandes expressément cet accès immédiat et tu reconnais renoncer à ton
          droit de rétractation, conformément à l&apos;article L221-28 du Code de la consommation.
        </p>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          L&apos;abonnement étant sans engagement, tu peux en toute hypothèse le résilier à tout
          moment pour le mois suivant (voir article 6).
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">8. Disponibilité du service</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          JurisPrép met tout en œuvre pour assurer un accès continu au service, sans pouvoir
          garantir une disponibilité absolue (maintenance, panne d&apos;un hébergeur, cas de force
          majeure). En cas d&apos;interruption prolongée imputable à JurisPrép, tu peux demander un
          geste commercial en écrivant à{" "}
          <a href="mailto:contact@jurisprep.fr" style={{ color: "#E07B39" }}>
            contact@jurisprep.fr
          </a>
          .
        </p>
      </section>

      <section className="mb-10">
        <h2 className="text-xl font-bold mb-3">9. Réclamations et médiation</h2>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Pour toute réclamation, écris d&apos;abord à{" "}
          <a href="mailto:contact@jurisprep.fr" style={{ color: "#E07B39" }}>
            contact@jurisprep.fr
          </a>{" "}
          — une réponse est apportée sous 30 jours au maximum.
        </p>
        <p className="text-sm leading-relaxed mb-3" style={{ color: "#7A5C4A" }}>
          Conformément aux articles L611-1 et suivants du Code de la consommation, tout consommateur
          a le droit de recourir gratuitement à un médiateur de la consommation en cas de litige non
          résolu. Les coordonnées du médiateur compétent pour JurisPrép seront publiées ici dès
          finalisation de l&apos;adhésion en cours.
        </p>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Tu peux également utiliser la plateforme européenne de règlement en ligne des litiges :{" "}
          <a
            href="https://ec.europa.eu/consumers/odr"
            target="_blank"
            rel="noopener noreferrer"
            style={{ color: "#E07B39" }}
          >
            ec.europa.eu/consumers/odr
          </a>
          .
        </p>
      </section>

      <section>
        <h2 className="text-xl font-bold mb-3">10. Droit applicable</h2>
        <p className="text-sm leading-relaxed" style={{ color: "#7A5C4A" }}>
          Les présentes conditions sont soumises au droit français. En cas de litige, une solution
          amiable sera recherchée avant toute action judiciaire.
        </p>
      </section>
    </div>
  );
}
