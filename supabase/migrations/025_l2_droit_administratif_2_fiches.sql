-- =====================================================================
-- JurisPrép - Fiches : Droit administratif II (L2 S2)
-- 8 fiches couvrant l'action administrative et le contentieux
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-administratif-2');

-- =====================================================================
-- FICHE 1 - L'ACTE ADMINISTRATIF UNILATÉRAL : IDENTIFICATION ET RÉGIME
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''acte administratif unilatéral : identification et régime', 'Partie 1 - Chapitre 1 : Les actes administratifs unilatéraux',
       'Définition, critères organiques et matériels de l''AAU, classification (réglementaire/individuel), élaboration et disparition de l''acte.',
       array['Acte administratif unilatéral', 'Critère organique', 'Décision exécutoire', 'Acte réglementaire', 'Acte individuel', 'Procédure contradictoire', 'Abrogation', 'Retrait', 'Entrée en vigueur', 'Principe du contradictoire'],
       28, 1,
$$
# L'acte administratif unilatéral : identification et régime

## I. L'identification de l'acte administratif unilatéral

L'**acte administratif unilatéral (AAU)** est une manifestation unilatérale de la volonté d'une autorité administrative qui **affecte l'ordonnancement juridique** et s'applique à d'autres sujets de droit que son auteur. C'est l'outil le plus courant de l'action administrative.

### A. Les critères organiques et formels

#### 1. Le critère de l'auteur (organique)

En principe, l'AAU émane d'une **personne publique**. Mais ce critère connaît des exceptions :
- Une **personne privée** gérant un service public peut émettre des AAU (ex. fédérations sportives pour les décisions d'homologation).
- A contrario, certains actes de personnes publiques relèvent du droit privé (actes de gestion du domaine privé).

#### 2. Le critère formel

L'acte doit être **unilatéral** : il s'impose sans le consentement du destinataire. C'est le **privilège du préalable** — l'administration peut rendre ses décisions exécutoires sans passer par le juge.

### B. Les critères matériels

L'AAU doit **modifier l'ordonnancement juridique**, c'est-à-dire créer, modifier ou supprimer des droits et obligations. Sont exclus :
- Les **actes préparatoires** (circulaires, lignes directrices sans effet propre)
- Les **mesures d'ordre intérieur**
- Les **actes de gouvernement** (immunisés de tout contrôle juridictionnel)

> **CE, 29 janvier 1954, *Institution Notre-Dame du Kreisker*** : les circulaires interprétatives ne font pas grief ; seules les circulaires impératives sont attaquables.

## II. La classification des AAU

| Type | Portée | Exemples |
|---|---|---|
| **Réglementaire** | Générale et impersonnelle | Décret, arrêté ministériel |
| **Individuel** | Nominatif | Permis de construire, nomination |
| **Collectif** | Plusieurs personnes désignées | Liste d'admis à un concours |

## III. Le régime de l'AAU

### A. L'élaboration de l'acte

#### 1. Les consultations obligatoires

Certains actes nécessitent une **consultation préalable** d'un organisme (Conseil d'État, CNIL…). On distingue :
- **Avis conforme** : l'administration est liée par l'avis → absence d'avis = illégalité.
- **Avis simple** : l'administration peut s'en écarter → mais doit avoir réellement consulté.

#### 2. Le principe du contradictoire

La **loi du 12 avril 2000** (DCRA), codifiée dans le **CRPA**, impose qu'avant toute décision individuelle défavorable, l'administré soit mis en mesure de présenter ses observations.

#### 3. L'entrée en vigueur

- **Actes réglementaires** : entrée en vigueur après **publication** au Journal officiel ou au recueil des actes.
- **Actes individuels** : entrée en vigueur après **notification** à l'intéressé.

### B. La disparition de l'acte

#### 1. L'abrogation

Suppression de l'acte pour l'**avenir**. L'administration peut abroger ses actes réglementaires à tout moment. Pour les actes individuels créateurs de droits, l'abrogation n'est possible que dans les conditions fixées par la loi.

#### 2. Le retrait

Suppression de l'acte avec **effet rétroactif**. Très encadré : un acte créateur de droits ne peut être retiré que dans un **délai de 4 mois** à compter de son édiction (**CE, 26 octobre 2001, *Ternon***).

