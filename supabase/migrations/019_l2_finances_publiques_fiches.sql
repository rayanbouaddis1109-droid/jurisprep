-- =====================================================================
-- JurisPrép - Cours complet : Finances publiques (L2 S1)
-- 8 fiches très approfondies basées sur le cours magistral
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-finances-publiques');

-- =====================================================================
-- FICHE 1 - INTRODUCTION AUX FINANCES PUBLIQUES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Introduction aux finances publiques', 'Thème introductif',
       'Notion d''État et de finances publiques, recettes, dépenses, déficit, dette : les quatre concepts fondamentaux. Évolution historique et judiciarisation.',
       array['État', 'Finances publiques', 'Impôt', 'Recettes', 'Dépenses', 'Déficit', 'Dette publique', 'Emprunt', 'PIB', 'Politiques publiques', 'Administration publique', 'Sécurité sociale'],
       28, 1,
'# Introduction aux finances publiques

## Introduction

Les **finances publiques** sont l''**argent des entités publiques**, tant en dépense qu''en recette. Elles se distinguent des **finances privées** par leur **caractère commun** : toute organisation humaine, dès qu''elle sort du cadre familial, nécessite des **moyens communs**.

> **Citation (Max Weber)** : *« L''État a le monopole de la violence légitime. »*

## I. La naissance historique des finances publiques

### A. L''apparition de l''État

#### Origines
- Les premières formes d''État apparaissent **4 à 5 000 ans avant J.-C.** en **Mésopotamie**
- Le basculement de la « tribu » à la « cité » correspond à un **changement financier** : l''apparition de **fonctionnaires** chargés de **collecter l''impôt**
- *« Tant qu''il n''y a pas eu de collecte d''impôt, il n''y a pas eu d''État »*

#### Lien avec l''agriculture
La découverte des céréales (cultivables, contrôlables, taxables) a permis le développement de l''impôt.

### B. L''évolution de la fonction étatique

#### XVIe-XVIIIe siècle : l''État régalien
**Fonctions limitées** :
- **Justice**
- **Sécurité**
- **Impôt**
- **Monnaie**
- **Armée** (la fonction la plus coûteuse)

#### XIXe-XXe siècle : l''État providence
L''**État de gendarme** est remplacé par un **État interventionniste** :
- **Éducation** (transfert de l''Église à l''État)
- **Santé**
- **Économie**
- **Social**

> *« Plus on a un État qui mène des politiques publiques, plus il a besoin de moyens financiers importants. »*

### C. La judiciarisation des finances publiques

#### Avant la Révolution
- Le roi avait la **mainmise** sur les finances
- **Budget secret**, décidé unilatéralement

#### DDHC de 1789 (articles 13 et 14)
- Premier texte constitutionnel affirmant qu''un **État ne peut exister sans impôt**
- **Budget discuté** par les représentants

#### Napoléon Ier
**Construction du système public financier moderne** susceptible de contrôle juridique.

#### Vème République (1958)
- **Dispositions financières plus poussées**
- **1974** : extension du contrôle de constitutionnalité (60 parlementaires)
- **2010/2011** : QPC → contrôle de constitutionnalité financière véritablement développé

> *« On a assisté à une judiciarisation des finances sous la Vème République. »*

## II. Les quatre concepts fondamentaux

### A. Les recettes

#### Types de recettes

##### 1. Ressources naturelles
Exemple : **4/5 des États du Golfe persique** (pétrole, gaz).

##### 2. Vols et accaparations (en temps de guerre)
Phénomène prédominant durant le XXe siècle.

##### 3. Dévaluation / planche à billets
- Les États impriment directement de l''argent
- Plus on imprime, plus la monnaie perd de la valeur
- **Inflation**

##### 4. Recettes non fiscales
- L''État vend des **services** (contrôle aérien, publications officielles)
- Domaine public

##### 5. L''impôt (mode essentiel)
> *« Le mode essentiel pour l''État pour se financer est l''impôt car ça ne se rembourse pas, ça coûte très peu à prélever, c''est accepté assez facilement, tout est imposable. »*

#### Distinction impôt / taxe / redevance

| | Impôt | Taxe | Redevance |
|---|---|---|---|
| **Nature** | Prélèvement obligatoire | Prélèvement obligatoire | Paiement volontaire |
| **Contrepartie** | Aucune | Service public potentiel | Service public effectif |
| **Payeur** | Tout contribuable | Usager **potentiel** | Usager **réel** |
| **Exemples** | IR, IS, TVA, TH | Taxe enlèvement ordures ménagères | Redevance audiovisuelle (anc.), prix piscine |

### B. Les dépenses

#### Définition
La dépense publique sert à **financer des politiques publiques**.

#### Critères d''une politique publique
- Un ensemble **coordonné** d''actions
- S''adresse à un **public précis**
- Des **objectifs identifiés**
- Un ensemble de **moyens financiers**

#### Distinction dépense / charge
- **Dépense** : flux de sortie **définitif** (n''est pas remboursée)
- **Charge** : englobe les dépenses + les flux de sortie qui seront **remboursés** (prêts)

#### Distinction recette / ressource
- **Recette** : entrée **définitive** dans la caisse
- **Ressource** : entrée non définitive (sera remboursée, ex : emprunt)

### C. Le résultat

Différence entre recettes et dépenses :
- **Excédent budgétaire** (non connu depuis **1970**)
- **Équilibre** mathématique parfait
- **Déficit** (situation actuelle)

> Pour 2023, la loi de finance prévoit qu''il manquera à l''État **165 milliards d''euros**.

### D. La dette publique

#### Définition
**Stock d''emprunts non remboursés**. Donnée **pluriannuelle** (≠ déficit annuel).

#### Caractéristiques
- **Durée moyenne** des emprunts : **8 ans**
- Certains emprunts jusqu''à **50 ans**
- **Produits de la dette** revendus sur les marchés financiers

#### Distinctions essentielles
- **Emprunt ≠ Déficit**
- **Dette publique ≠ Déficit** (la dette est pluriannuelle, le déficit est annuel)

> *« La dette n''est pas un cumul de déficits mais un cumul d''emprunts contractés pour faire face aux déficits passés. »*

## III. Les politiques publiques majeures

### Classement des dépenses (2023)

1. **Enseignement scolaire** : 82 milliards
2. **Armée** : 53 milliards
3. **Intérêts de la dette** : 51 milliards
4. **Écologie**
5. **Recherche** et enseignement supérieur
6. **Solidarité**, insertion, égalité des chances
7. **Travail** : 20 milliards

### Politiques les moins coûteuses
Justice, sécurité, agriculture, affaires étrangères, économie.

### PIB de la France
Fin 2022 : **2 639 milliards d''euros** (PIB = somme des valeurs ajoutées).

## IV. La définition des finances publiques

### A. Définition ancienne (jusqu''au début des années 90)
**Finances des personnes morales de droit public** : État, collectivités territoriales, établissements publics.

#### Défauts (au regard du droit de l''UE)
- La catégorie **« établissement public »** est trop large : les **EPIC** (établissements publics industriels et commerciaux) fonctionnent comme des entreprises privées
- Des **personnes de droit privé** peuvent gérer des masses financières importantes (CPAM, CAF)

### B. Définition européenne actuelle
**Finances des administrations publiques** :
- État
- Collectivités territoriales
- Établissements publics **administratifs** (sauf EPIC)
- Sécurité sociale (entièrement)

### C. Le système de sécurité sociale

#### Cinq risques couverts
- **Maladie** (maternité, invalidité, décès)
- **Vieillesse** (retraite, veuvage)
- **Accident du travail** (maladies professionnelles)
- **Prestations familiales**
- **Dépendance** (perte d''autonomie)

> Le **chômage n''est pas** un risque géré par la sécurité sociale.

#### Statut au regard du droit de l''UE
Le système social est une **mission d''administration publique**.

#### Décision du Conseil constitutionnel - 20 janvier 1961
> *« La notion de charge publique s''entend des dépenses faites des divers régimes d''assistance et de sécurité sociale. »*

#### Prélèvements obligatoires alimentant la sécurité sociale
- **Cotisations sociales**
- **Impôts** (CSG, CRDS)

## V. La spécificité des finances publiques

### A. Une norme juridique particulière

> *« La norme juridique peut être la conséquence d''une situation. »*

- Décision en **réaction** d''une situation
- Décision pour **provoquer** une situation
- Souvent les deux

### B. Un révélateur de la politique

> *« L''état des finances publiques est souvent un révélateur. La décision que prend le politique à travers les décisions budgétaires est un révélateur de la situation. »*

## Conclusion

Les **finances publiques** sont **intrinsèquement liées à l''existence de l''État**. Leur évolution accompagne celle de la **fonction étatique** : de l''**État de gendarme** à l''**État providence**.

La maîtrise des finances publiques suppose la compréhension :
- Des **quatre concepts** : recettes, dépenses, résultat, dette
- Des **distinctions** essentielles (impôt/taxe/redevance, dépense/charge, recette/ressource)
- De la **judiciarisation** progressive de la matière sous la Vème République
- De la définition **européenne** des administrations publiques

Les finances publiques sont aujourd''hui une **matière juridique à part entière**, soumise à un **contrôle constitutionnel** renforcé et à un **encadrement européen** strict.'
from public.subjects where slug = 'l2-finances-publiques';

-- =====================================================================
-- FICHE 2 - LES SOURCES JURIDIQUES INTERNES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les sources juridiques internes', 'Thème 1 - Titre 1 : Sources internes',
       'Constitution de 1958 (art. 34, 47, 47-2, 72-2), DDHC (art. 13, 14, 15), lois organiques (LOLF, LOLFSS, LOPGFP).',
       array['Article 34 C.', 'Article 47 C.', 'Article 47-2 C.', 'Article 72-2 C.', 'DDHC art. 13', 'DDHC art. 14', 'LOLF 2001', 'LOLFSS 2005', 'LOPGFP 2012', 'Loi de finances', 'Loi de financement de la sécurité sociale', 'Loi de programmation'],
       30, 2,
'# Les sources juridiques internes

## Introduction

Le droit des **finances publiques** trouve ses sources principalement dans la **Constitution de 1958**, la **DDHC de 1789** (intégrée au bloc de constitutionnalité depuis 1971) et les **lois organiques** prises en application de la Constitution.

