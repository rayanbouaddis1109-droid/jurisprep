-- =====================================================================
-- JurisPrép - Cours complet : Droit des affaires I (L2 S2)
-- 8 fiches très approfondies basées sur le cours magistral
-- Plan : Introduction + Partie 1 (instruments) + Partie 2 (régulation)
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-affaires-1');

-- =====================================================================
-- FICHE 1 - INTRODUCTION : LA QUALIFICATION DU COMMERÇANT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La qualification du commerçant', 'Introduction – Section 1',
       'Définition du commerçant (art. L121-1 C. com.), les trois critères cumulatifs (actes de commerce, titre professionnel, indépendance), les sociétés commerciales par la forme, et les professions civiles (agriculteurs, artisans, professions libérales).',
       array['Art. L121-1 C. com.', 'Actes de commerce par nature', 'Achat pour revendre', 'Titre professionnel', 'Indépendance juridique', 'Société commerciale par la forme', 'Art. L210-1 C. com.', 'Professions libérales', 'Activité artisanale', 'Activité agricole'],
       30, 1,
$$
# La qualification du commerçant

## Introduction générale

Le **droit des affaires** n'est pas une branche autonome du droit : c'est un intitulé général qui recoupe différentes matières concernant la **vie économique**. Son noyau dur reste le **droit commercial général**, dont la frontière avec le droit civil s'estompe progressivement au profit d'un futur « droit des activités économiques ».

---

## I. Les trois critères de la qualité de commerçant

### Définition légale — Art. L121-1 C. com.

> *« Sont commerçants ceux qui font des actes de commerce et en font leur profession habituelle. »*

La jurisprudence a dégagé un **troisième critère implicite** : l'indépendance.

---

### A. Le critère des actes de commerce

Les actes de commerce **par nature** sont énumérés aux art. **L110-1 et L110-2** C. com. :

| Catégorie | Exemples |
|---|---|
| **Achat pour revendre** | Commerce de détail, grossiste — dualité achat + intention lucrative de revente |
| **Production industrielle** | Achat de matières premières → transformation → revente |
| **Activités d'intermédiaires** | Courtage, commission, agence d'affaires |
| **Activités bancaires** | Dépôt, crédit (sauf mutuelles d'assurance) |
| **Transport** | Terrestre, maritime, aérien (sauf taxi individuel) |
| **Location mobilière** | Oui — location immobilière : non |
| **Spectacles publics** | Si organisé par un tiers (pas les artistes eux-mêmes) |

> **Exemple clé** : extraire des minerais pour vendre n'est pas un acte de commerce (absence d'achat). La jurisprudence et le législateur ont cependant parfois introduit des présomptions sectorielles (mines, pêche industrielle).

---

### B. L'accomplissement à titre professionnel

Il faut que les actes de commerce soient accomplis de façon **régulière, récurrente et continue** dans un but **lucratif** (générer des revenus).

- L'activité commerciale n'a pas à être exclusive : elle peut coexister avec une activité civile.
- **Accessoire civil dominant** : l'activité commerciale accessoire d'une activité civile principale est absorbée par la qualification civile (exemple : hébergement accessoire à un enseignement).
- **Incompatibilités** : fonctionnaires, parlementaires, professions libérales (assouplissement loi 2015 pour certaines professions libérales).

---

### C. L'indépendance juridique

Le commerçant agit **en son nom, pour son compte et à ses risques et profits**. Cette indépendance est **juridique** (≠ indépendance économique).

- **Salarié** → lien de subordination → pas commerçant.
- **Mandataire** → agit au nom et pour le compte du mandant → pas commerçant.
- **Co-exploitation entre conjoints** : trois statuts légaux (conjoint salarié, conjoint collaborateur, conjoint associé) excluent chacun la qualité de commerçant. À défaut de déclaration : conjoint **salarié** par défaut.

---

## II. Les sociétés commerciales par la forme

**Art. L210-1 C. com.** : sont commerciales **en raison de leur forme**, quel que soit leur objet :
- Sociétés en nom collectif (SNC)
- Sociétés en commandite simple (SCS)
- Sociétés à responsabilité limitée (SARL)
- Sociétés par actions (SA, SAS)

> *Exception jurisprudentielle* : une activité purement civile peut écarter la qualification commerciale (ex. sociétés de médecins, avocats).

---

## III. Les professions civiles

### A. Activités agricoles (art. L311-1 C. rural)

Critère : **maîtrise d'un cycle biologique végétal ou animal**. L'agriculteur n'est pas commerçant même s'il achète pour revendre dans la mesure où cela reste lié au cycle. Mais si l'activité commerciale passe au premier plan, il devient commerçant. La distinction tend à s'estomper (droit des entreprises en difficulté identique, sociétés agricoles souvent commerciales par la forme).

### B. Activités artisanales

