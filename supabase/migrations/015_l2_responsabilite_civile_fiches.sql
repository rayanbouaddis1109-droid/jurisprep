-- =====================================================================
-- JurisPrép - Cours complet : Responsabilité civile (L2 S2)
-- 8 fiches très approfondies basées sur le cours magistral
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-responsabilite-civile');

-- =====================================================================
-- FICHE 1 - ÉVOLUTION ET POLYSÉMIE DE LA RESPONSABILITÉ CIVILE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Évolution et polysémie de la responsabilité civile', 'Introduction - Chapitre 1',
       'Évolution du droit de la RC depuis 1804, projets de réforme, frontières externes (resp. administrative, pénale) et internes (contractuelle / extracontractuelle).',
       array['Articles 1240-1252 C. civ.', 'Réforme 2016', 'Avant-projet Catala', 'Avant-projet Terré', 'Projet 2017', 'Proposition sénatoriale 2020', 'TC Blanco 1873', 'Loi Fauchon 2000', 'Article 4-1 CPP', 'Civ. 1922 Pelletier', 'Civ. 2006 Bootshop', 'Non-cumul'],
       30, 1,
'# Évolution et polysémie de la responsabilité civile

## Introduction

> *« La responsabilité est l''obligation de répondre d''un dommage devant la justice. »*

Le **droit de la responsabilité civile** (RC) est le droit d''une personne d''obtenir réparation d''un dommage qu''elle a subi. Il résulte d''un **équilibre entre sécurité des personnes et liberté d''agir**. À l''origine, celui qui subissait un dommage devait l''assumer seul. Il a fallu attendre une organisation de la société pour distinguer celui qui subit matériellement le dommage de celui qui doit l''assumer juridiquement.

## I. L''évolution du droit de la RC extracontractuelle (RCE)

### A. La philosophie du Code civil de 1804

Triptyque fondateur :

- **Universalisme** : le Code civil de 1804 a consacré un **principe général de responsabilité**
- **Moralisme** : rôle primordial donné à la **faute** (conception judéo-chrétienne)
- **Individualisme** : la responsabilité est celle de l''individu, non d''autres entités

Cette philosophie reflétait les enjeux du XIXe siècle, mais ce n''est plus le cas aujourd''hui.

### B. Une certaine stabilité légale depuis 1804

De 1804 à la réforme de 2016, le droit commun des obligations du livre 3 du Code civil était organisé selon un plan **bipartite** :
- **Titre 3** : par convention (contractuel)
- **Titre 4** : sans convention (extracontractuel)

En **1998**, un titre 4 bis fut ajouté sur la responsabilité des produits défectueux (transposition de la directive européenne de 1985).

### C. La réforme de 2016

L''ordonnance n° 2016-131 du 10 février 2016 a **réorganisé** les textes sans modifier leur contenu substantiel. Désormais :
- **Titre 3** : *« Des sources des obligations »*
  - **Sous-titre 1** : le contrat
  - **Sous-titre 2** : la responsabilité extracontractuelle (`art. 1240 à 1252`)
  - **Sous-titre 3** : autres sources

Au sein du sous-titre 2 :
- Chapitre 1 : responsabilité extracontractuelle générale
- Chapitre 2 : responsabilité du fait des produits défectueux
- Chapitre 3 : réparation du préjudice écologique

### D. Une réforme en marche

Cinq articles initiaux de 1804 ne reflètent plus la réalité, ni la trentaine d''articles ajoutés. La RC est une matière **en mouvement perpétuel**, forgée par les arrêts de principe.

**Projets de réforme successifs :**

| Année | Projet | Auteur |
|-------|--------|--------|
| **2005** | Avant-projet Catala | Groupe Catala |
| **2008** | Avant-projet Terré | Académie des sciences morales et politiques |
| **2010** | Proposition Béteille | Sénat |
| **13 mars 2017** | Projet chancellerie | Garde des Sceaux |
| **2020** | Proposition sénatoriale | Mission d''information |
| **2022** | Rapport « attractivité » | Comparatif |

**Principales innovations du projet 2017** :
- Consécration de la **fonction punitive** (amende civile)
- Consécration de la **fonction préventive** (cessation de l''illicite)
- Réaffirmation du principe de **non-option**, sauf pour les **dommages corporels**
- Remise en cause de la jurisprudence **Bootshop**

**4 axes de la proposition 2020** :
1. Clarifier l''action en réparation du tiers victime d''inexécution contractuelle
2. Encadrer la responsabilité contractuelle du fait d''autrui
3. Traitement préférentiel des dommages corporels
4. Responsabiliser la victime

L''UE souhaite également mettre à jour les règles sur les **produits défectueux** et proposer un régime spécifique pour l''**IA**.

## II. La polysémie de la responsabilité

### A. Les frontières externes

#### 1. RC et responsabilité administrative

##### *TC, 8 février 1873, Blanco*
Le Tribunal des conflits a déclaré le Code civil **inapplicable** en matière de responsabilité administrative.

**Justification** : protéger l''administration en la soumettant à un régime spécifique tenant compte des nécessités de son action. Le juge administratif est censé mieux connaître l''administration.

##### Évolution
Par la suite, la responsabilité administrative a assumé une **fonction sanctionnatrice** : abandon de la faute lourde, passage d''irresponsabilité de l''État à un régime de responsabilité pour faute.

##### Une frontière mouvante
La jurisprudence ne s''est pas arrêtée à une approche purement organique :
- Le juge **judiciaire** peut connaître de la responsabilité d''une personne publique pour la gestion d''un service privé
- Compétent aussi pour la **faute personnelle** d''un agent public
- **Loi de 1937** : compétence du juge judiciaire pour la responsabilité des membres de l''enseignement

##### Convergence
La **loi Kouchner du 4 mars 2002** a inséré dans le Code de la santé publique un régime **unifié** d''indemnisation des accidents médicaux, applicable que le dommage soit causé en établissement public ou privé.

#### 2. RC et responsabilité pénale

##### Convergence des fonctions
- La responsabilité **pénale** vise à punir l''infraction
- La RC vise à **réparer** (replacer la victime dans la situation antérieure)
- Mais la responsabilité pénale tend à apporter satisfaction à la partie civile
- Et la RC tend à être investie d''une **fonction punitive** (faute lucrative, projet d''amende civile)

##### Autonomisation des régimes
- **Article 4 al. 1 CPP** : *« le criminel tient le civil en l''état »* (suspension du civil tant que le pénal n''est pas définitivement jugé)
- **Loi Fauchon du 10 juillet 2000** : principe de **dualité des fautes** civiles et pénales
- **Article 4-1 CPP** : *« L''absence de faute pénale non intentionnelle (...) ne fait pas obstacle à l''exercice d''une action devant les juridictions civiles afin d''obtenir la réparation d''un dommage. »*

##### Désolidarisation des prescriptions
- Action civile devant le pénal → prescription pénale
- Action civile devant les juridictions civiles → prescription civile

### B. Les frontières internes : contractuel vs extracontractuel

Il serait plus logique de parler de **responsabilités civiles** (au pluriel). La RC regroupe :
- La **responsabilité contractuelle**
- La **responsabilité extracontractuelle** (délictuelle)

#### 1. Différence de fondement

Une partie de la doctrine rejette le terme de « responsabilité contractuelle », considérant que les dommages et intérêts ne sont qu''un **effet du contrat**.

Selon certains auteurs, seule la responsabilité délictuelle poursuivrait un but indemnitaire. Mais au début des années 2000, la Cour de cassation a consacré la nécessité de prouver un **dommage** dans le cadre de la responsabilité contractuelle.

La distinction est en partie **artificielle**. Les régimes spéciaux d''indemnisation (produits défectueux, accidents de la circulation) ne distinguent pas selon qu''il y ait ou non des relations contractuelles.

#### 2. La règle de non-cumul / non-option : *Civ. 1922 Pelletier*

> La responsabilité contractuelle sanctionne le défaut d''exécution d''une obligation issue d''un contrat ; son régime est d''**exception**. Ce principe a été posé par la **Cour de cassation, Civile, 1922, Pelletier**.

La responsabilité extracontractuelle a un **domaine résiduel** : toutes les hypothèses non couvertes par la responsabilité contractuelle.

##### Conséquence
Le créancier qui se plaint d''une inexécution doit **impérativement** agir sur le fondement contractuel. La JP l''a rappelé en **1989** : le créancier ne peut se prévaloir de la RE contre son débiteur, même si les règles applicables sont réunies.

##### Justification pragmatique
Permettre l''option serait contraire à la **loi des parties** : le créancier pourrait contourner les prévisions contractuelles.

##### Exception envisagée
Le projet 2020 prévoyait que le **dommage corporel** permette de faire exception au principe de non-option : la victime pourrait choisir le régime le plus favorable.

#### 3. L''ajustement jurisprudentiel des frontières

##### Forçage du contrat
Élargissement du domaine contractuel par l''ajout d''**obligations accessoires** (notamment obligations de sécurité).

##### *Civ., 2006, Bootshop*
La Cour de cassation a admis que l''**action du tiers** puisse être justifiée par un **manquement contractuel** : un tiers peut invoquer sur le fondement de la RE un manquement contractuel dès lors qu''il lui cause un dommage.

##### Confirmation : Cass., 13 janvier 2020
Le tiers qui établit un lien de causalité entre un manquement contractuel et son dommage n''a pas à démontrer une faute délictuelle distincte de ce manquement.

##### Projet de réforme 2021 (article 1234)
> *« Lorsque l''inexécution du contrat cause un dommage à un tiers, celui-ci ne peut demander réparation de ses conséquences au débiteur que sur le fondement de la responsabilité extracontractuelle, à charge pour lui de rapporter la preuve de l''un des faits générateurs (...). »*

Toutefois, **exception** : *« le tiers ayant un intérêt légitime à la bonne exécution d''un contrat et ne disposant d''aucune autre action en réparation pour le préjudice subi du fait de sa mauvaise exécution, peut également invoquer, sur le fondement de la responsabilité contractuelle, un manquement contractuel dès lors que celui-ci lui a causé un dommage. »*

