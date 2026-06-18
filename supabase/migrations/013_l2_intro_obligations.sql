-- =====================================================================
-- JurisPrép - Cours complet : Introduction au droit des obligations
-- et obligations extracontractuelles (L2 S1)
-- 8 fiches très approfondies avec code couleur
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles');

-- =====================================================================
-- FICHE 1 - THÉORIE GÉNÉRALE DE L''OBLIGATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Théorie générale de l''obligation', 'Chapitre 1 - Notion et classifications',
       'Définition, éléments, sources, classifications des obligations, distinctions essentielles.',
       array['Obligation', 'Lien de droit', 'Créancier', 'Débiteur', 'Prestation', 'Article 1100 C. civ.', 'Acte juridique', 'Fait juridique', 'Obligation de moyens', 'Obligation de résultat', 'Obligation civile / naturelle'],
       30, 1,
'# Théorie générale de l''obligation

## Introduction

Le **droit des obligations** est le **cœur du droit civil**, la matière reine que tout juriste doit maîtriser. Comme le résumait **Carbonnier**, *« le droit des obligations est la grammaire du droit »* : il fournit les concepts, les outils, les raisonnements qui irriguent l''ensemble du droit privé (contrats, responsabilité, sûretés, droit commercial, droit du travail) et, dans une large mesure, le droit public (contrats administratifs, responsabilité administrative).

Cette matière a été profondément réformée par l''**ordonnance n° 2016-131 du 10 février 2016** portant réforme du droit des contrats, du régime général et de la preuve des obligations, **ratifiée par la loi du 20 avril 2018**. Pour la première fois depuis `1804`, le titre III du livre III du Code civil a été entièrement réécrit. Le **plan moderne** distingue trois grands volets : la **formation et l''exécution du contrat** (art. 1101 à 1231-7), la **responsabilité extracontractuelle** (art. 1240 à 1252) et le **régime général des obligations** (art. 1300 et s.).

> **Définition** : L''**obligation** est un **lien de droit** (*vinculum juris*) par lequel une ou plusieurs personnes, le ou les **débiteurs**, sont tenues d''une **prestation** (de faire, de ne pas faire, ou de donner) envers une ou plusieurs autres, le ou les **créanciers**.

## I. Les éléments constitutifs de l''obligation

### A. Un lien de droit

#### Origine romaine
La formule classique vient des **Institutes de Justinien** (533) : *« Obligatio est juris vinculum, quo necessitate adstringimur alicujus solvendae rei. »* (« L''obligation est un lien de droit par lequel nous sommes contraints de payer quelque chose. »)

#### Caractère contraignant
L''obligation est **juridiquement sanctionnée** :
- Exécution forcée (`art. 1221 C. civ.`)
- Dommages et intérêts (`art. 1217 C. civ.`)
- Saisie du débiteur récalcitrant

#### Distinction avec le devoir moral
- Le **devoir moral** n''est pas juridiquement sanctionné
- L''**obligation naturelle** est intermédiaire : non exécutoire en justice, mais transformable en obligation civile par engagement unilatéral (`art. 1100 al. 2 C. civ.`)

### B. Les sujets de l''obligation

#### Le créancier
**Titulaire** d''un droit de créance, il peut exiger l''exécution de la prestation. C''est un **droit personnel** (par opposition au droit réel sur une chose).

#### Le débiteur
**Tenu** d''une prestation envers le créancier. Son patrimoine est le **gage commun de ses créanciers** (`art. 2284 C. civ.`).

#### Pluralité possible
- **Pluralité passive** : plusieurs débiteurs (codébiteurs)
- **Pluralité active** : plusieurs créanciers (cocréanciers)
- Régime de la **solidarité** ou de la **division** des dettes (`art. 1309 et s. C. civ.`)

### C. L''objet : la prestation

#### Article 1163 C. civ.
> *« L''obligation a pour objet une prestation présente ou future. Celle-ci doit être possible et déterminée ou déterminable. »*

#### Typologie classique
- **Obligation de donner** (*dare*) : transférer la propriété
- **Obligation de faire** (*facere*) : accomplir une prestation
- **Obligation de ne pas faire** (*non facere*) : s''abstenir

#### Suppression partielle de la trichotomie
La réforme de 2016 a **partiellement abandonné** cette distinction romaine, le transfert de propriété étant désormais analysé comme un effet du contrat plus qu''une obligation autonome (`art. 1196 C. civ.`).

## II. Les sources des obligations

### A. Article 1100 C. civ. (nouveau)

> *« Les obligations naissent d''actes juridiques, de faits juridiques ou de l''autorité seule de la loi. »*

### B. Les actes juridiques

#### Définition - Article 1100-1 C. civ.
> *« Les actes juridiques sont des manifestations de volonté destinées à produire des effets de droit. »*

#### Catégories
- **Conventions** : accord de volontés (contrats)
- **Actes unilatéraux** : volonté d''une seule personne (testament, reconnaissance d''enfant, démission)
- **Actes collectifs** : décisions d''assemblée

### C. Les faits juridiques

#### Définition - Article 1100-2 C. civ.
> *« Les faits juridiques sont des agissements ou des événements auxquels la loi attache des effets de droit. »*

#### Exemples
- **Délit / quasi-délit** : faute causant un dommage → responsabilité civile (`art. 1240 C. civ.`)
- **Quasi-contrat** : gestion d''affaires, paiement de l''indu, enrichissement injustifié (`art. 1300 et s. C. civ.`)
- **Événements naturels** : naissance, décès, écoulement du temps

### D. La loi seule

Certaines obligations naissent **directement** d''un texte sans acte ni fait juridique préalable :
- **Obligation alimentaire** entre époux et parents (`art. 203, 205, 212 C. civ.`)
- **Obligation fiscale**
- **Obligation de cotiser** aux régimes sociaux

## III. Les classifications des obligations

### A. Selon la source

| Source | Régime | Exemples |
|--------|--------|----------|
| **Contractuelle** | Art. 1101 à 1231-7 | Vente, bail, prêt |
| **Extracontractuelle** | Art. 1240 à 1252 | Accident, diffamation |
| **Quasi-contractuelle** | Art. 1300 et s. | Gestion d''affaires |
| **Légale** | Texte spécial | Alimentaire, fiscale |

### B. Selon l''objet

#### Obligation de moyens
- Le débiteur s''engage à **mettre en œuvre les diligences** nécessaires
- Pas de garantie de résultat
- Faute = **non-respect** des diligences raisonnables
- Exemple : **médecin** (sauf prothèses), **avocat**

#### Obligation de résultat
- Le débiteur s''engage à **atteindre un résultat précis**
- Faute = **non-atteinte** du résultat (présomption)
- Exemple : **transporteur** (sécurité du voyageur), **vendeur** (délivrance)

#### Obligation de résultat atténuée
- Présomption simple, renversable
- Exemple : **réparateur**

#### Obligation de garantie
- Engagement **absolu** : aucune exonération possible (sauf force majeure définie strictement)
- Exemple : **vendeur** au titre des vices cachés (`art. 1641 C. civ.`)

> **Origine doctrinale** : la distinction moyens/résultat est due à **René Demogue** (`Traité des obligations`, 1925).

### C. Selon les sujets

- **Obligation à un seul débiteur / créancier** (simple)
- **Obligation à plusieurs débiteurs / créanciers**
  - **Conjointe** (division de plein droit, sauf indivisibilité)
  - **Solidaire** (chacun pour le tout)
  - **In solidum** (jurisprudentielle, en matière délictuelle)

### D. Selon la force obligatoire

#### Obligation civile
- **Exécutoire** en justice
- Sanction publique

#### Obligation naturelle
- **Non exécutoire** mais juridiquement reconnue
- **Article 1100 al. 2 C. civ.** : *« Elles peuvent naître de l''exécution volontaire ou de la promesse d''exécution d''un devoir de conscience envers autrui. »*
- Une fois payée, **pas de répétition** (`art. 1302 al. 2 C. civ.`)
- Exemple : aide à un parent éloigné, dette prescrite

### E. Obligations à exécution instantanée / successive

- **Exécution instantanée** : payée en une fois (vente, prêt)
- **Exécution successive** : prestations répétées dans le temps (bail, abonnement)
- Conséquences sur la **résolution** (rétroactive en principe pour l''instantanée, sans rétroactivité pour la successive)

## IV. La place du droit des obligations

### A. Une matière fondamentale

#### Importance théorique
- **Architecture** du droit privé
- **Concepts** transversaux : autonomie de la volonté, bonne foi, faute, dommage, causalité

#### Importance pratique
- Tout litige civil mobilise le droit des obligations
- Base du droit commercial, du droit du travail, du droit de la consommation

### B. Une matière en évolution

#### La réforme de 2016
- **Modernisation** du Code civil
- **Codification** de la jurisprudence (cause, théorie de l''imprévision)
- **Inspiration** européenne (Principes Lando, principes Unidroit, projet Catala)

#### Les évolutions à venir
- **Responsabilité civile** : avant-projet de réforme (Sénat, 2020)
- Adaptation au **numérique** (contrats algorithmiques, plateformes)
- Européanisation (CESL, droit commun européen de la vente — abandonné en 2014)

### C. Influences internationales

- **Convention de Vienne** sur la vente internationale de marchandises (1980)
- **Principes Unidroit** des contrats commerciaux internationaux
- **Principes Lando** du droit européen des contrats
- **DCFR** (Draft Common Frame of Reference)

## V. Distinctions essentielles

### A. Droit personnel vs droit réel

| | Droit personnel | Droit réel |
|---|---|---|
| **Objet** | Prestation d''une personne | Chose |
| **Opposabilité** | Au débiteur | Erga omnes |
| **Suite** | Non | Oui (droit de suite) |
| **Préférence** | Non (sauf privilège) | Oui (droit de préférence) |
| **Exemple** | Créance | Propriété, usufruit |

### B. Patrimoine et obligations

#### Patrimoine - Théorie d''Aubry et Rau
- **Universalité** juridique de droit
- Toute personne a un patrimoine et un seul
- Le patrimoine comprend **actif** (biens et créances) et **passif** (dettes)

#### Gage commun - Article 2284 C. civ.
> *« Quiconque s''est obligé personnellement est tenu de remplir son engagement sur tous ses biens mobiliers et immobiliers, présents et à venir. »*

#### Exceptions et atténuations
- **Patrimoine d''affectation** : EIRL (supprimée en 2022), fiducie
- **Insaisissabilité** : résidence principale de l''entrepreneur individuel (`art. L. 526-1 C. com.`)
- **Statut** d''entrepreneur individuel à responsabilité limitée (loi du 14 février 2022)

## Conclusion

Le droit des obligations est une matière **technique** et **conceptuelle** à la fois. Sa maîtrise suppose :
- L''assimilation d''un **vocabulaire précis** (créancier, débiteur, prestation, exécution)
- La compréhension de la **summa divisio** acte / fait juridique
- La connaissance des **classifications** (objet, sujets, source)
- La capacité à **qualifier** une situation pour lui appliquer le bon régime