> Lorsque la C du 4 octobre 1958 a été adoptée, il y avait **peu de dispositions financières**. Au fur et à mesure des réformes constitutionnelles, les finances publiques sont **de plus en plus entrées** dans le texte constitutionnel.

## I. La Constitution de 1958

### A. Les dispositions générales

#### Article 34 C. - Domaine de la loi

> *« La loi fixe les règles concernant l''assiette, le taux et les modalités de recouvrement des impositions de toutes nature. »*

##### Principes
- **Monopole législatif** en matière fiscale
- Seul le **législateur** peut créer, supprimer ou modifier un impôt
- Les **collectivités territoriales** ne peuvent pas créer d''impôt (CC, 2009)
- Pas d''autonomie fiscale des CT
- Le législateur doit utiliser **totalement** sa compétence

##### « Impositions de toute nature »
- **Impôts** : prélèvement obligatoire **sans contrepartie**
- **Taxes** : prélèvement obligatoire pour usage d''un **service public identifié**

#### Article 34 al. 23 C. - Lois de programmation
> *« Les orientations pluriannuelles des finances publiques sont définies par des lois de programmation. »*

##### Création
- **2008** : pour satisfaire à une **obligation européenne**
- Fixent les **grandes orientations** des finances publiques

##### Portée limitée
- Les **5 premiers** projets de loi de programmation n''ont pas été respectés
- Le 6ème est en cours

#### Article 47-2 C. - Cour des comptes
##### Fonctions
- Assiste le **Parlement**
- **Évaluation** des politiques publiques

##### Principe de régularité et sincérité
> *« Les comptes des administrations publiques sont réguliers et sincères. »*

- Pas de **dissimulation**
- Comptes publics fiables, exact des recettes et dépenses

### B. Les dispositions sur les lois de finances

#### Article 34 C.
> *« Les lois de finances déterminent les ressources et les charges de l''État dans les conditions et sous la réserve prévue par une loi organique. »*

#### Article 39 C.
**Initiative législative** : les projets de loi de finances sont **examinés en premier par l''Assemblée nationale**.

#### Article 42 C.
**Exception** : la discussion en séance des projets de finances de la sécurité sociale porte sur le **texte déposé par le gouvernement** (non sur celui issu de la commission).

#### Article 49 al. 3 C.
##### Avant 2008
Utilisation **illimitée** par le Premier ministre.

##### Depuis 2008 (révision constitutionnelle)
- **Principe** : le PM peut engager sa responsabilité sur les **lois de finances ou de financement de la sécurité sociale** sans limite
- **Exception** : 1 projet/proposition de loi par session

#### Article 47 C.
##### Délais
- **40 jours** à l''Assemblée nationale pour la première lecture
- Si dépassement → **dessaisissement automatique** au Sénat
- Cette procédure n''a **jamais été utilisée** jusqu''à présent

#### Article 47-1 C. (lois de financement de la sécurité sociale)
- **20 jours** à l''Assemblée nationale

### C. Les finances des collectivités territoriales - Article 72-2 C.

#### Genèse - Réforme de 2003
##### Contexte
- Suppression d''impôts locaux (vignette automobile, taxe d''habitation)
- Compensation par des dotations de l''État
- **Contrôle indirect** de la dépense locale par l''État
- Pression liée à la **convergence Maastricht** (3% déficit, 60% dette)

#### Cinq alinéas
1. **Ressources** dont les CT peuvent disposer librement (sous loi)
2. **Possibilité** de recevoir des impositions (la loi peut autoriser)
3. **Part déterminante** des ressources propres (alinéa central)
4. **Compensation** des transferts de compétences
5. **Péréquation** entre collectivités

#### Article 72-2 al. 3 (le summum)
> *« Les ressources fiscales et autres ressources propres des collectivités représentent, pour chaque catégorie de collectivités, une part déterminante de l''ensemble de leurs ressources. »*

##### Loi organique du 29 juillet 2004
- Définition de la « ressource propre »
- Inclut les **impôts partagés** (TVA dont le régime est fixé par la loi)
- **Limite** : ne peut être inférieure au niveau de **2003**

##### Décision CC 2009
> *« Les CT ne bénéficient pas d''un principe d''autonomie fiscale. »*

#### Bilan
- **Hisser au niveau constitutionnel** des dispositions existantes
- La Constitution donne **tout pouvoir** à la loi
- L''autonomie financière est garantie sans grand effet pratique

### D. Les dispositions sur la sécurité sociale

#### Lois de financement de la sécurité sociale (LFSS)
- Procédure similaire aux lois de finances
- Délais raccourcis (20 jours à l''AN)

### E. Les dispositions sur le contrôle des finances

#### Article 24 C.
> *« Le Parlement contrôle l''action du gouvernement et évalue les politiques publiques. »*

#### Article 47-2 C.
Rôle de la **Cour des comptes** dans le contrôle.

## II. La DDHC de 1789

### A. Valeur constitutionnelle

Depuis la décision **« Liberté d''association » du 16 juillet 1971**, la DDHC est intégrée au **bloc de constitutionnalité**.

### B. Article 13 DDHC

> *« Pour l''entretien de la force publique, et pour les dépenses d''administration, une contribution commune est indispensable : elle doit être également répartie entre tous les citoyens, en raison de leurs facultés. »*

#### Deux consécrations
1. **Nécessité de l''impôt** : pas d''État sans impôt
2. **Égalité** devant les charges publiques (en fonction des facultés)

#### Application
- Base des dispositifs de **lutte contre la fraude fiscale**
- **Progressivité** de l''impôt

### C. Article 14 DDHC

> *« Tous les citoyens ont le droit de constater, par eux-mêmes ou par leurs représentants, la nécessité de la contribution publique, de la consentir librement, d''en suivre l''emploi, et d''en déterminer la quotité, l''assiette, le recouvrement et la durée. »*

#### Consécrations
- **Nécessité** de l''impôt
- **Consentement** à l''impôt (fiction juridique : par les représentants)
- Idée de **budget** : recettes et dépenses connues
- **Contrôle** de l''emploi

### D. Article 15 DDHC

> *« La société a le droit de demander compte à tout agent public de son administration. »*

#### Portée
- Peu de portée juridique stricte
- **Sens financier** : transparence des finances publiques

## III. Les sources législatives organiques

### A. Rappels

#### Lois organiques
- N''existent que là où la **Constitution le prévoit**
- **Complètent** et précisent la Constitution
- Servent de **norme de contrôle** de la constitutionnalité (mais ne font pas partie du bloc de constitutionnalité)

#### Hiérarchie
- Toutes les lois organiques ont la **même valeur** entre elles
- **Inférieures** aux normes constitutionnelles (CC, 1er août 2001)

### B. La LOLF - Loi organique relative aux lois de finances (1er août 2001)

#### Genèse
- **Remplace** l''ordonnance organique du 2 janvier 1959
- Construite sur **40 années d''expérience**
- Origine **parlementaire** (consensus politique large)

#### Apports
- **Structure** moderne des lois de finances
- **Mission / programme / action**
- **Performance** et **évaluation**
- **Indicateurs** de résultat
- **Plafonnement** des dépenses

#### Réforme du 28 décembre 2021
- **Modernisation** de la LOLF
- Renforcement du **contrôle parlementaire**
- Nouvelles dispositions sur la **dette**

### C. La LOLFSS - Loi organique relative aux lois de financement de la sécurité sociale

#### Origine
- **Loi organique du 2 août 2005**
- Cadre des **lois de financement** de la sécurité sociale (créées par révision constitutionnelle de 1996)

#### Apports
- **Plafonds** de dépenses (ONDAM)
- **Recettes** affectées
- **Équilibre** financier

### D. La LOPGFP - Loi organique de programmation et de gouvernance des finances publiques

#### Origine
- **Loi organique du 17 décembre 2012**
- Adoption en application du **TSCG** (Traité sur la stabilité, la coordination et la gouvernance)

#### Apports
- **Objectif** d''équilibre des comptes
- **Trajectoire** pluriannuelle
- **Haut Conseil des finances publiques** (HCFP)
- **OMT** : objectif à moyen terme du **déficit structurel** (max 0,5% du PIB)

### E. La spécificité de la LOLF

#### Question : la LOLF a-t-elle une valeur supérieure aux autres lois organiques ?

##### Décision CC du 10 janvier 1995
- Contrôle de la conformité d''une **loi organique relative au statut de la magistrature** par rapport à la LOLF
- La LOLF prévoit que les postes d''agents publics ne peuvent être créés que par une **loi de finances**
- **Censure** d''une disposition de la loi organique sur la magistrature

##### Portée
- Ne prouve **pas** la supériorité hiérarchique de la LOLF
- La LOLF concerne un **sujet transversal** : les finances
- Toutes les lois organiques ont la **même valeur**

## IV. Les sources législatives ordinaires

### A. Les lois de finances
- **Annuelles**
- Adoptées sur le fondement de la LOLF
- **Principal acte** budgétaire

### B. Les lois de financement de la sécurité sociale
- **Annuelles**
- Adoptées sur le fondement de la LOLFSS

### C. Les lois fiscales
- **Créent** et modifient les impôts
- **Dispositif** annuel généralement intégré à la loi de finances

## Conclusion

Les **sources internes** des finances publiques sont **multiples** et **hiérarchisées** :
- La **Constitution** (compléments aux articles 34, 47, 72-2)
- La **DDHC** (articles 13, 14, 15)
- Les **lois organiques** : **LOLF** (2001), **LOLFSS** (2005), **LOPGFP** (2012)
- Les **lois ordinaires** : lois de finances annuelles, LFSS, lois fiscales

La **judiciarisation** progressive et le rôle accru du **Conseil constitutionnel** depuis 1974 et 2010 (QPC) ont renforcé la **discipline constitutionnelle** en matière financière. Les **lois organiques** modernisent le cadre budgétaire et imposent une **gouvernance pluriannuelle** alignée sur les exigences européennes.'
from public.subjects where slug = 'l2-finances-publiques';
-- =====================================================================
-- FICHE 3 - LES SOURCES JURIDIQUES EXTERNES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les sources juridiques externes', 'Thème 1 - Titre 2 : Sources externes',
       'TFUE et critères de Maastricht (3% déficit, 60% dette), Pacte de stabilité et de croissance (PSC), TSCG 2012, semestre européen, règle d''or.',
       array['TFUE', 'Maastricht 1992', 'PSC 1997', 'Volet préventif', 'Volet répressif', 'Programme de stabilité', 'Conseil Ecofin', 'Semestre européen', 'TSCG 2012', 'Règle d''or', 'Déficit structurel', 'OMT'],
       28, 3,