Critère jurisprudentiel : **implication personnelle dans le travail de production** (≠ spéculation sur le travail d'autrui). Un artisan qui emploie des salariés pour produire sans y participer lui-même tend vers la qualification de commerçant. Moins de 10 salariés : définition administrative (répertoire des métiers) sans valeur juridique stricte.

### C. Professions libérales (loi 2012, ordonnance 2023)

Définition : activité intellectuelle indépendante, qualifications professionnelles requises, dimension d'**intérêt public**, déontologie professionnelle. Incompatibilité de principe avec la qualité de commerçant. Mais évolution : accès aux formes sociales commerciales (SARL, SAS…) tinté de spécificités libérales depuis 2023, extension du droit des entreprises en difficulté, projet de « Tribunal des activités économiques ».
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 2 - L''ENTREPRENEUR INDIVIDUEL ET LA SÉPARATION PATRIMONIALE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''entrepreneur individuel et la séparation patrimoniale', 'Partie 1 – Section 1 – §I',
       'Protection du patrimoine personnel de l''entrepreneur individuel : du statut optionnel de l''EIRL à la séparation patrimoniale automatique instaurée par la loi de 2022. Contenu du patrimoine professionnel, dettes professionnelles, renonciation.',
       array['Entrepreneur individuel', 'Art. L526-22 C. com.', 'Patrimoine professionnel', 'Patrimoine personnel', 'Séparation patrimoniale', 'Dettes professionnelles', 'EIRL', 'Insaisissabilité', 'Loi 2022', 'Renonciation (art. L526-25)'],
       25, 2,
$$
# L''entrepreneur individuel et la séparation patrimoniale

## I. Contexte et évolution historique

Lorsqu''un entrepreneur s''engage dans une activité commerciale, ses **créanciers professionnels** peuvent saisir l''ensemble de ses biens, y compris personnels (art. 2284 C. civ. : droit de gage général). Pour s''en protéger, trois étapes ont marqué l''évolution :

1. **La société unipersonnelle** (EURL / SASU) — crée un écran juridique mais implique des formalités lourdes.
2. **L''insaisissabilité de la résidence principale** — protection partielle.
3. **L''EIRL** (entrepreneur individuel à responsabilité limitée) — séparation patrimoniale optionnelle soumise à déclaration → peu de succès.
4. **Loi du 14 février 2022** — **séparation patrimoniale automatique** pour tout entrepreneur individuel, sans aucune formalité.

---

## II. Le régime actuel de l''entrepreneur individuel

### A. Champ d''application

**Art. L526-22 C. com.** : l''entrepreneur individuel est « une personne physique qui exerce pour soi et en son nom propre une ou plusieurs activités professionnelles indépendantes ». Le statut couvre toutes les activités professionnelles : **commerciale, artisanale, agricole ou libérale**.

Le statut s''applique **dès le début de l''activité**, sans formalité.

---

### B. La dualité de patrimoines

| Catégorie | Contenu | Créanciers |
|---|---|---|
| **Patrimoine professionnel** | Biens **utiles** à l''activité (art. L526-22) | Créanciers professionnels uniquement |
| **Patrimoine personnel** | Tout le reste (catégorie résiduelle) | Créanciers personnels uniquement |

> **Charge de la preuve** : si un créancier professionnel saisit un bien et que le débiteur conteste sa nature professionnelle, c''est au débiteur de prouver que le bien n''est pas professionnel. En revanche, si le créancier saisit un bien **manifestement** non professionnel, il engage sa responsabilité.

---

### C. Naissance et extinction du patrimoine professionnel

- **Naissance** : à partir du commencement de l''activité professionnelle.
  - Les créanciers antérieurs (dont la créance est née avant le début de l''activité) conservent un droit de gage sur l''ensemble des biens : la séparation ne leur est **pas opposable**.
- **Extinction** : à la cessation de l''activité.
  - Les créanciers antérieurs à la cessation restent classés en deux catégories.
  - Les créanciers postérieurs à la cessation n''ont plus qu''un patrimoine unique.

Le patrimoine professionnel est **transmissible** à un tiers (cession d''activité).

---

### D. La renonciation — Art. L526-25 C. com.

L''entrepreneur peut renoncer au bénéfice de la séparation patrimoniale **vis-à-vis d''un créancier déterminé, pour un engagement spécifique**. Conditions :
- **Renonciation expresse** (écrit).
- Précision de l''engagement et du créancier concerné.
- Renonciation **impossible** de manière générale.

---

## III. Comparaison avec la société unipersonnelle

| Critère | Entrepreneur individuel | Société unipersonnelle (EURL/SASU) |
|---|---|---|
| Formalités | Aucune | Importantes (statuts, immatriculation) |
| Personnalité juridique | Non | Oui |
| Séparation patrimoniale | Automatique | Par l''écran de la personnalité morale |
| Flexibilité | Elevée | Moins grande |
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 3 - LE FONDS DE COMMERCE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le fonds de commerce : composition et contrats', 'Partie 1 – Section 1 – §II',
       'Notion de fonds de commerce (éléments corporels, incorporels, clientèle), contrats portant sur le fonds : location-gérance (conditions, effets, extinction) et cession du fonds de commerce (conditions de fond et de forme, publicité, oppositions, protection du vendeur).',
       array['Fonds de commerce', 'Loi 1909', 'Éléments corporels', 'Éléments incorporels', 'Clientèle', 'Nom commercial', 'Enseigne', 'Marque', 'INPI', 'Droit d''auteur', 'Brevet', 'Location-gérance', 'Art. L144-1 C. com.', 'Cession de fonds', 'Surenchère du sixième', 'Privilège du vendeur', 'Action résolutoire'],
       35, 3,
$$
# Le fonds de commerce : composition et contrats

## I. Notion et composition du fonds de commerce

Le fonds de commerce n''est pas défini par la loi (loi du 17 mars 1909). Il est constitué par des **biens mobiliers** affectés à l''exercice d''une activité commerciale, réunis autour d''une **clientèle**.

> **Définition doctrinale** : ensemble de biens mobiliers (corporels et incorporels) affectés à l''exploitation d''une activité commerciale, dont l''unité est donnée par la clientèle.

---

### A. Les éléments corporels

| Type | Définition |
|---|---|
| **Matériel** | Biens meubles corporels pérennes utilisés pour l''exploitation (machines, mobilier) |
| **Marchandises** | Choses mobilières achetées pour être revendues (stocks) |

> Les **immeubles** n''entrent pas dans la composition du fonds de commerce.

---

### B. Les éléments incorporels

#### 1. Les signes distinctifs

- **Nom commercial** : appellation sous laquelle l''exploitant exerce son activité. Protection par la **concurrence déloyale** (RC : faute = risque de confusion, préjudice = détournement de clientèle).
- **Enseigne** : emblème ou dénomination apposé sur le local. Même régime de protection.
- **Marque** : signe susceptible de représentation graphique, déposé auprès de l''**INPI** pour une catégorie d''activité. Protection par l''**action en contrefaçon** (faute pénale, sans besoin de prouver un préjudice). Durée : **5 ans renouvelables**. Les **marques de notoriété** dépassent le cadre de la catégorie déposée.

#### 2. La propriété intellectuelle

- **Droit d''auteur** : naît de la création (pas de formalité). Dimension **patrimoniale** (représentation, reproduction — 70 ans post mortem) ∈ fonds de commerce. Dimension **morale** (incessible, imprescriptible) ∉ fonds de commerce.
- **Brevet d''invention** : naît de l''enregistrement INPI. Durée : **20 ans non renouvelables**. Invention salariale → droit au déposant (souvent l''employeur). Intégralement ∈ fonds de commerce.
- **Dessins et modèles, droits voisins, obtentions végétales** : dans leur dimension patrimoniale ∈ fonds de commerce.

#### 3. Le bail commercial

Le **droit au bail** (contrat) est la seule exception au principe selon lequel les contrats ne font pas partie du fonds de commerce.

> Les contrats de travail et d''assurance **ne font pas partie** du fonds mais **survivent** au changement de propriétaire (le contrat d''assurance peut être résilié).

---

### C. La clientèle

La clientèle n''est **pas un élément** du fonds, mais son **ciment** : elle révèle la valeur de la réunion des éléments. Elle correspond au **potentiel de chiffre d''affaires** généré par le fonds. Sans clientèle, le fonds n''a pas de raison d''être.

---

## II. Les contrats portant sur le fonds de commerce

### A. La location-gérance (art. L144-1 C. com.)

> Le propriétaire concède la location du fonds à un gérant qui l''exploite **en son nom et pour son propre compte**, à ses risques et périls, moyennant un loyer.

#### 1. Conditions
- Accord sur les éléments du fonds et le prix (loyer forfaitaire, variable ou mixte).
- **Formalités de publicité** : inscription modificative au RCS + publication dans un journal d''annonces légales.
- Tant que le propriétaire n''a pas fait modifier son inscription au RCS : solidairement responsable des dettes du locataire-gérant contractées à l''occasion de l''exploitation du fonds.

#### 2. Effets

| Acteur | Protection |
|---|---|
| Créanciers du propriétaire | Peuvent demander l''**exigibilité immédiate** de leur créance si la location met en péril le recouvrement (sur autorisation judiciaire). |
| Créanciers du locataire-gérant | **Solidarité** du propriétaire jusqu''à publication du contrat (pour les dettes nécessaires à l''exploitation). |
| Bailleur du local | Aucun lien contractuel avec le locataire-gérant : le loyer reste dû par le propriétaire du fonds. |

Si le fonds est **cédé** avant la fin du contrat de location-gérance, le nouveau propriétaire n''est pas tenu par le contrat (effet relatif). L''ancien propriétaire engage sa responsabilité contractuelle envers le locataire-gérant.

#### 3. Extinction
- Même causes qu''un contrat ordinaire (terme, résiliation).
- Les **dettes du locataire-gérant** afférentes à l''exploitation deviennent **automatiquement exigibles** à la fin du contrat.
- Règlement du stock : restitution d''un stock équivalent si inclus dans le fonds ; sinon, vente distincte — le propriétaire n''a pas d''obligation de rachat sauf clause de non-rétablissement.

---

### B. La cession du fonds de commerce

#### 1. Conditions de fond
- Accord sur la chose (composition du fonds) et le prix.
- Pas d''éléments obligatoirement inclus, mais les **éléments déterminants du ralliement de la clientèle** ne peuvent être exclus sous peine de requalification (contrats de vente distincts, non une cession de fonds).

#### 2. Conditions de forme : formalisme informatif
- Contrat **consensuel** (pas d''écrit requis pour la validité), mais l''écrit est indispensable en pratique.
- **Mentions obligatoires** (art. L141-1 C. com.) : CA et bénéfices des 3 dernières années, informations sur le bail, précédente vente. Objectif : consentement éclairé de l''acquéreur.
- **Sanction** : nullité uniquement si l''omission ou l''inexactitude d''une mention a vicié le consentement (action dans l''année — délai préfixe). Inexactitude : action rédhibitoire (anéantissement) ou estimatoire (réduction du prix).

#### 3. Publicité et oppositions
1. **Publication** dans un journal d''annonces légales dans les **15 jours** de la vente.
2. **Seconde publication** au **BODACC** dans les **3 jours** suivants.
3. **Opposition** par acte extrajudiciaire dans les **10 jours** de la publication au BODACC : rend le prix de vente indisponible entre les mains de l''acquéreur.
4. **Surenchère du sixième** : dans les **20 jours** de la publication au BODACC, un créancier opposant peut provoquer la mise aux enchères publiques (mise à prix = prix de vente + 1/6 des éléments incorporels). Si pas d''enchérisseur, le surenchérisseur est déclaré adjudicataire — mécanisme dissuasif.

#### 4. Protection du vendeur
- **Privilège du vendeur** : droit de préférence sur le prix de revente du fonds, exercé compartiment par compartiment (incorporels, matériel, marchandises). Requiert inscription au RCS et ventilation du prix dans l''acte.
- **Droit de faire vendre** : si l''acquéreur ne paie pas, le vendeur peut provoquer la vente aux enchères après sommation de payer restée infructueuse.
- **Action résolutoire** : faire anéantir la vente pour inexécution (avec restitutions croisées et règlement des comptes, compartiment par compartiment). Paralysée si le fonds a été revendu à un tiers de bonne foi.
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 4 - LE BAIL COMMERCIAL : CHAMP D''APPLICATION ET RÉGIME
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le bail commercial : champ d''application et éléments essentiels', 'Partie 1 – Section 2 – §I et §II A-B',
       'Conditions d''application de plein droit du statut des baux commerciaux (art. L145-1 C. com.) : nature du bail, local à usage commercial, propriété d''un fonds de commerce, immatriculation au RCS. Extensions légales et conventionnelles. Loyer initial et révisé (révision triennale, clause recette, modification des facteurs locaux de commercialité). Durée minimale de 9 ans et faculté de résiliation triennale du preneur.',
       array['Art. L145-1 C. com.', 'Bail commercial', 'Fonds de commerce', 'RCS', 'Bail dérogatoire', 'Loyer initial', 'Révision triennale', 'Valeur locative', 'Facteurs locaux de commercialité', 'Clause recette', 'Clause d''indexation', 'Durée 9 ans', 'Résiliation triennale', 'Déspécialisation', 'Pas de porte'],
       32, 4,
$$
# Le bail commercial : champ d''application et éléments essentiels

## I. Champ d''application du statut des baux commerciaux

### A. Application de plein droit (art. L145-1 C. com.) — 4 conditions cumulatives

#### 1. Un contrat de bail
Le contrat doit correspondre à la définition du bail (art. 1709 C. civ.) : usage **permanent et exclusif** d''une chose moyennant un loyer. Sont exclus : domiciliation, contrat de prêt à usage (pas de loyer), corners de grands magasins (usage non exclusif).

Certains baux sont **exclus** du statut malgré leur nature de bail :

| Baux exclus | Raison |
|---|---|
| Bail emphytéotique (18 à 99 ans) | Durée propre suffisante |
| Bail à construction | Obligation de construire, durée longue |
| Bail dérogatoire (max 3 ans — art. L145-5) | Volonté certaine des parties de déroger |
| Location saisonnière | Clientèle touristique, usage limité à la saison |
| Convention d''occupation précaire | Précarité inhérente à une cause extérieure |

#### 2. Un immeuble ou local à usage commercial
Lieu **clos et couvert** affecté à l''exploitation d''un fonds de commerce. Les locaux **accessoires** nécessaires à l''exploitation bénéficient du statut si : (a) nécessaires à l''exploitation du fonds, (b) même propriétaire que le local principal.

#### 3. Le locataire doit être propriétaire du fonds de commerce
- **Immeubles spécialisés** (stations-service, cinémas) : longtemps exclus pour absence de clientèle propre.
- **Commerces inclus** (restaurant dans un club sportif) : évolution jurisprudentielle début 2000 → critère de la clientèle **autonome** (même non prépondérante). Renversement de la charge de la preuve : c''est désormais au **bailleur** de prouver l''absence d''autonomie de gestion.
- **Franchisé / concessionnaire** : la clientèle nationale est attachée à la marque, mais la clientèle **locale** est propre au franchisé du fait des moyens qu''il met en œuvre. Il est bien propriétaire d''un fonds.

#### 4. Immatriculation au RCS
Requise **au moment de la demande de renouvellement** du bail (non pendant toute la durée). À défaut, le locataire ne peut pas se prévaloir de l''indemnité de non-renouvellement.

---

### B. Application par extension

| Type | Bénéficiaires |
|---|---|
| **Extension légale** | Artisans (répertoire des métiers), établissements d''enseignement, entreprises publiques à activité industrielle ou commerciale |
| **Extension conventionnelle** | Volonté claire des deux parties, pas d''autre statut impératif applicable (bail rural, bail d''habitation) |

---

## II. Les éléments essentiels du bail commercial

### A. Le prix : le loyer

#### 1. Fixation initiale
- Liberté contractuelle : loyer **forfaitaire**, **variable** (clause d''indexation ou clause recette), ou **mixte**.
- **Pas de porte** (droit d''entrée) : deux qualifications jurisprudentielles — indemnité pour la charge du bail commercial (≠ loyer) ou supplément de loyer payé d''avance (incidence sur la révision).

#### 2. Révision légale du loyer

**Loyer forfaitaire — révision triennale** :

- Déclenchement : demande de l''une des parties (par LRAR ou acte extrajudiciaire) + délai d''au moins **3 ans** depuis la dernière fixation.
- Référence principale : **valeur locative** (5 critères légaux : caractéristiques du local, destination des lieux, obligations respectives des parties, facteurs locaux de commercialité, prix pratiqués dans le voisinage).
- **Plafonnement** (absence de modification des facteurs locaux de commercialité) : révision à la hausse uniquement, plafonnée au **plus bas** de : valeur locative OU loyer indexé sur l''**indice du coût de la construction** (ICC).
- **Déplafonnement** (modification **matérielle** des facteurs locaux de commercialité ayant entraîné une variation de **+10%** de la valeur locative) : révision à la valeur locative, à la hausse ou à la baisse.

**Loyer variable — clause d''indexation** : révision possible si la clause fait varier le loyer d''au moins **25%** → le juge révise à la valeur locative.

**Loyer variable — clause recette** : exclut les mécanismes de révision légale. Seul accord des parties possible.

---

### B. La durée du bail commercial

- **Durée minimale impérative : 9 ans** (bail de droit commun : aucune durée minimale).
- Le bailleur n''a qu''une faculté de résiliation très limitée (travaux de reconstruction, avec indemnité d''éviction).
- Le **preneur** dispose d''une faculté de résiliation unilatérale **à l''issue de chaque période triennale** (bail 3/6/9), pour tout motif, moyennant un préavis d''au moins **6 mois**. Cette faculté n''est plus d''ordre public : le contrat peut l''aménager (indemnité de résiliation) voire l''écarter.

---

## III. Les obligations des parties

### Obligations du bailleur
1. **Délivrance** : local conforme à l''usage prévu, autorisations obtenues.
2. **Entretien** : travaux de gros œuvre à sa charge ; travaux courants à la charge du locataire. Répartition modifiable par le contrat, mais strictement limitée aux travaux expressément visés.
3. **Garantie** : pas d''obligation implicite de non-concurrence (il faut une clause expresse).

### Obligations du preneur
1. **Payer le loyer**.
2. **Respecter la destination** prévue au bail et **exploiter effectivement** le fonds (sous peine de résiliation).
3. **Déspécialisation partielle** : adjonction d''activités connexes ou complémentaires — information du bailleur → silence 2 mois = acceptation ; refus contestable devant le tribunal. Effet possible sur le loyer à la prochaine révision triennale.
4. **Déspécialisation plénière** : changement d''activité — conditions économiques (activité peu rentable + marché non saturé) + compatibilité avec la destination de l''immeuble. Même procédure que partielle mais délai de réponse du bailleur : **3 mois**, forme requise (acte extrajudiciaire). Effet immédiat sur le loyer et obligation d''indemniser le bailleur des frais d''adaptation du local.
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 5 - LE BAIL COMMERCIAL : EXTINCTION ET RENOUVELLEMENT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le bail commercial : extinction et renouvellement', 'Partie 1 – Section 2 – §II C',
       'Extinction à l''échéance et congé (forme, délai de préavis, motivation). Droit au renouvellement : conditions, mise en œuvre, fixation du loyer renouvelé (plafonnement, déplafonnement). Refus de renouvellement : indemnité d''éviction (calcul), droit de rétention, motifs graves et légitimes.',
       array['Congé', 'Préavis 6 mois', 'Vocation au renouvellement', 'Art. L145-8 C. com.', 'Loyer renouvelé', 'Plafonnement', 'Déplafonnement', 'Indemnité d''éviction', 'Indemnité de remplacement', 'Indemnité de déplacement', 'Droit de rétention', 'Motif grave et légitime'],
       28, 5,
$$
# Le bail commercial : extinction et renouvellement

## I. L''extinction à l''échéance du terme

### Le congé

Dans un bail ordinaire, la simple survenance du terme met fin au contrat. Dans le bail commercial, il faut en plus **un congé**. À défaut, le contrat se prolonge **à durée indéterminée**.

**Conditions formelles du congé** :
- Forme : **acte extrajudiciaire**.
- Délai de préavis minimum : **6 mois** (le contrat peut l''allonger, pas le réduire).
- Effet du préavis au **dernier jour du trimestre civil** qui suit le délai. Exemple : congé délivré le 5 juillet → contrat prend fin le 31 mars.
- **Motivation obligatoire** uniquement si le bailleur refuse le renouvellement sans offrir d''indemnité d''éviction. Défaut de motivation → le bailleur est réputé devoir verser une indemnité d''éviction.

---

## II. Le droit au renouvellement

### A. Vocation au renouvellement (d''ordre public — art. L145-15 C. com.)

Le locataire n''a pas un droit strictement dit mais une **vocation au renouvellement** : le bailleur peut toujours refuser, mais doit alors en principe payer une **indemnité d''éviction**. Toute clause écartant cette vocation est nulle.

**Conditions pour bénéficier de la vocation** :
1. Immatriculation au **RCS** au moment de la demande de renouvellement.
2. Être **propriétaire d''un fonds de commerce**.
3. **Exploitation effective** et régulière du fonds au cours des **3 dernières années** (art. L145-8). Exceptions : force majeure, mauvais état de l''immeuble imputable au bailleur.

---

### B. Mise en œuvre

- **Congé avec offre de renouvellement** (initiative du bailleur) : le bailleur peut rétracter son offre jusqu''à la fixation définitive du loyer renouvelé.
- **Demande de renouvellement** (initiative du preneur) : par acte extrajudiciaire, au plus tôt **6 mois avant l''échéance** ou à tout moment en cas de prorogation. Le bailleur a **3 mois** pour répondre. Silence = acceptation.

---

### C. Fixation du loyer du bail renouvelé

Le nouveau bail est conclu dès accord sur le **loyer**. La durée, à défaut de stipulation, est de **9 ans**. Chaque partie dispose de **2 ans** à compter de la demande pour saisir le juge ; passé ce délai, le loyer de l''ancien bail est reconduit.

**Principe** : valeur locative, mais avec un **double plafonnement** (même mécanisme qu''en révision triennale : plus faible de la valeur locative et du loyer indexé sur l''ICC).

**Exceptions au plafonnement** (loyer fixé directement à la valeur locative) :

| Exception | Nature |
|---|---|
| Locaux monovalents (cinéma, hôtel, station-service) | Usages de la branche d''activité |
| Locaux à usage exclusif de bureaux | Loyers de marché local |
| Stipulation contractuelle | Clause expresse ou clause recette |

**Causes de déplafonnement** (survenues au cours du bail expiré) :
1. Modification des **caractéristiques du local** (superficie, accès…).
2. Modification de la **destination** des lieux (déspécialisation).
3. Modification des **obligations des parties** (y compris légales, ou existence d''un pas de porte qualifié de supplément de loyer).
4. Modification des **facteurs locaux de commercialité** (ex. construction d''une nouvelle ligne de métro).

---

## III. Le refus de renouvellement

### A. L''indemnité d''éviction

**Principe** : le bailleur qui refuse de renouveler verse une indemnité au preneur.

| Composante | Calcul |
|---|---|
| **Indemnité de remplacement** (principe) | Valeur marchande du fonds — en général CA des 3 dernières années × coefficient multiplicateur tenant compte de l''intérêt du local |
| **Indemnité de déplacement** (si transfert possible) | Différentiel entre loyer renouvelé et valeur locative × coefficient multiplicateur. Plafonnée à l''indemnité de remplacement |
| **Partie accessoire** | Frais d''acquisition d''un nouveau fonds, déménagement, perte de stock, frais de réinstallation, etc. |

**Droit de rétention** : tant que l''indemnité n''est pas versée, le locataire peut rester dans les lieux aux conditions de l''ancien bail, mais doit une **indemnité d''occupation** (valeur locative). Après versement : départ dans **3 mois**, sous peine d''expulsion + **1% de l''indemnité par jour de retard**.

---

### B. Refus de renouvellement sans indemnité — Motifs graves et légitimes

Le législateur ne les définit pas : appréciation souveraine des juges du fond. En pratique :
- **Manquement grave aux obligations du preneur** (défaut de paiement, dégradations, usage non conforme).
- Tout acte grave ayant un lien avec l''exécution du bail (exemple : insultes répétées au bailleur, infractions dans les locaux).

**Exigence préalable** : le bailleur doit avoir mis en demeure le locataire de régulariser la situation (sauf manquement irréparable). Si le locataire régularise, le bailleur ne peut plus invoquer ce manquement.

**Autre cas** : immeuble en état d''insalubrité justifiant démolition totale ou partielle.
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 6 - LES OBLIGATIONS DES COMMERÇANTS ET LE TRIBUNAL DE COMMERCE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Obligations des commerçants et tribunal de commerce', 'Partie 2 – Chapitre 1 et 2',
       'Régime spécifique des contrats commerciaux (liberté de la preuve, solidarité présumée), obligations des commerçants (RCS, comptabilité, compte bancaire, facture) et organisation et compétence du tribunal de commerce (juges consulaires, chefs de compétence).',
       array['Art. L110-3 C. com.', 'Liberté de la preuve', 'Solidarité présumée', 'RCS', 'Art. L123-1 C. com.', 'Livre journal', 'Comptes annuels', 'Bilan', 'Compte de résultat', 'Tribunal de commerce', 'Juges consulaires', 'Actes mixtes', 'Difficultés des entreprises', 'Facture'],
       26, 6,
$$
# Obligations des commerçants et tribunal de commerce

## I. Le régime spécifique des contrats commerciaux

La distinction droit civil / droit commercial tend à s''estomper, mais quelques règles dérogatoires subsistent.

### A. Règles plus souples

#### 1. La preuve (art. L110-3 C. com.)
En droit commun, les actes juridiques > certain montant → preuve par écrit uniquement.

> **Art. L110-3** : « À l''égard des commerçants, les actes de commerce peuvent se prouver par tous moyens. »

- Pas de formalité d''originaux multiples.
- Pas de mention manuscrite de la somme dans les engagements unilatéraux.
- **Actes mixtes** : la règle joue en faveur de la partie qui veut apporter la preuve à l''égard d''un commerçant. Si c''est le commerçant qui prouve vis-à-vis d''un non-commerçant → droit commun.

#### 2. La vente commerciale
Le juge peut réduire le prix en cas d''exécution imparfaite de la prestation.

---

### B. Règles plus rigoureuses

#### 1. Le rôle du silence dans la conclusion du contrat
Dans les relations commerciales suivies, la réception sans protestation de marchandises non commandées accompagnées d''une facture peut valoir acceptation.

#### 2. La solidarité présumée entre commerçants
En droit civil, les dettes se divisent entre codébiteurs. En droit commercial, la **solidarité se présume** : le créancier peut réclamer l''intégralité à n''importe lequel des codébiteurs (sauf clause contraire).

#### 3. Différences disparues
- **Mise en demeure** : aujourd''hui libre dans les deux droits.
- **Prescription** : unifiée à **5 ans** depuis la loi de 2008 (droit commun et commercial).
- **Intérêts** : taux légal identique, liberté du taux contractuel (plafond : prohibition de l''usure).

---

## II. Les obligations des commerçants

### A. Immatriculation au RCS (art. L123-1 C. com.)

- **Registre local** (greffe du tribunal de commerce) → **registre national** (INPI).
- Délai : de **1 mois avant** à **15 jours après** le début de l''activité.
- **Effets pour les personnes physiques** : présomption simple de commercialité (renversable). Le commerçant non immatriculé est **irrégulier** : ne peut pas se prévaloir de sa qualité mais peut se la voir imposer.
- **Effets pour les personnes morales** : l''immatriculation est **constitutive de la personnalité morale**.

---

### B. La comptabilité

| Document | Fréquence | Contenu |
|---|---|---|
| **Livre journal** | Continu (chronologique) | Toutes les opérations de l''entreprise |
| **Grand livre** | Continu (par compte) | Reprise du livre journal par catégories |
| **Inventaire** | Annuel | Actif et passif avec valorisation |
| **Bilan** | Annuel | Situation patrimoniale (actif / passif) |
| **Compte de résultat** | Annuel | Produits / charges → résultat |
| **Annexe** | Annuel | Explications et commentaires des deux précédents |

**Principes comptables** : prudence, fidélité, régularité, sincérité. Sanctions : pénales (comptes infidèles ou absence de comptabilité) et civiles (responsabilité envers les tiers trompés).

---

### C. Autres obligations

- **Compte bancaire dédié** à l''activité professionnelle. Droit au service bancaire en matière commerciale malgré l''interdiction bancaire.
- **Facturation obligatoire** pour toute prestation professionnelle. Mentions requises : identité des parties, nature de la prestation, prix détaillé (TVA), modalités de paiement, pénalités. Conservation : **3 ans**. Sanctions : jusqu''à **50% de la somme facturée**.

---

## III. Le tribunal de commerce

### A. Organisation

- Composé de **juges consulaires** (commerçants, chefs d''entreprise, cadres dirigeants, artisans) élus par un collège électoral issu des milieux professionnels. Juges **bénévoles**.
- Premier mandat : **2 ans** → mandats suivants : **4 ans** → max **5 mandats** (18 ans) dans le même tribunal.
- **Président** (élu pour 4 ans parmi les juges de plus de 6 ans d''ancienneté) : juge des référés et des ordonnances sur requête.
- Statuts en formation **collégiale** (nombre impair) sauf cas prévus par la loi.

### B. Compétence (matérielle)

| Chef de compétence | Contenu |
|---|---|
| **Engagements entre commerçants** | Litiges nés de l''activité commerciale (contractuels et délictuels). Actes mixtes : non-commerçant a le choix (TC ou TJ) ; commerçant → TJ uniquement. |
| **Sociétés commerciales** | Création, fonctionnement, dissolution — indépendamment de la qualité des parties. |
| **Actes de commerce par la forme** | Lettres de change, billets à ordre. |
| **Difficultés des entreprises** | Procédures de prévention et collectives pour les entreprises immatriculées au RCS ou au répertoire des métiers. Tribunaux spécialisés pour les grandes entreprises et procédures internationales. |

> *Exclusions* : entreprises agricoles (TJ) et professions libérales (TJ), bien qu''une expérimentation soit prévue pour les entreprises agricoles dans le cadre des Tribunaux des activités économiques.
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 7 - LES PRATIQUES ANTICONCURRENTIELLES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les pratiques anticoncurrentielles', 'Partie 2 – Chapitre 3 – Section 1 – §I',
       'Abus de position dominante (définition du marché pertinent, position dominante, exploitation abusive), abus de dépendance économique, ententes prohibées (trois formes du concours de volonté, règle de minimis, ententes exemptées). Sanctions : nullité, injonction, amendes, procédure de clémence.',
       array['Position dominante', 'Marché pertinent', 'Part de marché', 'Abus de position dominante', 'Facilité essentielle', 'Abus de dépendance économique', 'Entente', 'Concours de volonté', 'Accord d''entreprises', 'Pratiques concertées', 'Règle de minimis', 'Exemption individuelle', 'Exemption par catégories', 'Autorité de la concurrence', 'Procédure de clémence', 'Injonction'],
       30, 7,
$$
# Les pratiques anticoncurrentielles

## I. Présentation générale

Le droit de la concurrence repose sur un double impératif :
- **Liberté de la concurrence** (valeur constitutionnelle et conventionnelle).
- **Protection de la concurrence** : sanctionner les comportements qui faussent le marché.

Deux branches principales :
1. **Pratiques anticoncurrentielles** (droit français + droit européen) : affectent le marché dans son ensemble.
2. **Pratiques restrictives de concurrence** (spécificité française) : déséquilibre dans une relation bilatérale.

---

## II. Les abus de domination

### A. L''abus de position dominante

#### 1. La position dominante

Une **entreprise** (toute entité exerçant une activité économique, quelle que soit sa forme juridique) est en position dominante si elle a une puissance économique lui permettant de **s''affranchir de la pression concurrentielle** sur un **marché pertinent**.

**Définition du marché pertinent** :

*a) Le marché de produits* — sont sur le même marché les produits substituables (interchangeables du point de vue de la demande et de l''offre) :
- Caractéristiques matérielles
- Modalités d''utilisation / fonctionnalité
- Positionnement de l''offre (image luxe vs. commun)