La **réforme de 2016** a modernisé le Code civil tout en préservant ses fondamentaux. Le droit des obligations reste la **matrice** du droit privé français, irriguant l''ensemble des disciplines juridiques.'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 2 - LES SOURCES DES OBLIGATIONS ET LEUR HIÉRARCHIE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les sources des obligations', 'Chapitre 2 - Sources et hiérarchie',
       'Acte juridique, fait juridique, loi : panorama des sources et leur articulation.',
       array['Acte juridique', 'Fait juridique', 'Quasi-contrat', 'Article 1100 C. civ.', 'Liberté contractuelle', 'Autonomie de la volonté', 'Force obligatoire', 'Article 1103 C. civ.'],
       28, 2,
'# Les sources des obligations et leur hiérarchie

## Introduction

Comprendre **d''où viennent** les obligations est essentiel : la source détermine le **régime juridique** applicable (preuve, exécution, prescription, sanctions). La **réforme de 2016** a clarifié cette question en consacrant les articles `1100` à `1100-2 C. civ.`, qui distinguent **trois sources** : les **actes juridiques**, les **faits juridiques** et l''**autorité de la loi**.

> **Citation** : *« La source de l''obligation, c''est sa cause efficiente, ce qui lui donne naissance et fixe son régime. »* (Henri Capitant)

## I. Les actes juridiques

### A. Définition et classifications

#### Article 1100-1 al. 1 C. civ.
> *« Les actes juridiques sont des manifestations de volonté destinées à produire des effets de droit. Ils peuvent être conventionnels ou unilatéraux. »*

#### Classifications
- Selon le **nombre de parties** : unilatéral, bilatéral, plurilatéral
- Selon la **finalité** : à titre onéreux / gratuit
- Selon la **forme** : consensuel, solennel, réel
- Selon les **effets** : translatif, constitutif, déclaratif

### B. Le contrat : modèle de l''acte juridique

#### Article 1101 C. civ.
> *« Le contrat est un accord de volontés entre deux ou plusieurs personnes destiné à créer, modifier, transmettre ou éteindre des obligations. »*

#### Principes fondateurs
- **Liberté contractuelle** (`art. 1102 C. civ.`)
- **Force obligatoire** (`art. 1103 C. civ.`)
- **Bonne foi** (`art. 1104 C. civ.`)

#### Typologie - Articles 1106 à 1111-1 C. civ.
- **Synallagmatique / unilatéral** (`art. 1106`)
- **À titre onéreux / gratuit** (`art. 1107`)
- **Commutatif / aléatoire** (`art. 1108`)
- **Consensuel / solennel / réel** (`art. 1109`)
- **De gré à gré / d''adhésion** (`art. 1110`)
- **Cadre / d''application** (`art. 1111`)
- **À exécution instantanée / successive** (`art. 1111-1`)

### C. Les actes unilatéraux

#### Article 1100-1 al. 2 C. civ.
> *« Ils obéissent, en tant que de raison, pour leur validité et leurs effets, aux règles qui gouvernent les contrats. »*

#### Exemples
- **Testament** (`art. 967 C. civ.`)
- **Reconnaissance d''enfant** (`art. 316 C. civ.`)
- **Démission** (du salarié, d''un mandataire)
- **Promesse de récompense**
- **Engagement unilatéral de volonté**

#### Régime
Application **par analogie** des règles contractuelles (capacité, vices du consentement, forme requise).

### D. Actes collectifs

- **Décisions** d''assemblée générale (associés, copropriétaires)
- **Conventions collectives** de travail
- **Délibérations** des conseils municipaux, conseils d''administration

## II. Les faits juridiques

### A. Définition - Article 1100-2 C. civ.

> *« Les faits juridiques sont des agissements ou des événements auxquels la loi attache des effets de droit. Les obligations qui naissent d''un fait juridique sont régies, selon le cas, par le sous-titre relatif à la responsabilité extracontractuelle ou le sous-titre relatif aux autres sources d''obligations. »*

### B. Les délits et quasi-délits civils

#### Distinction historique
- **Délit civil** : fait illicite **intentionnel** (`anc. art. 1382 C. civ.`)
- **Quasi-délit** : fait illicite **non intentionnel** (`anc. art. 1383 C. civ.`)

#### Réforme de 2016
La distinction subsiste mais perd de son utilité : la **responsabilité civile** est unifiée autour de la **faute** sans distinguer son caractère intentionnel.

#### Articles 1240 et 1241 C. civ.
- **Art. 1240** : *« Tout fait quelconque de l''homme, qui cause à autrui un dommage, oblige celui par la faute duquel il est arrivé à le réparer. »*
- **Art. 1241** : *« Chacun est responsable du dommage qu''il a causé non seulement par son fait, mais encore par sa négligence ou par son imprudence. »*

### C. Les quasi-contrats

#### Article 1300 C. civ.
> *« Les quasi-contrats sont des faits purement volontaires dont il résulte un engagement de celui qui en profite sans y avoir droit, et parfois un engagement de leur auteur envers autrui. »*

#### Les trois quasi-contrats codifiés
- **Gestion d''affaires** (`art. 1301 à 1301-5`)
- **Paiement de l''indu** (`art. 1302 à 1302-3`)
- **Enrichissement injustifié** (`art. 1303 à 1303-4`)

#### Gestion d''affaires
- Gérer **spontanément** l''affaire d''autrui sans mandat
- Conditions : intervention volontaire, utilité, absence d''opposition du maître
- Effets : obligations réciproques (gérant doit poursuivre, maître doit indemniser)

#### Paiement de l''indu
- Paiement **sans cause** (par erreur)
- **Répétition** (remboursement) sauf obligation naturelle
- *Solvens* (qui a payé) / *accipiens* (qui a reçu)

#### Enrichissement injustifié
- **Codification** de la jurisprudence *Patureau-Miran* (Req., 15 juin 1892)
- **Conditions** : enrichissement, appauvrissement corrélatif, absence de cause, **subsidiarité**
- **Indemnité** = moindre des deux sommes

### D. Les événements purs

Certains faits **non-volontaires** créent des obligations :
- **Naissance** : autorité parentale, obligation alimentaire
- **Décès** : ouverture de la succession, transmission des dettes
- **Mariage** : devoirs entre époux, obligation alimentaire
- **Voisinage** : trouble anormal de voisinage (jurisprudentiel)

## III. La loi seule

### A. Obligations légales pures

#### Sans acte ni fait préalable
Certaines obligations naissent **directement** d''un texte :
- **Obligation alimentaire** entre époux (`art. 212 C. civ.`)
- **Obligation alimentaire** entre parents et enfants (`art. 203, 205 C. civ.`)
- **Cotisation** sociale obligatoire
- **Impôt** et taxes

### B. Articulation avec d''autres sources

#### La loi est souvent **médiate**
Elle attache des effets à un acte (contrat) ou à un fait (délit). Dans ce cas, la **source immédiate** est l''acte ou le fait, et la loi est **source médiate**.

#### L''autorité de la loi seule
Quand la loi crée elle-même l''obligation sans support, on parle d''**obligation légale au sens strict** (cf. art. 1100 al. 1 C. civ.).

## IV. La hiérarchie des sources

### A. Importance quantitative

#### Sources majoritaires
- **Contrat** : source la plus fréquente (vente, bail, prêt, travail, services)
- **Responsabilité civile** : également très fréquente (accidents)

#### Sources minoritaires
- **Quasi-contrats** : rares mais utiles (paiements par erreur, gestion d''affaires)
- **Obligations légales** : alimentaires, fiscales

### B. Importance théorique

#### Le contrat reste central
- **Modèle** dont s''inspirent les autres sources
- **Liberté** et **autonomie** : valeurs fondatrices du droit privé

#### Évolution de la responsabilité
- **Émergence** : XIXe siècle (industrialisation, accidents)
- **Objectivation** : moins de faute, plus de risque, plus de garantie
- **Socialisation** : assurances, fonds d''indemnisation

### C. Conséquences pratiques de la qualification

#### Sur la preuve
- **Acte juridique** : preuve par écrit au-delà de `1 500 €` (`art. 1359 C. civ.`)
- **Fait juridique** : preuve par tous moyens

#### Sur la prescription
- **Délai de droit commun** : `5 ans` (`art. 2224 C. civ.`)
- **Dommages corporels** : `10 ans` à compter de la consolidation (`art. 2226 C. civ.`)
- **Action en garantie des vices cachés** : `2 ans` (`art. 1648 C. civ.`)

#### Sur la juridiction compétente
- Contrats : tribunal du lieu d''exécution ou du défendeur
- Délits : tribunal du fait dommageable

#### Sur la loi applicable (DIP)
- **Contrat** : règlement Rome I (loi choisie ou loi du débiteur de la prestation caractéristique)
- **Délit** : règlement Rome II (loi du lieu du dommage)

## V. La frontière acte / fait juridique

### A. Une distinction cardinale

#### Pour la preuve
La distinction est **essentielle** : un contrat de prêt de `5 000 €` doit être prouvé par écrit, un accident de voiture peut être prouvé par témoins.

#### Pour le régime
La qualification entraîne des régimes radicalement différents (responsabilité contractuelle vs délictuelle).

### B. Zones grises

#### L''engagement unilatéral de volonté
- Reconnu progressivement par la jurisprudence
- Codifié à `art. 1100-1 C. civ.`
- Exemple : promesse de récompense

#### La responsabilité précontractuelle
- Avant la formation du contrat : **faute délictuelle** (`art. 1240 C. civ.`)
- Codification : `art. 1112 C. civ.` (rupture des pourparlers)

#### La responsabilité postcontractuelle
- Après la fin du contrat : possible **survie** de certaines obligations (confidentialité, non-concurrence)

### C. Le principe de non-cumul

#### Règle jurisprudentielle (Civ., 11 janvier 1922)
**Impossibilité** d''invoquer la responsabilité délictuelle contre son cocontractant pour un dommage lié à l''inexécution du contrat.

#### Exceptions
- **Tiers** : peut invoquer la responsabilité délictuelle (et même contractuelle depuis *Bootshop*, Ass. plén., 6 octobre 2006)
- **Dol** : possibilité de cumul (jurisprudence ancienne, débattue)

## Conclusion

La question des **sources des obligations** structure la matière. La réforme de 2016 a clarifié la **trichotomie** acte/fait/loi tout en maintenant la **prééminence du contrat** comme modèle. La distinction **acte vs fait juridique** détermine le régime probatoire et substantiel, et constitue donc un **réflexe** indispensable pour le juriste.'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 3 - RESPONSABILITÉ CIVILE : VUE D''ENSEMBLE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Responsabilité civile : vue d''ensemble', 'Chapitre 3 - Présentation de la responsabilité',
       'Définition, fondements, fonctions, évolution historique, classifications de la responsabilité civile.',
       array['Responsabilité civile', 'Article 1240 C. civ.', 'Faute', 'Risque', 'Garantie', 'Fonction indemnitaire', 'Réforme à venir', 'Responsabilité du fait personnel', 'Responsabilité du fait d''autrui', 'Responsabilité du fait des choses'],
       30, 3,
'# Responsabilité civile : vue d''ensemble

## Introduction

La **responsabilité civile** est l''**obligation de réparer** un dommage causé à autrui. Elle est l''une des deux grandes sources d''obligations avec le contrat, et elle occupe une place centrale dans la vie sociale : tout dommage subi, qu''il s''agisse d''un accident de la circulation, d''une chute, d''une diffamation, d''une faute professionnelle, d''un produit défectueux, soulève la question de sa réparation.