'# Les sources juridiques externes

## Introduction

Le droit des finances publiques est désormais largement encadré par le **droit européen**. Deux droits européens s''appliquent :
- Le **droit de l''Union européenne**
- Le droit issu de la **CEDH**

Les **finances publiques** sont au cœur du **fonctionnement de la zone euro** : la **politique monétaire** est commune, mais la **politique budgétaire** reste nationale, ce qui impose une **discipline collective**.

## I. Le TFUE et le Pacte de stabilité et de croissance (PSC)

### A. Le Traité de Maastricht (1992)

#### Inscription du principe
> *« Les États membres évitent les déficits publics excessifs. »*

#### Discipline budgétaire imposée
Pour préserver la valeur de la monnaie unique (euro), une **politique budgétaire saine** est nécessaire.

### B. Les critères de Maastricht (Protocole annexé)

#### 3 critères principaux
1. **Lutte contre l''inflation** (préserver la valeur de la monnaie)
2. **Déficit public ≤ 3% du PIB**
3. **Dette publique ≤ 60% du PIB**

#### Calendrier
- 1992 : adoption du traité
- **10 ans** pour atteindre les critères
- 2002 : passage à l''euro

### C. Le Pacte de stabilité et de croissance (1997)

#### Objectif - Exposé des motifs
- *« Le PSC est fondé sur l''objectif de finances publiques saines. »*
- *« Position budgétaire proche de l''équilibre ou excédentaire à moyen terme. »*

#### Structure
- **Règlement préventif** : surveillance multilatérale
- **Règlement répressif** : sanctions en cas de déficit excessif

### D. Le volet préventif

#### Surveillance multilatérale
Les **États membres** présentent chaque année :
- Document **triennal** sur leur situation
- **Scénarios** d''évolution
- **Politique budgétaire** envisagée

#### Programmes
- **Membres de la zone euro** : « **programmes de stabilité** »
- **Membres de l''UE non zone euro** : « **pactes de convergence** »

#### Procédure d''examen
##### Étape 1 : Conseil Ecofin
Réunit tous les **ministres de l''économie et des finances** des États membres de l''UE.

##### Étape 2 : Commission européenne
- **Évaluation** des programmes
- **Recommandations**

#### Objectif
**Coordination** des politiques budgétaires : *« tout le monde aille dans le même sens »*.

### E. Le volet répressif

#### Procédure de déficit excessif

##### Conditions
- **Déficit** ne dépassant pas **3% du PIB**
- **Dette** ne dépassant pas **60% du PIB**

##### Sanctions prévues
1. **Dépôt financier** : 0,2 à 0,5% du PIB
2. **Restitution** si redressement en 2 ans
3. **Sinon** : transformation en **amende**

#### Application pratique
- Les sanctions **n''ont jamais été appliquées**
- Jugées **trop lourdes**
- Réforme : sanctions **moins lourdes** mais symboliques

### F. La crise de 2003 et les réformes

#### Crise franco-allemande (2003)
- Le **Conseil Ecofin** refuse de sanctionner la France et l''Allemagne
- Démonstration de la **faiblesse** politique du PSC

#### Réforme de 2005
##### Innovation
**Dépassement** du seuil de 3% autorisé en période de **croissance négative** ou de croissance faible prolongée.

#### Réformes de 2011 (Six Pack)
##### Apports principaux
- **6 textes** européens
- Distinction **déficit structurel / conjoncturel**
- **Déficit structurel** ne doit pas dépasser **1% du PIB**

#### Réformes de 2013 (Two Pack)
- 2 nouveaux textes
- Complètent le TSCG de 2012

### G. Le semestre européen

#### Notion
**Calendrier d''intégration** de la procédure budgétaire nationale dans le processus européen.

#### Calendrier
- **Janvier-juin** : phase européenne (analyse, recommandations)
- **Juillet-décembre** : phase nationale (préparation et adoption des budgets)

#### Apports
- **Surveillance** des équilibres **macroéconomiques** (non plus seulement microéconomiques)
- **Connaissance** de la position des instances UE en juillet

### H. La surveillance de la dette publique

#### Renouveau post-crise
Après la crise de 2008, la dette publique **redevient prioritaire**.

#### Critère
La dette **ne doit pas augmenter** : doit converger vers 60% du PIB à un rythme de **1/20ème par an**.

## II. Le Traité sur la stabilité, la coordination et la gouvernance (TSCG)

### A. Genèse

#### Signature
**2 mars 2012**.

#### Nature
- **Pas un traité de l''UE** : ne fonde pas l''UE
- **Traité intergouvernemental**
- 2 États membres ne l''ont pas signé : **Royaume-Uni** et **République tchèque**

#### Articulation avec le droit de l''UE - Article 2 TSCG
> *« Doit toujours être interprété et appliqué conformément aux traités sur lesquels l''UE est fondée. »*

Pas de **dérogation** au droit de l''UE.

### B. La règle d''or - Article 3 TSCG

> *« La situation budgétaire des administrations publiques doit être un équilibre ou un excédent. »*

#### Modalités de transposition
- **Voie constitutionnelle privilégiée**
- Position portée par l''**Allemagne**

### C. Transposition en France

#### Allemagne
Inscription dans la **loi fondamentale** allemande.

#### France
- **Pas de révision constitutionnelle** : impossibilité politique
- **Loi organique du 17 décembre 2012** (LOPGFP)
- Inscription d''un **principe d''équilibre des comptes** (≠ équilibre budgétaire strict)
- Création du **Haut Conseil des finances publiques** (HCFP)

#### Conséquence
**Portée juridique limitée** : *« équilibre des comptes »* est une notion souple.

### D. L''OMT (Objectif à moyen terme)

#### Définition
Le **solde structurel annuel** doit correspondre à l''**objectif à moyen terme** spécifique à chaque État.

#### Plafond
**Maximum 0,5% du PIB** de déficit structurel.

#### Bilan
La France **n''est jamais arrivée** à respecter son OMT.

## III. Les sources externes complémentaires

### A. Les directives sur les cadres budgétaires
- **Directive 2011/85/UE** : exigences sur les cadres budgétaires nationaux
- **Comptabilité publique** harmonisée

### B. Le mécanisme européen de stabilité (MES)
- **Aide financière** aux États en difficulté
- Conditionnalité forte

### C. Le rôle de la Cour de justice
- Contrôle du **respect** des traités
- Affaires **Pringle** (2012) : validité du MES

## IV. Bilan : la souveraineté budgétaire encadrée

### A. Le maintien de la souveraineté

> *« Les États membres de l''UE conservent leur souveraineté budgétaire et ne respectent pas toujours les normes européennes. »*

#### Décisions budgétaires
- Le **Parlement national** vote les budgets
- Les **directives** européennes sont des cadres, non des décisions

### B. Une discipline collective

#### Pourquoi nécessaire
- **Politique monétaire commune**
- **Politiques budgétaires nationales**
- Besoin de **coordination** pour éviter les déséquilibres

### C. La crise et les évolutions

#### Suspension du PSC (2020-2023)
**Crise du Covid-19** : suspension pour permettre les plans de relance.

#### Réforme du PSC en cours
- **Sanctions** moins lourdes mais effectives
- **Trajectoires** individualisées par État
- **Investissements verts** et numériques pris en compte

## Conclusion

Les **sources externes** des finances publiques sont **multiples** :
- Le **TFUE** et les critères de Maastricht (3% / 60%)
- Le **PSC** (1997, réformé en 2005, 2011, 2013) avec ses volets préventif et répressif
- Le **semestre européen** pour la coordination
- Le **TSCG** (2012) avec sa règle d''or

La **souveraineté budgétaire** des États est **encadrée** sans être supprimée. Les **réformes successives** illustrent la difficulté de concilier **discipline collective** et **autonomie nationale**.

La crise du **Covid-19** a montré la **flexibilité** nécessaire en cas de choc majeur, justifiant une **réforme** du PSC en cours pour adapter les règles aux réalités économiques contemporaines.'
from public.subjects where slug = 'l2-finances-publiques';

-- =====================================================================
-- FICHE 4 - LOI DE FINANCES ET BUDGET DE L'ÉTAT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Loi de finances et budget de l''État', 'Thème 2 - Notions',
       'Distinction loi de finances / budget, structure du budget (budget général, budgets annexes, comptes spéciaux), principes budgétaires.',
       array['Loi de finances', 'LOLF', 'Article 1 LOLF', 'Article 6 LOLF', 'Budget général', 'Budgets annexes', 'Comptes spéciaux', 'Affectation spéciale', 'Comptes de commerce', 'Concours financier', 'Principes budgétaires', 'Mission'],
       28, 4,
'# Loi de finances et budget de l''État

## Introduction

Dans le langage commun, **« budget »** et **« loi de finances »** sont confondus. Pourtant, juridiquement, ce sont **deux notions distinctes** :
- La **loi de finances** est un **acte juridique** qui autorise
- Le **budget** est un **document comptable** qui décrit

> Sous la Vème République, le **terme « budget »** a **disparu** du texte constitutionnel au profit de **« loi de finances »**.

## I. La distinction loi de finances / budget

### A. La loi de finances - Article 1 LOLF

> *« Les lois de finances déterminent pour un exercice la nature, le montant et l''affectation des ressources et des charges de l''État. »*

#### Caractéristiques
- **Acte juridique**
- **Autorise** les ressources et les charges
- **Portée normative**

### B. Le budget - Article 6 LOLF

> *« Les ressources et les charges de l''État sont retracées dans le budget. »*

#### Caractéristiques
- **Document comptable**
- **Décrit** sans décider
- **Quantifie** les ressources et les charges
- Sous forme de **tableau**

### C. Articulation