*b) La dimension géographique* — zone dans laquelle l''offre et la demande présentent une homogénéité suffisante :
- Contraintes physiques (produits périssables, coût de transport)
- Comportement des clients (distance consentie)
- Réglementations / habitudes régionales

**Indicateurs de position dominante** :
- **Part de marché > 50%** → présomption forte de position dominante.
- Entre 10% et 50% : analyse complémentaire (structure du marché, notoriété de marque, accès aux matières premières, appartenance à un grand groupe).

#### 2. L''exploitation abusive

Ce qui est sanctionné : **l''abus**, non la détention de la position. Quatre grands types :

| Type d''abus | Exemple |
|---|---|
| **Prix abusifs** | Prix prédateurs (< coût de revient) pour éliminer la concurrence puis remontée des prix |
| **Limitation des débouchés** | Refus de vente, refus d''accès à une **facilité essentielle** (infrastructure, système d''exploitation) sans justification objective |
| **Pratiques discriminatoires** | Traitement différencié sans justification entre concurrents comparables ; couplage de ventes |
| **Conditions abusives** | Exploitation de la position pour imposer des conditions déséquilibrées |

#### 3. L''affectation du marché

- **Objet anticoncurrentiel** : la pratique conduit nécessairement à restreindre la concurrence → effet présumé.
- **Effet anticoncurrentiel** : il suffit d''un effet **éventuel mais suffisamment probable**. Pas besoin de caractériser l''intention de fausser le marché (appréciation objective).