La responsabilité civile française repose sur les articles `1240` à `1252 C. civ.`, hérités pour l''essentiel des articles `1382` à `1386` du Code Napoléon de `1804`. Si ces textes — dans leur structure — ont peu évolué depuis 1804, leur **interprétation jurisprudentielle** a connu une évolution **considérable**, sous l''influence des transformations économiques et sociales (industrialisation, automobile, médecine, internet, environnement). Un **avant-projet de réforme** de la responsabilité civile a été rendu public en mars 2017 puis amendé en 2020.

> **Citation** : *« Toute la responsabilité civile s''ordonne autour de quatre questions : qui ? quoi ? comment ? pourquoi ? »* (Geneviève Viney)

## I. Définition et notions voisines

### A. Définition

#### Responsabilité civile
Obligation de **réparer** un dommage causé à autrui par sa **faute**, par le fait d''une **chose** dont on a la garde ou par le fait d''une **personne** dont on doit répondre.

#### Étymologie
Du latin *respondere* (« répondre »). La responsabilité, c''est devoir **répondre** de ses actes.

### B. Distinction avec la responsabilité pénale

| | Responsabilité civile | Responsabilité pénale |
|---|---|---|
| **Finalité** | Réparer | Punir |
| **Action** | Victime | Société (ministère public) |
| **Sanction** | Dommages et intérêts | Peine (prison, amende) |
| **Faute** | Toute faute, même légère | Infraction définie par la loi |
| **Principe** | Réparation intégrale | Légalité des délits et peines |

### C. Distinction avec la responsabilité administrative

- **Responsabilité administrative** : compétence du **juge administratif** (`TC, Blanco, 1873`)
- **Critères** : implication d''une personne publique, mission de service public, prérogatives de puissance publique
- **Régime** : autonome (jurisprudence du CE)

### D. Distinction avec la responsabilité contractuelle

#### Sources
- **Contractuelle** : naît de l''**inexécution** du contrat (`art. 1231-1 C. civ.`)
- **Extracontractuelle** : naît d''un **fait juridique** dommageable (`art. 1240 C. civ.`)

#### Régimes différents
- **Mise en demeure** : nécessaire en contractuel, non en délictuel
- **Prévisibilité** : seul le dommage prévisible est réparé en contractuel (`art. 1231-3 C. civ.`), sauf dol ou faute lourde
- **Clauses limitatives** : valides en contractuel (sauf exceptions), nulles en délictuel

#### Principe de non-cumul (Civ., 11 janvier 1922)
Le cocontractant ne peut invoquer la responsabilité délictuelle pour un dommage contractuel.

## II. Les fonctions de la responsabilité civile

### A. Fonction indemnitaire (principale)

#### Réparation intégrale
- **Principe directeur** : remettre la victime dans la situation où elle se serait trouvée sans le dommage
- *Restitutio in integrum*
- Pas de **réparation moindre**, pas de **réparation supérieure**

#### Indifférence à la gravité de la faute
**Toute faute** entraîne réparation **intégrale**, quelle que soit son intensité (légère, lourde, intentionnelle).

### B. Fonction normative

#### Régulation des comportements
La responsabilité civile **dissuade** les comportements dommageables et **incite** à la prudence.

#### Fonction préventive
Renforcement contemporain : actions préventives, référé, mesures de cessation, principe de précaution.

### C. Fonction punitive (marginale)

#### Principe : refus traditionnel
Les **dommages et intérêts punitifs** (*punitive damages*) sont en principe **étrangers** au droit français.

#### Exceptions et évolutions
- **Astreinte** (fonction comminatoire)
- **Article 700 CPC** (frais irrépétibles)
- **Avant-projet 2017** : amende civile en cas de faute lucrative

### D. Fonction de socialisation des risques

#### Assurance
- **Assurance obligatoire** : automobile, RC professionnelle
- **Étalement** du coût social du dommage
- **Solvabilisation** du responsable

#### Fonds d''indemnisation
- **FGAO** (Fonds de garantie automobile)
- **FGTI** (Fonds de garantie des victimes d''infractions)
- **ONIAM** (Office national d''indemnisation des accidents médicaux)
- **FIVA** (Fonds d''indemnisation des victimes de l''amiante)

## III. Les fondements de la responsabilité civile

### A. La théorie de la faute (XIXe siècle)

#### Article 1382 ancien C. civ.
> *« Tout fait quelconque de l''homme, qui cause à autrui un dommage, oblige celui par la faute duquel il est arrivé à le réparer. »*

#### Fondement moral
- Responsabilité = **conséquence de la liberté**
- *« Tu es responsable parce que tu es libre »* (philosophie kantienne)

#### Limites
- Inadapté aux accidents **industriels** (XIXe siècle)
- **Victimes** sans réparation (faute non prouvée)
- Évolution nécessaire

### B. La théorie du risque (fin XIXe)

#### Auteurs
- **Saleilles**, *Les accidents du travail et la responsabilité civile* (1897)
- **Josserand**, *De la responsabilité du fait des choses inanimées* (1897)

#### Idée centrale
- Celui qui **crée un risque** doit en **assumer les conséquences**, indépendamment de toute faute
- *Ubi emolumentum, ibi onus* (« là où est le profit, là est la charge »)

#### Variantes
- **Risque-profit** : assumer les risques liés à l''activité génératrice de bénéfices
- **Risque créé** : assumer les risques que l''on a créés
- **Risque-autorité** : assumer les risques de ceux que l''on dirige

### C. La théorie de la garantie

#### Auteur
**Boris Starck**, *Essai d''une théorie générale de la responsabilité civile* (1947).

#### Idée
- Le droit à la **sécurité** des victimes prime
- La responsabilité **garantit** ce droit
- Approche **objectivée** centrée sur la victime

### D. Le pluralisme contemporain

Aucune théorie unique n''explique toute la responsabilité civile. Le droit contemporain est **pluraliste** :
- **Faute** : responsabilité du fait personnel (`art. 1240, 1241`)
- **Risque/garantie** : responsabilité du fait des choses (`art. 1242 al. 1`), responsabilité des produits défectueux (`art. 1245 et s.`)
- **Garantie** : responsabilité du fait d''autrui (`art. 1242`)

## IV. L''évolution historique

### A. Le droit romain

#### Loi Aquilia (286 av. J.-C.)
**Premier texte** structurant la responsabilité délictuelle pour les dommages aux esclaves et au bétail. Inspirée du *damnum injuria datum* (dommage injustement causé).

#### Distinction délit / quasi-délit
- **Délit** : intentionnel
- **Quasi-délit** : non intentionnel

### B. L''Ancien droit

#### Auteurs
- **Domat** (XVIIe s.) : *« Les pertes et les dommages qui arrivent par la faute d''une personne (...) doivent être réparés. »*
- **Pothier** (XVIIIe s.) : systématisation, influence directe sur le Code civil

### C. Le Code Napoléon (1804)

#### Articles 1382-1386
- Inspirés de Domat et Pothier
- **Brièveté** : 5 articles seulement pour toute la responsabilité civile
- **Fondement** : la faute (responsabilité subjective)

### D. La révolution industrielle (XIXe siècle)

#### Multiplication des dommages
- Accidents du travail
- Accidents de chemin de fer
- Accidents industriels

#### Réponses
- **Loi du 9 avril 1898** : accidents du travail (responsabilité sans faute, indemnisation forfaitaire)
- **Jurisprudence Teffaine** (Civ., 16 juin 1896) : responsabilité du fait des choses (objectivation)

### E. Le XXe siècle

#### *Jand''heur* (Ch. réunies, 13 février 1930)
- Consécration de la responsabilité **objective** du gardien
- Présomption **irréfragable**

#### Multiplication des régimes spéciaux
- **Loi Badinter du 5 juillet 1985** : accidents de la circulation
- **Loi du 19 mai 1998** : produits défectueux
- **Loi Kouchner du 4 mars 2002** : responsabilité médicale

### F. La réforme de 2016 et les projets

#### Renumérotation (ordonnance 2016)
Les articles `1382` à `1386` sont devenus `1240` à `1244 C. civ.`, sans changement substantiel.

#### Avant-projet de réforme (mars 2017, amendé 2020)
- Codification de la jurisprudence
- Introduction de l''**amende civile** (faute lucrative)
- Réforme du préjudice corporel
- Statut spécial des **dommages écologiques**

## V. Les classifications de la responsabilité civile

### A. Selon le fait générateur

#### Fait personnel
**Art. 1240, 1241 C. civ.** : responsabilité pour sa propre faute.

#### Fait des choses
**Art. 1242 al. 1 C. civ.** : responsabilité pour les choses dont on a la garde.

#### Fait d''autrui
**Art. 1242 al. 2 à 7 C. civ.** : responsabilité pour les personnes dont on doit répondre.

### B. Selon la faute

#### Avec faute prouvée
- Responsabilité du fait personnel
- Responsabilité de l''instituteur

#### Avec faute présumée
- Responsabilité des parents (depuis *Bertrand*, Civ. 2e, 19 février 1997)
- Responsabilité du commettant (*art. 1242 al. 5*)

#### Sans faute (responsabilité objective)
- Responsabilité du fait des choses
- Responsabilité du fait des animaux
- Responsabilité des produits défectueux

### C. Selon la source

#### Délictuelle classique
**Régime de droit commun** (`art. 1240 et s. C. civ.`).

#### Régimes spéciaux
- **Accidents de la circulation** (loi Badinter, 1985)
- **Produits défectueux** (`art. 1245 et s. C. civ.`)
- **Accidents médicaux** (loi Kouchner, 2002)
- **Dommages écologiques** (art. 1246 et s. C. civ., depuis 2016)

## VI. La place du dommage et de l''indemnisation

### A. L''avènement du droit des accidents

#### Indemnisation systématique
Tendance à indemniser **toute victime**, indépendamment de la faute, grâce à :
- **Assurance** (obligatoire ou volontaire)
- **Fonds d''indemnisation**
- **Régimes spéciaux** (loi Badinter, etc.)

### B. La socialisation du risque

#### Conséquences
- **Multiplication** des indemnisations
- **Déresponsabilisation** apparente des auteurs
- **Coût social** du dommage assumé collectivement

### C. La résistance de la responsabilité civile

#### Pourquoi le maintien ?
- **Fonction normative** (dissuasion)
- **Réparation des préjudices non couverts** par l''assurance
- **Symbolique** de la responsabilité personnelle

## Conclusion

La responsabilité civile est une matière **vivante** et **complexe**, en perpétuelle évolution. Elle conjugue **fondements philosophiques** (faute, risque, garantie), **régimes juridiques** (général, spéciaux) et **mécanismes financiers** (assurance, fonds). Sa maîtrise suppose :
- La compréhension des **trois conditions** (fait générateur, dommage, lien de causalité)
- La distinction entre **responsabilités subjective et objective**
- La connaissance des **régimes spéciaux** essentiels (loi Badinter, produits défectueux)
- Une **culture historique** pour saisir l''évolution

La **réforme à venir** redessinera cette matière dans les prochaines années, sans bouleverser ses **fondations** mais en clarifiant ses **applications**.'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 4 - LE FAIT GÉNÉRATEUR : LA FAUTE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le fait générateur : la faute', 'Chapitre 4 - Responsabilité du fait personnel',
       'Définition, éléments, typologies et appréciation de la faute civile.',
       array['Faute', 'Élément matériel', 'Élément moral', 'Article 1240 C. civ.', 'Article 1241 C. civ.', 'Faute volontaire / non volontaire', 'Faute par abstention', 'Discernement', 'Loi du 3 janvier 1968', 'Arrêt Lemaire'],
       28, 4,