##### Chaînes translatives de propriété
*Arrêt Besse, 1991* : régime particulier des actions dans les chaînes de contrats.

##### Proposition 2023
Codification dans le Code civil du régime de la RC du fait des **troubles anormaux du voisinage**.

## Conclusion

La RC est aujourd''hui un **archipel de régimes spéciaux** greffés sur le tronc commun des `articles 1240 à 1252 C. civ.`. Son évolution traduit un mouvement de :
- **Socialisation** (assurances, fonds d''indemnisation)
- **Objectivation** (résp. sans faute)
- **Européanisation** (directives, projets)
- **Hiérarchisation** des préjudices (préférence dommage corporel)

La réforme à venir devrait **codifier les acquis jurisprudentiels** tout en consacrant les fonctions punitive et préventive de la RC.'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 2 - FONCTIONS ET FONDEMENTS DE LA RCE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Fonctions et fondements de la RCE', 'Introduction - Chapitre 2',
       'Fonction indemnitaire (réparation intégrale), fonctions punitive et préventive ; fondements classiques (faute) et renouvelés (risque, garantie, précaution, solidarité).',
       array['Réparation intégrale', 'CDC 1954', 'Amende civile', 'Faute lucrative', 'Cessation de l''illicite', 'Théorie du risque', 'Saleilles', 'Josserand', 'Théorie de la garantie', 'Starck', 'Principe de précaution', 'Thibierge', 'Fabre-Magnant'],
       28, 2,
'# Fonctions et fondements de la RCE

## Introduction

Lorsqu''on s''interroge sur les **fonctions** de la RCE, on se demande à quoi sert dans nos sociétés cette responsabilité. Lorsqu''on s''interroge sur les **fondements**, on cherche ce qui justifie que la RC de tel sujet puisse être engagée.

## I. L''évolution des fonctions de la RCE

### A. La fonction indiscutable : réparer (fonction indemnitaire)

#### Principe
Indemniser les victimes des dommages causés. Fonction la plus évidente, et pour certains la **seule** que l''on doit conférer à la RCE.

#### Le principe de la réparation intégrale

> *« Le propre de la RC est de "rétablir aussi exactement que possible l''équilibre qui a été détruit par le dommage" »* (**Cour de cassation, 1954**)

Replacer la victime dans la situation où elle se serait trouvée si l''acte dommageable n''avait pas eu lieu, par le versement de dommages et intérêts. Il faut réparer **tous** les dommages subis, mais **que** les dommages subis.

#### Exceptions au principe
- En matière contractuelle : réparation uniquement des **dommages prévisibles**
- Hypothèse où la **victime a concouru** au dommage : réparation moindre
- Dérogations légales : **plafonnements** (droit des transports), **franchises** (produits défectueux)

#### Le rôle cathartique
Le processus de réparation comporte aussi une forte teneur humaine : rôle d''**apaisement** du justiciable lésé, **reconnaissance** de la qualité de victime. Demande sociétale forte de reconnaissance officielle.

#### Concurrence
La fonction indemnitaire est concurrencée par l''**essor des assurances** et la **multiplication des fonds de garantie**. La RC reste néanmoins fondamentale, comme en témoignent les régimes spéciaux post-1804 (souvent sans faute, pour trouver un responsable solvable).

### B. Les fonctions discutées

#### 1. La fonction punitive

Idée que la RCE punirait également les comportements commis. Illustrations :

##### Code de la propriété intellectuelle - Art. L. 331-1-3
En matière de **contrefaçon**, la juridiction prend en considération :
- Les **conséquences économiques négatives**
- Les **bénéfices réalisés** par l''auteur de l''atteinte
- Le **préjudice moral**

Possibilité de fixer le quantum sur le **gain illicite** de l''auteur → traite la **faute lucrative**.

##### Concurrence déloyale
Relâchement des conditions de mise en œuvre de la RC pour faciliter la sanction des actes déloyaux.

##### *Civ. 2e, 18 décembre 1995* (associations de victimes du nazisme)
Indemnisation d''associations de familles de victimes nazies, suite à des déclarations qualifiant l''extermination de « point de détail ». La doctrine y a vu une **réprobation** et une volonté de **punir**.

##### *Civ. 1re, 1er décembre 2010*
Condamnation étasunienne à des **punitive damages** ayant obtenu l''exequatur en France.

##### Projet 2017 - Article 1266-1 : l''amende civile
- Auteur d''une **faute lucrative** (faite dans l''intention de procurer un profit supérieur aux DI)
- Versée non à la victime mais au **Trésor public** ou à un fonds d''indemnisation
- Pour éviter un **enrichissement injustifié** de la victime
- Non reprise dans la proposition 2020

#### 2. La fonction préventive

Idée que la RC pourrait jouer un rôle de **prévention** : non exclusivement tournée vers le passé (réparer) mais aussi vers la prévention (mieux vaut prévenir que guérir).

##### Le contentieux des référés
**Article 808 CPC** : le juge peut ordonner des mesures pour :
- **Empêcher** la survenance d''un dommage imminent
- **Faire cessation** d''un trouble manifestement illicite

##### Domaines propices
- **Délits de presse** : saisie d''ouvrage diffamatoire avant publication
- **Trouble du voisinage** : cessation des nuisances
- **Atteintes à l''environnement** ou à la santé publique

##### Projet 2017 et proposition 2020
- Création d''une **action en cessation de l''illicite**
- Prise en charge des **dépenses préventives** exposées par la victime

##### Rôle préventif secondaire
La menace de condamnation incite à des comportements **vertueux** : effet dissuasif analogue à la responsabilité pénale.

## II. La diversification des fondements de la RCE

### A. Le fondement classique : la faute

#### Origine
Fondement prévu au Code civil de 1804. La RC conservait son **origine morale** sous l''influence de la morale judéo-chrétienne. Pour les classiques, la RC n''était qu''un aspect de la responsabilité morale.

#### Logique
- **Fondement subjectif** : la faute suppose un jugement de valeur
- Sanctionner l''auteur d''une faute
- Injuste d''engager la RC d''une personne sans faute (= condamner un innocent)

#### Application en 1804
- **Responsabilité du fait personnel** : faute prouvée (`art. 1240, 1241`)
- **Resp. des parents** : faute de surveillance présumée
- **Resp. du fait des animaux / bâtiments** : faute sous-jacente

### B. Les fondements renouvelés

À partir de la **Révolution industrielle**, multiplication des **accidents de masse** :
- Plus nombreux, plus graves, **anonymes**
- Victimes ne pouvaient prouver la faute → privées d''indemnisation
- Situation des ouvriers particulièrement précaire

D''où l''émergence de **fondements alternatifs**.

#### 1. Le risque (Saleilles et Josserand, fin XIXe)

##### Théorie du **risque créé**
Toute activité dommageable, même non fautive, dès lors qu''elle crée un risque, devrait être génératrice de responsabilité. Exemple : accident de la circulation.

##### Théorie du **risque-profit**
Celui qui tire profit d''une activité doit en contrepartie supporter la charge de réparer les dommages causés. Exemple : entreprise.

##### Logique
Resp. sans faute = resp. **objective** : indépendante du comportement fautif.

##### Consécrations
- **Loi du 9 avril 1898** : accidents du travail → resp. de plein droit de l''employeur
- **Civ., 16 juin 1896, Teffaine** : resp. sans faute du fait d''une chose
- Aujourd''hui : soutient des pans entiers de la RCE

##### Limite
On ne peut retenir la RC pour tous les dommages : cela découragerait l''esprit d''entreprise. Théorie qui **pèche par excès**.

#### 2. La garantie (Starck, 1947)

##### Innovation
Construire la RC non plus à partir du **comportement** de l''auteur mais à partir du **type de dommage**.

##### Hiérarchisation
- **Atteinte à la personne ou aux biens** : droit à la sécurité de la victime → garantie d''indemnisation
- **Atteinte morale ou économique** : indemnisation seulement en cas de faute

##### Critique
Ne tient pas compte du droit positif (Code civil distingue par fait générateur, non par type de dommage).

##### Influence actuelle
- **Loi Badinter 1985** : répare plus facilement les dommages corporels
- **Projet 2020** : supériorité du dommage corporel (option de régime, interdiction de clauses limitatives)
- **Délai de prescription** : 10 ans pour dommage corporel

#### 3. La précaution (Pr. Thibierge)

##### Innovation
Imputer à une personne non seulement les **dommages causés** mais aussi les **risques incertains** de dommages graves et irréversibles.

##### Différence avec le risque
- **Risque** : incertitude sur la **survenance** du dommage (mais risque certain)
- **Précaution** : incertitude sur le **risque** lui-même (hypothétique)

##### Application
Permettre aux hypothétiques victimes exposées à des risques encore incertains (sans consensus scientifique) d''obtenir indemnisation. Exemple : vaccin hépatite B / sclérose en plaques.

##### Influence actuelle
Très limitée.

#### 4. La solidarité (Fabre-Magnant)

##### Idée
Le **phénomène de socialisation du risque** (mutualisation, organismes privés et publics à fonction assurantielle) traduirait un nouveau fondement.

##### Critique
Cela témoigne plus d''une **transformation** de la RC que d''un fondement nouveau. Certains risques ne doivent pas être laissés à la charge des individus.

## Conclusion

Les fonctions et fondements de la RCE sont en **mutation permanente**. La fonction indemnitaire reste centrale mais doit être complétée par des fonctions punitive et préventive. Le fondement classique de la faute coexiste avec :
- **Le risque** (omniprésent dans les régimes objectifs)
- **La garantie** (privilège du dommage corporel)
- **La précaution** (influence marginale)
- **La solidarité** (assurance, fonds d''indemnisation)

La réforme à venir consacrera probablement la **pluralité des fondements** et la **diversification des fonctions** de la RC.'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 3 - LE PRÉJUDICE RÉPARABLE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le préjudice réparable', 'Partie 1 - Conditions communes : Chapitre 1',
       'Distinction dommage/préjudice, typologie (patrimonial/extrapatrimonial, immédiat/par ricochet), caractéristiques (certain, personnel, licite), nomenclature Dintilhac.',
       array['Dommage', 'Préjudice', 'Réparation intégrale', 'Préjudice patrimonial', 'Préjudice extrapatrimonial', 'Nomenclature Dintilhac', 'Préjudice par ricochet', 'Dangereux 1970', 'Perruche 2000', 'Préjudice certain', 'Perte de chance', 'Préjudice écologique'],
       30, 3,