---

### B. L''abus de dépendance économique (spécificité française)

**Conditions** :
1. Part substantielle de CA réalisé avec le partenaire.
2. Absence de solution alternative pour s''approvisionner.
3. Exploitation abusive de cette dépendance (prix excessifs, refus de vente…).
4. Affectation de la **structure ou du fonctionnement du marché** (L420-2 C. com.) — pas seulement un préjudice bilatéral.

---

## III. Les ententes

### A. Définition

> Une entente = un **concours de volonté** entre des **entreprises distinctes et autonomes**, ayant pour objet ou pour effet de restreindre la concurrence.

**Pluralité d''entreprises autonomes** : salariés, mandataires, filiales sans autonomie stratégique → non autonomes, exclus.

### B. Les trois formes du concours de volonté

| Forme | Description |
|---|---|
| **Accord d''entreprises** | Volonté commune d''adopter un comportement sur le marché (contrat, engagement moral…) |
| **Décision d''association d''entreprises** | Groupement suffisamment organisé pour exprimer une décision collective s''imposant à ses membres |
| **Pratiques concertées** | Contacts entre entreprises → alignement de comportements sur le marché (≠ convergence spontanée indépendante) |

### C. La règle de minimis

En dessous d''un certain seuil de **parts de marché** fixé par la Commission européenne, les ententes sont présumées ne pas avoir d''effet sensible sur le marché → échappent à la prohibition.