'# Le fait générateur : la faute

## Introduction

La **faute** est le **fait générateur historique** de la responsabilité civile, codifié aux articles `1240` et `1241 C. civ.`. Si la responsabilité objective s''est développée, la responsabilité pour faute reste le **droit commun** et le modèle théorique de référence. La faute est aussi le **fondement moral** de la responsabilité : si je dois réparer, c''est parce que j''ai mal agi.

> **Article 1240 C. civ.** : *« Tout fait quelconque de l''homme, qui cause à autrui un dommage, oblige celui par la faute duquel il est arrivé à le réparer. »*

> **Article 1241 C. civ.** : *« Chacun est responsable du dommage qu''il a causé non seulement par son fait, mais encore par sa négligence ou par son imprudence. »*

## I. La notion de faute

### A. Absence de définition légale

Le Code civil n''a **jamais défini** la faute. Cette absence est volontaire : la faute est une notion **plastique**, adaptable aux circonstances et aux époques.

### B. Définition doctrinale classique

#### Planiol
> *« La faute est un manquement à une obligation préexistante. »*

#### Critique
- Trop large (toute violation d''une norme)
- Pas assez précise (quelle obligation ?)

### C. Définition jurisprudentielle moderne

#### Faute civile
**Comportement** qui s''écarte de celui qu''aurait eu une **personne raisonnable** placée dans les mêmes circonstances.

#### Critère du bon père de famille
- **Article 1241 C. civ.** : « négligence ou imprudence » → standard objectif
- Évolution : *« bon père de famille »* → *« raisonnable »* (loi du 4 août 2014)

### D. Avant-projet de réforme (2017)

#### Article 1242 (projet)
> *« Constitue une faute la violation d''une prescription légale ou le manquement au devoir général de prudence ou de diligence. »*

## II. Les éléments constitutifs de la faute

### A. L''élément matériel

#### Acte positif
- Action illicite ou maladroite
- Exemple : coup, injure, conduite dangereuse

#### Abstention
- **Non-action** illicite
- Distinction :
  - **Abstention dans l''action** : ne pas faire un geste qu''on devait faire en agissant (oubli de freiner)
  - **Abstention pure** : omission complète de toute action

#### Arrêt *Branly* (Civ., 27 février 1951)
- **Abstention pure** : un journaliste qui omet de citer un inventeur dans une étude historique
- Condamnation : devoir moral de citer
- **Affirmation** : *« L''abstention même non dictée par la malice (...) entraîne la responsabilité de son auteur si le fait omis devait être accompli soit en vertu d''une obligation légale, réglementaire ou conventionnelle, soit aussi (...) en vertu d''un devoir résultant des règles de la profession. »*

### B. L''élément légal (illicéité)

#### Sources de l''illicéité
- **Violation d''une loi** (pénale, civile, administrative)
- **Violation d''un règlement** (code de la route, etc.)
- **Violation d''un usage** professionnel
- **Violation du devoir général** de prudence

#### Notion d''**abus de droit**
Exercer un droit dans un but **autre** que celui pour lequel il a été reconnu, ou de manière à nuire à autrui (`art. 1240 C. civ.`).
- **Arrêt Clément-Bayard** (Req., 3 août 1915) : propriétaire qui élève des piques pour gêner les dirigeables du voisin
- **Critères** : intention de nuire OU détournement de la fonction sociale du droit

### C. L''élément moral : le discernement

#### Avant 1968 : exigence de discernement
- Pas de responsabilité pour les **infans** (enfants en bas âge)
- Pas de responsabilité pour les **aliénés**

#### Loi du 3 janvier 1968 (aliénés)
- **Article 414-3 C. civ.** : *« Celui qui a causé un dommage à autrui alors qu''il était sous l''empire d''un trouble mental n''en est pas moins obligé à réparation. »*
- **Objectivation** : la responsabilité ne suppose plus le discernement chez les déments.

#### Arrêts *Lemaire* et *Derguini* (Ass. plén., 9 mai 1984)
- **Lemaire** : enfant de 13 ans électrocuté ; sa faute est retenue malgré son **jeune âge**
- **Derguini** : fillette de 5 ans tuée traversant la route ; sa faute est retenue
- **Affirmation** : la faute civile **n''exige plus** le discernement, ni chez les enfants, ni chez les déments
- **Conséquences pratiques** : la victime fautive (même mineure) peut voir son indemnisation **réduite**

### D. Élément subjectif vs objectif

#### Évolution
- **Approche subjective** : la faute suppose la conscience de mal faire
- **Approche objective** : la faute s''apprécie *in abstracto*, indépendamment des qualités personnelles
- **État actuel** : faute civile **objectivée**, sauf pour quelques cas spéciaux

## III. Typologie des fautes

### A. Faute volontaire / non volontaire

#### Faute volontaire (dol civil)
- **Intention** de causer un dommage
- Article 1240 C. civ.
- Conséquences possibles : nullité du contrat (dol contractuel), aggravation des dommages et intérêts

#### Faute non volontaire (faute simple)
- **Négligence** ou **imprudence**
- Article 1241 C. civ.
- Le plus fréquent en pratique

### B. Faute lourde / légère

#### Faute lourde
- **Comportement** d''une **gravité particulière**
- Définition jurisprudentielle : *« négligence d''une particulière gravité confinant au dol »* (Civ. 1re, 22 octobre 1991)
- Effets : équivalence au dol, paralyse les clauses limitatives, étend l''indemnisation

#### Faute légère
- Erreur que n''aurait pas commise un homme **avisé** (mais que n''importe qui peut commettre)
- Effets : pas d''aggravation particulière

#### Faute inexcusable
- Notion **spéciale** (loi Badinter, accidents du travail)
- *« Faute volontaire d''une exceptionnelle gravité exposant son auteur à un danger dont il aurait dû avoir conscience »* (Civ. 2e, 20 juillet 1987)

### C. Faute par action / par abstention

#### Action
- Comportement positif (geste, parole)
- Le plus courant

#### Abstention
- **Pure** : omettre de prévenir un danger
- **Dans l''action** : omettre une précaution en agissant

### D. Faute professionnelle / faute ordinaire

#### Faute professionnelle
- Manquement aux **règles de l''art**
- Appréciation par référence à un **professionnel** raisonnable

#### Faute ordinaire
- Manquement au comportement raisonnable général
- Standard de la personne avisée

### E. Faute pénale / faute civile

#### Identité partielle
Toute **infraction pénale** est en principe constitutive d''une faute civile.

#### Article 4-1 CPP
> *« L''absence de faute pénale non intentionnelle (...) ne fait pas obstacle à l''exercice d''une action devant les juridictions civiles afin d''obtenir réparation. »*

#### Conséquence
- **Indépendance** des deux fautes depuis la loi du 10 juillet 2000 (loi Fauchon)
- La relaxe pénale ne fait plus obstacle à la condamnation civile

## IV. L''appréciation de la faute

### A. Appréciation *in abstracto*

#### Principe
La faute est appréciée par référence à un **modèle abstrait** : la personne **raisonnable** (anciennement le *bon père de famille*).

#### Avantages
- **Sécurité** juridique
- **Uniformité** d''appréciation
- **Standard** universel

### B. Adaptation aux circonstances

#### Tempérament
On tient compte des **circonstances de fait** :
- **Temps** : nuit ou jour, jour de marché, jour de fête
- **Lieu** : ville ou campagne, route ou autoroute
- **Activité** : sport, profession, loisir
- **Compétences professionnelles** : médecin (référence : médecin moyen de sa spécialité)

### C. Faute du professionnel

#### Standard rehaussé
La faute du professionnel s''apprécie par rapport à un **professionnel raisonnable** de la même spécialité.

#### Médecin
- **Arrêt Mercier** (Civ., 20 mai 1936) : *« Il se forme entre le médecin et son client un véritable contrat (...) comportant pour le praticien l''engagement (...) de donner des soins (...) conformes aux données acquises de la science. »*
- **Faute** = manquement aux **données acquises de la science**

### D. Faute des mineurs

#### Loi du 3 janvier 1968 + arrêts *Lemaire/Derguini* (1984)
La faute du mineur s''apprécie **objectivement**, sans considération de son discernement.

#### Conséquences
- **Mineur fautif** : sa faute peut réduire son indemnisation
- **Mineur victime** : sa faute peut être opposée comme cause exonératoire partielle

## V. Cas pratiques

### A. Sport et faute

#### Risque accepté
- Le sport implique des **risques** acceptés par les participants
- La faute n''est retenue qu''en cas de **violation des règles du jeu** ou de **comportement anormal**

#### Spectateurs
- Le spectateur est **présumé** accepter les risques **inhérents** au spectacle
- Mais le club a une obligation de **sécurité**

### B. Voisinage et faute

#### Troubles anormaux de voisinage
- **Théorie autonome** créée par la jurisprudence
- **Indépendante** de la faute : suffit un trouble **anormal**
- **Civ. 2e, 19 novembre 1986** : *« Nul ne doit causer à autrui un trouble anormal de voisinage. »*

### C. Vie privée et faute

#### Article 9 C. civ.
> *« Chacun a droit au respect de sa vie privée. »*

#### Faute autonome
La violation de la vie privée constitue une **faute** sans nécessité de prouver une faute classique.

#### Liberté de la presse
- Équilibre avec **art. 10 CEDH** (liberté d''expression)
- Notion de **figure publique**, intérêt général de l''information

## Conclusion

La **faute** reste le **fondement central** de la responsabilité civile, malgré l''émergence des régimes objectifs. Sa notion s''est **objectivée** au XXe siècle (abandon du discernement, standard abstrait), tout en gardant une **plasticité** essentielle. La **réforme à venir** précisera la définition légale, sans bouleverser les acquis jurisprudentiels. Pour le juriste, maîtriser la faute, c''est maîtriser :
- Ses **éléments** (matériel, légal, moral)
- Ses **typologies** (volontaire/involontaire, lourde/légère, action/abstention)
- Son **appréciation** (in abstracto, ajustée aux circonstances)
- Sa **preuve** (à la charge de la victime, sauf présomptions)'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 5 - LA RESPONSABILITÉ DU FAIT DES CHOSES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité du fait des choses', 'Chapitre 5 - Responsabilité objective des choses',
       'Évolution, conditions et régime de la responsabilité du fait des choses.',
       array['Article 1242 al. 1 C. civ.', 'Garde', 'Arrêt Teffaine', 'Arrêt Jand''heur', 'Garde de la structure', 'Garde du comportement', 'Chose', 'Fait actif', 'Arrêt Franck', 'Exonération'],
       28, 5,
'# La responsabilité du fait des choses

## Introduction

La **responsabilité du fait des choses** est une création **jurisprudentielle majeure** du XIXe siècle, devenue l''un des piliers de la responsabilité civile. À partir d''un texte minimaliste — l''ancien article `1384 al. 1 C. civ.` (aujourd''hui `art. 1242 al. 1 C. civ.`) qui se contentait de poser le principe sans en préciser le régime — la Cour de cassation a construit un véritable **régime de responsabilité objective**, indispensable à l''indemnisation des victimes de la **révolution industrielle**.