'# Le préjudice réparable

## Introduction

Contrairement à la responsabilité pénale (qui peut être engagée même sans préjudice : tentative, contraventions), la **RCE implique automatiquement la preuve d''un dommage**. Le droit français ne comporte **pas de liste limitative** d''intérêts juridiquement protégés.

> **Cour de cassation, 2e Civ., 9 février 2023** : refus de double réparation d''un préjudice (≠ réparation intégrale).

La **preuve** du dommage appartient au **demandeur**. L''appréciation du dommage réparable relève du **pouvoir souverain** des juges.

### Distinction dommage / préjudice

| | Dommage | Préjudice |
|---|---------|-----------|
| **Nature** | Fait (lésion) | Conséquence juridique |
| **Réalité** | Factuelle | Juridique |
| **Exemple** | Fracture du bras | Douleur, perte de revenus, etc. |

Distinction **doctrinale** qui pourrait être consacrée par la proposition 2020 : *« tout préjudice certain résultant d''un dommage »*.

**Types d''atteintes** :
- **Dommages corporels** : intégrité physique et psychique
- **Dommages matériels** : patrimoine
- **Atteintes aux droits de la personnalité**

## I. La typologie des préjudices réparables

### A. Préjudices patrimoniaux vs extrapatrimoniaux

#### 1. Les préjudices patrimoniaux

Toute atteinte aux intérêts économiques. Peut comprendre :
- Une **perte éprouvée** (*damnum emergens*)
- Un **gain manqué** (*lucrum cessans*)

##### Trois types

a) **Consécutif à un dommage matériel** : destruction ou détérioration d''un bien (corporel ou incorporel).

b) **Consécutif à un dommage corporel** : atteinte à l''intégrité physique ou psychique. Peut être :
- Dépenses rendues nécessaires (assistance d''une tierce personne)
- Dépenses au titre des pertes subies
- Gains manqués

c) **Préjudice économique pur** : ne résulte ni d''une atteinte aux biens ni à la personne. Exemple : commerçant victime de concurrence déloyale.

#### 2. Les préjudices extrapatrimoniaux (moraux)

Atteinte aux intérêts non économiques ou moraux. Longtemps **réticence** à les réparer (la doctrine de la fin du XIXe estimait qu''une somme d''argent ne pouvait répondre à la souffrance).

##### *Cour de cassation, 25 juin 1833*
Premier arrêt admettant la réparation d''un préjudice moral.

##### Aujourd''hui
Compensation **forfaitaire** de remplacement. Difficulté : évaluation en argent.

##### Catégories
- **Préjudices moraux consécutifs à un dommage corporel** : encadrés par la **nomenclature Dintilhac**
- **Préjudices moraux sans dommage corporel** : préjudice d''affection, atteinte à l''honneur, etc.

#### 3. La nomenclature Dintilhac (2005)

Élaborée pour assurer la **réparation intégrale** sans double indemnisation. Nomenclature **non limitative**, **sans valeur normative**, mais largement utilisée par les juges.

##### Préjudices patrimoniaux temporaires
- Dépenses de santé actuelles
- Pertes de gains professionnels actuels
- Frais divers

##### Préjudices patrimoniaux permanents
- Dépenses de santé futures
- Pertes de gains professionnels futurs
- Incidence professionnelle
- Préjudice scolaire / universitaire

##### Préjudices extrapatrimoniaux temporaires
- Déficit fonctionnel temporaire
- Souffrances endurées (*pretium doloris*)
- Préjudice esthétique temporaire

##### Préjudices extrapatrimoniaux permanents
- Déficit fonctionnel permanent
- Préjudice d''agrément
- Préjudice esthétique
- Préjudice sexuel
- Préjudice d''établissement
- Préjudices permanents exceptionnels

##### Projet 2017
Consécration d''une nomenclature **non limitative** + référentiel **indicatif** d''indemnisation (≠ barème obligatoire qui violerait la réparation intégrale).

### B. Préjudices immédiats vs par ricochet

#### 1. Préjudice immédiat
Subi directement par la **victime directe** de l''événement dommageable.

#### 2. Préjudice par ricochet
Subi par les **proches** de la victime directe, en répercussion du préjudice initial.

##### Reconnaissance - *Ch. mixte, 27 février 1970, Dangereux*
Une **concubine** peut être indemnisée pour la perte de son concubin. Ouverture de la réparation par ricochet au-delà du cercle familial strict.

##### Conditions
- **Lien affectif** réel avec la victime directe
- **Préjudice personnel** des proches
- Pas de liste légale stricte

##### Types
- **Patrimonial** : perte d''un soutien financier
- **Moral** : douleur de la perte d''un proche

##### Limites
Le préjudice par ricochet doit être **certain**. Indépendance avec la victime directe : peut être engagé même si la victime directe n''agit pas.

## II. Les caractéristiques du préjudice réparable

### A. Le préjudice certain

#### Principe
Le préjudice doit être **certain**, non hypothétique.
- **Dommage actuel** : déjà subi
- **Dommage futur** : certain dans son principe (perte de salaires à venir)

#### La perte de chance

##### Définition
Disparition de la **probabilité d''un événement favorable**.

##### Conditions
- Chance **réelle et sérieuse**
- Pas purement hypothétique

##### Indemnisation
**Proportionnelle** à la probabilité de réalisation. Exemple : 50% de chances de guérison ratée = 50% de l''indemnisation.

##### Exemples
- Procès perdu par négligence de l''avocat
- Diagnostic raté
- Concours raté par accident

### B. Le préjudice personnel

#### Principe
Seule la **victime** peut demander réparation.

#### Exception : l''héritier
Les héritiers peuvent agir pour :
- Le **préjudice du défunt** (transmis dans le patrimoine)
- Leur **propre préjudice par ricochet**

#### *Arrêt Perruche* (Ass. plén., 17 novembre 2000)
Un enfant né handicapé du fait d''une erreur médicale (rubéole non diagnostiquée). La Cour reconnaît l''indemnisation du **préjudice de l''enfant lui-même** d''être né handicapé.

##### Réaction législative
**Loi Kouchner du 4 mars 2002** : *« Nul ne peut se prévaloir d''un préjudice du seul fait de sa naissance. »* Quasi-abrogation de la jurisprudence Perruche.

### C. Le préjudice licite

#### Exigence
L''intérêt lésé doit être **juridiquement protégé**.

#### Évolution
Longtemps, la jurisprudence refusait certaines indemnisations contraires aux **bonnes mœurs**. Aujourd''hui, l''exigence est très souple.

### D. L''indifférence de la conscience du dommage

#### Principe
Le préjudice peut être indemnisé même si la victime **n''en a pas conscience**.

#### Application
- Enfant en bas âge
- Personne dans le coma
- Personne décédée (préjudice d''angoisse de mort imminente)

#### Le préjudice d''angoisse de mort imminente
Souffrance psychique anticipant la mort. **Reconnu** par la jurisprudence et **autonome**.

#### Le préjudice d''attente et d''inquiétude
Pour les **proches**, pendant la période avant l''annonce du décès ou des séquelles.

### E. L''obligation de minimiser son dommage

#### Question controversée
La victime doit-elle prendre des mesures pour **réduire** son préjudice ?

#### Position française classique
**Refus** : *Civ. 2e, 19 juin 2003* : la victime n''est pas tenue de limiter son préjudice dans l''intérêt du responsable.

#### Position contemporaine
Tendance à exiger des comportements **raisonnables** de la victime. Évolution dans les projets de réforme.

#### En matière contractuelle
Position plus exigeante : la victime doit minimiser.

## III. Le préjudice écologique

### A. Codification - Loi du 8 août 2016

#### Article 1246 C. civ.
> *« Toute personne responsable d''un préjudice écologique est tenue de le réparer. »*

#### Article 1247 C. civ.
Définition : *« atteinte non négligeable aux éléments ou aux fonctions des écosystèmes ou aux bénéfices collectifs tirés par l''homme de l''environnement »*.

### B. Régime

- **Réparation en nature** de préférence
- À défaut : **dommages et intérêts** affectés à la réparation
- Action ouverte à de nombreux acteurs (collectivités, associations agréées)

## Conclusion

Le préjudice réparable est une **notion plastique** qui s''est considérablement étendue depuis 1804. La distinction **dommage/préjudice** se renforce. La **nomenclature Dintilhac** sert de référence pour les préjudices corporels. Le droit français privilégie une approche **non limitative** et casuistique, garantie par le **pouvoir souverain** des juges du fond. L''évolution récente consacre l''**autonomie de nouveaux préjudices** (angoisse de mort, écologique) et tend à hiérarchiser les préjudices en faveur du **dommage corporel**.'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 4 - LA RESPONSABILITÉ DU FAIT PERSONNEL : LA FAUTE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité du fait personnel : la faute', 'Partie 2 - Chapitre 1 : Faits générateurs',
       'Notion de faute, transgression d''un devoir déterminé ou général, appréciation in abstracto, abus de droit, suppression de l''imputabilité.',
       array['Article 1240 C. civ.', 'Article 1241 C. civ.', 'Devoir déterminé', 'Devoir général', 'In abstracto', 'In concreto', 'Abus de droit', 'Clément-Bayard 1915', 'Loi du 3 janvier 1968', 'Article 414-3 C. civ.', 'Arrêt Lemaire', 'Arrêt Derguini', 'Gabillet 1984'],
       28, 4,
'# La responsabilité du fait personnel : la faute

## Introduction

C''est la **faute** qui conditionne la mise en œuvre de ce régime. La notion de faute n''est **pas définie par le Code civil** ; c''est la doctrine qui s''y est essayée.

> **Article 1240 C. civ.** : *« Tout fait quelconque de l''homme, qui cause à autrui un dommage, oblige celui par la faute duquel il est arrivé à le réparer. »*