**Exception** : présence de **restrictions flagrantes** (répartition du marché, répartition des clients, limitation concertée de la production) → sanction même en dessous du seuil.

---

### D. Les ententes exemptées

#### 1. Exemption individuelle (4 conditions cumulatives)

1. **Progrès économique** (gains d''efficacité, avancées techniques).
2. Bénéfice transféré aux **utilisateurs** (consommateurs).
3. Bénéfice net > inconvénients concurrentiels.
4. **Ne pas éliminer** la concurrence.

Ou : **imposition légale** (loi impose le comportement aux entreprises → absence d''autonomie de volonté).

#### 2. Exemption par catégories

Le législateur (Commission européenne) définit des types d''accords réputés bénéfiques (ex. accords de distribution exclusive) avec des conditions précises (objectivité et non-discrimination des critères de sélection).

---

## IV. Sanctions

### A. Suppression des pratiques

- **Nullité** (absolue, d''ordre public) des accords anticoncurrentiels.
- **Injonction** de faire ou de ne pas faire (sous astreinte). Alternative : **engagements** de l''entreprise acceptés par l''autorité → pas de condamnation si respectés.

### B. Autres sanctions

- **Amendes** : fonction de la gravité de l''infraction et des capacités contributives. Réduction possible par :
  - **Transaction** (prise de contact anticipée avec l''autorité).
  - **Procédure de clémence** (dénonciation de l''entente + éléments de preuve → immunité totale ou partielle).