> **Article 1242 al. 1 C. civ.** : *« On est responsable non seulement du dommage que l''on cause par son propre fait, mais encore de celui qui est causé par le fait des personnes dont on doit répondre, ou des choses que l''on a sous sa garde. »*

## I. La construction jurisprudentielle

### A. La situation initiale (1804)

#### Lecture restrictive
À l''origine, l''article `1384 al. 1` était considéré comme une **simple annonce** des cas spéciaux (animaux, bâtiments en ruine). Pas de principe général de responsabilité du fait des choses.

#### Limites du régime de faute
- Les **accidents industriels** se multiplient (XIXe siècle)
- Les **victimes** ne peuvent pas toujours prouver la **faute** de l''employeur
- **Injustice sociale** flagrante

### B. L''arrêt fondateur : *Teffaine* (Civ., 16 juin 1896)

#### Faits
Un ouvrier (Teffaine) est tué par l''explosion de la chaudière d''un remorqueur. La cause de l''explosion (vice de fabrication) est imputable au constructeur, non à l''employeur.

#### Question
L''employeur peut-il être tenu responsable sans faute prouvée ?

#### Solution
- La Cour de cassation **interprète** l''article `1384 al. 1` comme une **présomption** de responsabilité
- L''employeur est **responsable** sans faute prouvée
- **Naissance** de la responsabilité du fait des choses comme principe général

#### Portée
- Réponse à la **crise des accidents du travail**
- Précurseur de la **loi du 9 avril 1898** (accidents du travail)

### C. L''arrêt *Jand''heur* (Ch. réunies, 13 février 1930)

#### Faits
Une fillette (Lise Jand''heur) est renversée par un camion appartenant aux Galeries belfortaises. Sa famille demande réparation.

#### Question
Quelle est la nature de la présomption posée à l''art. 1384 al. 1 ?

#### Solution
> *« La présomption de responsabilité établie par l''article 1384 al. 1 du Code civil à l''encontre de celui qui a sous sa garde la chose inanimée qui a causé un dommage à autrui ne peut être détruite que par la preuve d''un cas fortuit ou de force majeure ou d''une cause étrangère qui ne lui soit pas imputable ; il ne suffit pas de prouver qu''il n''a commis aucune faute ou que la cause du fait dommageable est demeurée inconnue. »*

#### Portée
- **Présomption irréfragable** (et non simple)
- La preuve d''**absence de faute** ne suffit pas à exonérer
- Seules la **force majeure** ou la **cause étrangère** exonèrent
- Application à **toutes les choses**, animées ou non
- **Consécration** définitive du régime objectif

## II. Le champ d''application

### A. Les choses concernées

#### Principe : toutes les choses
- **Choses inanimées** : voitures, meubles, immeubles, machines, produits
- **Choses dangereuses** : armes, explosifs, gaz
- **Choses non dangereuses** : meuble ordinaire ayant causé un dommage
- **Liquides, gaz, énergies** : électricité, eau, vapeur

#### Exclusions
- **Corps humain** vivant (pas une chose)
- **Animaux** : régime spécial (`art. 1243 C. civ.`)
- **Bâtiments en ruine** : régime spécial (`art. 1244 C. civ.`)
- **Produits défectueux** : régime spécial (`art. 1245 et s. C. civ.`) qui prime sur le régime général

### B. Les choses immobilières

#### Inclusion
**Arrêt *Société Le Vélocipède* (Civ., 6 mars 1928)** : extension aux immeubles.

#### Mais bâtiments en ruine ?
- **Article 1244 C. civ.** : responsabilité du **propriétaire** pour défaut d''entretien ou vice de construction
- **Distinction** subtile : choses immobilières (art. 1242) / bâtiments en ruine (art. 1244)
- Tendance : le régime de l''article 1242 absorbe largement l''article 1244

### C. Le **fait actif** de la chose

#### Principe
La chose doit avoir joué un **rôle actif** dans la production du dommage.

#### Présomption
- **Chose en mouvement** + **contact** avec la victime : **rôle actif présumé**
- **Chose inerte** : **preuve** du rôle actif par la victime

#### Jurisprudence
- **Civ. 2e, 18 février 2001** : chute sur un sol glissant → rôle actif présumé
- **Civ. 2e, 5 mai 2011** : escalator en marche → rôle actif présumé

## III. La notion de garde

### A. Définition

#### *Arrêt Franck* (Ch. réunies, 2 décembre 1941)
> *« Le gardien est celui qui exerce sur la chose un pouvoir d''usage, de direction et de contrôle. »*

#### Trois pouvoirs cumulatifs
- **Usage** : utilisation de la chose
- **Direction** : choix de la destination et des modalités d''emploi
- **Contrôle** : maîtrise physique de la chose

### B. Les arrêts *Franck* et le voleur

#### Faits
Une voiture volée provoque un accident mortel. Le propriétaire (Connot) est-il responsable comme gardien ?

#### Solution
- Le **vol prive** le propriétaire des pouvoirs d''usage, direction, contrôle
- La **garde** est transférée au **voleur**
- Le propriétaire **n''est pas responsable**

#### Portée
- La garde est une **notion matérielle** (pouvoirs effectifs), non juridique
- Distinction **propriété / garde**

### C. La présomption de garde du propriétaire

#### Principe
Le **propriétaire** est **présumé** gardien.

#### Renversement
La présomption peut être renversée en prouvant :
- **Transfert volontaire** de la garde (location, prêt, dépôt)
- **Transfert involontaire** (vol, perte)

### D. Garde collective ?

#### Hostilité de principe
La garde **suppose** des pouvoirs **exclusifs**.

#### Exception : garde collective lors de jeux
- **Civ. 2e, 4 mai 1972** : enfants jouant ensemble avec un objet dangereux → garde collective possible
- Cas marginal

## IV. La distinction garde de la structure / garde du comportement

### A. Origine : *Oxygène liquide* (Ch. réunies, 5 janvier 1956)

#### Faits
Une bonbonne d''oxygène liquide explose chez le détenteur, causant des dommages. Qui est responsable : le fabricant (qui connaît la chose) ou le détenteur (qui l''utilise) ?

#### Solution
- **Garde de la structure** : conservée par le **fabricant** (vice interne)
- **Garde du comportement** : transférée à l''**utilisateur** (usage de la chose)
- Le fabricant est **responsable** pour les vices de structure

### B. Domaine d''application

#### Choses **dangereuses** par nature
- Explosifs, gaz, électricité
- Choses à **dynamisme propre**

#### Choses **complexes**
- Machines techniques
- Produits chimiques

#### Choses **ordinaires** ?
La jurisprudence reste **hésitante**. Tendance à étendre la distinction aux choses complexes (téléviseurs, etc.).

### C. Évolution avec la responsabilité des produits défectueux

#### Loi du 19 mai 1998 (art. 1245 et s. C. civ.)
- Régime **spécial** pour les **produits défectueux**
- **Producteur** responsable
- **Cumul** possible avec l''art. 1242 al. 1 ? **Question débattue**

## V. Les causes d''exonération

### A. La force majeure

#### Définition
**Événement** :
- **Extérieur** au gardien
- **Imprévisible**
- **Irrésistible**

#### Effet
- **Totale** : exonération complète si réunit les trois caractères
- **Partielle** : non admise en matière de responsabilité du fait des choses (`Civ. 2e, 27 mars 2003`)

### B. Le fait d''un tiers

#### Conditions
- **Imprévisible** et **irrésistible** (caractéristiques de la force majeure)
- Exemple : un tiers pousse la victime devant la voiture

### C. La faute de la victime

#### Faute exclusivement causale = exonération totale
- Si la **faute de la victime** est seule cause du dommage

#### Faute partiellement causale = exonération partielle
- Partage de responsabilité
- *« Le partage tient compte de la gravité respective des fautes. »*

#### Pour les **enfants** (loi de 1968 + *Lemaire/Derguini*)
La faute de l''enfant est **opposable** même sans discernement → réduction de l''indemnisation possible.

### D. L''absence de fait causal de la chose

#### Si la chose n''a pas joué de rôle actif
- Pas de **causalité** → pas de responsabilité du fait des choses
- Le gardien peut s''en prévaloir

## VI. L''articulation avec d''autres régimes

### A. Avec la responsabilité du fait personnel

#### Cumul possible
- Le gardien peut être **personnellement fautif**
- Cumul des deux fondements (art. 1240 + art. 1242 al. 1)

#### Pratique
La responsabilité du fait des choses est **plus favorable** à la victime (pas besoin de prouver la faute).

### B. Avec la loi Badinter (1985)

#### Champ de la loi Badinter
- **Accidents** de la circulation
- Impliquant un **véhicule terrestre à moteur** (VTM)

#### Exclusion de l''art. 1242 al. 1
- La loi Badinter est **exclusive**
- L''art. 1242 al. 1 ne s''applique pas aux accidents de la circulation

### C. Avec la responsabilité des produits défectueux

#### Régime spécial (art. 1245 et s.)
- **Producteur** responsable
- **Défaut** de sécurité
- **Cumul** avec art. 1242 al. 1 ? **Refusé** par la jurisprudence si applicable

## VII. La jurisprudence contemporaine

### A. L''affaire des couloirs de bowling et choses inertes

#### *Civ. 2e, 24 février 2005*
- Chute sur une vitre transparente
- La chose **inerte** doit avoir joué un rôle **actif**
- **Anormalité** de la chose ou de sa position

### B. Les chutes dans les commerces

#### Tendance
- **Sol glissant** : le commerçant est gardien et responsable
- Sauf si la victime a commis une **faute** (chaussures inadaptées, distraction grave)

### C. La responsabilité du fait des choses et le numérique

#### Question
Le **logiciel** est-il une chose au sens de l''art. 1242 ?

#### Réponse
- **Hésitations** doctrinales
- Tendance à appliquer la loi sur les **produits défectueux** plutôt que l''art. 1242

## Conclusion

La responsabilité du fait des choses est une **création prétorienne** majeure, qui a permis d''indemniser les victimes des accidents industriels et de la modernité. Son régime — **présomption irréfragable de responsabilité** pesant sur le **gardien** — est **rigoureux** mais équilibré par les causes d''exonération. La **maîtrise** de cette matière suppose :
- La compréhension des **étapes historiques** (*Teffaine*, *Jand''heur*, *Franck*, *Oxygène liquide*)
- La **distinction** garde de la structure / garde du comportement
- La connaissance des **conditions** (chose, fait actif, garde)
- La **maîtrise** des causes d''exonération
- L''articulation avec les **régimes spéciaux** (loi Badinter, produits défectueux)'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 6 - LA RESPONSABILITÉ DU FAIT D''AUTRUI
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité du fait d''autrui', 'Chapitre 6 - Responsabilité pour autrui',
       'Cas spéciaux et principe général de la responsabilité du fait d''autrui.',
       array['Article 1242 C. civ.', 'Parents', 'Commettant', 'Préposé', 'Arrêt Blieck', 'Arrêt Bertrand', 'Arrêt Costedoat', 'Cohabitation', 'Lien de subordination', 'Abus de fonctions'],
       28, 6,
'# La responsabilité du fait d''autrui

## Introduction

