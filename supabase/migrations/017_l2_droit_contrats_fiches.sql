-- =====================================================================
-- JurisPrép - Cours complet : Droit des contrats (L2 S1)
-- 8 fiches très approfondies basées sur le cours magistral
-- (Partie 1 : Formation + Partie 2 : Effets du contrat)
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-des-contrats');

-- =====================================================================
-- FICHE 1 - INTRODUCTION : NOTION D'OBLIGATION ET DE CONTRAT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Introduction : notion d''obligation et de contrat', 'Introduction',
       'Notion d''obligation et de contrat, sources et classifications, principes directeurs (liberté contractuelle, force obligatoire, bonne foi), réforme de 2016.',
       array['Obligation', 'Prestation', 'Article 2284 C. civ.', 'Réforme 2016', 'Article 1101 C. civ.', 'Liberté contractuelle', 'Force obligatoire', 'Bonne foi', 'Contrat synallagmatique', 'Contrat consensuel', 'Contrat d''adhésion'],
       28, 1,
'# Introduction : notion d''obligation et de contrat

## Introduction

Le **droit civil des contrats** est un aspect du **droit des obligations**, qui constitue le cœur du droit privé. La matière a été profondément réformée par l''**ordonnance n° 2016-131 du 10 février 2016**, ratifiée par la **loi du 20 avril 2018**.

> **Citation** : *« Le droit des obligations est la grammaire du droit. »* (Carbonnier)

## I. La notion d''obligation

### A. Définition

L''**obligation** est un **lien de droit** entre deux personnes, en vertu duquel l''une de ces personnes (le **débiteur**) est tenue envers l''autre (le **créancier**) d''accomplir une certaine **prestation**.

#### Aspects
- **Créancier** : sujet **actif** de l''obligation, investi d''un **droit de créance**
- **Débiteur** : sujet **passif**, tenu d''une **dette**
- L''actif de l''un est le passif de l''autre

#### Patrimoine
- **Créance** → actif du créancier (richesse)
- **Dette** → passif du débiteur

### B. Pluralité de sujets

Plusieurs personnes peuvent être :
- **Codébitrices** d''une même dette
- **Cocréancières** d''une même créance

Exemple : colocataires d''un appartement → tous les deux **créanciers** de la jouissance vis-à-vis du bailleur, mais **codébiteurs** de la dette de loyer.

### C. Éléments de l''obligation

#### 1. La prestation (*debitum*)

L''**objet** de l''obligation, ce à quoi le débiteur est tenu.

##### Trois types historiques (1804)
- **Donner** : transférer la propriété
- **Faire** : accomplir une tâche
- **Ne pas faire** : s''abstenir

##### Réforme de 2016
**Abandon de l''obligation de donner** : le transfert de propriété est une opération **purement intellectuelle**, le débiteur n''a aucun comportement à adopter.

> Aujourd''hui : seulement **faire** et **ne pas faire**.

#### 2. Le rapport de contrainte (*obligatio*)

##### Article 2284 C. civ.
> *« Quiconque s''est obligé personnellement est tenu de remplir son engagement sur tous ses biens mobiliers et immobiliers présents et à venir. »*

##### Droit de gage général
Si le créancier n''obtient pas satisfaction, il peut **saisir** n''importe quel bien du débiteur, le faire vendre et se désintéresser sur le prix.

## II. Sources et classifications des obligations

### A. Les sources - Article 1100 C. civ.

> *« Les obligations naissent d''actes juridiques, de faits juridiques ou de l''autorité seule de la loi. »*

#### Actes juridiques - Article 1100-1
**Manifestations de volonté** destinées à produire des effets de droit.
- **Conventions** : contrats
- **Actes unilatéraux** : testament, démission

#### Faits juridiques - Article 1100-2
**Agissements ou événements** auxquels la loi attache des effets de droit.
- **Délit / quasi-délit** : responsabilité civile
- **Quasi-contrat** : gestion d''affaires, paiement de l''indu, enrichissement injustifié

#### La loi seule
Obligations naissant **directement** d''un texte sans acte ni fait : obligation alimentaire, fiscale.

### B. Les classifications du contrat

#### Article 1101 C. civ.
> *« Le contrat est un accord de volontés entre deux ou plusieurs personnes destiné à créer, modifier, transmettre ou éteindre des obligations. »*

#### Typologie - Articles 1106 à 1111-1 C. civ.

| Classification | Définition |
|---|---|
| **Synallagmatique** | Obligations réciproques |
| **Unilatéral** | Obligations à la charge d''une seule partie |
| **À titre onéreux** | Chaque partie reçoit une contrepartie |
| **À titre gratuit** | L''une procure un avantage sans contrepartie |
| **Commutatif** | Avantages réciproques connus dès la conclusion |
| **Aléatoire** | Avantages dépendent d''un événement incertain |
| **Consensuel** | Formé par le seul accord de volontés |
| **Solennel** | Forme requise pour la validité |
| **Réel** | Suppose la remise d''une chose |
| **De gré à gré** | Stipulations librement négociées |
| **D''adhésion** | Conditions générales non négociables |
| **Cadre** | Caractéristiques générales d''une future relation |
| **À exécution instantanée** | Obligations exécutées en une seule prestation |
| **À exécution successive** | Obligations échelonnées dans le temps |

## III. Les principes directeurs du contrat

### A. La liberté contractuelle - Article 1102 C. civ.

> *« Chacun est libre de contracter ou de ne pas contracter, de choisir son cocontractant et de déterminer le contenu et la forme du contrat dans les limites fixées par la loi. La liberté contractuelle ne permet pas de déroger aux règles qui intéressent l''ordre public. »*

#### Trois dimensions
- Liberté de **contracter ou non**
- Liberté de **choisir** son cocontractant
- Liberté de **fixer le contenu et la forme**

#### Limites
- **Ordre public** (économique, social, sanitaire)
- **Bonnes mœurs** (atténué depuis 2016)

### B. La force obligatoire - Article 1103 C. civ.

> *« Les contrats légalement formés tiennent lieu de loi à ceux qui les ont faits. »*

#### Conséquences
- **Force obligatoire** : le contrat s''impose aux parties
- **Intangibilité** : il ne peut être modifié unilatéralement
- **Sécurité** juridique des conventions

### C. La bonne foi - Article 1104 C. civ.

> *« Les contrats doivent être négociés, formés et exécutés de bonne foi. Cette disposition est d''ordre public. »*

#### Trois temps
- **Négociation** : loyauté précontractuelle
- **Formation** : exécution honnête
- **Exécution** : coopération entre les parties

#### Caractère d''ordre public
- **Impossibilité d''écarter** par stipulation
- **Sanction** : nullité de la clause contraire

## IV. La réforme de 2016

### A. Genèse

#### Avant-projets successifs
- **Catala** (2005)
- **Terré** (2008)
- **Chancellerie** (2008, 2013, 2015)

#### Habilitation
**Loi du 16 février 2015** : habilitation à réformer par ordonnance.

#### Ordonnance et ratification
- **Ordonnance n° 2016-131 du 10 février 2016**
- **Loi de ratification du 20 avril 2018** : modifications mineures

### B. Apports

#### Codification de la jurisprudence
- Notion de cause (**supprimée**, intégrée au « contenu »)
- Bonne foi étendue
- Théorie de l''imprévision (**art. 1195**)
- Rupture des pourparlers (Manoukian 2003)

#### Innovations
- **Action interrogatoire** (pacte de préférence)
- **Imprévision** : possibilité de révision pour changement de circonstances
- **Réduction** unilatérale du prix pour exécution imparfaite
- **Résolution** par notification

#### Inspirations
- **Principes Unidroit**
- **Principes Lando** du droit européen des contrats
- **DCFR** (Draft Common Frame of Reference)

### C. Structure nouvelle

#### Titre III du livre III - Sources des obligations
- **Sous-titre 1** : Le contrat (`art. 1101 à 1231-7`)
- **Sous-titre 2** : Responsabilité extracontractuelle (`art. 1240 à 1252`)
- **Sous-titre 3** : Autres sources (quasi-contrats)

#### Plan moderne du contrat
- Dispositions préliminaires
- Formation du contrat (offre, acceptation, capacité, représentation, validité)
- Interprétation du contrat
- Effets du contrat (entre parties, à l''égard des tiers)

## Conclusion

Le droit des contrats est la **matrice du droit privé**. Sa **réforme de 2016** a clarifié et modernisé le Code civil tout en préservant ses fondamentaux. La maîtrise suppose :
- La compréhension de la **notion d''obligation** et de ses sources
- La connaissance des **classifications** du contrat
- L''assimilation des **principes directeurs** (liberté, force obligatoire, bonne foi)
- La maîtrise du **plan** issu de la réforme

Le **plan du cours** suit la chronologie naturelle :
- **Formation** : offre/acceptation, négociations, avant-contrats, validité (consentement, capacité, contenu)
- **Effets** : force obligatoire, exécution forcée, inexécution, responsabilité contractuelle
- **Effet relatif** : entre parties et à l''égard des tiers'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 2 - LA FORMATION DU CONTRAT : OFFRE ET ACCEPTATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La formation du contrat : offre et acceptation', 'Partie 1 - Chapitre 1 : Rencontre des volontés',
       'L''offre de contrat (notion, caractères, régime), l''acceptation (notion, expression, étendue), formation entre absents et contrats électroniques.',
       array['Article 1113 C. civ.', 'Article 1114 C. civ.', 'Offre', 'Pollicitation', 'Acceptation', 'Précision', 'Fermeté', 'Délai raisonnable', 'Caducité', 'Révocation', 'Réception', 'Contrat entre absents', 'Silence vaut acceptation'],
       30, 2,
'# La formation du contrat : offre et acceptation

## Introduction

Pour qu''il y ait un **contrat**, il faut un **accord de volontés**. Cet accord ne se réalise pas en un instant : il suppose une **offre** (manifestation unilatérale de la volonté d''une partie) et une **acceptation** (consentement de l''autre partie).

> **Article 1113 C. civ.** : *« Le contrat est formé par la rencontre d''une offre et d''une acceptation par lesquelles les parties manifestent leur volonté de s''engager. »*

## I. L''offre de contrat

### A. La notion d''offre

L''auteur de l''offre est l''**offrant** ou **pollicitant**. Il formule une **offre** ou **pollicitation**. Toute proposition de contracter n''est pas une offre : pour cela, deux qualités sont requises.

#### 1. La précision

Une proposition est **précise** lorsqu''elle comporte tous les **éléments essentiels** du contrat proposé.

##### Exemple : offre de vente
- **Précise** : chose vendue + prix réclamé
- **Imprécise** : chose vendue mais « prix à débattre » (pas d''offre)