- **Publication** de la décision (effet punitif sur la réputation + effet dissuasif).
$$
from public.subjects where slug = 'l2-droit-affaires-1';

-- =====================================================================
-- FICHE 8 - LES PRATIQUES RESTRICTIVES DE CONCURRENCE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les pratiques restrictives de concurrence', 'Partie 2 – Chapitre 3 – Section 1 – §II',
       'Les trois pratiques restrictives prohibées par l''art. L442-1 C. com. (avantage sans contrepartie, déséquilibre significatif, rupture brutale de relations commerciales établies), les acteurs habilités à agir (victime, ministère public, ministre de l''économie) et les sanctions applicables (nullité, injonction, amende civile, dommages et intérêts, publication).',
       array['Art. L442-1 C. com.', 'Avantage sans contrepartie', 'Déséquilibre significatif', 'Rupture brutale', 'Relations commerciales établies', 'Préavis 18 mois', 'Amende civile', 'Ministre de l''économie', 'Nullité', 'Injonction', 'Ordonnance 2019', 'Pratiques restrictives'],
       22, 8,
$$
# Les pratiques restrictives de concurrence

## I. Présentation et contexte

Les pratiques restrictives de concurrence constituent une **spécificité du droit français** (absentes du DUE et de la plupart des droits étrangers). Elles se distinguent des pratiques anticoncurrentielles par leur **champ d''application bilatéral** : elles réglementent les déséquilibres dans une relation entre deux partenaires économiques, dont l''un est en position de force vis-à-vis de l''autre.