La **responsabilité du fait d''autrui** est l''hypothèse où une personne **répond** des dommages causés par **un tiers** dont elle a la charge ou la direction. Codifiée à l''article `1242 C. civ.` (anciennement `art. 1384`), elle a connu une évolution **considérable** : limitée à l''origine à quelques cas spéciaux (parents, commettants, instituteurs, artisans), elle a été **généralisée** par la jurisprudence à partir de l''**arrêt Blieck** (1991).

> **Article 1242 al. 1 C. civ.** : *« On est responsable non seulement du dommage que l''on cause par son propre fait, mais encore de celui qui est causé par le fait des personnes dont on doit répondre (...). »*

## I. Les cas spéciaux : la responsabilité des parents

### A. Article 1242 al. 4 C. civ.

> *« Le père et la mère, en tant qu''ils exercent l''autorité parentale, sont solidairement responsables du dommage causé par leurs enfants mineurs habitant avec eux. »*

### B. Conditions

#### 1. Lien de filiation
- Père et **mère** (loi de 1970 sur l''égalité parentale)
- **Exercice** de l''autorité parentale

#### 2. Minorité de l''enfant
- Moins de **18 ans**
- **Émancipation** met fin à la responsabilité parentale

#### 3. Cohabitation
- L''enfant **habite** chez ses parents
- Notion **résidentielle**, non pas matérielle

#### 4. Fait dommageable
- **Fait** de l''enfant (pas nécessairement une faute, depuis *Levert*, Ass. plén., 9 mai 1984, et *Fullenwarth*, Ass. plén., 9 mai 1984)
- Suffit un **fait causal** du dommage

### C. Évolution vers l''objectivation

#### *Arrêt Bertrand* (Civ. 2e, 19 février 1997)
- **Présomption irréfragable** de responsabilité parentale
- Seules la **force majeure** ou la **faute de la victime** exonèrent
- **Plus de présomption d''absence de faute éducative renversable**

#### Conséquence
- Les parents sont **responsables de plein droit**
- **Objectivation** complète de la responsabilité parentale

### D. Cas particuliers

#### Garde alternée
- **Difficulté** : qui est responsable pendant les périodes de garde ?
- Tendance : **les deux parents** restent solidairement responsables (cohabitation au sens large)

#### Enfant chez les grands-parents, en colonie
- La **cohabitation** n''est pas rompue par une absence temporaire
- Les **parents** restent responsables

#### Enfant placé
- Si le placement est de **longue durée** et confie l''autorité à un tiers, la cohabitation est rompue
- Le **placement institutionnel** transfère la responsabilité

## II. Les cas spéciaux : la responsabilité des commettants

### A. Article 1242 al. 5 C. civ.

> *« Les maîtres et les commettants [sont responsables] du dommage causé par leurs domestiques et préposés dans les fonctions auxquelles ils les ont employés. »*

### B. Conditions

#### 1. Lien de préposition (subordination)

##### Définition
**Pouvoir** du commettant de **donner des ordres** au préposé sur la **manière** d''accomplir le travail.

##### Critères
- **Salariat** : présomption de préposition
- **Subordination** : indépendamment d''un contrat de travail
- **Mise à disposition** : transfert temporaire de la préposition

##### Exclusion
- **Profession libérale** indépendante (sauf si subordination effective)
- **Artisan** indépendant

#### 2. Fait du préposé dans ses fonctions

##### Principe
Le fait dommageable doit avoir un **lien** avec les fonctions du préposé.

##### *Abus de fonctions* - Ass. plén., 19 mai 1988
Le commettant n''est plus responsable si le préposé :
- Agit **hors de ses fonctions**
- **Sans autorisation**
- À des **fins étrangères** à ses attributions

##### Trois conditions cumulatives strictes
Si une seule manque, le commettant reste responsable.

### C. Le régime

#### Présomption irréfragable
- Le commettant est **responsable de plein droit**
- Seules la **force majeure**, la **faute de la victime** ou l''**abus de fonctions** exonèrent

#### Recours contre le préposé
- Le commettant peut se retourner contre le préposé en cas de **faute personnelle**
- **Limites** : protection du préposé

### D. L''immunité du préposé

#### *Arrêt Costedoat* (Ass. plén., 25 février 2000)
> *« N''engage pas sa responsabilité à l''égard des tiers le préposé qui agit sans excéder les limites de la mission qui lui a été impartie par son commettant. »*

#### Conséquence
- Le préposé **n''est pas personnellement responsable** envers la victime s''il agit dans le cadre de ses fonctions
- **Seul le commettant** indemnise

#### Limites - *Arrêt Cousin* (Ass. plén., 14 décembre 2001)
- L''immunité **disparaît** si le préposé commet une **infraction pénale intentionnelle**
- Cumul des responsabilités possible

## III. Les autres cas spéciaux

### A. La responsabilité des instituteurs - Article 1242 al. 6 C. civ.

#### Régime
- **Loi du 5 avril 1937** : la responsabilité des instituteurs **publics** est substituée par celle de l''**État**
- Le **régime de droit commun** des art. 1240 et 1241 s''applique
- Pas de **présomption** spéciale

#### Compétence
- Tribunal **judiciaire** (et non administratif, par exception)

### B. La responsabilité des artisans - Article 1242 al. 6 C. civ.

#### Définition
- Personne qui exerce un **métier manuel**
- **Apprentis** sous sa responsabilité

#### Régime
- Présomption de faute renversable par la preuve qu''il n''a pas pu empêcher l''acte
- Régime **désuet** en pratique

## IV. Le principe général de responsabilité du fait d''autrui

### A. L''arrêt *Blieck* (Ass. plén., 29 mars 1991)

#### Faits
Un handicapé mental, placé dans une **institution** spécialisée (association privée), met le feu à une forêt voisine. La victime du sinistre poursuit l''association.

#### Question
L''association peut-elle être responsable du fait d''un pensionnaire en l''absence de texte spécifique ?

#### Solution
> *« Une association qui accepte la charge d''organiser et de contrôler à titre permanent le mode de vie d''un handicapé est responsable de plein droit des dommages causés par celui-ci. »*

#### Portée
- **Création** d''un **principe général** de responsabilité du fait d''autrui
- Hors des cas codifiés
- Sur le fondement de l''article 1242 al. 1 (lecture autonome)

### B. Les conditions du principe général

#### 1. Acceptation d''organiser et de contrôler
- Acceptation **volontaire** d''une charge
- Mission **permanente** d''organisation et de contrôle
- **Pouvoir** sur le mode de vie d''autrui

#### 2. Application
##### Institutions reconnues
- **Associations** d''accueil de personnes handicapées
- **Foyers** éducatifs
- **Centres** éducatifs fermés
- **Clubs sportifs** pour leurs joueurs (Civ. 2e, 22 mai 1995)

##### Application aux clubs sportifs
- Le **club** est responsable des fautes commises par ses joueurs lors d''une rencontre
- *Arrêt Crémonini* (Ass. plén., 29 juin 2007) : clubs sportifs responsables des **fautes** de leurs membres

### C. Le régime de la responsabilité

#### Présomption de plein droit
- **Pas de faute** à prouver
- **Seule la force majeure** ou la **faute de la victime** exonèrent

#### Pas de cohabitation requise
- À la différence de la responsabilité parentale
- L''**autorité** suffit

## V. Les associations et clubs

### A. Les clubs sportifs

#### *Arrêt Bourdier* (Civ. 2e, 22 mai 1995)
- Club de **rugby** responsable des dommages causés par ses joueurs
- Application du principe *Blieck*

#### *Arrêt Crémonini* (Ass. plén., 29 juin 2007)
- Club de **basket** : confirmation
- Faute du joueur dans le **cadre du jeu**
- Club **responsable de plein droit**

### B. Les associations de chasse

#### Tendance
- Les **associations de chasse** sont responsables des dommages causés par leurs membres
- Application du principe général

### C. Limites

#### Pas de responsabilité automatique
- L''association doit avoir un **pouvoir** sur l''auteur du dommage
- Une simple **adhésion** ne suffit pas

## VI. Tableaux récapitulatifs

### A. Comparaison des régimes

| Régime | Présomption | Exonération |
|---|---|---|
| **Parents** | Irréfragable (*Bertrand*) | Force majeure, faute de la victime |
| **Commettant** | Irréfragable | Abus de fonctions, force majeure |
| **Instituteur public** | Faute prouvée (État) | Tout |
| **Artisan** | Présomption simple | Preuve d''absence de faute |
| **Principe général** | Irréfragable | Force majeure |

### B. Cumul de responsabilités

| Auteur | Responsables |
|---|---|
| **Enfant mineur** | Parents (art. 1242 al. 4) + enfant (art. 1240) |
| **Préposé** | Commettant (art. 1242 al. 5) — préposé immunisé sauf exceptions |
| **Pensionnaire** | Institution (principe Blieck) |

## VII. Avant-projet de réforme

### A. Codification du principe général

L''**avant-projet** de réforme de la responsabilité civile prévoit de **codifier** le principe général issu de *Blieck* dans un texte spécifique.

### B. Conditions précisées

- **Acceptation** d''une charge d''organisation et de contrôle du mode de vie
- **Mineurs** : harmonisation des régimes
- **Préposés** : confirmation de l''immunité (*Costedoat*)

## Conclusion

La responsabilité du fait d''autrui est un **édifice complexe** où coexistent :
- Des **régimes spéciaux** anciens (parents, commettants, instituteurs, artisans)
- Un **principe général** moderne (*Blieck*, 1991)
- Une tendance à l''**objectivation** (*Bertrand*, 1997)
- Une **protection** du préposé (*Costedoat*, 2000)

La **maîtrise** suppose de connaître les **conditions** propres à chaque régime, leur **régime** (présomptions, exonérations), leurs **interactions** (cumul possible auteur/responsable) et leur **évolution** jurisprudentielle. La réforme à venir clarifiera et harmonisera ces régimes.'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 7 - LE DOMMAGE ET LE LIEN DE CAUSALITÉ
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le dommage et le lien de causalité', 'Chapitre 7 - Les autres conditions de la responsabilité',
       'Définition, typologie, caractères du dommage et théories du lien de causalité.',
       array['Dommage', 'Préjudice', 'Préjudice corporel', 'Préjudice moral', 'Préjudice économique', 'Perte de chance', 'Causalité', 'Équivalence des conditions', 'Causalité adéquate', 'Causalité partielle'],
       28, 7,
'# Le dommage et le lien de causalité

## Introduction

Si la **faute** ou un autre **fait générateur** est le **comportement** qui déclenche la responsabilité, le **dommage** est le **préjudice subi** par la victime et le **lien de causalité** est le **rapport** entre les deux. Ces trois éléments — **fait générateur, dommage, causalité** — forment la **triade classique** de la responsabilité civile, indissociables.

> **Citation** : *« Pas de responsabilité sans dommage. »* (adage classique)

## I. La notion de dommage

### A. Dommage vs préjudice

#### Distinction conceptuelle
- **Dommage** : atteinte **matérielle** ou **morale** subie (fait brut)
- **Préjudice** : **conséquences juridiquement appréhendables** du dommage (fait qualifié)

#### Exemple
- **Dommage** : fracture du bras
- **Préjudices** : douleur, incapacité de travail, pertes financières

#### Usage courant
Les termes sont souvent **interchangés** par la jurisprudence et la doctrine.

### B. Caractères du dommage réparable

#### 1. Certitude
- Le dommage doit être **certain**, non hypothétique
- **Dommage actuel** : déjà subi
- **Dommage futur** : certain dans son principe (perte de salaire à venir)