##### Conséquence
Si la proposition n''est pas précise, son acceptation ne permettra pas la formation du contrat.

#### 2. La fermeté

Une proposition est **ferme** lorsqu''elle manifeste la volonté de son auteur d''être **lié par la seule acceptation**.

##### Réserves et conditions
Doivent être exclues les réserves portant sur la volonté de l''auteur.

##### Réserves explicites vs implicites
- **Explicites** : exprimées dans l''offre
- **Implicites** : se déduisent de la nature du contrat
- *Intuitus personae* : contrats fondés sur la considération de la personne (**bail**, **travail**) → réserve implicite

##### Réserves subjectives vs objectives
- **Subjective** : porte sur la volonté de l''auteur → pas d''offre
- **Objective** : porte sur un élément extérieur indépendant (stock) → reste une offre

### B. Les caractères de l''offre

#### 1. L''extériorisation

L''offre doit être **rendue visible** aux tiers.

##### Formes possibles
- **Expresse** : déclaration écrite ou verbale
- **Tacite** : comportement non équivoque révélant la volonté

#### 2. La durée

L''offre est toujours **assortie d''une durée** :
- Soit **fixée par l''offrant**
- Soit **imposée par la loi** (certains contrats)
- Soit **délai raisonnable** apprécié par le juge

##### Effet de l''expiration
À l''expiration, l''offre devient **caduque** : pas de contrat possible.

#### 3. Le destinataire

##### Principe
L''offre peut être faite à :
- **Personne déterminée** (seule cette personne peut accepter)
- **Public** (n''importe qui peut accepter)

##### Conséquence du décès
- Offre à **personne déterminée** : caducité au décès du destinataire
- Offre **au public** : pas d''incidence

### C. Le régime de l''offre

#### Équilibre entre logique et sécurité
- **Logique juridique** : l''offre est précaire (dépend de la volonté)
- **Sécurité juridique** : le destinataire doit pouvoir réfléchir, engager des frais

#### 1. La caducité de l''offre

Causes de **caducité licite** (aucune compensation au destinataire) :
- **Décès** de l''offrant
- **Incapacité** de l''offrant
- **Incapacité** du destinataire (offre à personne déterminée)
- **Expiration** du délai

#### 2. La révocation de l''offre

Trois périodes :

##### Période 1 : avant que le destinataire prenne connaissance de l''offre
- **Révocation efficace** (fait disparaître l''offre)
- **Licite** (pas d''atteinte à la sécurité juridique)
- Pas d''indemnisation

##### Période 2 : après prise de connaissance, avant expiration
- **Révocation efficace** (empêche la formation du contrat)
- **Illicite** : constitue une **faute** (délit civil)
- **Indemnisation** des frais d''étude de l''offre
- Mais **pas** des avantages attendus du contrat (dommage hypothétique)

##### Période 3 : après expiration de l''offre
- **Révocation sans effet** : le délai a déjà fait tomber l''offre
- Pas d''indemnisation

## II. L''acceptation

### A. La notion d''acceptation

L''acceptation est l''**expression de la volonté du destinataire**. Pour former le contrat, elle doit constituer un **agrément pur et simple** de l''offre.

#### Agrément pur
**Aucune condition** ni réserve sur la volonté de son auteur. Sinon → contre-offre.

#### Agrément simple
Les termes de l''acceptation **coïncident parfaitement** avec ceux de l''offre. En cas de divergence → contre-offre.

### B. L''expression de l''acceptation

#### Formes
- **Expresse** : écrite ou verbale
- **Tacite** : comportement non équivoque

#### Le silence ne vaut pas acceptation
**Principe** : le silence ne vaut pas consentement (*qui ne dit mot ne consent pas* en droit). Exceptions :

##### 1. Texte spécial
Le législateur prévoit que le silence vaut acceptation (ex : tacite reconduction du bail).

##### 2. Coutume
La règle procède d''une coutume professionnelle.

##### 3. Relations d''affaires
Habitude entre les parties de donner au silence valeur d''acceptation.

##### 4. Circonstances particulières
Offre formulée dans l''**intérêt exclusif** du destinataire → silence vaut acceptation (JP sous l''empire de 1804).

### C. L''étendue de l''acceptation

#### Coïncidence des volontés
Les volontés doivent **coïncider précisément**. Pas de difficulté pour les éléments essentiels, mais pour les conditions générales :
- Les **conditions générales** doivent être **portées à la connaissance** du destinataire
- En cas de **conditions générales contradictoires** des deux parties : seules les clauses **communes** subsistent (*battle of forms*)

#### Effet rétroactif
L''acceptation rétroagit au jour de l''offre (théorie classique).

## III. Le contrat entre absents et le facteur espace

### A. Les contrats entre absents

#### Notion
Contrat conclu entre deux personnes **éloignées géographiquement**. Décalage entre émission de l''offre et émission de l''acceptation.

#### Deux questions
- **Moment** de la formation
- **Lieu** de la formation

#### Enjeux
- Application de la **loi nouvelle**
- Détermination du **tribunal territorialement compétent**

#### Théories doctrinales
- **Théorie de l''émission** : contrat conclu au jour et au lieu où le destinataire **exprime** son consentement
- **Théorie de la réception** : contrat conclu au jour et au lieu où l''offrant **prend connaissance** de l''acceptation

#### Solution jurisprudentielle (avant 2016)
- Arrêt de **1932** : théorie de l''**émission**

#### Solution actuelle (depuis 2016)
**Théorie de la réception** : *Article 1121 C. civ.* : *« Le contrat est conclu dès que l''acceptation parvient à l''offrant. »*

##### Conséquences
- Tant que l''acceptation n''est pas parvenue : possibilité de **révocation** par l''acceptant via un moyen plus rapide
- L''offrant peut révoquer son offre tant que l''acceptation n''est pas reçue

### B. Les contrats conclus par représentation

#### Notion
Une personne s''intercède pour favoriser la conclusion du contrat. Pouvoirs variables :
- **Courtier** : simple rapprochement, pas de pouvoir de conclure
- **Prête-nom** : conclut le contrat en son nom pour autrui
- **Mandataire** : conclut au nom et pour le compte du mandant

#### Article 1153 C. civ.
> *« Le représentant légal, judiciaire ou conventionnel n''est fondé à agir que dans la limite des pouvoirs qui lui ont été conférés. »*

#### Conséquences
- **Absence de pouvoir** : contrat **nul**
- **Excès de pouvoir** : contrat **inopposable** au représenté
- **Apparence** : protection des tiers (mandat apparent)

### C. Les contrats électroniques

#### Cadre légal
- **Loi LCEN du 21 juin 2004**
- Codifiés aux `art. 1125 à 1127-6 C. civ.`

#### Formalisme
- **Double clic** : confirmation de l''acceptation
- **Récapitulatif** de la commande avant validation
- **Conservation** des contrats > 120 €

#### Particularités
- **Information** renforcée
- **Droit de rétractation** (consommation)
- **Validité de l''écrit électronique** (`art. 1366`)

## Conclusion

La formation du contrat repose sur la **rencontre des volontés** entre offre et acceptation. Le régime de l''**offre** (caducité, révocation) traduit un équilibre subtil entre **logique juridique** (précarité) et **sécurité juridique**. L''**acceptation** doit être un agrément pur et simple.

Les **contrats entre absents** ont fait l''objet d''un revirement légal : depuis 2016, c''est la **théorie de la réception** qui s''applique, abandonnant la jurisprudence de 1932.

Le contrat **électronique** illustre l''adaptation du droit aux nouvelles technologies, avec un formalisme protecteur des consommateurs.'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 3 - POURPARLERS ET AVANT-CONTRATS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Pourparlers et avant-contrats', 'Partie 1 - Chapitre 2 : Étalement dans le temps',
       'Négociations précontractuelles, rupture des pourparlers (Manoukian 2003), pacte de préférence, promesse unilatérale, promesse synallagmatique.',
       array['Article 1112 C. civ.', 'Manoukian 2003', 'Bonne foi', 'Obligation d''information', 'Article 1112-1 C. civ.', 'Pacte de préférence', 'Article 1123 C. civ.', 'Action interrogatoire', 'Promesse unilatérale', 'Article 1124 C. civ.', 'Promesse synallagmatique'],
       30, 3,
'# Pourparlers et avant-contrats

## Introduction

La formation du contrat **ne se réalise pas toujours en un instant**. Elle peut s''étaler dans le temps lorsqu''elle est précédée de :
- **Négociations** (pourparlers)
- **Avant-contrats** (pacte de préférence, promesse unilatérale, promesse synallagmatique)

## I. Les négociations (pourparlers)

### A. Sources des négociations

#### Expresses
L''une des parties propose à l''autre d''**ouvrir** des négociations pour tel contrat.

#### Implicites
Procèdent du **jeu de l''offre et des contre-offres** : les parties sont en négociation sans s''en rendre compte.

### B. Régime des négociations

Conciliation de **deux principes directeurs** :

#### 1. La liberté contractuelle

> Tant qu''il n''y a pas de contrat, chacune des parties conserve la **liberté** de conclure ou non.

L''entrée en négociation n''oblige jamais à poursuivre jusqu''à son terme.

#### 2. La bonne foi - Article 1112 C. civ.

> *« L''initiative, le déroulement et la rupture des négociations précontractuelles sont libres. Ils doivent impérativement satisfaire aux exigences de la bonne foi. En cas de faute commise dans les négociations, la réparation du préjudice qui en résulte ne peut avoir pour objet de compenser ni la perte des avantages attendus du contrat non conclu, ni la perte de chance d''obtenir ces avantages. »*

##### Obligations dérivées
- **Obligation d''information** : divulguer les informations essentielles à la conclusion
- **Obligation de confidentialité** : ne pas répandre les secrets sensibles

### C. L''obligation d''information - Article 1112-1 C. civ.

#### Texte
> *« Celle des parties qui connaît une information dont l''importance est déterminante pour le consentement de l''autre doit l''en informer dès lors que, légitimement, cette dernière ignore cette information ou fait confiance à son cocontractant. »*

#### Conditions
- **Importance déterminante** pour le consentement
- **Ignorance légitime** par l''autre partie
- **Connaissance** par le débiteur de l''information

#### Limites
- N''**inclut pas** la valeur de la prestation
- Réserve : information protégée par un **secret professionnel**

#### Sanction
- **Responsabilité** (faute) si l''information n''est pas donnée
- **Nullité** du contrat si manquement entraîne un **vice du consentement**

### D. La rupture des pourparlers

#### Arrêt fondateur : *Com., 26 novembre 2003, Manoukian*