Depuis l''**ordonnance du 26 avril 2019**, le dispositif est centré sur **trois catégories** — art. **L442-1 C. com.**

---

## II. Les trois pratiques prohibées

### A. L''avantage sans contrepartie réelle (ou disproportionnée)

> Obtenir ou tenter d''obtenir un avantage ne correspondant à **aucune contrepartie** ou **manifestement disproportionné** par rapport à la valeur de la contrepartie consentie.

**Contexte typique** : relation grand distributeur / petit fournisseur.

**Exemples** :
- Facturer au fournisseur des services promotionnels fictifs (service jamais rendu, mais figurant sur la facture pour faire baisser le prix effectif).
- Réductions de prix imposées sans aucun service rendu en échange.
- Refacturation de frais de logistique sans base contractuelle.

**Particularité** : contrairement aux pratiques anticoncurrentielles, il n''est **pas nécessaire** de démontrer un impact sur le marché. La pratique est sanctionnable en elle-même.

---

### B. Le déséquilibre significatif

> Clauses ou pratiques créant un **déséquilibre significatif** dans les droits et obligations des parties.

Le concept est volontairement **large** (validé par le Conseil constitutionnel) : appréciation au cas par cas par les juges du fond.

**Exemples jurisprudentiels** :
- Clause conférant à une seule partie la faculté de **modifier unilatéralement** le contrat (résiliation, modification des conditions commerciales) selon des critères flous (ex. « sous-performance d''un produit » sans définition).
- Clause laissant le distributeur seul juge de l''exécution du contrat.
- Clauses instaurant une asymétrie flagrante de garanties ou de responsabilités.