| | Loi de finances | Budget |
|---|---|---|
| **Nature** | Norme juridique | Norme comptable |
| **Fonction** | Autorise | Décrit |
| **Forme** | Articles | Tableaux |
| **Portée** | Normative | Descriptive |

Le **budget** n''est qu''une **partie** de la loi de finances : sa description comptable.

## II. Les catégories de lois de finances

### A. La loi de finances initiale (LFI)

#### Notion
Loi de finances **prévisionnelle** pour l''**année à venir**.

#### Adoption
- **Préparation** : février N-1 à septembre N-1 (gouvernement)
- **Adoption** : octobre N-1 à décembre N-1 (Parlement)
- **Promulgation** : avant le 1er janvier de l''année N

### B. Les lois de finances rectificatives (LFR)

#### Notion
**Modifient** la LFI en cours d''exercice.

#### Cas
- **Variation** des recettes ou dépenses
- **Mesures** non anticipées
- Crises exceptionnelles (Covid, énergie)

### C. La loi de règlement

#### Notion
**Constate** les résultats de l''exercice écoulé.

#### Devenue
**Loi relative aux résultats de la gestion** depuis la réforme de la LOLF (2021).

#### Effet
- **Approbation** des comptes
- **Clôture** de l''exercice

### D. Les lois de finances de fin d''année
**Lois spéciales** en cas de blocage de la LFI.

## III. La structure du budget de l''État

Le budget de l''État se compose de **trois ensembles** :
- Le **budget général**
- Les **budgets annexes**
- Les **comptes spéciaux**

### A. Le budget général

#### Place
**Plus grande partie** du budget de l''État.

#### Critère négatif
Sont inscrites au budget général toutes les opérations qui ne **trouvent pas leur place** dans un budget annexe ou un compte spécial.

#### Principales recettes du budget général
- **TVA** (plus de 100 Md€)
- **Impôt sur le revenu**
- **Impôt sur les sociétés**
- **Impôt sur la fortune immobilière**

#### Caractéristique essentielle
> Aucune des recettes du budget général n''est **affectée à l''avance** au financement d''une politique publique. **Toutes les recettes se mélangent.**

#### Conséquence
- **Universalité** budgétaire
- Facilite l''**acceptation de l''impôt** d''un point de vue sociologique

### B. Les budgets annexes

#### Réduction historique
**Aujourd''hui** : seulement **2 budgets annexes** :
- **Contrôle aérien**
- **Publications officielles**

#### Critères - Article 18 LOLF
1. **Services de l''État** non dotés de la personnalité morale
2. Résultant d''une activité de **production de biens ou de prestations de services**
3. Donnant lieu au paiement de **redevances**
4. **À titre principal**

#### Détail des critères

##### 1. Services de l''État
**Pas d''établissement public ni de collectivité territoriale** : seulement des services internes de l''État.

##### 2. Production de biens ou services
- État **n''est plus producteur industriel**
- Activités de **prestation de services** (contrôle aérien)
- **Publications officielles** (avant : timbres, monnaies et médailles)

##### 3. Paiement de redevances

###### Distinction redevance / taxe
| | Redevance | Taxe |
|---|---|---|
| **Payeur** | Usager **réel** | Usager **potentiel** |
| **Nature** | Volontaire (pour usage) | Obligatoire |
| **Calcul** | Coût du service (CE 1958, Syndicat national des transporteurs aériens) | Forfaitaire |

###### Usagers professionnels
*Civ. CE 7 octobre 2009, SETIL* : pour les usagers à **utilité professionnelle**, la redevance peut être calculée en fonction du **chiffre d''affaires** réalisé (et non du coût du service).

##### 4. À titre principal
Si l''activité est **accessoire** → compte de commerce, non budget annexe.

#### Évolution historique
- Influence du **droit européen** (concurrence)
- Transformations en **personnes morales** (établissements publics)
- Puis en **sociétés anonymes**
- **Réduction** progressive à 2 budgets annexes

### C. Les comptes spéciaux

#### Quatre catégories

##### 1. Comptes d''affectation spéciale
- **Affectation** d''une recette particulière à une dépense particulière
- Exception au principe de **non-affectation**

##### 2. Comptes de concours financier
- **Participation financière** de l''État à certaines actions
- Exemple : **prêts** à des États étrangers
- L''argent **doit être remboursé**

##### 3. Comptes de commerce
- Pour des services de l''État sans personnalité morale
- Activité de bien ou service moyennant **prix**
- Activité **accessoire** (non principale)
- Exemple : activités des **centres pénitenciers**

##### 4. Comptes d''opérations monétaires
- **3 catégories**
- Exemple : **bénéfice de change**

### D. Le budget triennal

#### Notion
**N''est pas un budget**. Contenu dans la **loi de programmation des finances publiques** (LOPGFP).

#### Adoption
- Adoptée en **2012** suite au TSCG
- **Recherche** d''équilibre voire d''excédent

#### Plafonds d''autorisation de dépenser
**Plafonds triennaux** par mission.

#### Portée
- **Pas de force obligatoire** pour les lois de finances
- Le **Conseil constitutionnel** considère ces lois comme **programmatiques**
- **Indicatives** seulement

#### Bilan
- **5 lois de programmation** successives
- **Aucune** n''a été respectée

## IV. Les principes budgétaires

### A. Le principe d''**annualité**

#### Notion
- Budget couvre **une année** (calendaire)
- **Exercice** : du 1er janvier au 31 décembre

#### Exceptions
- **Reports** de crédits
- **Engagements pluriannuels** (AE/CP)

### B. Le principe d''**universalité**

#### Notion
- **Toutes** les recettes et **toutes** les dépenses figurent au budget
- **Non-affectation** : les recettes ne sont pas affectées
- **Non-compensation** : pas de compensation entre recettes et dépenses

#### Exceptions
- **Comptes d''affectation spéciale**
- **Budgets annexes**

### C. Le principe d''**unité**

#### Notion
**Un seul document** retrace toutes les opérations.

#### Exceptions
- **Budgets annexes**
- **Comptes spéciaux**

### D. Le principe de **spécialité**

#### Notion
Les crédits sont **spécialisés** :
- Par **mission**
- Puis par **programme**
- Puis par **action**

#### Conséquence
**Pas de fongibilité** absolue : les crédits ne peuvent être utilisés que pour la destination prévue.

### E. Le principe de **sincérité**

#### Notion - Article 32 LOLF
> *« Les lois de finances présentent de façon sincère l''ensemble des ressources et des charges de l''État. Leur sincérité s''apprécie compte tenu des informations disponibles et des prévisions qui peuvent raisonnablement en découler. »*

#### Contrôle
**Conseil constitutionnel** peut sanctionner les **lois insincères**.

## V. La structure de la LOLF

### A. Mission / Programme / Action

#### Mission
- **Politique publique**
- Unité de **vote** parlementaire
- Exemple : « Enseignement scolaire »

#### Programme
- **Subdivision** d''une mission
- Confié à un **responsable de programme**
- Exemple : « Enseignement scolaire public du premier degré »

#### Action
- **Subdivision** d''un programme
- **Opérationnalisation** de la politique

### B. Les indicateurs de performance

#### Objectifs
- **Évaluation** des politiques publiques
- **Mesure** des résultats
- **Indicateurs** de performance

#### Inspirations
- Approche **anglo-saxonne**
- *« Performance-based budgeting »*

## Conclusion

La distinction **loi de finances / budget** est essentielle pour comprendre la matière. La **structure budgétaire** comprend :
- Le **budget général** (universalité)
- Les **budgets annexes** (services à recettes propres)
- Les **comptes spéciaux** (affectation, concours, commerce, opérations monétaires)

La **LOLF de 2001** a profondément modernisé la **structure budgétaire** en introduisant la triade **mission / programme / action** et la culture de la **performance**.

Les **principes budgétaires** classiques (annualité, universalité, unité, spécialité, sincérité) **structurent** la matière mais connaissent des **assouplissements** nécessaires. La maîtrise suppose de connaître les **exceptions** et leurs justifications.'
from public.subjects where slug = 'l2-finances-publiques';

-- =====================================================================
-- FICHE 5 - LE BUDGET DE L'ÉTAT EN DÉTAIL
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le budget de l''État en détail', 'Thème 2 - Approfondissement',
       'Structure détaillée du budget : budget général, budgets annexes (contrôle aérien, publications officielles), comptes spéciaux (4 catégories), missions et programmes.',
       array['Budget général', 'Universalité', 'Article 18 LOLF', 'Budget annexe', 'Compte spécial', 'Affectation spéciale', 'Concours financier', 'Compte de commerce', 'Opérations monétaires', 'Mission', 'Programme', 'AE', 'CP'],
       28, 5,
'# Le budget de l''État en détail

## Introduction

Le **budget de l''État** s''organise selon une **architecture précise** définie par la **LOLF du 1er août 2001**. Sa connaissance fine est indispensable pour comprendre le fonctionnement financier de l''État.

## I. Le budget général

### A. Caractéristiques

#### Principe d''universalité
- **Mélange** de toutes les recettes
- **Pas d''affectation** d''avance
- **Acceptation sociologique** facilitée

#### Définition par défaut
Sont inscrites au budget général **toutes** les opérations qui ne relèvent ni d''un budget annexe, ni d''un compte spécial.

### B. Les recettes du budget général

#### Recettes fiscales
- **TVA** (+100 Md€)
- **Impôt sur le revenu** (+80 Md€)
- **Impôt sur les sociétés** (+50 Md€)
- **TICPE** (taxe intérieure de consommation sur les produits énergétiques)
- **Impôt sur la fortune immobilière** (IFI)

#### Recettes non fiscales
- **Dividendes** des entreprises publiques
- **Produits du domaine**
- **Amendes** et **sanctions**
- **Recettes diverses**

### C. Les dépenses du budget général

#### Structure par missions
La LOLF a structuré les dépenses en **missions** (politiques publiques) :
- **Éducation nationale**
- **Défense**
- **Solidarité**
- **Justice**
- **Sécurité**

#### Une cinquantaine de missions

## II. Les budgets annexes

### A. Aujourd''hui : 2 budgets annexes

#### 1. Contrôle et exploitation aériens
- **Financé** par les redevances des compagnies aériennes
- **Souveraineté** : contrôle de l''espace aérien
- **Sécurité** nationale