##### Solution
Codification dans la réforme de 2016. Régime en deux propositions :

##### 1. La rupture en elle-même n''est pas fautive
- **Liberté** contractuelle préservée
- La victime ne peut prétendre à des DI **pour le contrat non conclu**

##### 2. Les fautes à l''occasion de la rupture donnent lieu à des DI
- Examen du **comportement** de l''auteur
- Si **déloyal** → **délit civil** → responsabilité

#### Nature de la responsabilité
- **Extracontractuelle** en principe (pas de contrat entre les parties)
- **Contractuelle** si un contrat de négociation préexiste

#### Étendue de la réparation
- **Indemnisable** : frais engagés dans les négociations
- **Non indemnisable** : avantages attendus du contrat non conclu (dommage **hypothétique**)

## II. Les avant-contrats

### A. Le pacte de préférence

#### Définition - Article 1123 C. civ.
> *« Le pacte de préférence est le contrat par lequel une partie s''engage à proposer prioritairement à son bénéficiaire de traiter avec lui pour le cas où elle déciderait de contracter. »*

Au jour du pacte, le **promettant** n''a pas encore la volonté de conclure. Mais si elle vient, il devra faire l''offre **en priorité** au **bénéficiaire**.

#### 1. La validité

##### Conditions générales du contrat
- Capacité, consentement, contenu

##### Précisions
- **Nature et objet** du contrat définitif doivent être précisés
- **Prix** : pas besoin d''être déterminé au pacte
- **Solennité** du contrat définitif : pas requise au pacte
- **Durée** : non condition de validité (pactes à durée déterminée ou indéterminée)

#### 2. L''efficacité

##### Violations possibles
- **Violation directe** : le promettant conclut avec un tiers sans avoir proposé au bénéficiaire
- **Violation indirecte** : conclusion avec un tiers à des conditions plus avantageuses

##### Solutions jurisprudentielles antérieures
- Avant *Ch. mixte, 26 mai 2006* : seuls les **DI** étaient possibles
- À partir de 2006 : si le tiers était de **mauvaise foi**, possibilité de demander la **nullité** ET la **substitution**

##### Codification 2016
Le bénéficiaire peut demander, selon le cas :
- **DI** (responsabilité contractuelle du promettant)
- **DI** (responsabilité délictuelle du tiers de mauvaise foi)
- **Nullité** du contrat conclu avec le tiers
- **Substitution** dans le contrat

##### Conditions strictes pour la nullité/substitution
- Tiers **de mauvaise foi**
- Avait **connaissance du pacte**
- Avait **connaissance de l''intention** du bénéficiaire de s''en prévaloir

#### 3. L''action interrogatoire - Article 1123 al. 3 et 4

##### Innovation 2016
Le tiers qui soupçonne l''existence d''un pacte peut **interroger** le bénéficiaire par écrit pour savoir :
- S''il existe un pacte
- S''il entend s''en prévaloir

##### Effets
- Si le bénéficiaire **répond dans le délai** : situation clarifiée
- Si **réponse hors délai ou silence** : il ne pourra plus demander nullité ni substitution

##### Sécurisation
Cette action vise à **sécuriser** la position du tiers de bonne foi.

### B. La promesse unilatérale de contrat - Article 1124 C. civ.

#### Définition
> *« La promesse unilatérale est le contrat par lequel une partie, le promettant, accorde à l''autre, le bénéficiaire, le droit d''opter pour la conclusion d''un contrat dont les éléments essentiels sont déterminés, et pour la formation duquel ne manque que le consentement du bénéficiaire. »*

Le **promettant** donne d''ores et déjà son consentement. Le **bénéficiaire** dispose d''un **droit d''option** : lever ou refuser.

#### À titre gratuit ou onéreux
- **Gratuit** : pas de contrepartie
- **Onéreux** : indemnité d''immobilisation versée par le bénéficiaire
- Si l''option est levée : l''indemnité s''impute sur le prix
- Si refus : l''indemnité reste acquise au promettant

#### 1. La validité

##### Conditions
- Conditions du contrat **définitif** doivent être respectées (consentement du promettant déjà donné)
- **Identification** du contrat définitif (nature, objet)
- **Solennité** du contrat définitif requise dès la promesse
- **Pas de problème de durée**

#### 2. L''efficacité

##### Violations possibles

**a) Rétractation par le promettant pendant la durée de la promesse**

###### Jurisprudence ancienne
*Civ. 3e, 15 décembre 1993* : la rétractation est **efficace** (empêche la formation du contrat définitif) mais constitue une faute → DI seulement.

###### Codification 2016 (article 1124 al. 2)
> *« La révocation de la promesse pendant le temps laissé au bénéficiaire pour opter n''empêche pas la formation du contrat promis. »*

**Brise** la jurisprudence : la rétractation est **inefficace**, l''option peut toujours être levée.

###### Application
La Cour de cassation a aligné sa jurisprudence pour les contrats conclus avant 2016 (*Civ. 3e, 23 juin 2021*).

**b) Le promettant conclut avec un tiers**

###### Article 1124 al. 3
> *« Le contrat conclu en violation de la promesse unilatérale avec un tiers qui en connaissait l''existence est nul. »*

###### Distinction selon la bonne foi du tiers
- **Tiers de bonne foi** (ignorant la promesse) : responsabilité contractuelle du promettant uniquement
- **Tiers de mauvaise foi** (connaissant la promesse) : **nullité** du contrat conclu

### C. La promesse synallagmatique de contrat

#### Définition
Contrat par lequel les **deux parties** donnent d''ores et déjà leur consentement au contrat définitif. Il manque un autre élément pour parfaire (écrit, remise d''une chose).

#### Pas codifiée par 2016
Régime essentiellement **jurisprudentiel**.

#### Trois hypothèses selon le contrat définitif

##### 1. Contrat définitif consensuel (compromis de vente)
- **Principe** : la promesse **vaut** le contrat définitif (`art. 1589 C. civ.`)
- Sauf si les parties ont fait de la **rédaction d''un écrit** :
  - Mesure de **preuve** ou **opposabilité** : pas d''impact → promesse vaut vente
  - Condition d''**existence** ou **validité** : promesse ne vaut pas vente
- En vertu de la liberté contractuelle, les parties peuvent transformer un contrat consensuel en contrat solennel

##### 2. Contrat définitif réel
- Suppose la **remise d''une chose** pour sa formation
- La promesse ne contient que l''accord de volonté
- Tant qu''il n''y a pas remise : contrat **non formé**

##### 3. Contrat définitif solennel
Deux possibilités :
- **Solennité respectée** dès la promesse → promesse vaut contrat définitif
- **Solennité non respectée** → promesse consensuelle de contrat solennel → **nulle**

## Conclusion

L''**étalement dans le temps** de la formation du contrat est une réalité fréquente du droit moderne. Les **pourparlers** sont gouvernés par la **bonne foi** : la rupture est libre, mais les fautes commises à son occasion donnent lieu à DI (*Manoukian* 2003, codifié à l''art. 1112).

L''**obligation d''information** (art. 1112-1) impose une transparence renforcée. Les **avant-contrats** (pacte de préférence, promesse unilatérale, promesse synallagmatique) sécurisent l''opération contractuelle, avec depuis 2016 :
- L''**action interrogatoire** (pacte de préférence)
- L''**inefficacité de la rétractation** de la promesse unilatérale (art. 1124)

Ces évolutions traduisent une **modernisation** du droit français des contrats, inspirée des standards internationaux.'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 4 - LE CONSENTEMENT ET SES VICES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le consentement et ses vices', 'Partie 1 - Chapitre 3 : Validité du contrat',
       'Existence et intégrité du consentement, erreur (substance, personne, valeur), dol (manœuvres, réticence), violence (morale, économique).',
       array['Article 1128 C. civ.', 'Consentement', 'Article 1129 C. civ.', 'Erreur', 'Article 1132 C. civ.', 'Qualités essentielles', 'Erreur sur la valeur', 'Dol', 'Article 1137 C. civ.', 'Réticence dolosive', 'Violence', 'Article 1140 C. civ.', 'Violence économique'],
       30, 4,
'# Le consentement et ses vices

## Introduction

Le **consentement** est l''extériorisation de la volonté des parties. Puisque le contrat est un **accord de volontés**, il doit reposer sur un échange de consentements.

> **Article 1128 C. civ.** : *« Sont nécessaires à la validité d''un contrat : 1° Le consentement des parties ; 2° Leur capacité de contracter ; 3° Un contenu licite et certain. »*

Le consentement doit être :
- **Existant** : la personne doit être saine d''esprit
- **Intègre** : éclairé et libre

## I. L''existence du consentement

### A. La saine d''esprit - Article 414-1 C. civ.

> *« Pour faire un acte valable, il faut être sain d''esprit. C''est à ceux qui agissent en nullité pour cette cause de prouver l''existence d''un trouble mental au moment de l''acte. »*

### B. La preuve du trouble mental

#### Charge
**Au demandeur en nullité** de prouver le trouble mental **au moment** de l''acte.

#### Présomption
- En cas de **tutelle** : présomption d''insanité d''esprit
- Hors tutelle : preuve à apporter

## II. Les vices du consentement

### A. La distinction mesures préventives / curatives

#### Mesures préventives
- **Information** (`art. 1112-1`)
- **Forme** (acte solennel)
- **Délais de réflexion**
- **Droit de rétractation**

#### Mesures curatives - Articles 1130 à 1144 C. civ.
- **Erreur**
- **Dol**
- **Violence**

> **Article 1130 C. civ.** : *« L''erreur, le dol et la violence vicient le consentement lorsqu''ils sont de telle nature que, sans eux, l''une des parties n''aurait pas contracté ou aurait contracté à des conditions substantiellement différentes. Leur caractère déterminant s''apprécie eu égard aux personnes et aux circonstances dans lesquelles le consentement a été donné. »*

### B. L''erreur

#### Notion
L''erreur est une **fausse représentation de la réalité**. Tous les types d''erreurs ne sont pas sources de nullité.

#### 1. Les erreurs causes de nullité

##### a) L''erreur sur les qualités essentielles de la prestation - Article 1132

> *« L''erreur de droit ou de fait, à moins qu''elle ne soit inexcusable, est une cause de nullité du contrat lorsqu''elle porte sur les qualités essentielles de la prestation due ou sur celles du cocontractant. »*

##### Conditions
- **Erreur sur les qualités essentielles** : article 1133
- **Erreur déterminante** (sans elle, pas de contrat)
- **Erreur excusable**

##### Qualités essentielles - Article 1133
> *« Les qualités essentielles de la prestation sont celles qui ont été expressément ou tacitement convenues et en considération desquelles les parties ont contracté. »*