> **Article 1241 C. civ.** : *« Chacun est responsable du dommage qu''il a causé non seulement par son fait, mais encore par sa négligence ou par son imprudence. »*

### Définition du projet 2020
> *« Constitue une faute la prescription d''une violation légale ou réglementaire ainsi que le manquement au devoir général de prudence ou de négligence. »*

### Remarques préliminaires
- La transgression peut être **positive** (acte) ou **négative** (omission, défaut de surveillance)
- Une **faute simple** suffit à engager la responsabilité du fait personnel
- La **faute contractuelle** = inexécution ou mauvaise exécution d''une obligation contractuelle (≠ faute délictuelle)

## I. La notion de faute

### A. La transgression d''un devoir déterminé

#### Sources
Normes imposant un comportement défini dans certaines situations :
- **Code de la route** (ceinture de sécurité)
- Réglementations **professionnelles** (médecin, avocat)
- Codes de **bonne conduite** sectoriels

#### Violation de droits subjectifs
La faute peut résulter de la violation de droits subjectifs d''autrui :
- **Empiètement** sur la propriété d''autrui
- **Atteinte à la vie privée** (`art. 9 C. civ.`)
- **Diffamation** (presse)

#### Preuve
Il suffit à la victime de prouver :
- L''**inobservation matérielle** de la règle
- OU l''**atteinte à un droit subjectif**

→ La faute est alors caractérisée.

### B. La transgression d''un devoir général de conduite

#### Notion
À côté des devoirs particuliers, **devoir général** s''imposant à tout citoyen : se conduire en prenant les précautions nécessaires.

#### Référence
**Article 1241 C. civ.** : « négligence ou imprudence ».

#### Rôle du juge
Le juge doit :
- Déclarer si le fait reproché est qualifiable de faute
- Déterminer en quoi consistait ce devoir général
- Définir l''attitude qui s''imposait

→ **Pouvoir considérable** dans la définition des devoirs et l''appréciation.

#### L''appréciation de la faute

##### Deux approches théoriques

**Appréciation in concreto** (subjective)
- Prend en compte la **personne même** de l''auteur (niveau intellectuel, capacités)
- Compare avec son comportement habituel

**Appréciation in abstracto** (objective)
- Compare avec le comportement d''un **« homme raisonnable »** placé dans les mêmes circonstances
- Modèle de référence abstrait

##### Principe retenu
**In abstracto**, mais **tempéré** :
- Modèle de l''**individu moyen** (pas l''homme parfait)
- Modèle **adapté** aux circonstances

##### In abstracto circonstanciée
Adaptation aux circonstances :
- **Professionnel** (médecin) : modèle = professionnel raisonnable de la spécialité
- **Particularités physiques** : handicap pris en compte (sourd comparé à autre sourd)

##### Pas d''adaptation
Le juge **fait abstraction** des circonstances internes :
- Niveau d''**intelligence**
- État **psychologique** subjectif

#### Contrôle de la Cour de cassation
La qualification juridique de la faute relève de son contrôle : elle peut censurer l''appréciation.

### C. L''abus de droit

#### Notion
Certains droits confèrent une légitimité de comportement qui ne peut être rompue que lorsque est caractérisée l''**intention de nuire**.

#### Arrêt fondateur : *Cass. req., 3 août 1915, Clément-Bayard*
##### Faits
Le propriétaire d''un terrain édifie des **piquets de fer** sur son terrain. Il a pour voisin un exploitant de ballons dirigeables.
##### Solution
Condamnation : utilisation du droit **sans intérêt personnel**, dans le seul but de nuire.
##### Portée
Consécration de la théorie de l''abus de droit.

#### Critères
- **Intention de nuire**
- OU **détournement** de la fonction sociale du droit

## II. Les personnes responsables

### Principe acquis
**Toute personne** qui cause à autrui un dommage doit répondre de sa faute. L''**imputabilité** n''est plus exigée.

### A. L''ancienne exigence d''imputabilité

#### Principe en 1804
L''**illicéité seule** était insuffisante. Il fallait en plus que l''acte soit **imputable** à son auteur :
- Conscience de la portée des actes
- Conscience du caractère illicite
- Liberté suffisante

L''imputabilité = **élément subjectif** de la faute (élément moral, comme en pénal).

#### Fondement
Philosophie **individualiste** du Code civil : *« On ne peut reprocher à un individu que les actes dont il a pu mesurer la portée. »*

#### Application jurisprudentielle

##### Aliénés
**Ch. req., 1866** : principe d''**irresponsabilité civile des déments**.

##### Infans (enfants en bas âge)
Considérés comme **irresponsables civilement** par absence de discernement.

#### Critiques
- Inégalité de traitement entre les victimes
- Sort variant selon la capacité de l''auteur
- Priver les victimes de réparation

#### Palliatifs jurisprudentiels
- Interprétation stricte de l''absence de discernement
- Développement de la **responsabilité des proches** (faute de surveillance retenue facilement)
- Trouble mental résultant d''une **faute antérieure** (alcoolisation, drogue) → pas d''irresponsabilité

### B. La suppression de la condition d''imputabilité

#### 1. La responsabilité des aliénés

##### Loi du 3 janvier 1968 (incapables majeurs)
##### Article 489-2 (ancien) → Article 414-3 C. civ.
> *« Celui qui a causé un dommage à autrui alors qu''il était sous l''empire d''un trouble mental, n''en est pas moins obligé à réparation. »*

##### Précisions de la Cour de cassation
- Le texte s''applique à **toute personne** souffrant d''un trouble mental
- Étendu à **toutes les responsabilités**
- **Limité** aux troubles mentaux (pas aux troubles purement physiques)

#### 2. La responsabilité des infans

##### *Ass. plén., 9 mai 1984* : cinq arrêts
Cinq arrêts rendus le même jour, révolutionnant la matière.

##### *Arrêt Lemaire*
Enfant tué par **électrocution** en vissant une ampoule (un électricien avait effectué des travaux plus tôt).

##### *Arrêt Derguini*
Enfant heurté par une voiture en **traversant la route**.

##### Solution
> *« L''infans peut causer une faute, sans qu''il soit nécessaire de rechercher s''il pouvait discerner les conséquences de son acte. »*

##### Application

**Infans victime** (Lemaire, Derguini)
Sa faute entraîne :
- Partage de responsabilité avec l''auteur
- **Réduction de la réparation** du préjudice des ayants droit (critique de la doctrine)

**Infans auteur** (*Civ. 2e, 12 décembre 1984*)
Dans une cour de récréation, un enfant en pousse un autre qui se blesse en heurtant un banc.
> *« La cour d''appel n''était pas tenue de vérifier si le mineur était capable de discerner les conséquences de son acte. »*

##### Confirmation : *Civ. 1re, 28 février 1996*
> *« La faute d''un mineur peut être retenue à son encontre même s''il n''est pas capable de discerner les conséquences de son acte. »*

##### Extension : *Civ. 2e, 19 février 1997*
Solution applicable même pour un **enfant gardien d''une chose**.

##### Mansuétude jurisprudentielle : *Civ. 2e, 4 octobre 2012*
Refus d''admettre la faute de l''infans qui s''est fait renverser en courant récupérer un ballon. Pas de remise en cause du principe, mais **bienveillance** dans l''appréciation souveraine de la faute.

##### *Ass. plén., 9 mai 1984, Gabillet*
Enfant de 3 ans jouant sur une balançoire en tenant un bout de bois ; tombe et crève l''œil d''un camarade. Déclaré **gardien** de l''objet → responsable. Confirmation que la garde ne suppose pas le discernement.

## Conclusion

La faute reste le **fait générateur de référence** de la RC. Sa notion s''est **objectivée** au XXe siècle :
- Abandon du **discernement** (loi 1968 + *Lemaire/Derguini* 1984)
- Standard **abstrait circonstancié**
- **Plasticité** essentielle de la notion

L''abus de droit (*Clément-Bayard*) illustre la **moralisation** de l''exercice des droits. Le projet 2020 vise à **codifier** la définition de la faute. La maîtrise suppose de distinguer **devoir déterminé / général** et de connaître les **modalités d''appréciation** par le juge.'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 5 - LA RESPONSABILITÉ DU FAIT DES CHOSES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité du fait des choses', 'Partie 2 - Chapitre 2 : Faits générateurs',
       'Principe général (Teffaine, Jand''heur), fait actif de la chose, garde matérielle (Franck), garde structure/comportement, cas particuliers (animaux, bâtiments).',
       array['Article 1242 al. 1 C. civ.', 'Teffaine 1896', 'Jand''heur 1930', 'Franck 1941', 'Oxygène liquide 1956', 'Garde matérielle', 'Rôle actif', 'Anormalité', 'Garde commune', 'Garde divisée', 'Gabillet 1984', 'Trichard 1964'],
       30, 5,
'# La responsabilité du fait des choses

## Introduction

Le principe général de responsabilité du fait des choses n''a été admis que **très tardivement**. En 1804, le Code civil ne reconnaissait que deux types de choses sources de responsabilité :
- Les **animaux** (`art. 1385`, actuel `art. 1243`)
- Les **bâtiments en ruine** (`art. 1386`, actuel `art. 1244`)

> **Article 1242 al. 1 C. civ. (anc. art. 1384)** : *« On est responsable non seulement du dommage que l''on cause par son propre fait, mais encore de celui qui est causé par le fait des personnes dont on doit répondre, ou des choses que l''on a sous sa garde. »*

Dans l''esprit des codificateurs, ce n''était qu''un **texte de transition**. La jurisprudence s''est affranchie de cette intention pour créer un **principe général**.

## I. L''affirmation du principe général

### A. L''apparition : *Civ., 16 juin 1896, Teffaine*

#### Contexte
Multiplication des **accidents du travail** sans faute prouvée → besoin d''indemniser les ouvriers.

#### Faits
Explosion de la chaudière d''un remorqueur à vapeur (*« arrêt du Remorqueur »*). Le mécanicien Teffaine est atteint par un jet de vapeur et décède.

#### Solution
La responsabilité du propriétaire est reconnue sur le fondement de `art. 1384`. L''explosion est due à un **vice de construction**.