#### 2. Publications officielles et information administrative
- **Journal Officiel**
- **Direction de l''information légale et administrative (DILA)**
- Activité en **déclin** avec la dématérialisation

### B. Régime juridique

#### Article 18 LOLF
> *« Des budgets annexes peuvent retracer les seules opérations des services de l''État non dotés de la personnalité morale résultant de leur activité de production de biens ou de prestations de services. »*

#### Conditions cumulatives
1. **Services de l''État** (pas d''établissement public)
2. **Sans personnalité morale**
3. **Production** de biens ou services
4. **Paiement de redevances**
5. **À titre principal**

#### Application : la redevance
##### CE, 21 novembre 1958, Syndicat national des transporteurs aériens
> *« Le montant de la redevance doit être équivalent au coût du service offert. »*

##### CE, 7 octobre 2009, SETIL
**Évolution** pour les usagers professionnels :
- Calcul possible en fonction du **chiffre d''affaires**
- Pas seulement le coût du service
- Application aux usagers à **utilité professionnelle**

### C. L''évolution historique

#### Diminution
- **Avant** : plusieurs budgets annexes (tabac, monnaies et médailles, etc.)
- **Aujourd''hui** : seulement 2

#### Influence du droit européen
Tout ce qui peut **fausser la concurrence** doit disparaître :
- **Monopoles** publics → suppression
- Activités concurrentielles → privatisation

#### Transformation en personnes morales
- **Établissements publics** d''abord
- Puis **sociétés anonymes** (France Télévisions, La Poste, La Française des Jeux)

## III. Les comptes spéciaux

### A. Comptes d''affectation spéciale

#### Notion
**Affectation** d''une recette particulière à une dépense particulière.

#### Justification
Exception au **principe d''universalité** justifiée par :
- Une **logique économique** (lien recette/dépense)
- Une **traçabilité** politique
- Une **acceptation** facilitée

#### Exemples
- **Contrôle de la circulation et du stationnement routiers** (amendes → travaux routiers)
- **Pensions** (cotisations → versement des pensions)
- **Aides à l''acquisition de véhicules propres** (taxe → bonus écologique)

### B. Comptes de concours financier

#### Notion
**Participation financière** de l''État à certaines actions, **remboursable**.

#### Types
- **Prêts** à des États étrangers
- **Avances** à divers services de l''État
- **Prêts** à des entreprises (dans des cas particuliers)

#### Caractéristique
**Sortie non définitive** : l''argent doit être remboursé.

#### Distinction recette/ressource et dépense/charge

| | Recette | Ressource |
|---|---|---|
| **Nature** | Entrée définitive | Entrée non définitive |
| **Exemple** | Impôt | Emprunt |

| | Dépense | Charge |
|---|---|---|
| **Nature** | Sortie définitive | Sortie non définitive |
| **Exemple** | Salaire | Prêt à un État |

### C. Comptes de commerce

#### Notion
Services de l''État **sans personnalité morale**, ayant une activité de bien ou prestation de service **moyennant un prix**, mais **à titre accessoire**.

#### Exemples
- **Activités des centres pénitenciers**
- **Régies industrielles** de l''Administration

#### Différence avec budget annexe
Le **caractère accessoire** : si l''activité est principale → budget annexe ; si accessoire → compte de commerce.

### D. Comptes d''opérations monétaires

#### Notion
**Opérations** liées à la **monnaie**.

#### Trois catégories
- **Compte du bénéfice de change**
- **Compte des opérations avec le FMI**
- **Compte des relations monétaires avec les pays de la zone franc**

### E. Régime des comptes spéciaux

#### Article 19 LOLF
**Création** par une loi de finances.

#### Équilibre
Les comptes spéciaux doivent en principe être **équilibrés** (sauf exceptions).

## IV. Mission, programme, action

### A. La mission

#### Définition
Une **politique publique** ministérielle ou interministérielle.

#### Caractéristiques
- **Unité de vote** parlementaire
- **Création** d''une mission relève de la loi de finances
- Comprend plusieurs **programmes**

#### Exemples
- *« Enseignement scolaire »*
- *« Défense »*
- *« Justice »*

### B. Le programme

#### Définition
**Subdivision** d''une mission, regroupant des actions concourant à une politique publique.

#### Caractéristiques
- **Responsable de programme** (RP) désigné
- **Plafond de crédits** par programme
- **Objectifs** et **indicateurs** de performance
- **Projet annuel de performance** (PAP)

#### Exemple
*« Enseignement scolaire public du premier degré »* (au sein de la mission Enseignement scolaire).

### C. L''action

#### Définition
**Subdivision** d''un programme.

#### Caractéristiques
- **Opérationnalisation** de la politique
- **Justification au premier euro** (JPE)

## V. Les autorisations d''engagement et crédits de paiement (AE/CP)

### A. Autorisations d''engagement (AE)

#### Notion
Plafond des **engagements juridiques** que l''État peut contracter dans l''année.

#### Application
- **Marchés publics** pluriannuels
- **Investissements** lourds

### B. Crédits de paiement (CP)

#### Notion
**Limite supérieure** des paiements que l''État peut faire dans l''année.

### C. Articulation

#### Pluriannualité
- Les **AE** couvrent l''engagement total
- Les **CP** couvrent les paiements année par année
- Exemple : marché de construction d''un bâtiment de 100 M€ sur 5 ans → 100 M€ d''AE en année N + 20 M€ de CP par an

## VI. Le calendrier budgétaire

### A. Préparation (février N-1 à septembre N-1)

#### Étapes
1. **Lettre de cadrage** du Premier ministre
2. **Conférences de répartition** ministre du Budget / ministres
3. **Arbitrages** budgétaires
4. **Élaboration** du projet de loi de finances

### B. Examen parlementaire (octobre N-1 à décembre N-1)

#### Procédure
1. **Dépôt** à l''Assemblée nationale au plus tard le **premier mardi d''octobre**
2. **Examen** en commission
3. **Première partie** : recettes et équilibre
4. **Deuxième partie** : missions et crédits
5. **Vote** par mission

#### Délais
- **AN** : 40 jours
- **Sénat** : 20 jours
- **Total** : 70 jours

### C. Exécution (année N)

#### Mise en œuvre
- **Délégations** de crédits aux ordonnateurs
- **Engagements** juridiques
- **Liquidations** et **ordonnancements**
- **Paiements** par les comptables publics

### D. Contrôle (année N+1)

#### Loi de règlement / Loi relative aux résultats
- **Constatation** des résultats
- **Rapports** annuels de performance (RAP)
- **Examen** par le Parlement

## VII. La nomenclature budgétaire

### A. La nomenclature par destination
- **Mission / programme / action**
- **Vision politique** des dépenses

### B. La nomenclature par nature
- **Titres** : personnel, fonctionnement, investissement, intervention
- **Vision économique** des dépenses

### C. Les titres

| Titre | Catégorie | Exemple |
|---|---|---|
| Titre 2 | **Personnel** | Salaires des fonctionnaires |
| Titre 3 | **Fonctionnement** | Achat de biens et services |
| Titre 5 | **Investissement** | Construction de bâtiments |
| Titre 6 | **Intervention** | Subventions |

## Conclusion

L''**architecture budgétaire** française est un **système complexe** mais **logique** :
- Le **budget général** concentre l''essentiel (universalité)
- Les **budgets annexes** isolent les services à recettes propres (contrôle aérien, publications)
- Les **comptes spéciaux** offrent des **dérogations contrôlées** (affectation, concours, commerce, opérations monétaires)

La **LOLF** a structuré les dépenses autour de la **triade mission / programme / action** et introduit la **culture de la performance**. La maîtrise suppose la **connaissance fine** de cette architecture et la **compréhension** des justifications à chaque niveau.

Les **AE/CP** permettent de gérer la **pluriannualité** sans rompre avec le principe d''annualité.'
from public.subjects where slug = 'l2-finances-publiques';

-- =====================================================================
-- FICHE 6 - LA PROCÉDURE BUDGÉTAIRE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La procédure budgétaire', 'Thème 3 - Procédure',
       'Préparation, examen et adoption de la loi de finances, prérogatives du gouvernement et du Parlement, contrôle constitutionnel.',
       array['Préparation', 'Lettre de cadrage', 'Article 47 C.', 'Première partie', 'Deuxième partie', 'Article 49 al. 3', 'Article 40 C.', 'Cavalier budgétaire', 'Vote bloqué', 'Conseil constitutionnel', 'Article 47-1 C.', 'Lois de finances rectificatives'],
       28, 6,
'# La procédure budgétaire

## Introduction

La **procédure budgétaire** est un **processus complexe** qui s''étend sur près de **18 mois** : de la préparation par le gouvernement (février N-1) au contrôle d''exécution (année N+1). Elle est encadrée par la **Constitution** et la **LOLF**.

## I. La préparation du projet de loi de finances

### A. La préparation par le gouvernement

#### Calendrier
- **Février N-1** : début des travaux
- **Septembre N-1** : finalisation du projet

#### Acteurs
- **Premier ministre** : direction générale
- **Ministre du Budget** : pilotage technique
- **Direction du budget** : préparation détaillée

### B. Les étapes

#### 1. Le débat d''orientation des finances publiques (DOFP)
- **Printemps** : débat parlementaire
- **Présentation** des orientations
- **Pas de vote**

#### 2. La lettre de cadrage
- Adressée par le **Premier ministre** aux ministres
- Fixe les **plafonds** par ministère
- **Définit** les priorités

#### 3. Les conférences de répartition
- Réunions **ministre du Budget / ministres**
- **Négociations** sur les crédits
- **Arbitrages** rendus par le Premier ministre

#### 4. Les arbitrages finaux
- **Réunions interministérielles**
- **Conseil des ministres** : adoption du projet

#### 5. Le dépôt du projet
- **Premier mardi d''octobre** (au plus tard)
- À l''**Assemblée nationale**

### C. Les documents budgétaires

#### Le projet de loi de finances (PLF)
- **Articles** : dispositions normatives
- **Annexes** : projets annuels de performance (PAP), exposé général des motifs

#### Les annexes obligatoires
- **PAP** par mission
- **Évaluations** préalables des articles fiscaux
- **Rapports** économiques, sociaux et financiers