##### Aléa et incertitude
> **Article 1133 al. 3 C. civ.** : *« L''acceptation d''un aléa sur une qualité de la prestation exclut l''erreur relative à cette qualité. »*

Si les parties ont accepté un **aléa**, l''erreur sur la qualité aléatoire n''est pas une cause de nullité.

##### b) L''erreur sur les qualités essentielles du cocontractant

##### Article 1134
> *« L''erreur sur les qualités essentielles du cocontractant n''est une cause de nullité que dans les contrats conclus en considération de la personne. »*

Application aux contrats *intuitus personae*.

##### c) Erreur sur les motifs ?
**Principe** : *Article 1135 al. 1* : pas cause de nullité.
**Exception** : si une stipulation expresse l''a fait entrer dans le champ contractuel.

##### d) Erreur sur la valeur ?
> **Article 1136 C. civ.** : *« L''erreur sur la valeur par laquelle, sans se tromper sur les qualités essentielles de la prestation, un contractant fait seulement de celle-ci une appréciation économique inexacte, n''est pas une cause de nullité. »*

#### 2. Les erreurs neutralisées

##### Erreur inexcusable - Article 1132
L''erreur **inexcusable** (négligence grossière) n''entraîne pas la nullité.

##### Erreur sur la valeur
Sauf si elle découle d''une erreur sur les qualités essentielles.

##### Erreur sur les motifs
Sauf incorporation au champ contractuel.

### C. Le dol

#### Notion - Article 1137 C. civ.
> *« Le dol est le fait pour un contractant d''obtenir le consentement de l''autre par des manœuvres ou des mensonges. Constitue également un dol la dissimulation intentionnelle par l''un des contractants d''une information dont il sait le caractère déterminant pour l''autre partie. Néanmoins, ne constitue pas un dol le fait pour une partie de ne pas révéler à son cocontractant son estimation de la valeur de la prestation. »*

#### 1. Les éléments constitutifs

##### a) Élément matériel : trois formes

- **Manœuvres** : mises en scène, montages
- **Mensonges** : affirmations contraires à la vérité
- **Réticence dolosive** : dissimulation intentionnelle

##### b) Élément intentionnel
**Intention de tromper** = élément moral du dol.

##### c) Émanant d''un cocontractant
- En principe, d''un **cocontractant**
- Exception : du **représentant** ou du **complice** (`art. 1138`)

#### 2. Conditions

##### Caractère déterminant
Le dol doit avoir été **déterminant** : sans lui, pas de contrat ou conditions substantiellement différentes.

##### Erreur excusable possible
> **Article 1139 C. civ.** : *« L''erreur qui résulte d''un dol est toujours excusable ; elle est une cause de nullité alors même qu''elle porterait sur la valeur de la prestation ou sur un simple motif du contrat. »*

##### Avantages par rapport à l''erreur simple
- L''erreur dolosive est **toujours excusable**
- Elle peut porter sur la **valeur** ou les **motifs**

#### 3. La réticence dolosive

##### Conditions
- **Information déterminante** pour le cocontractant
- **Dissimulation intentionnelle**

##### Limite
*Article 1137 al. 3* : ne constitue pas un dol le fait de ne pas révéler **son estimation de la valeur**.

##### Articulation avec l''obligation d''information (art. 1112-1)
Si l''obligation d''information est violée intentionnellement → réticence dolosive.

### D. La violence

#### Notion - Article 1140 C. civ.
> *« Il y a violence lorsqu''une partie s''engage sous la pression d''une contrainte qui lui inspire la crainte d''exposer sa personne, sa fortune ou celles de ses proches à un mal considérable. »*

#### 1. Les éléments constitutifs

##### a) La contrainte
- **Physique** (rare)
- **Morale** : menace
- **Économique** (depuis 2016)

##### b) La crainte d''un mal considérable
- Sur **la personne**
- Sur **la fortune**
- Sur les **proches**

##### c) Caractère déterminant
Sans la violence, le contrat n''aurait pas été conclu ou à des conditions substantiellement différentes.

#### 2. La violence émanant d''un tiers

##### Article 1142 C. civ.
> *« La violence est une cause de nullité qu''elle ait été exercée par une partie ou par un tiers. »*

Contrairement au dol, la violence par un **tiers** vicie le consentement.

#### 3. La violence économique - Article 1143

##### Innovation 2016 - Codification de la jurisprudence
> *« Il y a également violence lorsqu''une partie, abusant de l''état de dépendance dans lequel se trouve son cocontractant à son égard, obtient de lui un engagement qu''il n''aurait pas souscrit en l''absence d''une telle contrainte et en tire un avantage manifestement excessif. »*

##### Conditions
- **État de dépendance** du cocontractant
- **Abus** de cette dépendance
- **Engagement** non souscrit sans la contrainte
- **Avantage manifestement excessif**

##### Origine jurisprudentielle
- *Civ. 1re, 30 mai 2000* : reconnaissance de la violence économique
- *Civ. 1re, 3 avril 2002, Larousse* : précisions

#### 4. La crainte révérencielle

##### Article 1141 C. civ.
> *« La menace d''une voie de droit ne constitue pas une violence. Il en va autrement lorsque la voie de droit est détournée de son but ou lorsqu''elle est invoquée ou exercée pour obtenir un avantage manifestement excessif. »*

## III. Le régime des vices du consentement

### A. La nullité relative

#### Article 1131 C. civ.
> *« Les vices du consentement sont une cause de nullité relative du contrat. »*

#### Caractéristiques de la nullité relative
- **Action ouverte** uniquement à la victime
- **Confirmation** possible (renonciation)
- **Prescription** : 5 ans (`art. 2224`)

### B. La preuve

#### Charge
À la **victime** du vice de prouver :
- L''**erreur, le dol ou la violence**
- Son **caractère déterminant**

#### Modes
Tous **modes de preuve** (faits juridiques).

#### Présomptions
- **Pas de présomption** pour l''erreur
- **Présomption de caractère déterminant** pour le dol (jurisprudence)

### C. Les dommages et intérêts

#### Cumul possible
La victime peut demander :
- **Nullité** du contrat
- **DI** pour le préjudice subi (responsabilité délictuelle)

#### Cas du dol
Le dol étant un délit civil, il peut donner lieu à DI **même sans nullité**.

## Conclusion

Le **consentement** est la pierre angulaire du contrat. Sa protection passe par :
- L''exigence d''un **consentement existant** (sain d''esprit)
- L''**intégrité** du consentement à travers les **vices** : erreur, dol, violence

La **réforme de 2016** a :
- **Clarifié** les conditions de chaque vice
- **Codifié** la violence économique (jurisprudence Larousse)
- **Étendu** l''obligation d''information (art. 1112-1)
- **Maintenu** le régime de la **nullité relative**

La maîtrise suppose la distinction entre **erreur sur la valeur** (non viciante), **erreur sur les motifs** (rarement viciante), et **erreur sur les qualités essentielles** (cause de nullité). Le **dol** offre des avantages procéduraux substantiels (erreur toujours excusable, possibilité de DI).'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 5 - CAPACITÉ, CONTENU ET CONDITIONS DE VALIDITÉ
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Capacité, contenu et conditions de validité', 'Partie 1 - Chapitre 4 : Conditions de l''acte',
       'Capacité de contracter, contenu licite et certain (déterminé/déterminable, prix, chose hors commerce), but du contrat, ordre public.',
       array['Article 1128 C. civ.', 'Capacité', 'Article 1145 C. civ.', 'Mineur', 'Majeur protégé', 'Contenu licite et certain', 'Article 1162 C. civ.', 'Article 1163 C. civ.', 'Prix', 'Article 1164 C. civ.', 'Article 1170 C. civ.', 'Article 1171 C. civ.'],
       28, 5,
'# Capacité, contenu et conditions de validité

## Introduction

Outre le **consentement**, l''article 1128 C. civ. exige deux autres conditions de validité :
- La **capacité** des parties
- Un **contenu licite et certain**

> **Article 1128 C. civ.** : *« Sont nécessaires à la validité d''un contrat : 1° Le consentement des parties ; 2° Leur capacité de contracter ; 3° Un contenu licite et certain. »*

## I. La capacité de contracter

### A. Le principe

#### Article 1145 C. civ.
> *« Toute personne physique peut contracter sauf en cas d''incapacité prévue par la loi. La capacité des personnes morales est limitée par les règles applicables à chacune d''entre elles. »*

#### Capacité de jouissance vs d''exercice
- **Capacité de jouissance** : aptitude à être titulaire de droits
- **Capacité d''exercice** : aptitude à exercer ses droits

### B. Les incapacités

#### 1. Les mineurs non émancipés

##### Régime de droit commun
- **Incapacité d''exercice** : peuvent jouir mais non exercer
- **Représentation** par les parents ou tuteur

##### Actes valables
- **Actes de la vie courante** (`art. 388-1-1 C. civ.`)
- **Actes conservatoires**

##### Actes nuls
- Actes excédant la vie courante sans représentation
- **Nullité relative** : peut être invoquée par le mineur ou son représentant

#### 2. Les majeurs protégés

##### Trois régimes (Loi du 5 mars 2007)
- **Sauvegarde de justice** : intervention ponctuelle
- **Curatelle** : assistance pour actes graves
- **Tutelle** : représentation continue

##### Actes
- Selon le régime, capacité variable
- **Nullité relative** des actes interdits

##### Habilitation familiale (2015)
Alternative aux régimes classiques pour membres de la famille.

### C. La représentation - Articles 1153 à 1161 C. civ.

#### Notion
Mécanisme par lequel une personne (le **représentant**) accomplit un acte au nom et pour le compte d''une autre (le **représenté**).

#### Sources
- **Légale** (mineur, tutelle)
- **Judiciaire**
- **Conventionnelle** (mandat)

#### Effets
> **Article 1154 C. civ.** : *« Lorsque le représentant agit dans la limite de ses pouvoirs au nom et pour le compte du représenté, celui-ci est seul engagé. »*

#### Sanctions
- **Absence de pouvoir** : contrat nul
- **Excès de pouvoir** : contrat inopposable
- **Mandat apparent** : protection du tiers

## II. Le contenu licite et certain

### A. La licéité du contenu

#### Article 1162 C. civ.
> *« Le contrat ne peut déroger à l''ordre public ni par ses stipulations, ni par son but, que ce dernier ait été connu ou non par toutes les parties. »*

Reprise sous une autre forme de l''**article 6 C. civ.**

#### 1. La licéité des stipulations

##### Prises individuellement

**Obligation de faire**
Doit porter sur une activité **non interdite** par la loi.