> **Principe** : l'illégalité de l'acte ne suffit pas à autoriser son retrait à tout moment — la sécurité juridique des droits acquis est protégée.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 2 - LE CONTRAT ADMINISTRATIF
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le contrat administratif : critères et régime', 'Partie 1 - Chapitre 2 : Le contrat administratif',
       'Qualification du contrat administratif par critères organique et matériel, régime exorbitant et prérogatives des parties.',
       array['Contrat administratif', 'Critère organique', 'Critère matériel', 'Clause exorbitante', 'Service public', 'Marché public', 'Délégation de service public', 'Pouvoir de modification unilatérale', 'Théorie de l''imprévision', 'Résiliation pour motif d''intérêt général'],
       26, 2,
$$
# Le contrat administratif : critères et régime

## I. La qualification du contrat administratif

Un contrat est administratif soit par **détermination de la loi**, soit par application de critères jurisprudentiels.

### A. Le critère organique

Au moins **une personne publique** doit être partie au contrat. C'est une condition nécessaire mais non suffisante.

> Exception : les contrats entre deux personnes privées peuvent être administratifs si l'une agit pour le compte d'une personne publique (**CE, 1963, *Société entreprise Peyrot***).

### B. Les critères matériels alternatifs

#### 1. La clause exorbitante du droit commun