## II. L''examen parlementaire

### A. Le primauté de l''Assemblée nationale - Article 39 C.

> *« Les projets de loi de finances et de loi de financement de la sécurité sociale sont soumis en premier lieu à l''Assemblée nationale. »*

### B. La procédure d''examen

#### 1. Dépôt et inscription
- **Dépôt** au plus tard le **premier mardi d''octobre**
- **Inscription** prioritaire à l''ordre du jour

#### 2. Examen en commission
- **Commission des finances**
- **Rapporteurs spéciaux** par mission
- **Commissions saisies pour avis**

#### 3. Examen en séance plénière

##### Première partie
- **Recettes** : impôts, recettes non fiscales
- **Équilibre** : article d''équilibre
- **Vote** obligatoire avant de passer à la deuxième partie

##### Deuxième partie
- **Missions** : dépenses
- **Articles** non rattachés
- **Vote** par mission

### C. Les délais constitutionnels - Article 47 C.

#### Délais
- **AN** : 40 jours en première lecture
- **Sénat** : 20 jours
- **Total** : 70 jours maximum

#### Sanctions
##### Dépassement à l''AN
**Dessaisissement automatique** : le texte passe au Sénat sans vote de l''AN.

##### Dépassement au Sénat
- **Mise en œuvre** par **ordonnance** (procédure jamais utilisée)

### D. Les particularités de la procédure - Article 42 C.

#### Pour le projet de loi de finances
**Exception** : la discussion en séance porte sur le **texte déposé par le gouvernement** (pas sur le texte de la commission).

### E. Les outils de la procédure parlementaire

#### Le vote bloqué - Article 44 al. 3 C.
> *« Si le Gouvernement le demande, l''Assemblée saisie se prononce par un seul vote sur tout ou partie du texte en discussion en ne retenant que les amendements proposés ou acceptés par le Gouvernement. »*

##### Application
- **Limite les amendements**
- **Vote global**

#### L''article 49 al. 3 C. (engagement de responsabilité)

##### Régime renforcé depuis 2008
- **Sans limite** pour les lois de finances et lois de financement de la sécurité sociale
- **+ 1 projet/proposition** par session

##### Effet
- Si pas de **motion de censure** dans les 24h → texte adopté
- Si motion adoptée → gouvernement démissionne, texte rejeté

### F. La navette parlementaire

#### Procédure
1. **AN** : 1ère lecture
2. **Sénat** : 1ère lecture
3. **AN** : 2ème lecture
4. **Sénat** : 2ème lecture
5. **CMP** (Commission mixte paritaire) si désaccord
6. **Lecture définitive** par l''AN

#### Particularité
**L''AN a le dernier mot** en cas de désaccord persistant avec le Sénat.

## III. Les contraintes constitutionnelles

### A. L''article 40 C. - Irrecevabilité financière

#### Texte
> *« Les propositions et amendements formulés par les membres du Parlement ne sont pas recevables lorsque leur adoption aurait pour conséquence soit une diminution des ressources publiques, soit la création ou l''aggravation d''une charge publique. »*

#### Application
- **Limite drastique** des initiatives parlementaires
- **Contrôle préalable** par la commission des finances
- **Contrôle a posteriori** par le Conseil constitutionnel

#### Tempérament
- Les parlementaires peuvent **substituer** des crédits (gage)
- **Compensation** par une recette nouvelle

### B. Le monopole fiscal législatif - Article 34 C.
- Seul le **législateur** peut créer un impôt
- Le **gouvernement** ne peut pas modifier les impôts par décret

### C. Les cavaliers budgétaires

#### Notion
**Dispositions étrangères** à la loi de finances incluses dans son texte.

#### Sanction
- **Censure** par le Conseil constitutionnel
- Sur le fondement de la **LOLF**

#### Champ matériel restreint
- La loi de finances ne peut contenir que ce qui relève de son **domaine** (LOLF article 34)

## IV. Le contrôle constitutionnel

### A. Saisine du Conseil constitutionnel

#### Procédure
- **60 députés ou 60 sénateurs**
- **Présidents** des assemblées
- **Premier ministre, Président de la République**

#### Délais
- **Avant promulgation** : contrôle a priori
- **Saisine** entre adoption et promulgation

### B. Les motifs de censure

#### Cavaliers budgétaires
- Disposition étrangère
- **Censure systématique**

#### Sincérité
- **Article 32 LOLF** : principe de sincérité
- **Sanction** des lois insincères

#### Atteintes aux principes constitutionnels
- Égalité devant les charges publiques (DDHC, art. 13)
- Liberté contractuelle, droit de propriété

### C. La QPC (depuis 2010)

#### Innovation
**Question prioritaire de constitutionnalité** sur les lois en vigueur.

#### Application
- Permet de **contester** les dispositions fiscales
- **Contrôle a posteriori** renforcé

## V. Les lois de finances rectificatives (LFR)

### A. Notion
**Modifient** la LFI en cours d''exercice.

### B. Cas d''utilisation

#### Variations significatives
- Surprises **fiscales** (recettes supérieures ou inférieures)
- **Dépenses** non anticipées (crises)

#### Exemples récents
- **LFR 2020** : Covid-19 (plusieurs LFR)
- **LFR 2022** : énergie

### C. Procédure
- **Préparation** par le gouvernement
- **Procédure accélérée** possible
- **Examen** parlementaire allégé

## VI. La loi de règlement (devenue loi relative aux résultats)

### A. Notion
**Constate** les résultats de l''exercice écoulé.

### B. Apports de la réforme LOLF 2021
- **Nouveau nom** : « loi relative aux résultats de la gestion et portant approbation des comptes »
- **Renforcement** du contrôle parlementaire
- **« Printemps de l''évaluation »**

### C. Calendrier
- Adoption avant le **31 décembre N+1**
- Examen lié au **rapport public annuel** de la Cour des comptes

## VII. Les particularités des LFSS

### A. Article 47-1 C.
- **Procédure similaire** aux lois de finances
- **Délais raccourcis** : 20 jours à l''AN

### B. Objectif national des dépenses d''assurance maladie (ONDAM)
- **Plafond** de dépenses d''assurance maladie
- **Vote** chaque année dans la LFSS

## VIII. Bilan : équilibre des pouvoirs

### A. Le gouvernement dominant
- **Initiative** : monopole quasi-exclusif
- **Arbitrages** : pouvoir final
- **Procédures** : article 49.3, vote bloqué

### B. Le Parlement contrôleur
- **Vote** et **amendement** (limité par art. 40)
- **Contrôle** d''exécution
- **Évaluation** des politiques publiques

### C. Le Conseil constitutionnel garant
- **Contrôle** de constitutionnalité
- **Sanction** des cavaliers
- **Contrôle** de sincérité

## Conclusion

La **procédure budgétaire** illustre les **équilibres** institutionnels de la Vème République :
- **Domination gouvernementale** : initiative, arbitrages, procédures contraignantes
- **Parlement contraint** : article 40, délais courts, 49.3 spécifique
- **Garde-fou constitutionnel** : contrôle a priori et a posteriori (QPC)

Les **réformes récentes** (LOLF, 2008, LOLF 2021) tendent à **renforcer** le rôle du Parlement, notamment dans l''**évaluation** et le **contrôle d''exécution**. Le **Printemps de l''évaluation** illustre cette volonté.

Cependant, la **discipline européenne** (semestre européen, OMT) crée un **cadre supplémentaire** que la procédure budgétaire nationale doit intégrer.'
from public.subjects where slug = 'l2-finances-publiques';

-- =====================================================================
-- FICHE 7 - LA DETTE PUBLIQUE ET LE FINANCEMENT DE L'ÉTAT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La dette publique et le financement de l''État', 'Thème 4 - Dette et financement',
       'Besoin de financement, types d''emprunts (OAT, BTF), marchés primaire et secondaire, rôle de l''AFT, dette implicite/explicite, agences de notation, CDS.',
       array['Besoin de financement', 'Déficit', 'AFT', 'OAT', 'BTF', 'SVT', 'Marché primaire', 'Marché secondaire', 'Banque de France 1993', 'TFUE', 'Agences de notation', 'CDS', 'Dette structurelle'],
       28, 7,
'# La dette publique et le financement de l''État

## Introduction

L''État finance ses **dépenses** par trois sources :
- L''**impôt** (mode principal)
- Les **recettes non fiscales**
- L''**emprunt** (devenu structurel)

Lorsque les recettes ne suffisent pas, l''État doit **emprunter** sur les **marchés financiers**. Cette dette est devenue une **donnée permanente** des finances publiques modernes.

## I. Le besoin de financement de l''État

### A. Origines historiques

#### L''État providence
> *« Le déficit et la dette viennent du modèle d''État que nous avons choisi à la fin de la 2WW, de l''État interventionniste. »*

#### Facteurs cumulatifs
- **Crises** (choc pétrolier, subprimes, sanitaire)
- **Allongement** de la durée de vie
- **Attentes** sociales croissantes
- **Recettes** qui n''ont pas suivi

### B. La répartition de la dette publique

#### Quatre blocs
1. **L''État** (le plus important)
2. **Administrations publiques locales** (APUL)
3. **Organismes divers d''administration centrale** (ODAC)
4. **Administrations de sécurité sociale** (ASSO)

#### Notion de dette publique
- Au sens **maastrichtien** : agrégation des dettes des 4 blocs
- **Sens financier** : seulement la dette de l''État

### C. Dette explicite vs implicite

#### Dette explicite
- **Dette réelle** contractée par l''État
- Au sens **maastrichtien**
- Auprès d''**organismes financiers**, **entreprises non bancaires**, **personnes physiques**

#### Dette implicite
- **Engagements juridiques** pris par l''État
- **Non concrétisés** par une dette financière
- Exemples : **engagements** de retraite des fonctionnaires, garanties

### D. Dette brute vs nette

#### Dette brute
- **Dette contractée** auprès des prêteurs
- **Sans tenir compte** des actifs
- **Référence** internationale

#### Dette nette
- Dette brute **moins** les actifs de l''État
- **Pas utilisée** car les actifs publics sont difficiles à évaluer
- Les prêteurs **ignorent** les actifs (incertitude de leur valeur de marché)