**Obligation de ne pas faire**
Ne doit pas porter sur une activité **rendue obligatoire**.

**Stipulations relatives à une chose**
La chose ne doit pas être **hors commerce** :
- **Choses illicites** : contrefaçons
- **Choses retirées** du commerce juridique pour moralité : produits du corps humain, droit de vote
- **Évolution** : éléments du corps humain (dons), clientèles civiles → désormais dans le commerce

##### Prises collectivement
Stipulations individuellement valables mais dont la **conjonction** crée une opération illicite (ex : payer une somme + donner des éléments du corps humain).

#### 2. La licéité du but

##### Notion
**Motif** poursuivi par les parties. Remplace l''ancien concept de **cause subjective**.

##### Article 1162 (al. 2 implicite)
La nullité est encourue même si l''**autre partie ignorait** le but illicite.

##### Position jurisprudentielle (avant 2016)
*Civ. 1re, 7 octobre 1998* : la nullité est encourue **même si** le cocontractant ignorait le but illicite (priorité à l''**ordre public** sur l''intérêt particulier).

##### Bonnes mœurs
Bien que `art. 1162` ne mentionne pas les bonnes mœurs, l''**article 6 C. civ.** s''applique en tant que disposition générale.

### B. La détermination du contenu

#### Notion
La **prestation** doit être **présente ou future, possible, déterminée ou déterminable** (`art. 1163`).

#### 1. L''existence des prestations

##### Article 1163 C. civ.
> *« L''obligation a pour objet une prestation présente ou future. Celle-ci doit être possible et déterminée ou déterminable. »*

##### Chose présente
- Existe au moment du contrat
- Le débiteur a un droit suffisant pour s''engager
- Si **disparue avant** le contrat → nullité
- Si **disparue après** le contrat → contrat valable, exécution impossible

##### Chose future
- N''existe pas encore OU le débiteur n''a pas de droit suffisant
- **Validité** : oui (obligation de la rendre présente)
- **Effets** suspendus à la présence
- *Distinction* : chose à acquérir auprès d''autrui (valable) vs chose d''autrui (nul si transfert)

#### 2. La détermination des prestations

##### Article 1163 al. 2
> *« La prestation est déterminable lorsqu''elle peut être déduite du contrat ou par référence aux usages ou aux relations antérieures des parties, sans qu''un nouvel accord des parties soit nécessaire. »*

##### Règle générale
La prestation doit être :
- **Déterminée** au moment de la formation
- OU **déterminable** par des éléments **objectifs**

##### Pourquoi pas la détermination subjective ?
- **Obstacle théorique** : si nouvel accord nécessaire, le premier ne suffit pas
- **Obstacle pratique** : impasse si désaccord ultérieur
- **Détermination unilatérale** : place une partie à la merci de l''autre

##### Sanction
**Nullité du contrat** si la prestation n''est ni déterminée ni déterminable objectivement.

### C. Les règles spéciales sur le prix

#### Article 1164 C. civ. (contrats-cadre)
> *« Dans les contrats cadre, il peut être convenu que le prix sera fixé unilatéralement par l''une des parties, à charge pour elle d''en motiver le montant en cas de contestation. En cas d''abus dans la fixation du prix, le juge peut être saisi d''une demande tendant à obtenir des dommages et intérêts et le cas échéant la résolution du contrat. »*

##### Innovation
**Fixation unilatérale** possible dans les contrats-cadre, sous contrôle a posteriori.

#### Article 1165 C. civ. (contrats de prestation de service)
> *« Dans les contrats de prestation de service, à défaut d''accord des parties avant leur exécution, le prix peut être fixé par le créancier, à charge pour lui d''en motiver le montant en cas de contestation. »*

##### Application
- **Honoraires** (avocat, médecin)
- **Prestations** sur mesure

### D. Les déséquilibres contractuels

#### 1. La lésion - Article 1168

> *« Dans les contrats synallagmatiques, le défaut d''équivalence des prestations n''est pas une cause de nullité du contrat, à moins que la loi n''en dispose autrement. »*

##### Exception
- **Lésion** dans certains contrats spéciaux (vente d''immeuble : `art. 1674`)
- **Mineurs** et **majeurs protégés**

#### 2. Les clauses créant un déséquilibre significatif

##### Article 1170 C. civ.
> *« Toute clause qui prive de sa substance l''obligation essentielle du débiteur est réputée non écrite. »*

Codification de *Chronopost* (Com., 22 octobre 1996).

##### Article 1171 C. civ. (contrats d''adhésion)
> *« Dans un contrat d''adhésion, toute clause non négociable, déterminée à l''avance par l''une des parties, qui crée un déséquilibre significatif entre les droits et obligations des parties au contrat est réputée non écrite. L''appréciation du déséquilibre significatif ne porte ni sur l''objet principal du contrat ni sur l''adéquation du prix à la prestation. »*

##### Innovation 2016
Extension du contrôle des clauses abusives au-delà du droit de la consommation.

##### Limites
- Seulement dans les **contrats d''adhésion**
- Non applicable à l''**objet principal** ni au **prix**

## III. Les conditions formelles

### A. Le principe du consensualisme

#### Liberté de la forme
En principe, le contrat se forme par le seul **accord de volontés**, sans formalisme requis.

### B. Les exceptions

#### 1. Les contrats solennels
- **Écrit notarié** : donation
- **Écrit sous seing privé** : certaines cessions
- **Mentions manuscrites** : cautionnement (`art. L. 331-1 C. consom.`)

#### 2. Les contrats réels
Supposent la **remise d''une chose** :
- **Prêt à usage**
- **Dépôt**
- **Gage**

#### 3. Les formalités probatoires
- Au-delà de **1 500 €** : preuve par écrit requise (`art. 1359 C. civ.`)
- Sauf commencement de preuve par écrit

## Conclusion

Les **conditions de validité** du contrat se sont **enrichies** avec la réforme de 2016 :
- **Capacité** : maintien des règles traditionnelles
- **Contenu licite** : codification de la jurisprudence (but illicite même ignoré)
- **Contenu certain** : exigence de détermination objective (sauf contrats-cadre)
- **Déséquilibres** : extension du contrôle (art. 1170 et 1171)

Le législateur a **renforcé la protection** des parties vulnérables (adhérents, contrats-cadre) tout en préservant la **liberté contractuelle**. La maîtrise suppose de connaître :
- Les **distinctions** entre conditions de fond et de forme
- Les **régimes spéciaux** (mineurs, majeurs protégés, contrats-cadre)
- L''**articulation** entre licéité, ordre public et bonnes mœurs'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 6 - LA NULLITÉ DU CONTRAT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La nullité du contrat', 'Partie 1 - Chapitre 5 : Sanctions de la formation',
       'Distinction nullité absolue/relative, action en nullité, effets de la nullité (rétroactivité, restitutions, exceptions), confirmation.',
       array['Article 1178 C. civ.', 'Nullité absolue', 'Nullité relative', 'Article 1179 C. civ.', 'Article 1180 C. civ.', 'Article 1181 C. civ.', 'Prescription', 'Rétroactivité', 'Restitution', 'Article 1352 C. civ.', 'Confirmation', 'Action interrogatoire'],
       28, 6,
'# La nullité du contrat

## Introduction

Lorsqu''une **condition de validité** fait défaut au moment de la formation du contrat, celui-ci est frappé de **nullité**. La réforme de 2016 a clarifié les conditions et les effets de la nullité aux **articles 1178 à 1185 C. civ.**

> **Article 1178 C. civ.** : *« Un contrat qui ne remplit pas les conditions requises pour sa validité est nul. La nullité doit être prononcée par le juge, à moins que les parties ne la constatent d''un commun accord. Le contrat annulé est censé n''avoir jamais existé. Les prestations exécutées donnent lieu à restitution dans les conditions prévues aux articles 1352 à 1352-9. »*

## I. La distinction nullité absolue / nullité relative

### A. Le critère - Article 1179 C. civ.

> *« La nullité est absolue lorsque la règle violée a pour objet la sauvegarde de l''intérêt général. Elle est relative lorsque la règle violée a pour seul objet la sauvegarde d''un intérêt privé. »*

#### Critère unique : l''intérêt protégé
- **Intérêt général** → nullité **absolue**
- **Intérêt privé** → nullité **relative**

### B. Les applications

#### Nullité absolue
- **Illicéité** de l''objet
- **Illicéité du but** (`art. 1162`)
- **Absence de consentement** (consentement totalement vicié)
- **Atteinte à l''ordre public**

#### Nullité relative
- **Vices du consentement** (`art. 1131`) : erreur, dol, violence
- **Incapacité** des parties
- **Lésion** dans les cas où elle est admise
- **Atteinte aux intérêts privés**

### C. La nullité partielle - Article 1184 C. civ.

> *« Lorsque la cause de nullité n''affecte qu''une ou plusieurs clauses du contrat, elle n''emporte nullité de l''acte tout entier que si cette ou ces clauses ont constitué un élément déterminant de l''engagement des parties ou de l''une d''elles. »*

#### Conditions
- Cause affecte **certaines clauses** seulement
- Si la clause est **déterminante** → nullité totale
- Sinon → **nullité partielle** : les autres clauses subsistent