#### Portée
- 1ère affirmation du principe de RFC en dehors des animaux et bâtiments
- **Responsabilité sans faute** du gardien
- Inscription dans le mouvement doctrinal de **Saleilles et Josserand** (théorie du risque)

#### Suite : Loi du 9 avril 1898
Réparation des accidents du travail → système **automatique et forfaitaire** → l''intérêt de Teffaine se déplace vers les accidents de véhicules.

### B. La consécration : *Ch. réunies, 13 février 1930, Jand''heur*

#### Faits
Une fillette renversée par un camion. La CA refuse la responsabilité, au motif qu''aucun **vice** ne peut être caractérisé.

#### Solution
> *« La présomption de responsabilité établie par l''article 1384 al. 1 du Code civil à l''encontre de celui qui a sous sa garde la chose inanimée qui a causé un dommage à autrui ne peut être détruite que par la preuve d''un cas fortuit ou de force majeure ou d''une cause étrangère qui ne lui soit pas imputable ; il ne suffit pas de prouver qu''il n''a commis aucune faute ou que la cause du fait dommageable est demeurée inconnue. »*

#### Apports majeurs
- **Présomption irréfragable** de responsabilité
- Pas besoin de prouver un **vice**
- Application à **toutes les choses**, inertes ou en mouvement
- Seule la **force majeure** ou la **cause étrangère** exonère

## II. Les conditions de mise en œuvre

### A. Le fait d''une chose

#### 1. La notion de chose

##### Principe
**Toute chose inanimée** peut constituer le fait générateur. Plusieurs distinctions ont été **rejetées** par *Jand''heur* :

| Distinction rejetée | Solution |
|---------------------|----------|
| Choses viciées / non viciées | Toutes |
| Choses dangereuses / non dangereuses | Toutes |
| Choses actionnées par l''homme / non | Toutes |
| Choses mobilières / immobilières | Toutes |

##### Application large
- **Gaz, liquides, énergies**
- Évolution vers les choses **intelligentes** (IA)
- Projet 2020 : seulement les choses **corporelles**

##### Limites - Régimes spéciaux
Certaines choses échappent au régime général :
- **Accident de circulation** → Loi Badinter 1985
- **Produit défectueux** → `art. 1245 et s.`
- **Bâtiment en ruine** → `art. 1244`

##### Choses sans maître
Les choses **sans gardien** échappent à `art. 1242 al. 1`. Mais :
- Une chose **projetée** a un gardien (celui qui la projette)
- Une chose sans maître **incorporée** à une chose gardée appartient au gardien

#### 2. Le fait de la chose (rôle actif)

##### Principe
Lien de causalité entre la chose et le dommage : **rôle actif** de la chose.

##### Contact non requis
*Civ. 2e, 10 juin 2004* : un bateau passe au large, ses vagues provoquent l''accident d''un baigneur. Le navire est **instrument du dommage** sans contact.

##### Mouvement non requis
L''inertie n''exclut pas, à elle seule, l''intervention de la chose. Mais une **chose inerte** doit avoir présenté une **anormalité**.

##### Trois hypothèses pour le rôle actif

**a) Chose en mouvement ET en contact avec le siège du dommage**
- **Présomption simple** du rôle actif (depuis 1939)
- Renversable par le gardien
- *Prolongement de la chose* : personne sur balançoire = balançoire

**b) Chose en mouvement MAIS sans contact**
- Victime doit **prouver** le rôle actif
- Exemple : éblouissement par phares, surprise par autre skieur

**c) Chose inerte**
- Anormalité requise : vice, position, état (sol glissant)
- *Civ. 2e, 17 février 2005* : réaffirmation
- *Civ. 2e, 29 mars 2012* : muret de béton sur parking → pas de rôle actif sans anormalité
- *Civ. 2e, 25 mai 2022* et *Civ. 2e, 15 juin 2023* : maintien

##### Projet 2020 (codification)
- En mouvement ET contact → présomption
- Sans mouvement OU sans contact → preuve

### B. La garde de la chose

#### 1. Définition - *Ch. réunies, 2 décembre 1941, Franck*

##### Faits
Propriétaire d''un véhicule **volé**. Le voleur cause un accident.

##### Solution
> *« Le propriétaire, privé de l''usage, de la direction et du contrôle de sa voiture, n''en avait plus la garde et n''était plus dès lors soumis à la présomption de responsabilité édictée par l''article 1384, al. 1, du Code civil. »*

##### Critères de la garde
- **Usage**
- **Direction**
- **Contrôle**

##### Portée
- Notion **matérielle** (≠ juridique)
- Pouvoir effectif **au moment du dommage**
- Garde de **fait**, pas garde de droit

#### 2. Précisions

##### Le préposé
Le préposé qui détient la chose **n''en est pas le gardien** : il est soumis aux instructions du commettant.

##### Les aliénés et infans
La garde **ne suppose pas** le discernement :
- **Aliénés** : *Trichard, Civ. 2e, 18 décembre 1964* + Loi 1968 (`art. 414-3`)
- **Infans** : *Ass. plén., 9 mai 1984, Gabillet* (enfant de 3 ans, balançoire, bout de bois)

#### 3. La présomption de garde du propriétaire

##### Principe
Le propriétaire est **présumé gardien** (présomption simple).

##### Transfert involontaire
- **Vol** (*Franck*)
- Le proprio perd la garde, transférée au voleur

##### Transfert volontaire
- **Contractuel** : bail, prêt, dépôt
- **Matériel** : autorité matérielle confiée (*Civ. 2e, 14 janvier 1999, chariot Leroy-Merlin*)
- **Réticence jurisprudentielle** : *Civ. 2e, 7 mai 2002* (escabeau prêté à la voisine, mais voisine intéressée par les travaux → pas de transfert)

##### Conditions
Le bénéficiaire du transfert doit avoir un **pouvoir de fait effectif** : pleine maîtrise (usage, contrôle, direction).

##### Illustration : *Civ. 2e, 26 décembre 2020*
Enfant de 11 ans manipulant un pistolet au domicile d''un couple. La Cour considère que l''enfant n''a pas acquis les pouvoirs de contrôle et de direction → propriétaires restent gardiens.

#### 4. La garde commune

##### Principe
La garde **ne peut être cumulative** entre plusieurs personnes à des titres juridiques différents. Elle est **alternative**.

##### Exception : garde collective
Plusieurs personnes exerçant **simultanément des pouvoirs identiques** sur une chose :
- **Copropriétaires** d''une chose
- **Chasseurs** (gerbe de plomb)
- **Sportifs** (ballon en compétition)
- **Enfants jouant ensemble**

##### Régime
- Responsabilité **in solidum** envers la victime
- Mais la **victime co-gardienne** ne peut pas demander indemnisation sur le fondement de la RFC (peut sur d''autres fondements : faute)

##### Restriction contemporaine
Jurisprudence restrictive (*Civ. 2e, 19 octobre 2006*) : la garde commune est écartée si un participant a des **pouvoirs prépondérants**.

#### 5. La garde divisée (structure / comportement)

##### Origine : *Ch. réunies, 5 janvier 1956, Oxygène liquide*

##### Faits
Une bonbonne d''oxygène liquide explose. Le **fabricant** est-il responsable ou le **détenteur** ?

##### Solution
- **Garde de la structure** : fabricant (vice interne)
- **Garde du comportement** : utilisateur (usage)

##### Auteur doctrinal
**Berthold Goldman** : conception dualiste de la garde.

##### Application
- Choses **dangereuses par nature** : explosifs, gaz, électricité
- Choses **complexes** à dynamisme propre
- Application restrictive pour les choses ordinaires

## III. Les cas particuliers de RFC

### A. La responsabilité du fait des animaux - Article 1243 C. civ.

> *« Le propriétaire d''un animal, ou celui qui s''en sert, pendant qu''il est à son usage, est responsable du dommage que l''animal a causé, soit que l''animal fût sous sa garde, soit qu''il fût égaré ou échappé. »*

#### Conditions
- **Animal** (apprivoisable ou domestique)
- **Fait** dommageable de l''animal
- **Garde** : propriétaire ou utilisateur

#### Régime
- **Présomption de responsabilité** semblable à la RFC générale
- Seule la **force majeure**, le **fait de la victime** ou le **fait d''un tiers** exonèrent

### B. La responsabilité du fait des bâtiments en ruine - Article 1244 C. civ.

> *« Le propriétaire d''un bâtiment est responsable du dommage causé par sa ruine, lorsqu''elle est arrivée par une suite du défaut d''entretien ou par le vice de sa construction. »*

#### Conditions
- **Bâtiment** : construction immobilière incorporée au sol
- **Ruine** : effondrement total ou partiel
- **Défaut d''entretien** OU **vice de construction**

#### Responsable
- **Propriétaire** uniquement (pas le locataire)
- Régime **autonome** du propriétaire

#### Articulation avec l''art. 1242 al. 1
- **Concours** des deux régimes
- La victime peut **choisir**, sauf jurisprudence évolutive

## Conclusion

La RFC est une **création prétorienne magistrale** (Teffaine, Jand''heur, Franck, Oxygène liquide). Elle a permis d''indemniser les victimes de la modernité industrielle. Sa maîtrise suppose :
- Les **étapes historiques** d''édification du principe
- Les **conditions** (chose, fait actif, garde)
- La **typologie de la garde** (matérielle, commune, divisée)
- L''**articulation** avec les régimes spéciaux (Badinter, produits défectueux)

Les **cas particuliers** (animaux, bâtiments en ruine) survivent comme régimes spéciaux mais leur portée pratique reste limitée face au régime général.'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 6 - RÉGIMES SPÉCIAUX : PRODUITS DÉFECTUEUX ET LOI BADINTER
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Régimes spéciaux : produits défectueux et loi Badinter', 'Partie 2 - Chapitre 3 : Régimes spéciaux',
       'Responsabilité du fait des produits défectueux (art. 1245 et s.), loi Badinter sur les accidents de la circulation, articulation avec le droit commun.',
       array['Loi Badinter 1985', 'Article 1245 C. civ.', 'Directive 1985', 'Produit', 'Défaut de sécurité', 'Mise en circulation', 'Risque de développement', 'VTM', 'Implication', 'Conducteur', 'Non-conducteur', 'Faute inexcusable', 'Victime ultra-protégée'],
       30, 6,