### E. Le niveau du besoin de financement

#### Composition du besoin
**Besoin de financement** = **Déficit budgétaire** + **Emprunts arrivant à échéance**

#### Constat
- L''État emprunte **plus que son déficit**
- Doit **refinancer** la dette ancienne arrivant à échéance
- **Pluriannualité** de la dette : durée moyenne **8 ans et 159 jours**

### F. Les systèmes français vs américain

#### Système français
- Le Parlement n''autorise que l''**augmentation** de la dette
- **Pas de plafond** global
- **Réforme de décembre 2021** (art. 48 LOLF) : rapport sur la dette, débat possible

#### Système américain
- **Congrès** se prononce sur un **plafond de dette fédérale**
- **Plafond** fixé largement
- **Renégocié** régulièrement
- Risque de **shutdown** si pas d''accord

## II. Comment l''État emprunte

### A. Évolution historique

#### Système traditionnel (jusqu''en 1993)
##### Avances de la Banque de France
- L''État obtenait des **découverts** de la BDF
- Création **monétaire**
- Risque d''**inflation**
- Plafond : **20,5 milliards de francs**

#### Politique des grands emprunts
- **Exceptionnelle**
- **Attirer les liquidités** des épargnants
- Souvent assortie de **privilèges** (fiscaux)
- Exemple : **emprunt Giscard 1973** (indexé sur l''or → coût gigantesque après les chocs pétroliers)

#### Emprunt perpétuel
- **Pas de date** de remboursement
- **Quasi disparu**
- **Derniers emprunts** perpétuels remboursés en 1987
- Subsistent quelques emprunts de l''Ancien Régime et du Premier Empire

### B. Le tournant de 1993

#### Indépendance de la Banque de France
- **Loi du 4 août 1993**
- Indépendance vis-à-vis de l''État
- **Plus de prêts** directs à l''État

#### Cadre européen
- **Traité de Maastricht (1992)**
- **TFUE article 123** : interdiction du financement monétaire des États
- Les **BC nationales** et **européenne** ne peuvent **pas prêter directement** aux États

### C. Le système actuel : les marchés financiers

#### Rôle du Trésor public et de l''AFT

##### Agence France Trésor (AFT)
- **Créée en 2001**
- Service du **ministère du Budget**
- **Gestion** de la dette de l''État

#### Calendrier
- Emprunts **chaque semaine** (calendrier précis)
- Doit trouver des **investisseurs** en permanence

#### Les spécialistes en valeur du trésor (SVT)
- **Établissements de crédit** sélectionnés
- **Intermédiaires** privilégiés
- **Processus** de sélection

### D. Marchés primaire et secondaire

#### Marché primaire
- **Première transaction** : État ↔ SVT
- **Émission** des titres de dette
- **Diffusion** ensuite par les SVT à leurs clients

#### Marché secondaire
- **Revente** des titres déjà émis
- Marché où les **OAT** (obligations assimilables du Trésor) se vendent et s''achètent

#### Internationalisation
- **Dette française** placée mondialement
- Détenue par des **investisseurs internationaux**
- Environ **50%** détenue par des non-résidents

## III. Les formes d''emprunt actuelles

### A. Les OAT (obligations assimilables du Trésor)

#### Notion
- **Emprunt à moyen et long terme**
- **2 à 50 ans**

#### Avantages de l''assimilation
- L''État **n''a pas à recréer** un nouveau produit
- Ce qui change : le **prix** de vente
- **Liquidité** des souches en circulation
- **Réémission** sur les emprunts existants

### B. Les BTF (bons du trésor à taux fixe)

#### Notion
- **Court terme** : ≤ 1 an
- **13, 26 ou 52 semaines**

#### Usage
- **Besoins de trésorerie** ponctuels

### C. Les OAT indexées

#### Types
- **OATi** : indexées sur l''indice des prix à la consommation en France
- **OAT€i** : indexées sur l''indice des prix européen (hors tabac)

#### Justification
- **Concurrence** avec d''autres dettes souveraines
- **Attractivité** pour les investisseurs

#### Coût
**2023** : 5 milliards d''euros d''**intérêts supplémentaires** liés à l''indexation (inflation élevée).

### D. Périodes d''emprunt

#### Court terme
- **Maximum 1 an** pour l''État
- Comptabilité standard : 2 ans
- **Trésorerie**

#### Moyen terme
- **2 à 5 ans**

#### Long terme
- **+ de 5 ans**
- Jusqu''à **50 ans**

## IV. Le poids de la dette et la solvabilité

### A. Évaluation par les prêteurs

#### Critère principal
**Solvabilité** de l''État : capacité de **rembourser** la dette + payer les **intérêts**.

#### Risque principal
**Défaut** de l''État :
- Incapacité à **rembourser**
- Incapacité à **payer les intérêts**
- Ou les **deux**

### B. Types de défauts

#### Défaut unilatéral
État qui prévient les marchés financiers de son incapacité.

#### Restructuration dure
**Créanciers acceptent** de perdre une **partie du capital** pour sauver l''autre partie.

#### Restructuration souple
- **Étalement** du remboursement
- **Renégociation** des taux d''intérêts

### C. Les agences de notation

#### Trois agences principales
- **Moody''s**
- **Standard and Poor''s**
- **Fitch**

#### Critères de notation
- **Situation financière** de l''État
- **Marges de progression** fiscales
- **Stabilité politique**
- **Croissance économique**

#### Conséquences de la note
- **Note élevée** : taux d''intérêt **bas**, financement facile
- **Note dégradée** : taux d''intérêt **élevés**, difficultés de financement

#### Cas critique
**Crise de la dette souveraine grecque (2009-2012)** : la dégradation de la note a aggravé la crise.

### D. Les CDS (Credit Default Swap)

#### Notion
**Couverture de défaillance** : assurance contre le défaut d''un État.

#### Fonctionnement
- L''investisseur paie une **prime**
- En cas de défaut, il est **indemnisé**
- Prix proportionnel au **risque** perçu

#### Évolution
- **Conception** non juridique initiale
- **N''importe qui** pouvait s''assurer même sans avoir prêté
- **Réforme** post-crise : seuls les prêteurs peuvent s''assurer

#### Exemple
**2014** : coût de l''assurance contre le défaut grec = **58%**.

## V. L''UE et la dette publique

### A. Le cadre du TFUE

#### Norme
- **Dette publique ≤ 60% du PIB**
- **Non respecté** par de nombreux États

#### Interdictions
##### Article 123 TFUE
- **Pas de souscription** directe d''emprunts entre États membres
- **Pas d''intervention** directe des BC sur les marchés primaires
- **Discipline monétaire**

### B. Les politiques d''achat de la BCE

#### Évolution
- **À partir de 2010** : achats sur le marché **secondaire**
- **Quantitative easing** depuis 2015
- **PEPP** (Pandemic Emergency Purchase Programme) 2020

#### Distinction
- **Marché primaire** : interdit
- **Marché secondaire** : autorisé sous conditions

### C. Le mécanisme européen de stabilité (MES)

#### Création
- **2012**, en réponse à la crise
- **Capacité** de **500 Md€**

#### Fonction
- **Aide financière** aux États en difficulté
- **Conditionnalité** (réformes structurelles)

## Conclusion

Le **financement de l''État** par l''emprunt est devenu **structurel** depuis les années 1980. La fin du financement direct par la **Banque de France** (1993) et le **cadre européen** (Maastricht, TFUE) ont obligé l''État à passer par les **marchés financiers**.

L''**AFT**, créée en 2001, gère cette dette avec un système sophistiqué de **marchés primaire** et **secondaire**, en s''appuyant sur les **SVT**.

Les **agences de notation** et les **CDS** sont devenus des **acteurs essentiels** : la note d''un État détermine ses conditions de financement.

L''**UE** encadre la dette publique sans pouvoir la financer directement, mais la **BCE** intervient massivement sur le marché secondaire depuis 2010 pour préserver la stabilité de la zone euro.

La maîtrise suppose de connaître :
- Les **distinctions** dette brute/nette, explicite/implicite
- Les **types d''emprunts** (OAT, BTF, indexées)
- Le **fonctionnement** des marchés primaire et secondaire
- Le **rôle** des agences de notation et des CDS
- L''**articulation** avec le droit européen'
from public.subjects where slug = 'l2-finances-publiques';

-- =====================================================================
-- FICHE 8 - LA RESPONSABILITÉ DES GESTIONNAIRES PUBLICS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La responsabilité des gestionnaires publics', 'Thème 5 - Contrôle et responsabilité',
       'Ordonnateurs et comptables publics, réforme de 2022 (ordonnance du 23 mars 2022), nouvelle organisation juridictionnelle, infractions et sanctions, juridictions financières.',
       array['Ordonnateur', 'Comptable public', 'Ordonnance 23 mars 2022', 'Article L. 131-9 CJF', 'CDC', 'CRC', 'CTC', 'Chambre du contentieux', 'CAF', 'Gestion de fait', 'Débet', 'Amende', 'Cour des comptes'],
       28, 8,
'# La responsabilité des gestionnaires publics

## Introduction

Les **gestionnaires publics** (ordonnateurs et comptables) gèrent l''argent public. Leur **responsabilité** est essentielle pour s''assurer que les fonds publics sont **bien utilisés**. La matière a été **profondément réformée** par l''**ordonnance n° 2022-408 du 23 mars 2022**, entrée en vigueur le **1er janvier 2023**.

## I. Les acteurs : ordonnateurs et comptables publics

### A. Le principe de séparation des ordonnateurs et des comptables

#### Origine
- **Décret du 31 mai 1862** sur la comptabilité publique
- Consacré par le **GBCP du 7 novembre 2012** (Gestion budgétaire et comptable publique)
- **Décret n° 2012-1246**

#### Justification
> *« Celui qui décide n''a pas la main dans la caisse. »*

### B. L''ordonnateur

#### Rôle
- **Crée** la dépense en l''**engageant**
- **Liquide** la dépense (quantification)
- **Ordonne** au comptable de payer

#### Catégories
- **Au niveau de l''État** : ministre, préfet, recteur, etc. (administrateur)
- **Au niveau local** : maire, président du conseil départemental, président du conseil régional