#### 2. Personnel
- La victime doit avoir **subi** le dommage
- Hypothèse particulière : **action des héritiers** (préjudice du défunt + leur propre préjudice)

#### 3. Licite
- L''intérêt lésé doit être **juridiquement protégé**
- Ex : la **concubine** peut obtenir réparation de la mort de son concubin (*Civ., 27 février 1970, Dangereux*)

#### 4. Direct
- Le dommage doit être en **lien causal** avec le fait générateur
- Renvoie à la condition de **causalité**

### C. La perte de chance

#### Définition
**Disparition** de la **probabilité** d''un événement favorable.

#### Conditions
- La chance doit être **réelle et sérieuse**
- Pas de chance purement hypothétique

#### Évaluation
- Indemnisation à hauteur de la **probabilité** de réalisation
- Exemple : médecin qui rate un diagnostic → perte de chance de guérison (50% → 50% de l''indemnisation)

#### Exemples
- **Procès** perdu par négligence de l''avocat
- **Diagnostic** raté
- **Concours** raté par accident

## II. Les types de préjudices

### A. Préjudice patrimonial / extrapatrimonial

#### Patrimonial (économique)
- Affecte le **patrimoine** de la victime
- Évaluable en **argent**
- Exemples : perte de revenus, frais médicaux, perte d''un bien

#### Extrapatrimonial (moral)
- Affecte l''**intégrité morale**
- **Difficile** à évaluer
- Exemples : douleur, atteinte à l''honneur, préjudice esthétique

### B. Préjudice corporel - Nomenclature Dintilhac (2005)

#### Origine
**Rapport Dintilhac** (juin 2005) : classification de référence des préjudices corporels.

#### Préjudices patrimoniaux temporaires
- **Dépenses de santé** actuelles
- **Pertes de gains professionnels** actuels
- **Frais divers** (transports, aide à domicile)

#### Préjudices patrimoniaux permanents
- **Dépenses de santé** futures
- **Pertes de gains professionnels** futurs
- **Incidence professionnelle**
- **Préjudice scolaire / universitaire**

#### Préjudices extrapatrimoniaux temporaires
- **Déficit fonctionnel** temporaire
- **Souffrances** endurées
- **Préjudice esthétique** temporaire

#### Préjudices extrapatrimoniaux permanents
- **Déficit fonctionnel** permanent
- **Préjudice esthétique** permanent
- **Préjudice d''agrément**
- **Préjudice sexuel**
- **Préjudice d''établissement**
- **Préjudices permanents exceptionnels**

### C. Préjudices spéciaux récents

#### Préjudice d''angoisse de mort imminente
- Souffrance psychique anticipant la mort
- Reconnu par la jurisprudence

#### Préjudice d''attente et d''inquiétude
- Pour les **proches** de la victime
- Période avant l''annonce du décès ou des séquelles

#### Préjudice écologique - Articles 1246 à 1252 C. civ.
- Codifié par la **loi du 8 août 2016** (loi biodiversité)
- *« Toute personne responsable d''un préjudice écologique est tenue de le réparer. »* (`art. 1246 C. civ.`)
- **Réparation** en nature de préférence
- À défaut : dommages et intérêts affectés à la réparation

### D. Préjudice par ricochet

#### Définition
Préjudice subi par une **personne autre** que la victime directe (proches).

#### Reconnaissance
- *Arrêt Dangereux* (Ch. mixte, 27 février 1970) : la concubine peut être indemnisée

#### Conditions
- **Lien affectif** réel avec la victime directe
- **Préjudice personnel** des proches
- **Pas de listes** légales (pas seulement parents et conjoint)

#### Types
- **Patrimonial** : perte d''un soutien financier
- **Moral** : douleur de la perte d''un proche

## III. L''évaluation du dommage

### A. Le principe : la réparation intégrale

#### *Restitutio in integrum*
- Remettre la victime dans la **situation antérieure**
- **Pas plus, pas moins**

#### Conséquences
- **Indifférence à la gravité** de la faute
- **Indemnisation** du dommage **réel**, pas forfaitaire
- **Date d''évaluation** : jour du jugement (pour tenir compte de l''évolution)

### B. Les modes de réparation

#### Réparation en nature
- **Remise en état**
- **Cessation** du trouble
- Préférence pour les **préjudices matériels** et environnementaux

#### Réparation par équivalent
- **Dommages et intérêts**
- **Modalité principale**
- **Capital** ou **rente** (préjudice corporel)

### C. L''évaluation des préjudices corporels

#### Difficulté
- Comment évaluer la **douleur** ?
- Comment évaluer l''**incapacité** ?

#### Méthodes
- **Barèmes** indicatifs (référentiels des cours d''appel)
- **Expertise médicale**
- **Calcul** au cas par cas

### D. Plafonnement et limitation ?

#### Principe
- **Pas de plafond** légal en droit commun
- Réparation **intégrale**

#### Exceptions
- **Loi Badinter** : pas de plafond mais barèmes pratiques
- **Accidents de travail** : indemnisation **forfaitaire**

## IV. Le lien de causalité

### A. La nécessité de la causalité

#### Principe
Le dommage doit être en **rapport** avec le fait générateur. Sans causalité, **pas de responsabilité**.

#### Charge de la preuve
- En principe, à la **victime** de prouver
- **Présomptions** dans certains régimes (fait des choses, fait d''autrui)

### B. Les théories de la causalité

#### Théorie de l''équivalence des conditions

##### Idée
**Toutes** les conditions ayant concouru au dommage sont **causes équivalentes**.

##### Critère
*Sine qua non* : sans cette condition, le dommage ne se serait pas produit.

##### Avantage
**Simplicité** d''application.

##### Inconvénient
**Élargissement excessif** : le constructeur du véhicule, le fabricant du carburant, etc. pourraient être responsables.

#### Théorie de la causalité adéquate

##### Idée
Seule est cause **véritable** celle qui, **dans le cours normal des choses**, devait produire le dommage.

##### Critère
**Prévisibilité** : un homme raisonnable pouvait-il prévoir le dommage à partir du fait ?

##### Avantage
**Limite** la responsabilité aux causes pertinentes.

##### Inconvénient
**Subjectivité** dans l''appréciation.

### C. Choix jurisprudentiel

#### Position française
**Pluraliste** : la Cour de cassation utilise les deux théories selon les cas.

#### Tendances
- **Équivalence** : régimes objectifs (fait des choses, accidents de la circulation)
- **Causalité adéquate** : faute, préjudices indirects

### D. Causalité partielle et conjointe

#### Pluralité de causes
- **Causes successives** : plusieurs faits successifs concourent au dommage
- **Causes concomitantes** : plusieurs faits simultanés

#### Régime
- **Coresponsables solidaires** *in solidum*
- **Recours entre coresponsables** : partage selon la gravité respective des fautes

## V. Les obstacles à la causalité

### A. La force majeure

#### Effet
- **Rompt** le lien de causalité
- **Exonération** totale ou partielle

#### Conditions
- **Extériorité**
- **Imprévisibilité**
- **Irrésistibilité**

### B. Le fait de la victime

#### Faute exclusive
- Si la victime est **seule cause** du dommage
- **Exonération totale** du défendeur

#### Faute partielle
- **Partage** de responsabilité
- **Réduction** de l''indemnisation

### C. Le fait d''un tiers

#### Conditions
- Doit présenter les caractères de la **force majeure** (extériorité, imprévisibilité, irrésistibilité)
- À défaut : tous coresponsables *in solidum*

## VI. Cas pratiques de causalité

### A. Affaires de transfusion sanguine

#### *Arrêt Civ. 1re, 17 février 1993*
- Charge de la preuve **inversée** pour les transfusions et risques sanitaires graves
- Si la **probabilité** est élevée, la causalité est admise

### B. Affaires du Distilbène

#### *Civ. 1re, 24 septembre 2009*
- Médicament aux conséquences sur la 2e génération
- **Présomption** de causalité car difficulté de preuve

### C. Affaires d''amiante

#### Régime spécial
- **Loi du 23 décembre 2000** : Fonds d''indemnisation des victimes de l''amiante (**FIVA**)
- **Causalité présumée** dans certaines conditions

### D. Affaires d''accidents médicaux

#### Loi Kouchner (4 mars 2002)
- **Indemnisation** par solidarité nationale en l''absence de faute (**ONIAM**)
- **Régime mixte** : faute du médecin + aléa thérapeutique

## VII. Vers une réforme

### A. Avant-projet de réforme

#### Article 1239 (projet)
- **Causalité directe et certaine**
- **Codification** de la théorie pluraliste

#### Préjudices nouveaux
- **Codification** du préjudice écologique (déjà fait en 2016)
- **Préjudices** liés à l''angoisse, à l''attente

#### Réparation intégrale
- **Confirmation** du principe
- **Encadrement** des barèmes

## Conclusion

Le **dommage** et le **lien de causalité** sont des **éléments objectifs** de la responsabilité civile, **incontournables**. Leur maîtrise suppose :
- La **typologie** des préjudices (Dintilhac, économique/moral, direct/par ricochet)
- La **certitude**, **personnalité**, **licéité** du dommage
- La **réparation intégrale** comme principe directeur
- Les **théories** de la causalité (équivalence, causalité adéquate)
- Les **causes** de rupture de la causalité (force majeure, faute de la victime, fait d''un tiers)

Le **droit contemporain** tend à **objectiver** et **socialiser** la réparation (régimes spéciaux, fonds d''indemnisation), tout en préservant la **rigueur conceptuelle** des trois conditions classiques.'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =====================================================================
-- FICHE 8 - RÉGIMES SPÉCIAUX ET RÉPARATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Régimes spéciaux et réparation', 'Chapitre 8 - Mise en œuvre et régimes spéciaux',
       'Loi Badinter, produits défectueux, accidents médicaux, mise en œuvre de la responsabilité civile.',
       array['Loi Badinter', 'Accident de la circulation', 'VTM', 'Produits défectueux', 'Article 1245 C. civ.', 'Loi Kouchner', 'ONIAM', 'Action civile', 'Prescription', 'Réparation intégrale'],
       30, 8,
'# Régimes spéciaux et réparation

## Introduction

Le droit commun de la responsabilité civile (`art. 1240` à `1244 C. civ.`) est complété par de **nombreux régimes spéciaux** qui dérogent ou prolongent les règles générales. Ces régimes répondent à des **besoins spécifiques** : indemnisation rapide des victimes d''accidents de la circulation, sécurité des consommateurs, protection des malades. La connaissance de ces régimes et de leurs interactions avec le droit commun est **indispensable** pour le juriste contemporain.

> **Citation** : *« Le droit de la responsabilité civile est aujourd''hui un archipel de régimes spéciaux greffés sur le tronc commun du Code civil. »*

## I. La loi Badinter (5 juillet 1985)

### A. Genèse et objectif

#### Contexte
- **Multiplication** des accidents de la circulation
- **Lenteur** et **complexité** des procédures
- **Mauvaise** indemnisation des victimes

#### Objectifs
- **Indemnisation rapide** des victimes
- **Quasi-automaticité** de l''indemnisation
- **Limitation** des causes d''exonération

### B. Champ d''application

#### Accident de la circulation
- **Événement fortuit, soudain, imprévisible**
- Survenu sur une **voie ouverte à la circulation** (publique ou privée)