Le contrat contient une clause qui serait **inusuelle** ou **impossible** dans un contrat entre particuliers (ex. pouvoir de contrôle unilatéral de l'administration, résiliation sans indemnité…).

#### 2. Le lien avec le service public

Le contrat **fait participer le cocontractant à l'exécution d'un service public** (**TC, 1921, *Société commerciale de l'Ouest africain*** — bac d'Eloka).

## II. Les principaux contrats administratifs

| Contrat | Définition |
|---|---|
| **Marché public** | Contrat à titre onéreux pour travaux, fournitures ou services |
| **Délégation de service public (DSP)** | Gestion d'un SP déléguée à un opérateur rémunéré par les usagers |
| **Contrat de partenariat (PPP)** | Financement, construction et gestion d'équipements publics |
| **Concession de travaux publics** | Réalisation d'un ouvrage public avec exploitation |

## III. Le régime du contrat administratif

### A. Les prérogatives de l'administration

L'administration dispose de pouvoirs **exorbitants** par rapport au droit commun des contrats :

#### 1. Le pouvoir de modification unilatérale

L'administration peut **modifier les clauses** du contrat dans l'intérêt général, sans l'accord du cocontractant. En contrepartie, le cocontractant a droit à une **indemnisation intégrale** (**CE, 1902, *Compagnie générale des tramways***).

#### 2. Le pouvoir de résiliation unilatérale

L'administration peut mettre fin au contrat **pour motif d'intérêt général**. Le cocontractant a droit à la réparation de l'intégralité de son préjudice, y compris le manque à gagner.

#### 3. Le pouvoir de contrôle et de sanction

L'administration peut contrôler l'exécution du contrat et prononcer des **sanctions contractuelles** (pénalités, mise en régie, résiliation aux torts).

### B. Les droits du cocontractant

#### 1. Le droit à l'équilibre financier

Le cocontractant peut invoquer :
- La **théorie de l'imprévision** : événement imprévisible et extérieur bouleversant l'économie du contrat → droit à une indemnité partielle (**CE, 1916, *Gaz de Bordeaux***).
- Le **fait du prince** : mesure de l'administration elle-même aggravant les charges du cocontractant → indemnisation intégrale.
- La **force majeure** : événement imprévisible, irrésistible et extérieur → suspension ou résiliation sans indemnité.

#### 2. L'exception d'inexécution

Contrairement au droit privé, le cocontractant ne peut **pas suspendre l'exécution** en invoquant l'inexécution par l'administration — la continuité du service public prime.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 3 - LA POLICE ADMINISTRATIVE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La police administrative : finalités, autorités et modalités', 'Partie 1 - Chapitre 3 : La police administrative',
       'Distinction police administrative / judiciaire, finalités (ordre public, tranquillité, salubrité, sécurité), autorités compétentes et contrôle de proportionnalité.',
       array['Police administrative', 'Police judiciaire', 'Ordre public', 'Tranquillité publique', 'Salubrité publique', 'Sécurité publique', 'Proportionnalité', 'Police spéciale', 'Concours de police', 'Arrêt Benjamin'],
       27, 3,
$$
# La police administrative : finalités, autorités et modalités

## I. La distinction police administrative / police judiciaire

La **police administrative** est une activité préventive visant à maintenir l'ordre public **avant** la commission d'une infraction. La **police judiciaire** intervient **après** l'infraction pour en rechercher les auteurs.

> **TC, 1951, *Noualek*** : si l'opération est préventive → police administrative ; si elle est répressive → police judiciaire.

Cette distinction est fondamentale pour déterminer l'**ordre de juridiction compétent** : juge administratif pour la police administrative, juge judiciaire pour la police judiciaire.

## II. Les finalités de la police administrative

### A. L'ordre public classique (trilogie)

L'article **L2212-2 du CGCT** fixe les trois composantes traditionnelles :

| Composante | Contenu |
|---|---|
| **Tranquillité publique** | Prévention des troubles (bruit, attroupements) |
| **Sécurité publique** | Prévention des accidents et risques physiques |
| **Salubrité publique** | Protection de la santé et hygiène |

### B. Les extensions de l'ordre public

La jurisprudence a enrichi la notion :
- **Moralité publique** : l'administration peut interdire un spectacle contraire aux bonnes mœurs (**CE, 1959, *Société Les films Lutétia***).
- **Dignité de la personne humaine** : **CE, 1995, *Commune de Morsang-sur-Orge*** (lancer de nains) — la dignité fait partie de l'ordre public même en l'absence de trouble matériel.

### C. Les polices spéciales

Certaines polices sont organisées par des textes particuliers et confiées à des autorités spécifiques : police des étrangers, police des installations classées, police de l'eau. Elles **dérogent** aux règles générales et ne peuvent être exercées que par l'autorité désignée.

## III. Les autorités de police

### A. La police générale

- **Premier ministre** : pouvoir réglementaire de police sur tout le territoire (art. 21 C).
- **Préfet** : police générale au niveau du département.
- **Maire** : police générale sur le territoire communal (art. L2212-1 CGCT) — autorité de police la plus proche du citoyen.
- **Président du Conseil départemental / régional** : police de la circulation sur les routes départementales/régionales.

### B. Les concours de polices

Lorsque plusieurs autorités sont compétentes, les **mesures les plus restrictives** prévalent dès lors qu'une autorité inférieure peut **aggraver** une mesure nationale mais ne peut pas l'assouplir en dessous du minimum fixé par l'autorité supérieure.

## IV. Le contrôle des mesures de police

### A. Le principe de proportionnalité

Toute mesure de police doit être **nécessaire, adaptée et proportionnée** à la menace. C'est le cœur du contrôle du juge administratif.

> **CE, 1933, *Benjamin*** : le maire ne peut interdire une conférence que si le trouble à l'ordre public est **suffisamment grave** et ne peut être évité par des mesures moins attentatoires à la liberté.

### B. Le contrôle de l'erreur manifeste d'appréciation

Le juge vérifie que l'autorité n'a pas commis d'**erreur manifeste** dans l'appréciation de la nécessité de la mesure. Pour les libertés fondamentales, le contrôle est **entier** (plein contrôle de proportionnalité).

### C. L'interdiction générale et absolue

Une interdiction générale et absolue d'une activité légale est présumée **illégale** car disproportionnée — l'administration doit d'abord envisager des mesures moins restrictives.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 4 - LE SERVICE PUBLIC
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le service public : notion, statut et régime', 'Partie 1 - Chapitre 4 : Le service public',
       'Identification du service public, distinction SPA/SPIC, lois de Rolland (continuité, égalité, mutabilité) et modes de gestion.',
       array['Service public', 'SPA', 'SPIC', 'Lois de Rolland', 'Continuité', 'Égalité', 'Mutabilité', 'Régie', 'Établissement public', 'Délégation de service public'],
       26, 4,
$$
# Le service public : notion, statut et régime

## I. L'identification du service public

Le service public est une **activité d'intérêt général** prise en charge ou contrôlée par une **personne publique**.

### A. Les critères jurisprudentiels (faisceau d'indices — CE, 1963, *Narcy*)

1. L'activité répond à un **intérêt général**.
2. La personne publique **contrôle ou habilite** l'organisme.
3. L'organisme dispose de **prérogatives de puissance publique**.

> **CE, 2007, *APREI*** : même sans prérogatives de puissance publique, une personne privée peut gérer un SP si la personne publique lui a confié une mission d'intérêt général et exerce sur elle un contrôle étroit.

### B. La distinction SPA / SPIC

| | **SPA** (Service public administratif) | **SPIC** (Service public industriel et commercial) |
|---|---|---|
| **Objet** | Mission de puissance publique | Activité à caractère économique |
| **Financement** | Impôt / subvention | Redevances des usagers |
| **Régime** | Droit public | Droit privé (sauf actes d'organisation) |
| **Litiges usagers** | JA | JJ |
| **Exemples** | Enseignement public, police | EDF (avant), SNCF (activité commerciale) |

## II. Les lois de Rolland

Gaston Rolland a dégagé trois **principes communs** à tous les services publics :

### A. La continuité

Le service public doit fonctionner **sans interruption**. Ce principe justifie :
- La limitation du **droit de grève** dans les services essentiels.
- Le service minimum dans certains secteurs (transport, audiovisuel public).
- L'**exception d'inexécution** est exclue pour le cocontractant.

### B. L'égalité

Tous les usagers se trouvant dans une situation identique doivent être traités de la **même façon**. Ce principe autorise toutefois des **différenciations objectives** (tarifs sociaux, modulation selon les ressources).

> **CE, 1951, *Société des concerts du Conservatoire*** : toute discrimination entre usagers dans une situation comparable est illégale.

### C. La mutabilité (ou adaptabilité)

Le service public doit **s'adapter** à l'évolution des besoins et des techniques. L'usager n'a pas de droit acquis au maintien des modalités d'organisation du service.

## III. Les modes de gestion

### A. La gestion directe (régie)

La personne publique gère le service **avec ses propres moyens** (personnels, budget). Simple mais peut manquer de souplesse.

### B. L'établissement public

Personne morale de droit public **spécialisée** dans la gestion d'un service. Soumis aux principes de **spécialité** (ne peut agir que dans son domaine) et **d'autonomie** (budget propre).

### C. La délégation de service public (DSP)

Contrat par lequel une personne publique confie la gestion d'un SP à un **délégataire** rémunéré substantiellement par les **résultats de l'exploitation**. Deux formes principales :
- **Concession** : le concessionnaire finance les investissements.
- **Affermage** : les infrastructures sont fournies par la collectivité.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 5 - LA COMPÉTENCE JURIDICTIONNELLE ET LE TRIBUNAL DES CONFLITS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La compétence juridictionnelle et le tribunal des conflits', 'Partie 2 - Chapitre 1 : La compétence et le tribunal des conflits',
       'Répartition des compétences entre JA et JJ, rôle du tribunal des conflits, conflits positifs, négatifs et de décisions.',
       array['Tribunal des conflits', 'Conflit positif', 'Conflit négatif', 'Conflit de décisions', 'Clause générale de compétence', 'PFRLR', 'CC 1987 Conseil de la concurrence', 'Voie de fait', 'Emprise irrégulière', 'Bloc de compétence'],
       25, 5,
$$
# La compétence juridictionnelle et le tribunal des conflits

## I. La répartition des compétences

### A. La clause générale de compétence du juge administratif

Le juge administratif est compétent pour les litiges mettant en cause l'**activité administrative** des personnes publiques. Cette compétence est protégée par un **PFRLR** reconnu par le Conseil constitutionnel.

> **CC, 23 janvier 1987, *Conseil de la concurrence*** : le CC consacre un noyau dur de compétence du JA pour les actes de puissance publique, tout en reconnaissant que le législateur peut attribuer certains contentieux au JJ.

### B. Les limites : blocs de compétence judiciaire

Le **juge judiciaire** reste compétent pour :
- Les **voies de fait** : atteinte grave à une liberté fondamentale ou à la propriété privée manifestement insusceptible de se rattacher à un pouvoir légal (**TC, 2013, *Bergoend*** — définition resserrée).
- Les **emprises irrégulières** : dépossession irrégulière d'une propriété immobilière privée.
- La **liberté individuelle** (art. 66 C) : toute privation de liberté relève du JJ.
- Les **accidents de la circulation** causés par un véhicule d'une personne publique (loi du 31 décembre 1957).

## II. Le tribunal des conflits

### A. Composition et rôle

Le **tribunal des conflits (TC)** règle les conflits de compétence entre les deux ordres. Il est composé paritairement de membres du CE et de la Cour de cassation, présidé par le **garde des Sceaux** (ou par un membre élu en cas de partage).

### B. Les types de conflits

#### 1. Le conflit positif

L'administration (via le préfet) soulève l'incompétence du **juge judiciaire** qui s'est déclaré compétent. Procédure : déclinatoire de compétence → arrêté de conflit → saisine du TC.

#### 2. Le conflit négatif

Les deux ordres de juridiction **se déclarent successivement incompétents**. Le TC est saisi pour éviter un déni de justice. Depuis le décret de 1960, le justiciable peut prévenir ce risque en saisissant directement le TC après deux décisions d'incompétence.

#### 3. Le conflit de décisions (ou conflit sur le fond)

Les deux ordres rendent des **décisions définitives contradictoires** sur le fond, créant une situation impossible pour le justiciable. Le TC peut être saisi pour trancher (**loi du 20 avril 1932**).

## III. Les blocs de compétence

Pour éviter les conflits répétitifs, le législateur crée des **blocs de compétence** attribuant à un seul ordre l'ensemble du contentieux d'une matière. Ex. : le contentieux de la sécurité sociale au JJ, le contentieux fiscal au JA.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 6 - LE RECOURS POUR EXCÈS DE POUVOIR
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le recours pour excès de pouvoir (REP)', 'Partie 2 - Chapitre 3 : Le recours pour excès de pouvoir',
       'Ouverture du REP, les quatre cas d''ouverture (incompétence, vice de forme, violation de la loi, détournement de pouvoir) et leur classification.',
       array['REP', 'Incompétence', 'Vice de forme', 'Violation de la loi', 'Détournement de pouvoir', 'Légalité externe', 'Légalité interne', 'Erreur de droit', 'Erreur de fait', 'Recours objectif'],
       30, 6,
$$
# Le recours pour excès de pouvoir (REP)

## I. Présentation générale

Le **recours pour excès de pouvoir** est un recours par lequel un requérant demande au juge administratif d'**annuler** un acte administratif unilatéral illégal. C'est un **recours objectif** : il porte sur la légalité de l'acte, non sur les droits subjectifs du requérant.

### Conditions de recevabilité

- **Intérêt à agir** : le requérant doit justifier d'un intérêt suffisamment direct et certain à l'annulation de l'acte.
- **Délai** : 2 mois à compter de la publication ou notification de l'acte.
- **Décision préalable** : il faut une décision administrative à attaquer (règle de la décision préalable).
- **Acte faisant grief** : l'acte doit modifier l'ordonnancement juridique.

## II. Les cas d'ouverture

La jurisprudence a dégagé quatre **cas d'ouverture** classés en légalité externe et interne.

### A. La légalité externe

#### 1. L'incompétence

Vice le plus grave : l'acte a été pris par une autorité **qui n'en avait pas le pouvoir**. On distingue :
- **Incompétence ratione materiae** : l'auteur n'avait pas compétence pour cette matière.
- **Incompétence ratione loci** : l'auteur n'avait pas compétence sur ce territoire.
- **Incompétence ratione temporis** : l'auteur n'avait plus compétence à ce moment.
- **Usurpation de pouvoir** : forme la plus grave, l'acte est inexistant.

#### 2. Le vice de forme et de procédure

L'acte a été élaboré en **méconnaissance des règles de forme** (motivation, signature) ou de **procédure** (consultation obligatoire omise, procédure contradictoire non respectée).

> Le juge distingue les **formalités substantielles** (dont la méconnaissance entraîne l'annulation) des **formalités accessoires** (dont la méconnaissance est sans effet sur la légalité).

### B. La légalité interne

#### 3. La violation de la loi (au sens large)

L'acte méconnaît une **règle de droit** : Constitution, loi, règlement, PGD, traité. Plusieurs sous-cas :
- **Erreur de droit** : l'administration se fonde sur une règle qui ne lui est pas applicable ou en fait une mauvaise interprétation.
- **Erreur de fait** : les faits invoqués n'existent pas ou sont inexacts (**CE, 1916, *Camino*** — contrôle des faits).
- **Erreur manifeste d'appréciation** : les faits sont exacts mais leur qualification juridique est manifestement erronée.
- **Disproportion** : la mesure est disproportionnée par rapport au but poursuivi.

#### 4. Le détournement de pouvoir

L'administration a utilisé son pouvoir à une **fin étrangère** à celle pour laquelle il lui a été conféré (fin privée ou même fin d'intérêt général autre que celle prévue). Vice difficile à prouver.

> Ex. : un maire utilise son pouvoir de police pour évincer un concurrent commercial — détournement de pouvoir.

## III. Les pouvoirs du juge

En principe, le juge du REP ne peut qu'**annuler** ou **rejeter** le recours. Depuis **CE, 2007, *Société Tropic Travaux Signalisation***, les tiers peuvent aussi obtenir l'annulation d'un contrat administratif par la voie du recours en contestation de validité.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 7 - LA RESPONSABILITÉ POUR FAUTE DE L'ADMINISTRATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité pour faute de l''administration', 'Partie 2 - Chapitres 4 et 5 : La responsabilité pour faute',
       'Conditions de la responsabilité administrative, faute de service vs faute personnelle, cumuls de fautes et action récursoire.',
       array['Faute de service', 'Faute personnelle', 'Préjudice', 'Lien de causalité', 'Cumul de fautes', 'Cumul de responsabilités', 'Action récursoire', 'Arrêt Lemonnier', 'Arrêt Laruelle', 'Faute lourde'],
       28, 7,
$$
# La responsabilité pour faute de l'administration

## I. Les conditions générales de la responsabilité

La responsabilité administrative pour faute repose sur trois conditions cumulatives :

| Condition | Contenu |
|---|---|
| **Faute** | Fait illicite imputable à l'administration |
| **Préjudice** | Dommage certain, direct et évaluable |
| **Lien de causalité** | Lien direct entre la faute et le préjudice |

### A. Le préjudice indemnisable

Le préjudice doit être :
- **Certain** : actuel ou futur mais certain dans sa réalisation.
- **Direct** : résultant directement de la faute.
- **Personnel** : subi par le requérant lui-même.
- **Évaluable en argent** : préjudice matériel ou moral.

Ne sont pas indemnisables : le préjudice éventuel, le préjudice résultant d'une situation illégale du requérant, le préjudice purement hypothétique.

## II. La faute de service

### A. Notion

La **faute de service** est celle commise par un agent dans l'exercice de ses fonctions, **au nom et pour le compte de l'administration**. Elle engage la responsabilité de l'**État**, et non de l'agent personnellement.

### B. La faute lourde

Certaines activités régaliennes difficiles n'engagent la responsabilité de l'État que pour **faute lourde** : activités de police judiciaire (abandon progressif), tutelle administrative. La jurisprudence tend à abandonner l'exigence de faute lourde au profit de la simple faute de service.

> **CE, 1992, *Époux V.*** : abandon de la faute lourde en matière médicale hospitalière → **faute simple** suffit.

## III. La faute personnelle

### A. Notion (Laferrière)

La **faute personnelle** révèle l'**homme avec ses faiblesses, ses passions, ses imprudences** — elle est détachable du service. Elle engage la responsabilité **personnelle de l'agent** devant le juge judiciaire.

### B. Critères de distinction

| Faute de service | Faute personnelle |
|---|---|
| Acte dans l'exercice des fonctions | Acte sans lien avec le service |
| Motivation liée au service | Motivation personnelle (animosité, intérêt privé) |
| Acte non dépourvu de tout lien avec le service | Acte commis en dehors du service |

## IV. Les cumuls

### A. Le cumul de fautes (**CE, 1918, *Époux Lemonnier***)

Lorsqu'une même action constitue à la fois une **faute de service** et une **faute personnelle**, la victime peut poursuivre l'administration ou l'agent. La victime ne peut obtenir qu'une seule indemnisation mais peut choisir son débiteur.

### B. Le cumul de responsabilités (**CE, 1949, *Mimeur***)

Même en l'absence de faute de service caractérisée, si la faute personnelle a été commise **avec les moyens du service** ou n'est **pas dépourvue de tout lien avec le service**, la responsabilité de l'administration peut également être engagée.

### C. L'action récursoire (**CE, 1951, *Laruelle et Delville***)

Après avoir indemnisé la victime, l'administration peut se **retourner contre l'agent** fautif pour obtenir remboursement de tout ou partie des sommes versées. L'agent peut aussi, s'il a payé, se retourner contre l'administration.
$$
from public.subjects where slug = 'l2-droit-administratif-2';

-- =====================================================================
-- FICHE 8 - LA RESPONSABILITÉ SANS FAUTE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité sans faute de l''administration', 'Partie 2 - Chapitre 6 : La responsabilité sans faute',
       'Responsabilité pour rupture d''égalité devant les charges publiques, responsabilité pour risque (choses dangereuses, méthodes, voisinage, collaborateurs).',
       array['Responsabilité sans faute', 'Égalité devant les charges publiques', 'Responsabilité pour risque', 'Choses dangereuses', 'Méthodes dangereuses', 'Voisinage', 'Collaborateurs occasionnels', 'Préjudice anormal et spécial', 'CE Cames 1895', 'Rupture d''égalité'],
       27, 8,
$$
# La responsabilité sans faute de l'administration

## I. Présentation générale

La **responsabilité sans faute** permet à une victime d'obtenir réparation **sans avoir à prouver une faute** de l'administration. Elle repose sur deux fondements :
1. La **rupture d'égalité devant les charges publiques** : certains particuliers supportent un préjudice anormal et spécial que les autres ne supportent pas.
2. Le **risque** : l'administration crée un risque particulier dont elle doit assumer les conséquences.

## II. La responsabilité pour rupture d'égalité devant les charges publiques

### A. Les conditions

Pour engager cette responsabilité, le préjudice doit être :
- **Anormal** : d'une gravité excédant les inconvénients ordinaires de la vie en société.
- **Spécial** : touchant un individu ou un groupe limité et déterminable — non partagé par tous.

### B. Le fait du législateur et des conventions internationales

- **Loi** : une loi peut causer un préjudice anormal et spécial indemnisable si le législateur n'a pas entendu l'exclure (**CE, 1938, *Société La Fleurette***).
- **Conventions internationales** : la méconnaissance d'une convention internationale par l'État engage sa responsabilité sans faute (**CE, 1966, *Compagnie générale d'énergie radio-électrique***).

### C. Les décisions administratives régulières

Même une **décision légale** peut engager la responsabilité sans faute si elle cause un préjudice anormal et spécial à un particulier (ex. refus de concours de la force publique pour exécuter une décision de justice — **CE, 1923, *Couitéas***).

## III. La responsabilité pour risque

### A. Les choses et activités dangereuses

L'administration engage sa responsabilité sans faute pour les dommages causés par des **choses ou activités présentant un risque exceptionnel** pour les tiers.

> **CE, 1919, *Regnault-Desroziers*** : explosion d'un dépôt de grenades militaires → responsabilité sans faute pour risque exceptionnel.

> **CE, 1952, *Bertrand*** : les **engins explosifs** abandonnés engagent la responsabilité de l'État même sans faute.

### B. Les méthodes dangereuses

L'administration engage sa responsabilité pour les dommages causés par des **méthodes pénitentiaires ou de traitement** présentant un risque (liberté surveillée, semi-liberté, permissions de sortie…).

> **CE, 1956, *Thouzellier*** : dommage causé par un mineur délinquant en liberté surveillée → responsabilité pour risque de méthode.

### C. Le voisinage des ouvrages publics

Les riverains d'un **ouvrage public** qui subissent des troubles anormaux de voisinage peuvent obtenir réparation sans prouver de faute — responsabilité de plein droit pour dommages de travaux publics.

### D. Les collaborateurs bénévoles et occasionnels du service public

**CE, 1895, *Cames*** : premier arrêt de responsabilité sans faute — ouvrier blessé dans un arsenal militaire.

La responsabilité sans faute est engagée envers :
- Les **collaborateurs occasionnels** requis ou spontanés qui participent à une mission de service public (**CE, 1946, *Commune de Saint-Priest-la-Plaine***).
- Les **victimes de dommages de travaux publics** (tiers ou usagers selon les conditions).

## IV. Tableau récapitulatif

| Régime | Fondement | Conditions clés |
|---|---|---|
| Rupture d'égalité | Sacrifice particulier | Préjudice anormal + spécial |
| Choses dangereuses | Risque exceptionnel | Lien avec la chose dangereuse |
| Méthodes dangereuses | Risque de méthode | Méthode libérale de l'admin |
| Collaborateurs | Participation au SP | Réquisition ou collaboration admise |
$$
from public.subjects where slug = 'l2-droit-administratif-2';