#### Pouvoirs
- **Engager** des dépenses
- **Décider** des recettes (fiscales et autres)
- **Ordonnancer** les paiements

### C. Le comptable public

#### Rôle
- **Paye** sur ordre de l''ordonnateur
- **Encaisse** les recettes
- **Tient la comptabilité**

#### Vérifications
Avant de payer, le comptable vérifie :
- La somme est-elle **nécessaire** à la dépense ?
- Y a-t-il des **ressources disponibles** ?
- Reste-t-il des **crédits** pour ce type de dépenses ?

#### Statut
- **Fonctionnaire** spécialisé
- **Statut** propre

## II. La situation avant 2023

### A. Les trois juridictions financières

#### 1. La Cour des comptes (CDC)

##### Histoire
- Créée par **Napoléon** (1807)
- **Juridiction financière** principale

##### Compétences
- **Comptes de l''État** (premier et dernier ressort)
- **Juridiction d''appel** des CRC
- Tout arrêt pouvait être frappé de **cassation** devant le Conseil d''État

#### 2. Les Chambres régionales des comptes (CRC)

##### Création
- **Loi du 2 mars 1982** (décentralisation)
- **13 CRC** en métropole
- **2 CRC + 3 CTC** en outre-mer

##### Compétence avant 2023
- **Fonction juridictionnelle** à l''égard des comptables locaux
- **Première instance**

#### 3. La Cour de discipline budgétaire et financière (CDBF)

##### Création
- **Loi du 25 septembre 1948**
- Compétence sur les **ordonnateurs** sauf membres du gouvernement et élus locaux

##### Activité
- **Très faible** : 4-5 arrêts par an

### B. Les régimes de responsabilité (avant 2023)

#### Responsabilité personnelle et pécuniaire (RPP) des comptables
- **Régime très lourd**
- **Sur leurs deniers personnels** pour tout manque dans la caisse
- **Arrêt de débet** : ordonne le remboursement
- **Remise possible** par le ministre des Finances

#### Responsabilité des ordonnateurs
- **Régime très léger**
- Peu de poursuites devant la CDBF
- **Asymétrie** flagrante

### C. Les critiques du système

#### Quantitatif
- Trop de **petits contentieux**
- Comptables poursuivis systématiquement
- Enjeux souvent **dérisoires**

#### Qualitatif
- **Distinction artificielle** entre ordonnateurs et comptables
- **Sévérité disproportionnée** pour les comptables
- **Laxisme** pour les ordonnateurs

## III. La réforme du 23 mars 2022

### A. Cadre juridique

#### Ordonnance n° 2022-408 du 23 mars 2022
- En application de l''**article 168 de la loi de finances pour 2022**
- **Entrée en vigueur** : 1er janvier 2023

#### Apports majeurs
1. **Nouvelle organisation** juridictionnelle
2. **Régime unifié** de responsabilité
3. **Fin** de la RPP
4. **Nouvelles infractions** et sanctions

### B. La nouvelle organisation juridictionnelle

#### Suppression de la CDBF
- **Disparition** au 1er janvier 2023
- **Compétences** intégrées à la nouvelle organisation

#### La Chambre du contentieux de la CDC (7e chambre)

##### Compétence unifiée
- **Toute la compétence juridictionnelle** de la CDC
- **Première instance** pour tous les gestionnaires publics

##### Composition
- **Magistrats de la CDC** et **magistrats des CRC**

#### Les CRC : perte de la fonction juridictionnelle

##### Avant 2023
**Fonction juridictionnelle** sur les comptes locaux.

##### Depuis 2023
- **Plus de fonction juridictionnelle**
- Seulement **déferrement** au ministère public de la CDC

##### Statut juridique
- **Restent des juridictions** (formellement)
- **Associées** à la formation juridictionnelle de la CDC via leurs magistrats

#### Les CTC (Chambres territoriales des comptes)

##### Spécificité outre-mer
- **Conservent** leur fonction juridictionnelle
- Compétence à l''égard des **collectivités d''outre-mer**

##### Justification
- **Statuts d''autonomie** (art. 74 C.)
- **Lois organiques** spécifiques
- Modification nécessiterait de modifier ces lois organiques

### C. La nouvelle Cour d''appel financière (CAF)

#### Création
**Ordonnance du 23 mars 2022**.

#### Compétence
- **Appel** des arrêts de la Chambre du contentieux de la CDC
- **Appel suspensif**

#### Composition
- **2 chambres**
- **2 membres du Conseil d''État**
- **2 membres de la CDC**
- **1 personnalité qualifiée**
- **Président** : président de la CDC

#### Procédure ultérieure
- **Cassation** devant le **Conseil d''État**

### D. Schéma juridictionnel après 2023

```
1. CRC (déferrement) → Ministère public CDC
                ↓
2. Chambre du contentieux CDC (1ère instance)
                ↓
3. Cour d''appel financière (CAF) (appel)
                ↓
4. Conseil d''État (cassation)
```

## IV. Le nouveau régime de responsabilité

### A. Champ d''application

#### Justiciables
- **Tous les gestionnaires publics**
- **Ordonnateurs** ET **comptables**

#### Exceptions
##### Immunité
- **Ministres**
- **Élus locaux**

##### Sauf
- **Gestion de fait**
- **Inexécution d''une décision de justice**

### B. La gestion de fait

#### Notion
Personne **non habilitée** prenant des décisions relatives à la dépense ou la recette publique.

#### Application
- **Encaissement** d''argent au titre d''une entité publique
- Souvent **sans intention de malversation**

#### Exemple - Décision Commune d''Ajaccio du 31 mai 2023
Maire ayant empêché l''exécution de plusieurs décisions de justice avec astreinte.

### C. Les infractions - Article L. 131-9 CJF

#### Infraction générique
> *« Tout gestionnaire public qui commet une infraction aux règles relatives à la gestion des biens ou à l''exécution des recettes ou dépenses. »*

#### Conditions cumulatives
##### Pour la sanction juridictionnelle
- **Faute grave**
- Ayant causé un **préjudice financier significatif**

##### Pour les sanctions administratives
- **Pas de préjudice financier significatif** requis
- Procédure plus légère

### D. L''appréciation du préjudice significatif

#### Au cas par cas
**Pas de seuil chiffré** : appréciation casuistique.

#### Arrêt CDC, 11 mai 2023, Société Alexpo
> *« Le caractère significatif du préjudice financier est apprécié en tenant compte de son montant au regard du budget de l''entité ou du service relevant de la responsabilité du justiciable. »*

#### Justification
- Pour une **petite commune** : 50 000 € = énorme
- Pour l''**État** : peu significatif

### E. Les infractions spécifiques

#### Liste codifiée
- **Engagement** d''une dépense sans crédits
- **Liquidation** erronée
- **Paiement** irrégulier
- **Manquement** aux règles de la commande publique
- Etc.

### F. Les sanctions

#### Fin de la RPP des comptables
- **Plus d''arrêts de débet**
- **Plus de cautionnement** sur deniers personnels

#### Amende
- **Sanction** principale
- **Plafonnée** à **6 mois de salaire**
- **Pas de remise** possible par le ministre des Finances
- **Pas de mutualisation**

#### Justification du plafond
- Éviter que le juge utilise l''amende pour **récupérer** le préjudice
- L''amende **sanctionne** mais ne **compense** pas

#### Sanctions accessoires
- **Interdiction** d''exercer
- **Inéligibilité** (rares cas)

### G. Maintien des fonctions

#### Pas de changement opérationnel
- Le **GBCP du 7 novembre 2012** reste applicable
- **Mêmes tâches** pour ordonnateurs et comptables
- **Mêmes contrôles** par les comptables

#### Changement
- Seulement le **régime de responsabilité**

## V. La double fonction des juridictions financières

### A. La fonction juridictionnelle

#### Maintien
- **Cour des comptes** (1ère instance)
- **CAF** (appel)
- **Conseil d''État** (cassation)

#### Évolution
- **Régime unifié**
- **Sanctions** modernisées

### B. La fonction administrative

#### Procédures non juridictionnelles
- **Contrôle** de gestion
- **Évaluation** des politiques publiques
- **Rapports** publics

#### Inspirations
- **Modèles anglo-saxons** : pas de fonction juridictionnelle pour les équivalents
- **Évaluation** prioritaire

#### Rapports
- **Adressés** aux entités publiques
- Soulignent **ce qui ne va pas**
- **Pas de jugement politique**

#### Exemples
- **Rapport public annuel** de la Cour des comptes
- **Rapports thématiques**
- **Rapports** par CRC

## VI. Le rôle du Parlement

### A. Article 47-2 C.

> *« La Cour des comptes assiste le Parlement dans le contrôle de l''action du Gouvernement. »*

### B. Évaluation des politiques publiques

#### Soutien parlementaire
- **Rapports** demandés par le Parlement
- **Évaluations** ciblées

#### Printemps de l''évaluation
- **Réforme LOLF 2021**
- **Renforcement** de l''évaluation

### C. La transparence des comptes

#### Article 47-2 al. 2 C.
> *« Les comptes des administrations publiques sont réguliers et sincères. »*

#### Conséquence
- **Information** complète du Parlement
- **Contrôle** démocratique

## Conclusion

La **réforme du 23 mars 2022** marque une **modernisation profonde** de la responsabilité des gestionnaires publics :
- **Unification** des régimes
- **Suppression** de la RPP
- **Nouvelle juridiction** d''appel (CAF)
- **Centralisation** à la Chambre du contentieux

Les **CRC** perdent leur compétence juridictionnelle mais restent **associées** à la Cour des comptes. Les **CTC** outre-mer conservent leur spécificité.

Le nouveau régime vise à :
- **Éviter** les contentieux dérisoires
- **Sanctionner** les **fautes graves** à préjudice **significatif**
- **Moderniser** la culture du contrôle

Les **fonctions** des ordonnateurs et comptables restent **inchangées** : seule la **responsabilité** est rénovée. La maîtrise suppose la connaissance de :
- La **nouvelle architecture** juridictionnelle
- L''**infraction générique** (art. L. 131-9 CJF)
- Le **régime des sanctions** (amende plafonnée)
- L''**appréciation** au cas par cas du préjudice significatif (*Alexpo* 2023)'
from public.subjects where slug = 'l2-finances-publiques';