'# Régimes spéciaux : produits défectueux et loi Badinter

## Introduction

Le droit commun (`art. 1240 à 1244 C. civ.`) coexiste avec des **régimes spéciaux** qui répondent à des besoins sociaux précis. Les deux régimes les plus importants sont :
- La **loi Badinter du 5 juillet 1985** : accidents de la circulation
- La **responsabilité du fait des produits défectueux** (`art. 1245 à 1245-17 C. civ.`)

## I. La responsabilité du fait des produits défectueux

### A. Origine

#### Directive européenne du 25 juillet 1985
- Harmonisation européenne
- Transposition tardive en France

#### Loi du 19 mai 1998
- Codification aux art. 1386-1 et s. (anciens) → **art. 1245 à 1245-17 C. civ.**
- Maintien du droit commun en parallèle

### B. Le champ d''application

#### 1. Le produit

##### Définition - Article 1245-2 C. civ.
> *« Est un produit tout bien meuble, même s''il est incorporé dans un immeuble, y compris les produits du sol, de l''élevage, de la chasse et de la pêche. L''électricité est considérée comme un produit. »*

##### Application large
- Biens **meubles** (corporels)
- Y compris **incorporés** à un immeuble
- **Électricité**
- **Sang humain** (jurisprudence européenne)

#### 2. Le défaut

##### Article 1245-3 C. civ.
> *« Un produit est défectueux au sens du présent chapitre lorsqu''il n''offre pas la sécurité à laquelle on peut légitimement s''attendre. Dans l''appréciation de la sécurité à laquelle on peut légitimement s''attendre, il doit être tenu compte de toutes les circonstances et notamment de la présentation du produit, de l''usage qui peut en être raisonnablement attendu et du moment de sa mise en circulation. »*

##### Critères d''appréciation
- **Présentation** du produit
- **Usage** raisonnablement attendu
- **Moment** de la mise en circulation

##### Distinction
- **Défaut de sécurité** ≠ défaut de qualité
- Pas un simple défaut de conformité

#### 3. Le dommage

##### Article 1245-1 C. civ.
- **Atteinte à la personne** : tous préjudices, sans franchise
- **Atteinte aux biens** (autres que le produit lui-même) : franchise de **500 €**

##### Exclusion
Le **produit défectueux lui-même** n''est pas couvert (relève des garanties contractuelles).

#### 4. La mise en circulation

##### Définition - Article 1245-4 C. civ.
Quand le producteur s''en est **dessaisi volontairement**.

##### Effet
Le défaut doit avoir existé au moment de la mise en circulation pour engager la responsabilité.

### C. Le producteur responsable

#### Article 1245-5 C. civ.

Sont **producteurs** :
- **Fabricant** d''un produit fini
- **Producteur** d''une matière première
- **Fabricant** d''une partie composante
- **Toute personne** qui se présente comme producteur en apposant son nom, marque ou autre signe distinctif
- **Importateur** dans l''UE

#### Subsidiarité du vendeur
**Vendeur, loueur, autre fournisseur** : responsable **dans les mêmes conditions** que le producteur si celui-ci ne peut être identifié.

### D. Les causes d''exonération - Article 1245-10 C. civ.

Six causes d''exonération :

1. **Non-mise en circulation** du produit
2. **Présomption raisonnable** que le défaut n''existait pas au moment de la mise en circulation
3. **Activité non économique** (cession entre particuliers)
4. **Conformité** à des règles impératives d''ordre législatif ou réglementaire
5. **État des connaissances scientifiques et techniques** au moment de la mise en circulation ne permettait pas de déceler le défaut (« risque de développement »)
6. Pour le **fabricant d''une partie composante** : défaut imputable à la conception du produit fini ou aux instructions du producteur

#### Le risque de développement
- **Exonération controversée**
- **Exclue** pour les produits issus du **corps humain** ou ses dérivés
- Pour les **médicaments** : application stricte

### E. Prescription

#### Article 1245-15 C. civ.
**3 ans** à compter du jour où le demandeur a eu ou aurait dû avoir connaissance du dommage, du défaut et de l''identité du producteur.

#### Article 1245-16 C. civ.
Responsabilité **éteinte 10 ans** après la mise en circulation, sauf faute du producteur.

### F. Coexistence avec le droit commun

#### Article 1245-17 C. civ.
> *« Les dispositions du présent chapitre ne portent pas atteinte aux droits dont la victime d''un dommage peut se prévaloir au titre du droit de la responsabilité contractuelle ou extracontractuelle ou au titre d''un régime spécial de responsabilité. »*

#### Limites jurisprudentielles
La CJUE a parfois imposé l''**exclusivité** du régime spécial (CJUE, 25 avril 2002, *Skov*).

## II. La loi Badinter (5 juillet 1985)

### A. Genèse et objectif

#### Contexte
- **Multiplication** des accidents de la circulation
- **Lenteur** et **complexité** des procédures
- **Mauvaise** indemnisation des victimes

#### Objectifs
- **Indemnisation rapide** et automatique
- Limitation des causes d''exonération
- Régime **spécial dérogatoire** au droit commun

### B. Le champ d''application

#### 1. L''accident de la circulation

##### Notion
**Événement fortuit, soudain, imprévisible** survenu sur une voie de circulation, ou impliquant un véhicule en mouvement.

##### Notion souple
La JP a une lecture **extensive** : voie publique ou privée, en stationnement, etc.

#### 2. Le véhicule terrestre à moteur (VTM)

##### Champ
- **Voitures**, motos, camions, autobus
- **Tracteurs**, engins agricoles
- **Trottinettes** électriques
- **Tondeuses autoportées**

##### Exclusions
- **Trains, tramways** en voie propre
- **Vélos** non électriques
- **Aéronefs**
- **Bateaux**

#### 3. L''implication

##### Notion large
- Le véhicule doit avoir **joué un rôle** dans l''accident
- **Pas besoin de contact**
- **Implication** ≠ causalité (notion **plus large**)

##### Présomption
Tout véhicule **présent** sur les lieux de l''accident est présumé impliqué.

### C. Le régime selon la qualité de la victime

#### 1. Le conducteur

##### Régime de droit commun
Sa **faute** peut **réduire** ou **exclure** son indemnisation.

##### Article 4 de la loi Badinter
La **faute du conducteur** lui est opposable selon les règles classiques.

#### 2. Le non-conducteur ordinaire

##### Principe
- **Indemnisation automatique** des **préjudices corporels**
- Seule la **faute inexcusable** **cause exclusive** de l''accident exonère

##### Faute inexcusable - Article 3
> *« Faute volontaire d''une exceptionnelle gravité exposant son auteur à un danger dont il aurait dû avoir conscience »* (jurisprudence).

##### Faute intentionnelle
- Recherche **délibérée** de l''accident
- Très rare en pratique

#### 3. Les victimes ultra-protégées

##### Catégories
- **Enfants** de moins de **16 ans**
- **Personnes** de plus de **70 ans**
- **Personnes** atteintes d''une **invalidité ≥ 80%**

##### Régime
Seule la **faute intentionnelle** leur est opposable. La faute inexcusable est **inopposable**.

#### 4. Dommages matériels
- Régime du **droit commun**
- **Faute simple** opposable

### D. La procédure d''indemnisation

#### Offre d''indemnisation
L''assureur doit faire une **offre dans les 8 mois** (préjudice corporel).

#### Pénalités
Doublement des intérêts au taux légal en cas de retard.

#### FGAO (Fonds de garantie automobile)
- Pour les victimes d''auteurs non identifiés
- Pour les victimes d''auteurs insolvables ou non assurés

### E. Articulation avec le droit commun

#### Exclusivité
La loi Badinter **exclut** :
- L''application de `art. 1242 al. 1` (RFC)
- Le droit commun de la responsabilité

#### Mais
- Application possible pour les **dommages non couverts** (causalité hors implication)
- Cumul avec d''autres régimes spéciaux (resp. médicale, accidents du travail)

## III. Tableau comparatif

| | Produits défectueux | Loi Badinter |
|---|---|---|
| **Source** | Loi 19 mai 1998 (art. 1245 et s.) | Loi 5 juillet 1985 |
| **Origine** | Directive 1985/374 | Initiative française |
| **Champ** | Produits défectueux | Accidents VTM |
| **Responsable** | Producteur | Conducteur, gardien |
| **Condition centrale** | Défaut de sécurité | Implication |
| **Exonération** | 6 causes (art. 1245-10) | Faute inexcusable, intentionnelle |
| **Prescription** | 3 ans / 10 ans max | Droit commun |
| **Articulation** | Concurrent du droit commun | Exclusive |

## Conclusion

Les régimes spéciaux des **produits défectueux** et de la **loi Badinter** répondent à des besoins sociaux essentiels :
- Sécurité des **consommateurs** (produits)
- Indemnisation des **victimes de la route** (Badinter)

Ils illustrent l''**européanisation** (produits) et la **socialisation** (Badinter) du droit de la responsabilité civile. La **réforme à venir** pourrait :
- Codifier ces régimes dans le Code civil
- Adapter à l''**IA** (proposition européenne)
- Renforcer la protection des **victimes de dommage corporel**

La maîtrise suppose de **qualifier correctement** la situation pour mobiliser le **régime le plus favorable** à la victime.'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 7 - LA RESPONSABILITÉ DU FAIT D'AUTRUI : CAS SPÉCIAUX
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité du fait d''autrui : cas spéciaux', 'Partie 3 - Chapitre 1 : RFA cas spéciaux',
       'Responsabilité des parents (art. 1242 al. 4), du commettant (art. 1242 al. 5), évolutions jurisprudentielles : Bertrand, Costedoat, Cousin.',
       array['Article 1242 al. 4 C. civ.', 'Article 1242 al. 5 C. civ.', 'Cohabitation', 'Autorité parentale', 'Bertrand 1997', 'Levert / Fullenwarth 1984', 'Lien de préposition', 'Abus de fonctions', 'Costedoat 2000', 'Cousin 2001', 'Instituteur', 'Loi 1937'],
       28, 7,