#### Véhicule terrestre à moteur (VTM)
- Voitures, motos, camions, autobus
- **Tracteurs**, engins agricoles
- **Trottinettes** électriques (depuis la loi)
- **Exclus** : trains, tramways en voie propre

#### Implication
- **Notion large** : le véhicule doit avoir **joué un rôle** dans l''accident
- **Pas besoin** de contact
- **Implication** ≠ causalité (notion plus large)

### C. Régime de la victime selon sa qualité

#### Conducteur
- Sa **faute** peut **réduire** ou **exclure** son indemnisation
- **Régime de droit commun** pour la faute

#### Non-conducteur
##### Principe
- **Indemnisation automatique** des préjudices corporels
- Seules certaines fautes exonèrent

##### Faute inexcusable
- Pour les **non-conducteurs ordinaires**
- Définition : *« Faute volontaire d''une exceptionnelle gravité exposant son auteur à un danger dont il aurait dû avoir conscience »*
- **Cause exclusive** de l''accident requise

##### Faute intentionnelle
- Pour les **non-conducteurs**
- Recherche **délibérée** de l''accident
- Très rare

#### Victimes ultra-protégées
- **Enfants** de moins de **16 ans**
- **Personnes** de plus de **70 ans**
- **Personnes** atteintes d''une **invalidité ≥ 80%**
- **Seule la faute intentionnelle** leur est opposable

#### Recours du FGAO
- **Fonds de garantie** pour les victimes d''auteurs non identifiés ou insolvables
- **Subrogation** dans les droits de la victime

### D. Les dommages couverts

#### Préjudices corporels
- **Indemnisation systématique** (sauf exceptions)
- Application de la **nomenclature Dintilhac**

#### Préjudices matériels
- **Application** du droit commun
- **Faute simple** opposable

#### Procédure
- **Offre d''indemnisation** par l''assureur dans les **8 mois**
- **Pénalités** en cas de retard ou de sous-évaluation

## II. La responsabilité des produits défectueux

### A. Origine

#### Directive européenne du 25 juillet 1985
- **Harmonisation** européenne
- **Transposition** tardive en France

#### Loi du 19 mai 1998
- **Codification** aux art. `1245` à `1245-17 C. civ.` (ancien art. 1386-1 à 1386-18)
- **Maintien** du droit commun en parallèle

### B. Définition du produit défectueux

#### Article 1245-3 C. civ.
> *« Un produit est défectueux (...) lorsqu''il n''offre pas la sécurité à laquelle on peut légitimement s''attendre. »*

#### Critères d''appréciation
- **Présentation** du produit
- **Usage** raisonnablement attendu
- **Moment** de sa mise en circulation

### C. Conditions de la responsabilité

#### 1. Produit
- Tout **bien meuble**
- Y compris **incorporés** à un immeuble
- **Sang humain**, électricité

#### 2. Défaut
- **Défaut de sécurité**
- Pas un simple défaut de qualité

#### 3. Dommage
- **Personne** : tous préjudices corporels, sans franchise
- **Bien** : franchise de **500 €**, exclusion du produit lui-même

#### 4. Mise en circulation
- **Volontaire** par le producteur

### D. Le responsable

#### Producteur
- **Fabricant** du produit fini
- **Producteur** d''une matière première
- **Fabricant** d''une partie composante
- **Importateur** dans l''UE

#### Vendeur, loueur (subsidiaire)
- Si le **producteur** ne peut être identifié

### E. Exonérations - Article 1245-10 C. civ.

#### Cas d''exonération
1. **Non-mise en circulation** du produit
2. **Présomption** raisonnable que le défaut n''existait pas au moment de la mise en circulation
3. **Activité non économique** (cession entre particuliers)
4. **Conformité** à des règles impératives
5. **Risque de développement** : l''état des connaissances scientifiques et techniques au moment de la mise en circulation ne permettait pas de déceler le défaut

#### Risque de développement
- **Exonération controversée**
- **Exclue** pour les produits du **corps humain**

### F. Prescription

#### Article 1245-15 C. civ.
- **3 ans** à compter de la connaissance du dommage, du défaut et du producteur
- **10 ans** maximum à compter de la mise en circulation

### G. Coexistence avec le droit commun

#### Art. 1245-17 C. civ.
> *« Les dispositions du présent chapitre ne portent pas atteinte aux droits dont la victime d''un dommage peut se prévaloir au titre du droit de la responsabilité contractuelle ou extracontractuelle ou au titre d''un régime spécial de responsabilité. »*

#### Cumul possible
- **Choix** de la victime
- Sauf si la **directive** impose le régime spécial

## III. La responsabilité médicale

### A. Loi Kouchner (4 mars 2002)

#### Article L. 1142-1 CSP
- Le **professionnel** ou **établissement** de santé est responsable **pour faute**
- Sauf exceptions : responsabilité sans faute pour les infections nosocomiales et produits de santé

### B. Distinction faute / aléa thérapeutique

#### Faute
- **Manquement** aux **données acquises de la science** (jurisprudence *Mercier*)
- **Charge** sur la victime

#### Aléa thérapeutique
- **Risque inhérent** aux soins, en l''absence de faute
- **Indemnisation** par la **solidarité nationale**

### C. L''ONIAM

#### Office National d''Indemnisation des Accidents Médicaux
- Établissement **public administratif**
- Créé par la **loi du 4 mars 2002**

#### Champ
- **Aléa** thérapeutique grave (consolidation > 25% AIPP ou > 6 mois ITT)
- **Infections** nosocomiales graves
- **Accidents** liés à des **vaccinations obligatoires**

#### Procédure
- **Commission régionale** de conciliation et d''indemnisation (CRCI)
- **Avis** dans les **6 mois**
- **Offre** d''indemnisation

### D. Infections nosocomiales

#### Régime
- **Responsabilité de plein droit** des établissements de santé
- **Exonération** uniquement par la **cause étrangère**

#### ONIAM
- **Indemnisation** par l''ONIAM si **AIPP > 25%** ou **décès**

## IV. Autres régimes spéciaux

### A. Accidents du travail (loi 9 avril 1898)

#### Régime forfaitaire
- **Indemnisation** par la **sécurité sociale**
- **Forfaitaire** : non intégrale
- **Quel que soit** le degré de la faute

#### Exception : faute inexcusable de l''employeur
- **Majoration** de la rente
- **Indemnisation complémentaire**
- **Action** civile complémentaire

### B. Accidents de travail aérien

#### Convention de Montréal (1999)
- Régime international
- **Responsabilité** de plein droit jusqu''à un certain plafond

### C. Dommages causés par les animaux

#### Article 1243 C. civ.
> *« Le propriétaire d''un animal, ou celui qui s''en sert, pendant qu''il est à son usage, est responsable du dommage que l''animal a causé, soit que l''animal fût sous sa garde, soit qu''il fût égaré ou échappé. »*

#### Conditions
- **Animal** ayant un propriétaire ou détenteur
- **Fait** dommageable
- **Garde** : propriétaire ou utilisateur

### D. Dommages des bâtiments en ruine - Article 1244 C. civ.

#### Conditions
- **Bâtiment** (construction immobilière)
- **Ruine** : effondrement total ou partiel
- **Défaut d''entretien** ou **vice de construction**

#### Responsable
- **Propriétaire** uniquement (pas le locataire)

#### Articulation avec art. 1242 al. 1
- **Concours** des deux régimes
- **Choix** par la victime

## V. Mise en œuvre de la responsabilité civile

### A. L''action en responsabilité

#### Conditions
- **Qualité** : victime ou ses héritiers
- **Intérêt** à agir
- **Capacité**

#### Juridictions
- **Tribunal judiciaire** (montant > 10 000 €)
- **Tribunal de proximité** (montant ≤ 10 000 €)
- **Conseil de prud''hommes** : litiges du travail

### B. La prescription

#### Délai de droit commun - Article 2224 C. civ.
**5 ans** à compter du jour où le titulaire a connu ou aurait dû connaître les faits.

#### Délais spéciaux
- **10 ans** : dommage corporel, à compter de la **consolidation**
- **20 ans** : actes de **barbarie**
- **30 ans** : crimes contre l''humanité

#### Suspension et interruption
- **Suspension** : minorité, mise en demeure
- **Interruption** : assignation, citation directe

### C. L''action civile au pénal

#### Principe
- La victime d''une **infraction** peut se constituer **partie civile** au procès pénal
- **Cumul** de l''action publique et de l''action civile

#### Avantages
- **Économie** procédurale
- **Charge** de la preuve du parquet

#### Indépendance des actions
- Depuis la **loi du 10 juillet 2000**
- La relaxe pénale **ne lie** plus le juge civil

### D. La preuve

#### Charge
- En principe, sur la **victime** (`art. 1353 C. civ.`)

#### Présomptions
- **Choses** : présomption de garde au propriétaire
- **Parents** : présomption irréfragable
- **Produits** : producteur identifié

#### Modes
- Tous **modes de preuve** (faits juridiques)
- **Expertise** judiciaire fréquente

### E. La réparation

#### Principe : réparation intégrale
- **Pas de plafond**
- **Évaluation** au jour du jugement

#### Modes
- **En nature** : remise en état, cessation
- **Par équivalent** : dommages et intérêts (capital ou rente)

#### Date d''évaluation
- **Jour du jugement** (et non du dommage)
- Prise en compte des **évolutions**

#### Provisions
- **Référé-provision** (`art. 835 al. 2 CPC`) : avant le jugement au fond
- Si l''**obligation** n''est pas sérieusement contestable

## VI. Tableau récapitulatif des régimes spéciaux

| Régime | Fondement | Particularité |
|---|---|---|
| **Loi Badinter** | Loi du 5 juillet 1985 | Indemnisation automatique des non-conducteurs |
| **Produits défectueux** | Art. 1245 et s. C. civ. | Directive 1985, transposition 1998 |
| **Accidents médicaux** | Loi Kouchner 2002 | Faute + aléa thérapeutique (ONIAM) |
| **Accidents du travail** | Loi 9 avril 1898 | Indemnisation forfaitaire |
| **Animaux** | Art. 1243 C. civ. | Propriétaire ou utilisateur |
| **Bâtiments en ruine** | Art. 1244 C. civ. | Propriétaire seul |

## Conclusion

Le droit de la responsabilité civile contemporain est devenu un **archipel** de régimes spéciaux qui répondent à des **besoins sociaux** précis. Le **droit commun** (`art. 1240` à `1244 C. civ.`) coexiste avec :
- La **loi Badinter** (accidents de la circulation)
- La **responsabilité des produits défectueux** (`art. 1245 et s.`)
- La **responsabilité médicale** (Loi Kouchner 2002)
- Les **régimes** spécialisés (accidents du travail, animaux, bâtiments)

La **maîtrise** suppose de connaître les **conditions**, **régimes** et **exceptions** propres à chaque domaine, ainsi que leur **articulation** entre eux et avec le droit commun. Pour le juriste praticien, l''enjeu est de **qualifier** correctement la situation pour **mobiliser** le régime le plus favorable à la victime.

La **réforme à venir** clarifiera et harmonisera l''ensemble, en codifiant les acquis jurisprudentiels et en consacrant certains préjudices nouveaux (préjudice écologique déjà codifié, amende civile pour faute lucrative, etc.).'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';