#### Théorie autonome
La clause **réputée non écrite** se distingue de la nullité : la clause disparaît automatiquement sans recours au juge (`art. 1170`, 1171`).

## II. L''action en nullité

### A. Le régime de la nullité absolue

#### Personnes pouvant agir - Article 1180 C. civ.
> *« La nullité absolue peut être demandée par toute personne justifiant d''un intérêt, ainsi que par le ministère public. »*

##### Caractéristiques
- **Toute personne** justifiant d''un intérêt
- **Ministère public**
- Pas seulement les parties

##### Pas de confirmation
> *« Elle ne peut être couverte par la confirmation du contrat. »*

#### Prescription
- **Délai de droit commun** : 5 ans (`art. 2224 C. civ.`)
- Point de départ : connaissance du vice

### B. Le régime de la nullité relative

#### Personnes pouvant agir - Article 1181 C. civ.
> *« La nullité relative ne peut être demandée que par la partie que la loi entend protéger. »*

##### Caractéristiques
- **Seule la victime** peut agir
- **Protection** d''un intérêt privé

##### Confirmation possible
> *« Elle peut être couverte par la confirmation. »*

#### Prescription
- **Délai** : 5 ans
- Point de départ :
  - Pour l''**erreur ou le dol** : jour de la **découverte**
  - Pour la **violence** : jour de sa **cessation**
  - Pour l''**incapacité** : jour de la **capacité retrouvée**

### C. L''exception de nullité

#### Article 1185 C. civ.
> *« L''exception de nullité ne se prescrit pas si elle se rapporte à un contrat qui n''a reçu aucune exécution. »*

#### Principe
- **Imprescriptibilité** de l''**exception** de nullité
- **Si** le contrat n''a pas été exécuté

#### Application
- Une partie poursuivie en exécution peut toujours opposer la nullité du contrat
- Pas de prescription pour cette **exception**

### D. La confirmation - Articles 1182 et 1183 C. civ.

#### Notion - Article 1182
> *« La confirmation est l''acte par lequel celui qui pourrait se prévaloir de la nullité y renonce. Cet acte mentionne l''objet de l''obligation et le vice affectant le contrat. »*

#### Conditions
- **Connaissance** du vice
- **Volonté** de renoncer
- **Mention** de l''objet et du vice

#### Effets
- **Validation rétroactive** du contrat
- **Inopposable** aux tiers ayant acquis des droits

#### Champ
- Seulement pour la **nullité relative**

#### Article 1183 - Action interrogatoire
> *« Une partie peut demander par écrit à celle qui pourrait se prévaloir de la nullité soit de confirmer le contrat soit d''agir en nullité dans un délai de six mois à peine de forclusion. La cause de la nullité doit avoir cessé. L''écrit mentionne expressément qu''à défaut d''action en nullité exercée avant l''expiration du délai de six mois, le contrat sera réputé confirmé. »*

##### Innovation 2016
- Action interrogatoire pour **clarifier** la situation
- **6 mois** pour agir ou confirmer
- **Forclusion** si pas d''action

## III. Les effets de la nullité

### A. Le principe de la rétroactivité

#### Article 1178 al. 3
> *« Le contrat annulé est censé n''avoir jamais existé. »*

#### Conséquences
- Anéantissement **rétroactif** du contrat
- **Restitutions** des prestations exécutées
- Effet **erga omnes** (envers tous)

### B. Les restitutions - Articles 1352 à 1352-9 C. civ.

#### Principe
> **Article 1352 C. civ.** : *« La restitution d''une chose autre qu''une somme d''argent a lieu en nature ou, lorsque cela est impossible, en valeur, estimée au jour de la restitution. »*

#### 1. Restitution en nature

##### Principe
- **Restitution de la chose** elle-même
- Évaluation au jour de la **restitution**

##### Impossibilité
Si la chose a été **détruite, transformée, perdue** : restitution en **valeur**.

#### 2. Restitution en valeur

##### Évaluation
- Au jour de la **restitution**
- Selon l''**état** de la chose

##### Article 1352-2 C. civ.
- Si la chose a été **vendue** : restitution du **prix de vente**
- Si **bonne foi** : prix de vente
- Si **mauvaise foi** : la **plus forte** des valeurs (vente vs estimation)

#### 3. Restitution des fruits et plus-values

##### Article 1352-3 C. civ.
- **Bonne foi** : pas de restitution des fruits avant la demande
- **Mauvaise foi** : restitution des fruits depuis le départ

##### Plus-values
- Reviennent à celui qui restitue (bonne foi)
- Sauf si **mauvaise foi**

#### 4. Restitution des sommes d''argent

##### Article 1352-6 C. civ.
**Intérêts** au taux légal à compter de la demande (bonne foi) ou du paiement initial (mauvaise foi).

#### 5. Restitution des prestations de services

##### Article 1352-8 C. civ.
**Évaluation** au jour de la prestation, selon les **valeurs habituelles**.

### C. Les exceptions à la restitution

#### 1. *Nemo auditur propriam turpitudinem allegans*

##### Principe
Celui qui invoque sa propre turpitude n''est pas écouté → pas de restitution s''il a participé sciemment à une opération immorale.

##### Application
- **Conventions** immorales (proxénétisme, etc.)
- **Cause** illicite ou immorale
- *Civ. 1re, 22 juin 2004* : refus de restitution dans les contrats immoraux

#### 2. *In pari causa turpitudinis cessat repetitio*
Variante : si les **deux parties** sont à égalité dans la turpitude, pas de restitution.

#### 3. Les contrats à exécution successive

##### Difficultés
- **Restitution en nature impossible** (jouissance d''un bail, prestation de service)
- **Évaluation en valeur** complexe

##### Solution
- Restitution **par équivalent**
- Évaluation au cas par cas

### D. Le sort des tiers

#### Principe
La nullité a un effet **erga omnes** : tiers acquéreurs ont aussi à restituer.

#### Exceptions
- **Possession de bonne foi** des meubles (`art. 2276`)
- **Acquéreur de bonne foi** d''un immeuble dont le contrat antérieur a été annulé : protection variable

## IV. La caducité et l''inopposabilité

### A. La caducité - Article 1186 C. civ.

#### Notion
> *« Un contrat valablement formé devient caduc si l''un de ses éléments essentiels disparaît. »*

#### Conditions
- Contrat **valablement formé** initialement
- **Disparition ultérieure** d''un élément essentiel

#### Application
- Disparition de l''**objet**
- Décès d''une partie dans un **contrat intuitus personae**
- **Ensembles contractuels** : caducité d''un contrat entraîne celle des autres (`art. 1186 al. 2`)

#### Effets
- **Sans effet rétroactif**
- Restitutions limitées aux prestations devenues sans utilité

### B. L''inopposabilité

#### Notion
Le contrat est valable **entre les parties** mais **inopposable aux tiers**.

#### Cas
- **Représentation** sans pouvoir
- **Défaut de publicité** (cession de fonds de commerce)
- **Action paulienne** : inopposabilité aux créanciers

## Conclusion

La **nullité** est la sanction de l''**inobservation des conditions de validité** du contrat. La réforme de 2016 a :
- **Clarifié** la distinction nullité absolue/relative
- **Codifié** les règles sur les **restitutions** (`art. 1352 et s.`)
- **Innové** avec l''**action interrogatoire** (`art. 1183`)
- **Maintenu** l''**exception** de nullité imprescriptible

La maîtrise suppose de distinguer :
- **Nullité** (vice originel) vs **caducité** (disparition ultérieure)
- **Nullité absolue** vs **nullité relative**
- **Effets entre parties** (restitutions) vs **effets envers tiers** (inopposabilité)

Les **restitutions** sont au cœur du contentieux pratique : leur régime (nature/valeur, bonne/mauvaise foi, fruits, intérêts) doit être maîtrisé.'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 7 - LES EFFETS DU CONTRAT : FORCE OBLIGATOIRE ET INEXÉCUTION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les effets du contrat : force obligatoire et inexécution', 'Partie 2 - Chapitre 1 : Effets entre parties',
       'Force obligatoire, intangibilité, imprévision (art. 1195), exécution forcée en nature, exception d''inexécution, résolution, réduction du prix.',
       array['Article 1103 C. civ.', 'Force obligatoire', 'Article 1195 C. civ.', 'Imprévision', 'Canal de Craponne 1876', 'Article 1217 C. civ.', 'Exception d''inexécution', 'Article 1219 C. civ.', 'Exécution forcée', 'Article 1221 C. civ.', 'Résolution', 'Article 1224 C. civ.', 'Réduction du prix'],
       30, 7,
'# Les effets du contrat : force obligatoire et inexécution

## Introduction

Une fois formé, le contrat produit ses **effets** : il s''impose aux parties (**force obligatoire**) et constitue la **loi des parties**. La réforme de 2016 a profondément modifié les sanctions de l''inexécution, créant un véritable **catalogue de remèdes** à disposition du créancier.

> **Article 1103 C. civ.** : *« Les contrats légalement formés tiennent lieu de loi à ceux qui les ont faits. »*

## I. La force obligatoire et l''intangibilité

### A. Le principe de force obligatoire

#### Origine
**Article 1134 ancien** (devenu `art. 1103`) : pose le principe depuis 1804.

#### Conséquences
- **Impossibilité** de modifier unilatéralement le contrat
- **Impossibilité** de révoquer unilatéralement (`art. 1193 C. civ.`)
- **Obligation d''exécuter** ce qui a été convenu

#### Article 1193 C. civ.
> *« Les contrats ne peuvent être modifiés ou révoqués que du consentement mutuel des parties, ou pour les causes que la loi autorise. »*

### B. L''intangibilité

#### Principe
Le **juge** ne peut pas modifier le contrat.

#### *Civ., 6 mars 1876, Canal de Craponne*
##### Faits
Contrat de 1567 (sic !) prévoyant des redevances pour l''entretien d''un canal. Trois siècles plus tard, demande de révision en raison de l''inflation.

##### Solution
> *« Dans aucun cas, il n''appartient aux tribunaux, quelle que soit l''équité de leur décision, de prendre en considération le temps et les circonstances pour modifier les conventions des parties. »*

##### Portée
**Refus** historique de la théorie de l''imprévision en droit civil français (contrairement au droit administratif, *CE, 30 mars 1916, Gaz de Bordeaux*).

### C. L''imprévision - Article 1195 C. civ. (Innovation 2016)

#### Texte
> *« Si un changement de circonstances imprévisible lors de la conclusion du contrat rend l''exécution excessivement onéreuse pour une partie qui n''avait pas accepté d''en assumer le risque, celle-ci peut demander une renégociation du contrat à son cocontractant. Elle continue à exécuter ses obligations durant la renégociation. En cas de refus ou d''échec de la renégociation, les parties peuvent convenir de la résolution du contrat, à la date et aux conditions qu''elles déterminent, ou demander d''un commun accord au juge de procéder à son adaptation. À défaut d''accord dans un délai raisonnable, le juge peut, à la demande d''une partie, réviser le contrat ou y mettre fin, à la date et aux conditions qu''il fixe. »*

#### Conditions cumulatives
1. **Changement de circonstances**
2. **Imprévisible** à la conclusion
3. **Exécution excessivement onéreuse**
4. **Risque non accepté** par la partie

#### Procédure
- **1ère étape** : renégociation à l''amiable
- **2ème étape** : en cas d''échec, résolution amiable ou adaptation judiciaire
- **3ème étape** : à défaut d''accord, **révision** ou **résiliation** par le juge

#### Innovation majeure
Brise *Canal de Craponne* : le juge peut **réviser** ou **résilier** le contrat.

#### Caractère supplétif
Les parties peuvent **écarter** l''art. 1195 par stipulation contraire.

### D. La modification unilatérale

#### Principe : interdiction
> **Article 1193 C. civ.** : pas de modification unilatérale.

#### Exceptions
- **Clauses de variation** (`art. 1164`)
- **Pouvoirs réservés** par la loi (employeur, certains contrats)

## II. Les remèdes à l''inexécution

### A. Le catalogue - Article 1217 C. civ.

#### Texte
> *« La partie envers laquelle l''engagement n''a pas été exécuté, ou l''a été imparfaitement, peut : 1° refuser d''exécuter ou suspendre l''exécution de sa propre obligation ; 2° poursuivre l''exécution forcée en nature de l''obligation ; 3° solliciter une réduction du prix ; 4° provoquer la résolution du contrat ; 5° demander réparation des conséquences de l''inexécution. »*

#### Cinq remèdes
1. **Exception d''inexécution** (suspension)
2. **Exécution forcée en nature**
3. **Réduction du prix**
4. **Résolution**
5. **Dommages et intérêts**

#### Cumul possible
> *« Les sanctions qui ne sont pas incompatibles peuvent être cumulées ; des dommages et intérêts peuvent toujours s''y ajouter. »*

### B. L''exception d''inexécution - Articles 1219 et 1220 C. civ.

#### 1. Exception d''inexécution

##### Article 1219
> *« Une partie peut refuser d''exécuter son obligation, alors même que celle-ci est exigible, si l''autre n''exécute pas la sienne et si cette inexécution est suffisamment grave. »*

##### Conditions
- **Inexécution** par l''autre partie
- **Suffisamment grave**
- **Bonne foi** dans la mise en œuvre

#### 2. Exception pour inexécution prévisible - Article 1220

##### Innovation 2016
> *« Une partie peut suspendre l''exécution de son obligation dès lors qu''il est manifeste que son cocontractant ne s''exécutera pas à l''échéance et que les conséquences de cette inexécution sont suffisamment graves pour elle. Cette suspension doit être notifiée dans les meilleurs délais. »*

##### Conditions
- Inexécution **manifestement** prévisible
- Conséquences **suffisamment graves**
- **Notification** dans les meilleurs délais

### C. L''exécution forcée en nature - Article 1221 C. civ.

#### Principe
> *« Le créancier d''une obligation peut, après mise en demeure, en poursuivre l''exécution en nature sauf si cette exécution est impossible ou s''il existe une disproportion manifeste entre son coût pour le débiteur et son intérêt pour le créancier. »*

#### Conditions
- **Mise en demeure** préalable
- **Possibilité** d''exécution
- **Absence de disproportion manifeste**

#### Innovation 2016 : la disproportion manifeste
**Codification** de la jurisprudence sur la **disproportion**. Permet au juge de refuser l''exécution forcée si elle est manifestement excessive.

##### Application
- Démolition de constructions empiétant légèrement
- Reconstruction à l''identique en cas de différences mineures
- Critère économique : coût démesuré vs intérêt limité

#### Mises en œuvre
- **Astreinte** (`art. L. 131-1 CPC`)
- **Saisie immobilière** pour les sommes d''argent
- **Exécution par un tiers** aux frais du débiteur (`art. 1222`)

### D. La réduction du prix - Article 1223 C. civ. (Innovation 2016)

#### Texte
> *« En cas d''exécution imparfaite de la prestation, le créancier peut, après mise en demeure et s''il n''a pas encore payé tout ou partie de la prestation, notifier dans les meilleurs délais au débiteur sa décision d''en réduire de manière proportionnelle le prix. L''acceptation par le débiteur de la décision de réduction de prix du créancier doit être rédigée par écrit. Si le créancier a déjà payé, à défaut d''accord entre les parties, il peut demander au juge la réduction de prix. »*

#### Conditions
- **Exécution imparfaite** (non totale)
- **Mise en demeure** préalable
- **Notification** au débiteur

#### Procédure
- Si **pas encore payé** : notification de la réduction
- Si **déjà payé** : demande au juge

#### Caractère unilatéral
Possibilité de **réduction unilatérale** du prix par le créancier.

### E. La résolution - Articles 1224 à 1230 C. civ.

#### Article 1224
> *« La résolution résulte soit de l''application d''une clause résolutoire soit, en cas d''inexécution suffisamment grave, d''une notification du créancier au débiteur ou d''une décision de justice. »*

#### Trois modes

##### 1. Résolution par clause résolutoire - Article 1225
- **Clause expresse** dans le contrat
- Doit préciser les **engagements** dont l''inexécution entraîne résolution
- **Mise en demeure** sauf clause contraire

##### 2. Résolution par notification - Article 1226 (Innovation 2016)
> *« Le créancier peut, à ses risques et périls, résoudre le contrat par voie de notification. Sauf urgence, il doit préalablement mettre en demeure le débiteur défaillant de satisfaire à son engagement dans un délai raisonnable. »*

##### Conditions
- **Mise en demeure** préalable (sauf urgence)
- **Inexécution** persistante après le délai
- **Notification** motivée au débiteur

##### Risque pour le créancier
À ses **risques et périls** : si le juge estime que la résolution était injustifiée, sanctions possibles.

##### 3. Résolution judiciaire - Article 1227
- Demande au juge
- **Inexécution suffisamment grave**
- Le juge peut **accorder un délai** au débiteur

#### Effets de la résolution - Articles 1229 et 1230

##### Disparition du contrat
- Cessation des effets pour l''avenir
- **Restitutions** des prestations échangées

##### Effets sur les contrats à exécution successive
- Pas de **rétroactivité** quand les prestations ont trouvé leur utilité
- On parle alors de **résiliation**

##### Survie de certaines clauses (art. 1230)
> *« La résolution n''affecte ni les clauses relatives au règlement des différends, ni celles destinées à produire effet même en cas de résolution. »*

Exemples : clause de **non-concurrence**, **confidentialité**, **arbitrage**.

## III. La responsabilité contractuelle

### A. Principe - Article 1231-1 C. civ.

> *« Le débiteur est condamné, s''il y a lieu, au paiement de dommages et intérêts soit à raison de l''inexécution de l''obligation, soit à raison du retard dans l''exécution, s''il ne justifie pas que l''exécution a été empêchée par la force majeure. »*

### B. Conditions

#### 1. L''inexécution
- **Totale** ou **partielle**
- **Définitive** ou **temporaire** (retard)
- **Mauvaise exécution**

#### 2. Le préjudice
- **Préjudice certain**
- **Préjudice direct**
- **Préjudice prévisible** (`art. 1231-3`) sauf dol ou faute lourde

#### 3. Le lien de causalité
Entre l''inexécution et le préjudice.

### C. Les types d''obligations

#### Obligation de moyens
- Le débiteur s''engage à **mettre en œuvre les diligences**
- Charge sur le créancier de prouver la **faute**
- Exemple : **médecin** (sauf prothèses), **avocat**

#### Obligation de résultat
- Le débiteur s''engage à **atteindre un résultat précis**
- Présomption de **faute** en cas d''inexécution
- Exemple : **transporteur** (sécurité), **vendeur** (délivrance)

### D. Les causes d''exonération

#### Force majeure - Article 1218 C. civ.
> *« Il y a force majeure en matière contractuelle lorsqu''un événement échappant au contrôle du débiteur, qui ne pouvait être raisonnablement prévu lors de la conclusion du contrat et dont les effets ne peuvent être évités par des mesures appropriées, empêche l''exécution de son obligation par le débiteur. »*

##### Conditions
- **Extériorité** au débiteur
- **Imprévisibilité** au contrat
- **Irrésistibilité** (impossibilité d''éviter les effets)

##### Effets
- **Impossibilité temporaire** : suspension
- **Impossibilité définitive** : résolution

#### Fait du créancier
La faute du créancier peut exonérer le débiteur.

#### Fait d''un tiers
Doit présenter les caractères de la force majeure.

### E. Les clauses limitatives

#### Article 1231-3 C. civ.
> *« Le débiteur n''est tenu que des dommages et intérêts qui ont été prévus ou qui pouvaient être prévus lors de la conclusion du contrat, sauf lorsque l''inexécution est due à une faute lourde ou dolosive. »*

#### Clauses limitatives
- Possibles en principe
- **Inefficaces** en cas de :
  - **Dol** ou **faute lourde**
  - Clause **privant de substance** l''obligation essentielle (`art. 1170`)
  - **Déséquilibre significatif** dans un contrat d''adhésion (`art. 1171`)

### F. La mise en demeure

#### Nécessité
**Préalable** à la mise en jeu de la responsabilité contractuelle, sauf :
- Délai expressément prévu
- Inexécution **irréversible**
- Force majeure rendant impossible

## Conclusion

Les **effets du contrat** entre les parties s''articulent autour de la **force obligatoire** et de ses **tempéraments** :
- L''**imprévision** (art. 1195) brise *Canal de Craponne* et permet au juge de réviser
- Le **catalogue de remèdes** (art. 1217) offre cinq voies au créancier
- L''**exécution forcée** est tempérée par la **disproportion manifeste**
- La **résolution par notification** (art. 1226) est une innovation majeure
- La **réduction du prix** (art. 1223) est un nouveau remède unilatéral

La **responsabilité contractuelle** demeure encadrée par les classiques :
- **Force majeure** redéfinie (art. 1218)
- **Prévisibilité** du dommage (sauf dol/faute lourde)
- **Clauses limitatives** soumises au contrôle des clauses abusives

La maîtrise suppose de connaître **chaque remède**, ses **conditions** et son **articulation** avec les autres.'
from public.subjects where slug = 'l2-droit-des-contrats';

-- =====================================================================
-- FICHE 8 - L'EFFET RELATIF ET L'OPPOSABILITÉ DU CONTRAT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''effet relatif et l''opposabilité du contrat', 'Partie 2 - Chapitre 2 : Effets à l''égard des tiers',
       'Principe de l''effet relatif (art. 1199), exceptions (stipulation pour autrui, promesse de porte-fort, simulation), opposabilité du contrat aux tiers et par les tiers.',
       array['Article 1199 C. civ.', 'Effet relatif', 'Article 1200 C. civ.', 'Opposabilité', 'Stipulation pour autrui', 'Article 1205 C. civ.', 'Promesse de porte-fort', 'Article 1204 C. civ.', 'Simulation', 'Article 1201 C. civ.', 'Action paulienne', 'Action oblique', 'Bootshop 2006'],
       28, 8,
'# L''effet relatif et l''opposabilité du contrat

## Introduction

Le contrat **engage les parties** mais quel est son rapport aux **tiers** ? Le droit français distingue deux notions essentielles :
- L''**effet relatif** : seules les parties sont liées par le contrat
- L''**opposabilité** : le contrat est un **fait juridique** que les tiers doivent respecter

> **Article 1199 C. civ.** : *« Le contrat ne crée d''obligations qu''entre les parties. Les tiers ne peuvent ni demander l''exécution du contrat ni se voir contraints de l''exécuter, sous réserve des dispositions de la présente section et de celles du chapitre III du titre IV. »*

## I. Le principe de l''effet relatif

### A. Notion

#### Conséquences
Les tiers :
- **Ne peuvent pas** demander l''exécution
- **Ne peuvent pas** être contraints d''exécuter
- **Ne sont pas liés** par les obligations

#### Origine
**Article 1165 ancien** (devenu `art. 1199`) : principe historique.

### B. Distinction parties / tiers

#### Les parties
- **Cocontractants** initiaux
- **Héritiers** (continuité de la personne, sauf intuitus personae)
- **Mandant** dans un contrat conclu par mandataire
- **Cessionnaire** de contrat

#### Les tiers
- **Tiers absolus** (*penitus extranei*) : aucun lien
- **Ayants cause à titre particulier** : situation variable
- **Créanciers chirographaires** : tiers, mais bénéficient de mesures particulières

#### Les ayants cause à titre universel
- **Héritiers** : continuité de la personne
- Sauf clause expresse ou intuitus personae

### C. Les exceptions au principe

#### Listes (codifiées 2016)
- **Stipulation pour autrui** (`art. 1205 et s.`)
- **Promesse de porte-fort** (`art. 1204`)
- **Action directe** (textes spéciaux)
- **Simulation** (`art. 1201`)

## II. Les exceptions à l''effet relatif

### A. La stipulation pour autrui - Articles 1205 à 1209 C. civ.

#### Notion - Article 1205
> *« On peut stipuler pour autrui. L''un des contractants, le stipulant, peut faire promettre à l''autre, le promettant, d''accomplir une prestation au profit d''un tiers, le bénéficiaire. Ce dernier peut être une personne future mais doit être précisément désigné ou pouvoir être déterminé lors de l''exécution de la promesse. »*

#### Mécanisme
- **Trois personnes** : stipulant, promettant, bénéficiaire
- Le **bénéficiaire** acquiert un **droit direct** contre le promettant

#### Exemple type
- **Assurance-vie** : stipulant (souscripteur) + promettant (assureur) + bénéficiaire désigné
- **Assurance de dommages**
- **Contrat de transport** au profit du destinataire

#### Régime - Article 1206
> *« Le bénéficiaire est investi d''un droit direct à la prestation contre le promettant dès la stipulation. »*

##### Caractéristiques
- **Droit direct** du bénéficiaire
- **Naissance immédiate** (dès la stipulation)
- **Indépendance** de l''acceptation

##### Acceptation du bénéficiaire
- N''est pas une condition d''**existence** du droit
- Empêche la **révocation** par le stipulant

#### Révocation - Articles 1206 et 1207
##### Avant acceptation
- **Stipulant** peut révoquer librement
- **Promettant** peut s''opposer à la révocation

##### Après acceptation
- **Irrévocable**

#### Action du bénéficiaire
- **Directe** contre le promettant
- **Sans passer** par le stipulant

### B. La promesse de porte-fort - Article 1204 C. civ.

#### Texte
> *« On peut se porter fort en promettant le fait d''un tiers. Le promettant est libéré de toute obligation si le tiers accomplit le fait promis. Dans le cas contraire, il peut être condamné à des dommages et intérêts. Lorsque le porte-fort a pour objet la ratification d''un engagement, celui-ci est rétroactivement validé à la date à laquelle le porte-fort a été souscrit. »*

#### Notion
Une personne **promet le fait d''un tiers** : si le tiers ne s''engage pas, le promettant doit indemniser.

#### Deux types

##### Porte-fort de ratification
- Promesse que le tiers **ratifiera** un engagement
- En cas de ratification : engagement validé **rétroactivement**

##### Porte-fort d''exécution
- Promesse que le tiers **exécutera** une prestation
- En cas de défaillance : DI à la charge du promettant

#### Pas une exception à l''effet relatif
**Précisément** : le tiers reste **libre** de s''engager ou non. Le porte-fort engage seulement le **promettant**.

### C. La simulation - Articles 1201 et 1202 C. civ.

#### Notion - Article 1201
> *« Lorsque les parties ont conclu un contrat apparent qui dissimule un contrat occulte, ce dernier, appelé aussi contre-lettre, produit effet entre les parties. Il n''est pas opposable aux tiers, qui peuvent néanmoins s''en prévaloir. »*

#### Mécanisme
- **Contrat apparent** : visible des tiers
- **Contre-lettre** : véritable accord, occulte

#### Effets

##### Entre parties
La **contre-lettre** prévaut.

##### À l''égard des tiers
- Les **tiers ne sont pas opposés** la contre-lettre
- Ils peuvent **invoquer** soit l''acte apparent, soit la contre-lettre (à leur avantage)

#### Limites - Article 1202
##### Simulations illicites
- **Donations déguisées** : nullité
- **Fraude** aux droits des tiers : action paulienne

### D. Les actions des créanciers

#### 1. L''action oblique - Article 1341-1 C. civ.

##### Texte
> *« Lorsque la carence du débiteur dans l''exercice de ses droits et actions à caractère patrimonial compromet les droits de son créancier, celui-ci peut les exercer pour le compte de son débiteur, à l''exception de ceux qui sont exclusivement attachés à sa personne. »*

##### Conditions
- **Créance certaine, liquide, exigible**
- **Carence** du débiteur dans l''exercice de ses droits
- **Préjudice** au créancier (insolvabilité)
- **Droits patrimoniaux** (pas personnels)

##### Effet
Le créancier agit **pour le compte** du débiteur : les fruits intègrent le patrimoine du débiteur.

#### 2. L''action paulienne - Article 1341-2 C. civ.

##### Texte
> *« Le créancier peut aussi agir en son nom personnel pour faire déclarer inopposables à son égard les actes faits par son débiteur en fraude de ses droits, à charge d''établir, s''il s''agit d''un acte à titre onéreux, que le tiers cocontractant avait connaissance de la fraude. »*

##### Conditions
- **Créance** antérieure à l''acte
- **Acte d''appauvrissement** du débiteur
- **Préjudice** au créancier
- **Fraude** du débiteur (intention)
- **Connaissance** de la fraude par le tiers (acte à titre onéreux)

##### Effet
**Inopposabilité** de l''acte au créancier (pas annulation absolue).

## III. L''opposabilité du contrat

### A. Le contrat comme fait juridique

#### Notion
Le contrat est **un fait social** que les tiers doivent **respecter**, sans en être parties.

#### Conséquences
- Les tiers ne peuvent **interférer** dans son exécution
- Les tiers peuvent **invoquer** le contrat à leur avantage

### B. L''opposabilité du contrat aux tiers

#### Article 1200 C. civ.
> *« Les tiers doivent respecter la situation juridique créée par le contrat. Ils peuvent s''en prévaloir notamment pour apporter la preuve d''un fait. »*

#### Conséquences pour les tiers

##### 1. Devoir de non-immixtion
- Pas d''**incitation à l''inexécution**
- Pas d''**aide** à la violation du contrat

##### 2. Responsabilité du tiers complice
- *Civ. 1re, 26 janvier 1999* : responsabilité du tiers qui aide à la violation
- **Tiers complice** : connaissance du contrat + participation à sa violation

### C. L''opposabilité du contrat par les tiers

#### Le principe
Les tiers peuvent **invoquer** le contrat pour démontrer un fait.

#### *Ass. plén., 6 octobre 2006, Bootshop*
##### Faits
Un locataire-gérant blesse un tiers en raison du défaut d''entretien du fonds par le bailleur. Le tiers agit en responsabilité.

##### Solution
> *« Le tiers à un contrat peut invoquer, sur le fondement de la responsabilité délictuelle, un manquement contractuel dès lors que ce manquement lui a causé un dommage. »*

##### Portée majeure
- Le **tiers** peut invoquer un **manquement contractuel**
- Sur le fondement de la **responsabilité délictuelle**
- **Sans** prouver de faute délictuelle distincte

#### *Cass., 13 janvier 2020*
**Confirmation** de *Bootshop* : application aux **obligations de résultat**.

#### Projet de réforme 2021 (article 1234 projeté)
> *« Lorsque l''inexécution du contrat cause un dommage à un tiers, celui-ci ne peut demander réparation de ses conséquences au débiteur que sur le fondement de la responsabilité extracontractuelle, à charge pour lui de rapporter la preuve de l''un des faits générateurs (...). Toutefois, le tiers ayant un intérêt légitime à la bonne exécution d''un contrat et ne disposant d''aucune autre action en réparation pour le préjudice subi du fait de sa mauvaise exécution, peut également invoquer, sur le fondement de la responsabilité contractuelle, un manquement contractuel dès lors que celui-ci lui a causé un dommage. »*

##### Innovation
- **Distinction** entre tiers ordinaires (régime délictuel) et tiers à intérêt légitime
- **Brisure partielle** de *Bootshop*

## IV. Les chaînes de contrats

### A. Notion
Une **série** de contrats portant successivement sur le même bien ou la même prestation.

### B. Chaînes translatives de propriété

#### Principe
- **Action directe** du sous-acquéreur contre le vendeur originaire
- Action **contractuelle** transmise avec le bien

#### *Cass., 4 mai 1991, Besse*
- Distinction selon que les contrats sont **homogènes** ou **hétérogènes**
- En cas de chaîne **homogène** : action directe contractuelle
- En cas de chaîne **hétérogène** : action **délictuelle** seulement

### C. Ensembles contractuels

#### Article 1186 C. civ.
> *« Lorsque l''exécution de plusieurs contrats est nécessaire à la réalisation d''une même opération et que l''un d''eux disparaît, sont caducs les contrats dont l''exécution est rendue impossible par cette disparition et ceux pour lesquels l''exécution du contrat disparu était une condition déterminante du consentement d''une partie. »*

#### Application
- **Crédit affecté** + contrat principal
- **Sous-traitance** + contrat principal
- **Caducité en chaîne**

## Conclusion

Le contrat français articule **effet relatif** (entre parties) et **opposabilité** (envers tiers). Les **exceptions** au principe (stipulation pour autrui, porte-fort, simulation, actions des créanciers) traduisent une certaine **souplesse** du système.

L''**arrêt Bootshop** (2006) a brouillé les frontières en permettant au tiers d''invoquer un manquement contractuel sur le fondement délictuel. La **réforme à venir** pourrait clarifier ce régime.

La maîtrise suppose de :
- Distinguer **parties**, **ayants cause** et **tiers**
- Connaître les **exceptions codifiées** à l''effet relatif
- Comprendre l''**opposabilité** dans ses deux dimensions
- Maîtriser les **actions** des créanciers (oblique, paulienne)

Ces mécanismes permettent au contrat de **rayonner au-delà** des seuls cocontractants tout en préservant la **sécurité** des tiers.'
from public.subjects where slug = 'l2-droit-des-contrats';