'# La responsabilité du fait d''autrui : cas spéciaux

## Introduction

La **responsabilité du fait d''autrui** est l''hypothèse où une personne **répond** des dommages causés par un tiers dont elle a la charge ou la direction. Codifiée à l''**article 1242 C. civ.** (anc. art. 1384), elle a été enrichie par la jurisprudence.

> **Article 1242 al. 1 C. civ.** : *« On est responsable non seulement du dommage que l''on cause par son propre fait, mais encore de celui qui est causé par le fait des personnes dont on doit répondre, ou des choses que l''on a sous sa garde. »*

Les **cas spéciaux** traditionnels :
- **Parents** du fait de leurs enfants (al. 4)
- **Commettants** du fait de leurs préposés (al. 5)
- **Instituteurs** et artisans (al. 6)
- **Régime spécial** des maîtres d''école publique (loi 1937)

## I. La responsabilité des parents du fait de leur enfant

### A. Article 1242 al. 4 C. civ.

> *« Le père et la mère, en tant qu''ils exercent l''autorité parentale, sont solidairement responsables du dommage causé par leurs enfants mineurs habitant avec eux. »*

### B. Les conditions de mise en œuvre

#### 1. Lien de filiation et autorité parentale

##### Pères et mères
- **Père et mère** (loi de 1970 sur l''égalité parentale)
- Exercice **effectif** de l''autorité parentale

##### Cas particuliers
- **Adoption plénière** : transfert complet
- **Adoption simple** : maintien partiel
- **Délégation** d''autorité : transfert
- **Tutelle** : peut faire échec

#### 2. Minorité de l''enfant

##### Limite
- Moins de **18 ans**
- **Émancipation** met fin à la responsabilité parentale

#### 3. Cohabitation

##### Notion large
- L''enfant **habite** chez ses parents
- Conception **résidentielle** plus que matérielle

##### Cas non rupteurs
- Enfant en **colonie de vacances**
- Enfant chez **grands-parents** temporairement
- Enfant en **internat scolaire**

##### Cas rupteurs
- **Placement** institutionnel long
- **Confiage** à un tiers avec délégation

#### 4. Fait dommageable de l''enfant

##### *Ass. plén., 9 mai 1984, Levert + Fullenwarth*
**Plus besoin de prouver une faute** de l''enfant : un **simple fait causal** suffit.

> *« Pour que la responsabilité de plein droit des père et mère, exerçant l''autorité parentale sur leur enfant mineur habitant avec eux, puisse être recherchée, il suffit que le dommage invoqué par la victime ait été directement causé par le fait, même non fautif, du mineur. »*

##### Conséquence
- Suffit un **fait causal** du dommage
- Pas besoin de faute caractérisée
- Responsabilité **objectivée**

### C. L''évolution vers l''objectivation

#### Jurisprudence ancienne
Présomption de **faute éducative ou de surveillance** que les parents pouvaient **renverser** en prouvant qu''ils n''avaient pas commis de faute.

#### *Civ. 2e, 19 février 1997, Bertrand*
##### Solution
> *« Seule la force majeure ou la faute de la victime peut exonérer le père de la responsabilité de plein droit encourue du fait des dommages causés par son fils mineur habitant avec lui. »*

##### Portée
- **Présomption irréfragable** de responsabilité parentale
- Abandon de la possibilité de renverser par preuve d''absence de faute
- **Objectivation complète**

### D. Les causes d''exonération

#### Seules deux causes
1. **Force majeure** (extériorité, imprévisibilité, irrésistibilité)
2. **Faute de la victime**

#### Pas d''exonération par
- Absence de **faute** des parents
- **Bonne éducation** de l''enfant
- **Surveillance** adéquate

### E. Garde alternée

#### Difficulté
Qui est responsable pendant les périodes de garde de chaque parent ?

#### Solution
- **Les deux parents** restent **solidairement responsables**
- Cohabitation entendue au sens large
- Sauf cas spécifique de transfert effectif

## II. La responsabilité du commettant du fait de son préposé

### A. Article 1242 al. 5 C. civ.

> *« Les maîtres et les commettants [sont responsables] du dommage causé par leurs domestiques et préposés dans les fonctions auxquelles ils les ont employés. »*

### B. Les conditions

#### 1. Lien de préposition (subordination)

##### Définition
**Pouvoir** du commettant de **donner des ordres** au préposé sur la **manière** d''accomplir le travail.

##### Critères
- **Salariat** : présomption forte de préposition
- **Subordination effective** : indépendamment d''un contrat de travail
- **Mise à disposition** temporaire : transfert de la préposition

##### Exclusions
- **Profession libérale indépendante** (médecin, avocat) : pas de préposition
- **Artisan** indépendant
- **Prestataire** de services indépendant

#### 2. Fait du préposé dans ses fonctions

##### Principe
Le fait dommageable doit avoir un **lien** avec les fonctions du préposé.

##### *Ass. plén., 19 mai 1988, sur l''abus de fonctions*
Le commettant n''est plus responsable si le préposé :
- Agit **hors de ses fonctions**
- **Sans autorisation**
- À des **fins étrangères** à ses attributions

##### Trois conditions cumulatives strictes
**Une seule manque** → commettant reste responsable.

##### Exemple
- Salarié qui utilise le véhicule de l''entreprise pour un trajet personnel sans autorisation ET à des fins étrangères → abus de fonctions
- Salarié qui détourne le véhicule pour cambrioler → abus de fonctions

### C. Le régime

#### Présomption irréfragable
- Le commettant est **responsable de plein droit**
- Seules la **force majeure**, la **faute de la victime** ou l''**abus de fonctions** exonèrent

#### Pas de faute à prouver
- Ni faute du commettant
- Ni faute du préposé (la jurisprudence admet la responsabilité du commettant même sans faute du préposé)

### D. L''immunité du préposé

#### 1. *Ass. plén., 25 février 2000, Costedoat*

##### Faits
Pilote d''hélicoptère préposé qui cause des dégâts en pulvérisant un produit phytosanitaire sur les cultures voisines.

##### Solution
> *« N''engage pas sa responsabilité à l''égard des tiers le préposé qui agit sans excéder les limites de la mission qui lui a été impartie par son commettant. »*

##### Portée
- Le préposé **n''est pas personnellement responsable** envers la victime s''il agit dans le cadre de ses fonctions
- **Seul le commettant** indemnise
- Protection du préposé

#### 2. *Ass. plén., 14 décembre 2001, Cousin*

##### Faits
Préposé qui commet une **infraction pénale intentionnelle** (faux et usage de faux) au profit de son employeur.

##### Solution
> *« Le préposé condamné pénalement pour avoir intentionnellement commis, fût-ce sur l''ordre du commettant, une infraction ayant porté préjudice à un tiers engage sa responsabilité civile à l''égard de celui-ci. »*

##### Portée
- L''immunité **disparaît** en cas d''**infraction pénale intentionnelle**
- Cumul des responsabilités possible
- Limite à *Costedoat*

#### 3. Conditions du retour à la responsabilité

##### Hypothèses
- Faute pénale **intentionnelle**
- Faute **personnelle** détachable des fonctions
- Excès des **limites de la mission**

### E. Recours du commettant contre le préposé

#### Principe
Le commettant peut **se retourner** contre le préposé en cas de faute personnelle.

#### Limites
- Protection du préposé (extension de *Costedoat*)
- Recours limité aux cas de **faute lourde** ou **intentionnelle**

## III. La responsabilité des instituteurs

### A. Article 1242 al. 6 C. civ.

##### Texte d''origine
Présomption de faute renversable contre les instituteurs.

##### Évolution
**Régime de présomption renversé** par la **loi du 5 avril 1937**.

### B. Loi du 5 avril 1937

#### Substitution de responsabilité
- La responsabilité des instituteurs **publics** est substituée par celle de l''**État**
- L''instituteur n''est **personnellement responsable** que sur recours de l''État
- Faute prouvée requise

#### Régime
- Application des **art. 1240 et 1241** (responsabilité pour faute)
- Pas de présomption
- **Charge** sur la victime

### C. Compétence

#### Tribunal judiciaire
**Par dérogation** à la compétence administrative habituelle, le juge **judiciaire** est compétent (loi de 1937).

### D. Application
- **Enseignants** des écoles publiques
- **Surveillants**
- **Élèves** dont ils ont la garde

## IV. La responsabilité des artisans

### A. Article 1242 al. 6 C. civ.

#### Définition
- Personne qui exerce un **métier manuel**
- **Apprentis** sous sa responsabilité

#### Régime
- Présomption de faute **renversable** par la preuve qu''il n''a pas pu empêcher l''acte
- Régime **désuet** en pratique

## Conclusion

Les **cas spéciaux** de la responsabilité du fait d''autrui ont connu une évolution remarquable :
- Objectivation par *Levert/Fullenwarth* (1984) puis *Bertrand* (1997) pour les parents
- Protection du préposé par *Costedoat* (2000) puis limite par *Cousin* (2001)
- Substitution par l''État pour les instituteurs (loi 1937)

La **maîtrise** suppose de connaître :
- Les **conditions** propres à chaque régime
- L''**évolution** jurisprudentielle vers l''objectivation
- Les **causes d''exonération** strictes
- L''**articulation** avec le principe général de l''art. 1242 al. 1 (cf. fiche suivante)'
from public.subjects where slug = 'l2-responsabilite-civile';

-- =====================================================================
-- FICHE 8 - LA RFA FONDÉE SUR L'ARTICLE 1242 AL. 1 (PRINCIPE GÉNÉRAL)
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La RFA fondée sur l''article 1242 al. 1 : principe général', 'Partie 3 - Chapitre 2 : RFA principe général',
       'Arrêt Blieck (1991), conditions du principe général (autorité, contrôle, organisation), application aux associations et clubs sportifs, régime de la responsabilité de plein droit.',
       array['Article 1242 al. 1 C. civ.', 'Blieck 1991', 'Pouvoir d''organisation', 'Pouvoir de contrôle', 'Mode de vie', 'Bourdier 1995', 'Crémonini 2007', 'Associations sportives', 'Foyers éducatifs', 'Présomption de plein droit', 'Force majeure'],
       28, 8,