---

### C. La rupture brutale de relations commerciales établies

> Rompre **brutalement**, même partiellement, une **relation commerciale établie**, sans préavis écrit tenant compte des usages du commerce.

#### Éléments constitutifs

| Élément | Précisions |
|---|---|
| **Relation commerciale établie** | Relation stable et suivie, laissant espérer une pérennité légitime — inscrite dans un contrat ou une succession de contrats. Exclut les appels d''offre. |
| **Part significative du CA** | La relation doit représenter une part importante de l''activité de la victime |
| **Brutalité de la rupture** | Délai de préavis insuffisant pour permettre à la partie évincée de se réorganiser |

#### Le préavis

Le législateur considère qu''un préavis de **18 mois** est en principe suffisant (L442-1 II). Ce seuil n''est pas impératif :
- Si le **contrat prévoyait un préavis** et que celui-ci est respecté → pas de rupture brutale.
- En deçà de 18 mois, appréciation au regard de la durée et de l''intensité de la relation, des investissements réalisés, du niveau de dépendance.

**Exemple** : un donneur d''ordres qui met fin à 20 ans de sous-traitance avec 3 semaines de préavis commet une rupture brutale, même si le contrat ne prévoyait pas de durée.

---

## III. Acteurs habilités à agir

| Acteur | Sanctions demandables |
|---|---|
| **Partie victime** | Cessation de la pratique, nullité des clauses illicites, restitution des avantages indus, réparation du préjudice, amende civile |
| **Ministère public (parquet)** | Cessation, nullité des clauses/contrats (avec information des victimes), amende civile |
| **Ministre chargé de l''économie** | Mêmes pouvoirs que le ministère public, si un **intérêt économique général** est en jeu (jurisprudence constante) |

---

## IV. Les sanctions

### A. Cessation des pratiques

- **Nullité** des clauses ou contrats illicites (absolue → invocable par tout intéressé, prononcée d''office).
- **Injonction** (exemple : injonction de poursuivre les relations commerciales pendant un délai suffisant en cas de rupture brutale).

### B. Sanctions pécuniaires

- **Amende civile** (art. L442-4 C. com.) : triple plafond (montant à vérifier dans le Code au moment de l''examen — modifier selon barème en vigueur).
- **Dommages et intérêts** au titre de la responsabilité civile, à la demande de la victime.

### C. Mesure accessoire : publication de la décision

Systématiquement ordonnée par les juridictions. Effets :
- **Punitif** : impact sur la réputation de l''auteur, voire sur son activité.
- **Dissuasif** : signal envoyé aux autres acteurs économiques.

---

## V. Tableau de synthèse

| | Pratiques anticoncurrentielles | Pratiques restrictives |
|---|---|---|
| **Champ** | Marché dans son ensemble | Relation bilatérale |
| **Droit applicable** | DUE + droit français | Droit français uniquement |
| **Impact sur le marché** | Requis (objet ou effet) | Non requis (avantage sans contrepartie) |
| **Autorité principale** | Autorité de la concurrence / Comm. européenne | Juridictions civiles et commerciales |
| **Exemption possible** | Oui (individuelle ou par catégories) | Non |
$$
from public.subjects where slug = 'l2-droit-affaires-1';