'# La RFA fondée sur l''article 1242 al. 1 : principe général

## Introduction

Pendant longtemps, la responsabilité du fait d''autrui était limitée aux **cas spéciaux** énumérés par l''article 1384 (devenu `art. 1242 C. civ.`). La doctrine et la jurisprudence se demandaient si l''**alinéa 1er** de cet article pouvait être un **principe général** ouvrant la voie à de nouveaux cas.

> **Article 1242 al. 1 C. civ.** : *« On est responsable non seulement du dommage que l''on cause par son propre fait, mais encore de celui qui est causé par le fait des personnes dont on doit répondre, ou des choses que l''on a sous sa garde. »*

La consécration est intervenue par l''**arrêt Blieck** (Ass. plén., 29 mars 1991), qui a opéré pour la responsabilité du fait d''autrui ce que *Teffaine* et *Jand''heur* avaient fait pour la responsabilité du fait des choses : la **création d''un principe général**.

## I. L''affirmation du principe : *Ass. plén., 29 mars 1991, Blieck*

### A. Les faits

Un **handicapé mental majeur** est pensionnaire d''un **centre éducatif** géré par une association privée (l''Association des centres éducatifs du Limousin). Bénéficiant d''un régime de liberté, il met le **feu** à une forêt voisine, causant des dégâts considérables. Le propriétaire de la forêt agit contre l''association.

### B. La question

L''association peut-elle être déclarée responsable des dommages causés par le pensionnaire en l''**absence de texte spécifique** ?

### C. La solution

> *« Une association qui accepte la charge d''organiser et de contrôler à titre permanent le mode de vie d''un handicapé est responsable de plein droit des dommages causés par celui-ci. »*

### D. La portée

#### Création d''un principe général
- **Affirmation** d''un principe général de RFA fondé sur `art. 1242 al. 1`
- **Au-delà** des cas spéciaux énumérés
- Lecture **autonome** de l''alinéa 1er

#### Comparaison avec *Jand''heur*
| | RFC | RFA |
|---|---|---|
| **Arrêt fondateur** | Jand''heur (1930) | Blieck (1991) |
| **Lecture** | « Choses sous sa garde » | « Personnes dont on doit répondre » |
| **Principe** | Plein droit | Plein droit |
| **Exonération** | Cause étrangère | Force majeure |

## II. Les conditions du principe général

### A. Acceptation d''organiser et de contrôler le mode de vie

#### Acceptation volontaire
La personne (association, institution, etc.) doit avoir **accepté volontairement** une charge.

#### Mission permanente
- **Permanence** de la mission
- Non occasionnelle
- Durable dans le temps

#### Organisation et contrôle
- **Organisation** : mise en place de règles, de cadres
- **Contrôle** : surveillance, vérification
- **Pouvoir sur le mode de vie** d''autrui

#### Le mode de vie
La notion implique une emprise sur :
- L''**existence quotidienne**
- Les **activités** principales
- L''**autonomie** de la personne

### B. Catégories de personnes concernées

#### Personnes handicapées
- *Blieck* : association d''accueil de personnes handicapées
- **Foyers** et institutions spécialisées
- **Centres** éducatifs fermés

#### Mineurs en difficulté
- **Aide sociale à l''enfance** (ASE)
- **Foyers** éducatifs
- **Établissements** de placement

#### Personnes condamnées pénalement
- Régime contractuel d''accompagnement

### C. Conditions de fait

#### Pas besoin de cohabitation
À la différence de la responsabilité parentale (`art. 1242 al. 4`), la **cohabitation** n''est pas une condition.

#### Pas besoin d''autorité juridique
- Seule l''**autorité matérielle** compte
- L''organisation effective du mode de vie

#### Fait causal de la personne
**Suffit un fait causal** du dommage par la personne dont on répond (pas nécessairement une faute).

## III. L''extension aux clubs sportifs

### A. *Civ. 2e, 22 mai 1995, Bourdier*

#### Faits
Joueur de **rugby** blessant un autre joueur lors d''une rencontre. Le club du joueur fautif est-il responsable ?

#### Solution
Application du principe *Blieck* : le club est **responsable** des dommages causés par ses joueurs.

#### Portée
- Extension aux **associations sportives**
- Principe : le club « **organise** et **contrôle** » l''activité

### B. *Ass. plén., 29 juin 2007, Crémonini*

#### Faits
Joueur de **basket** blessant un adversaire pendant un match.

#### Solution
> Confirmation que les **associations sportives** sont responsables des **fautes** commises par leurs membres lors des matchs.

#### Précision
- La faute du joueur **dans le cadre du jeu** suffit
- L''association est responsable de **plein droit**
- Pas besoin de prouver une faute d''organisation

### C. Extension à d''autres associations sportives

#### Application
- **Football**, rugby, basket, hockey
- **Sports collectifs** où l''association organise l''activité
- **Compétitions** organisées

#### Limites
- **Sports individuels** : application plus délicate
- **Spectateurs** : pas concernés (régime différent)

### D. Sports particuliers

#### *Civ. 2e, 13 mai 2004*
Application aux **clubs de chasse** : responsables des dommages causés par leurs membres lors d''une chasse organisée.

#### *Civ. 2e, 27 mai 2010*
Application aux **associations de chasse** : organisent et contrôlent l''activité.

## IV. Le régime du principe général

### A. Une responsabilité de plein droit

#### Présomption irréfragable
- **Pas de faute** à prouver par la victime
- **Responsabilité de plein droit** dès lors que les conditions sont réunies
- **Force majeure** ou **faute de la victime** : seules exonérations

#### Comparaison
| Régime | Présomption | Exonération |
|---|---|---|
| **Parents** (art. 1242 al. 4) | Irréfragable (*Bertrand* 1997) | Force majeure, faute de la victime |
| **Commettant** (art. 1242 al. 5) | Irréfragable | Abus de fonctions, force majeure |
| **Principe général** (art. 1242 al. 1) | Irréfragable | Force majeure, faute de la victime |

### B. Les causes d''exonération

#### Force majeure
**Extériorité**, **imprévisibilité**, **irrésistibilité**.

#### Faute de la victime
- **Exclusive** : exonération totale
- **Partielle** : exonération partielle

#### Pas d''exonération par
- Absence de **faute** de l''institution
- Bonne **organisation**
- Bonne **surveillance**

### C. Régime de la preuve

#### Victime
Doit prouver :
- L''**existence** des conditions du principe (autorité, organisation, contrôle)
- Le **fait dommageable** de la personne dont on répond
- Le **dommage** et le **lien de causalité**

#### Responsable
Pour s''exonérer, doit prouver :
- La **force majeure**
- OU la **faute exclusive** de la victime

## V. Articulation avec les cas spéciaux

### A. Principe de non-cumul

#### Lecture
Les cas spéciaux (parents, commettants, instituteurs) **excluent** l''application du principe général pour les mêmes hypothèses.

#### Pratique
- **Parents** d''un enfant → art. 1242 al. 4
- **Commettant** d''un préposé → art. 1242 al. 5
- **Institution** ayant la charge → art. 1242 al. 1 (Blieck)

### B. Concours possible

#### Cumul d''auteurs
Plusieurs personnes peuvent être responsables du même fait :
- **Parents** (al. 4) + **Association** (al. 1)
- **Responsabilité in solidum** envers la victime
- **Recours** entre coresponsables

#### Application
- Mineur en placement : **parents** + **institution**
- Préposé en formation : **commettant** + **institut**

## VI. La portée actuelle du principe Blieck

### A. Bilan jurisprudentiel

#### Applications consacrées
- **Associations** d''accueil de personnes handicapées
- **Foyers** éducatifs et centres pour mineurs
- **Clubs sportifs**
- **Associations** de chasse

#### Application refusée
- **Simples liens d''appartenance** (membre d''une association de loisirs)
- **Relations occasionnelles**
- **Pouvoir** insuffisant sur le mode de vie

### B. Évolution possible

#### Avant-projet de réforme
- **Codification** du principe général
- Précision des **conditions**
- Harmonisation des régimes

#### Article projeté
*« Est responsable de plein droit du fait du mineur celui qui, par décision judiciaire ou administrative, ou par convention, est chargé d''organiser et contrôler à titre permanent le mode de vie du mineur. »*

### C. Limites

#### Pas de responsabilité automatique
- L''association doit avoir un **pouvoir réel**
- Une simple **adhésion** ne suffit pas
- Conditions strictes

#### Casuistique
- Appréciation au cas par cas
- Pouvoir souverain des juges du fond

## VII. Quelques arrêts importants postérieurs

### A. *Civ. 2e, 26 mars 2015*
Précisions sur le **fait causal** : suffit le fait, sans nécessité de faute caractérisée de la personne.

### B. *Civ. 2e, 17 mars 2011*
**Refus** d''application aux **associations sans contrôle effectif** du mode de vie.

### C. *Civ. 2e, 6 juin 2002*
Application aux **foyers éducatifs** confiant à des **professionnels** la prise en charge de mineurs.

## Conclusion

L''**arrêt Blieck** (1991) constitue une étape majeure dans le développement de la **responsabilité du fait d''autrui**, comparable à *Jand''heur* pour la RFC. Le **principe général** créé permet d''indemniser les victimes de dommages causés par des personnes dont une institution a la charge, même en l''absence de texte spécifique.

La maîtrise du principe Blieck suppose :
- La connaissance des **faits fondateurs** (handicapé mental, foyer éducatif)
- L''identification des **conditions** : autorité, organisation, contrôle du mode de vie
- L''**application** aux clubs sportifs et associations
- Le **régime** : responsabilité de plein droit, exonérations strictes
- L''**articulation** avec les cas spéciaux

La **réforme à venir** devrait **codifier** ce principe et harmoniser les régimes de RFA, qu''ils soient spéciaux ou généraux. Le principe Blieck illustre la **plasticité** du droit français de la responsabilité civile et sa capacité à créer des solutions adaptées aux besoins sociaux nouveaux.'
from public.subjects where slug = 'l2-responsabilite-civile';
