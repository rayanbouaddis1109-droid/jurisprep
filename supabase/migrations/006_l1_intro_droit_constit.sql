-- =====================================================================
-- JurisPrép - Cours complet : Introduction au droit constitutionnel (L1 S1)
-- 8 fiches de révision approfondies avec code couleur
-- =====================================================================

-- Nettoyage des anciennes fiches superficielles
delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Introduction au droit constitutionnel');

-- =====================================================================
-- FICHE 1 - NOTION DE DROIT CONSTITUTIONNEL
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La notion de droit constitutionnel', 'Chapitre 1 - Introduction au droit constitutionnel',
       'Définition, objet, évolution et place du droit constitutionnel dans le système juridique.',
       array['Droit constitutionnel', 'Constitutionnalisme', 'Droits fondamentaux', 'Justice constitutionnelle', 'Conseil constitutionnel'],
       18, 1,
'# La notion de droit constitutionnel

## Introduction

Le droit constitutionnel est la **branche reine** du droit public. Il fixe les règles fondamentales de l''organisation politique de l''État et garantit les libertés des citoyens face au pouvoir. Discipline ancienne (les Grecs et Romains s''interrogeaient déjà sur les formes de gouvernement), elle a connu une **véritable renaissance** depuis `1971` avec l''émergence d''une **justice constitutionnelle** française vigoureuse.

> **Définition** : Le droit constitutionnel est l''ensemble des règles juridiques relatives à l''organisation politique de l''État, à la dévolution et à l''exercice du pouvoir, ainsi qu''à la garantie des libertés fondamentales des citoyens.

## I. L''objet du droit constitutionnel

### A. Une triple dimension

Le droit constitutionnel a connu une **expansion progressive** de son objet :

#### Le droit constitutionnel institutionnel
Étudie les **institutions politiques** : Président, Parlement, Gouvernement. C''est le sens **classique** de la matière.

#### Le droit constitutionnel normatif
Étudie la **hiérarchie des normes**, le contrôle de constitutionnalité, le statut de la loi. Développement majeur depuis `1971`.

#### Le droit constitutionnel des libertés
Étudie les **droits et libertés fondamentaux** : liberté individuelle, liberté d''expression, droit de propriété… Influence du constitutionnalisme américain et de la CEDH.

### B. Les sources

Les sources du droit constitutionnel comprennent :
- La **Constitution** elle-même (`Constitution du 4 octobre 1958`)
- Le **bloc de constitutionnalité** (préambules, principes)
- Les **lois organiques** (précisent l''application de la Constitution)
- La **jurisprudence** du Conseil constitutionnel
- Les **conventions de la Constitution** (pratiques constitutionnelles non écrites)
- La **doctrine** juridique

## II. L''évolution historique du droit constitutionnel

### A. Les origines anciennes

#### L''Antiquité grecque
**Aristote** (`-384 / -322`) classe les régimes politiques dans *Politique* :
- Selon le nombre de gouvernants : **monarchie**, **aristocratie**, **démocratie**
- Selon leur dégénérescence : tyrannie, oligarchie, démagogie

#### La Rome républicaine
**Polybe** théorise la **constitution mixte** : combiner monarchie (consuls), aristocratie (Sénat) et démocratie (assemblées).

#### Le Moyen Âge
Saint Thomas d''Aquin distingue **lex aeterna, lex naturalis, lex humana**. Pour lui, le pouvoir politique doit respecter le droit naturel.

### B. La naissance du constitutionnalisme moderne (XVII^e^-XVIII^e^ siècles)

Le **constitutionnalisme** est une doctrine qui prône l''encadrement du pouvoir politique par une Constitution écrite.

**Auteurs majeurs** :
- **John Locke** (`1632-1704`), *Two Treatises of Government* (`1689`) : droits naturels, gouvernement représentatif
- **Montesquieu** (`1689-1755`), *De l''Esprit des lois* (`1748`) : séparation des pouvoirs
- **Rousseau** (`1712-1778`), *Du Contrat social* (`1762`) : souveraineté populaire, volonté générale
- **Sieyès** (`1748-1836`), *Qu''est-ce que le Tiers État ?* (`1789`) : nation souveraine, pouvoir constituant

### C. La période révolutionnaire (`1789-1799`)

#### La DDHC du 26 août 1789
Article 16 : *« Toute société dans laquelle la garantie des droits n''est pas assurée, ni la séparation des pouvoirs déterminée, n''a point de Constitution. »*

#### Les Constitutions révolutionnaires
- **Constitution du 3 septembre 1791** : monarchie constitutionnelle
- **Constitution du 24 juin 1793** (Montagnarde) : jamais appliquée
- **Constitution du 5 fructidor an III** (`1795`) : Directoire
- **Constitution du 22 frimaire an VIII** (`1799`) : Consulat

### D. L''instabilité constitutionnelle française

De `1789` à `1958`, la France a connu **16 textes constitutionnels** : record mondial ! Cette instabilité contraste avec la longévité de la Constitution américaine de `1787` (toujours en vigueur).

### E. La renaissance contemporaine

#### La V^e^ République (`4 octobre 1958`)
Sous l''impulsion de **Charles de Gaulle** et **Michel Debré**, elle instaure :
- Un exécutif fort
- Un parlementarisme rationalisé
- Un Conseil constitutionnel

#### La décision *Liberté d''association* (`16 juillet 1971`)
Le Conseil constitutionnel intègre le Préambule de `1946` et la DDHC de `1789` dans le **bloc de constitutionnalité**. C''est la **naissance d''une véritable justice constitutionnelle** française.

#### La QPC (`23 juillet 2008`)
La révision constitutionnelle introduit la **Question prioritaire de constitutionnalité** : tout justiciable peut désormais contester la constitutionnalité d''une loi en vigueur.

## III. La place du droit constitutionnel

### A. Le sommet de la hiérarchie des normes

La Constitution est la **norme suprême** : toutes les autres règles doivent lui être conformes. C''est la **pyramide de Kelsen** appliquée.

### B. Une discipline en relation avec d''autres

- **Histoire du droit** : compréhension des évolutions
- **Science politique** : étude du pouvoir
- **Philosophie politique** : fondements théoriques
- **Droit administratif** : organes administratifs
- **Libertés publiques** : protection des droits

### C. Le **constitutionnalisme** comme idéologie

Le constitutionnalisme moderne repose sur trois piliers :
1. **Limitation du pouvoir** par le droit
2. **Garantie des droits fondamentaux**
3. **Contrôle juridictionnel** de la Constitution

## IV. Les méthodes d''étude

### A. La méthode juridique
Analyse des textes, de la jurisprudence, de la doctrine. **Approche normative** centrée sur les règles.

### B. La méthode historique
Compréhension de l''**évolution** des institutions et des doctrines.

### C. La méthode comparée
Étude des **autres systèmes constitutionnels** : États-Unis, Royaume-Uni, Allemagne, Italie…

### D. La méthode politique
Prend en compte les **acteurs politiques** et les **pratiques institutionnelles**.

## À retenir

**Définition** : le droit constitutionnel régit l''**organisation politique** de l''État, l''exercice du pouvoir et la **garantie des libertés**.

**Triple dimension contemporaine** : institutionnel, normatif, libertés.

**Article 16 DDHC** : pierre angulaire du constitutionnalisme moderne (séparation des pouvoirs + garantie des droits).

**Tournants français** :
- *Constitution du 4 octobre 1958* → V^e^ République
- *Décision Liberté d''association* (`16 juillet 1971`) → bloc de constitutionnalité
- *Révision du 23 juillet 2008* → QPC

**Instabilité historique française** : 16 textes constitutionnels entre `1789` et `1958`, contre une seule Constitution américaine depuis `1787`.'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 2 - L''ÉTAT : ÉLÉMENTS CONSTITUTIFS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''État : éléments constitutifs et formes', 'Chapitre 2 - L''État',
       'Les trois éléments constitutifs de l''État (territoire, population, souveraineté), les formes d''État (unitaire, fédéral, régional).',
       array['Territoire', 'Population', 'Nation', 'Souveraineté', 'État unitaire', 'État fédéral', 'État régional', 'Décentralisation', 'Déconcentration', 'Confédération'],
       20, 2,
'# L''État : éléments constitutifs et formes

## Introduction

L''**État** est l''**objet central** du droit constitutionnel. Concept apparemment évident, il recouvre en réalité une réalité complexe, fruit d''une longue histoire. La théorie juridique classique, héritée de **Georg Jellinek** (`1851-1911`, *L''État moderne et son droit*), identifie **trois éléments constitutifs** : un territoire, une population, une souveraineté.

> **Définition** : L''État est une institution politique souveraine, dotée d''une personnalité juridique distincte, organisant un groupement humain sur un territoire déterminé.

## I. Les éléments constitutifs de l''État

### A. Le territoire

#### Définition
Espace géographique sur lequel s''exerce la **souveraineté** de l''État. Il définit le cadre spatial du pouvoir étatique.

#### Composition
- **Espace terrestre** : sol et sous-sol
- **Espace maritime** :
  - Mer territoriale : `12 milles marins` (~22 km)
  - Zone économique exclusive : `200 milles marins` (~370 km)
- **Espace aérien** : au-dessus du territoire (sans limite supérieure définie)

#### Caractères du territoire
- **Délimité** : par des **frontières** (politiques, naturelles, conventionnelles)
- **Continu** en principe (sauf États archipels)
- **Inaliénable** sans procédure spéciale

#### Cas particuliers
- **France** : 643 801 km² avec les territoires d''outre-mer
- **Cession** : possible par traité (souvent référendum requis)

### B. La population

#### Distinction nation / population
- **Population** : ensemble des personnes sur le territoire
- **Nation** : communauté politique consciente d''un destin commun

#### Conception française de la nation
**Conception subjective** ou **contractuelle**. Selon **Ernest Renan**, *Qu''est-ce qu''une nation ?* (conférence du `11 mars 1882` à la Sorbonne) :

> *« Une nation est une âme, un principe spirituel. Avoir des gloires communes dans le passé, une volonté commune dans le présent ; avoir fait de grandes choses ensemble, vouloir en faire encore, voilà les conditions essentielles pour être un peuple. »*

#### Conception allemande de la nation
**Conception objective** ou **ethnique**. Hérité de **Fichte** et **Herder** : la nation est définie par la **langue**, la **race**, la **culture** communes.

#### Le peuple
- **Souverain** dans les démocraties
- Article 3 de la `Constitution` : *« La souveraineté nationale appartient au peuple qui l''exerce par ses représentants et par la voie du référendum. »*
- Distinction sémantique entre **peuple** (citoyens) et **population** (ensemble des habitants)

### C. La souveraineté

#### Définition
**Pouvoir suprême** ne dépendant d''aucun autre. **Jean Bodin** (`1530-1596`), *Les Six Livres de la République* (`1576`) : *« puissance absolue et perpétuelle d''une République »*.

#### Caractères
- **Originaire** : ne dérive d''aucun autre pouvoir
- **Suprême** : pas de pouvoir au-dessus
- **Inconditionnée** : pas de limites internes
- **Indivisible** : un seul souverain
- **Imprescriptible** : ne se perd pas par non-usage

#### Distinction
- **Souveraineté interne** : autorité suprême sur le territoire
- **Souveraineté externe** : indépendance face aux autres États

**Convention de Montevideo** (`1933`) sur les droits et devoirs des États : un État est défini par sa population permanente, son territoire défini, son gouvernement effectif et sa capacité à entrer en relation avec d''autres États.

#### Qui est souverain ?

##### Théorie de la souveraineté nationale (Sieyès)
La **Nation**, entité abstraite, est titulaire de la souveraineté. Implique :
- Régime représentatif
- Mandat représentatif (non impératif)
- Suffrage censitaire possible

##### Théorie de la souveraineté populaire (Rousseau)
Le **peuple**, somme des citoyens, est souverain. Implique :
- Démocratie directe ou semi-directe
- Mandat impératif possible
- Suffrage universel

##### Synthèse française
L''article 3 C. associe les deux : *« La souveraineté nationale appartient au peuple »*. Compromis textuel.

## II. La personnalité juridique de l''État

### A. L''État, personne morale
L''État est une **personne morale de droit public**. À ce titre :
- Il a un **patrimoine** distinct
- Il **agit** par ses organes
- Il **engage sa responsabilité** (depuis l''*arrêt Blanco*, `TC, 8 février 1873`)

### B. La continuité de l''État
Les engagements de l''État se poursuivent **au-delà des changements de gouvernement**. Principe consacré dès la `Révolution française` : la République succède à la monarchie pour les dettes.

## III. Les formes d''État

### A. L''État unitaire

#### Définition
**Un seul ordre juridique**, **un seul pouvoir central**. La Constitution est unique pour tout le territoire.

#### Variantes selon le degré de décentralisation

##### Centralisation
Tout le pouvoir au **centre**. Aucune autonomie locale. Modèle de l''**Ancien Régime**.

##### Déconcentration
Transfert du pouvoir à des **agents nommés** par le centre, agissant en son nom. En France : le **préfet** depuis l''an VIII (`1800`).
*« C''est le même marteau qui frappe, mais on en a raccourci le manche »* (Odilon Barrot, `1849`).

##### Décentralisation
Transfert à des **collectivités élues**, dotées de personnalité juridique propre. Caractéristiques :
- Élection des conseils
- Affaires locales
- Tutelle administrative

#### La France, État unitaire décentralisé
Article 1 C. (depuis la révision du `28 mars 2003`) : *« La France est une République indivisible, laïque, démocratique et sociale. […] Son organisation est décentralisée. »*

### B. L''État fédéral

#### Définition
**Union d''États fédérés** (qui conservent leur Constitution propre) sous une **Constitution fédérale** commune. Pluralisme institutionnel et normatif.

#### Exemples
- **États-Unis** : depuis la Constitution de `1787`
- **Allemagne** : Loi fondamentale de `1949` (16 Länder)
- **Suisse** : 26 cantons
- **Belgique** : depuis la révision de `1993`

#### Les trois principes (Schmitt, Burdeau)

##### Principe de superposition
**Deux ordres juridiques** : fédéral et fédéré, qui se superposent sur le même territoire.

##### Principe d''autonomie
Les **États fédérés** conservent une **compétence législative propre**.

##### Principe de participation
Les États fédérés **participent aux décisions** fédérales, notamment par une **chambre haute** spéciale (Sénat américain, Bundesrat allemand).

#### Création
- **Fédéralisme par association** : États souverains s''unissent (USA, Suisse)
- **Fédéralisme par dissociation** : État unitaire se décompose (Belgique)

### C. L''État régional

#### Définition
**Forme intermédiaire** entre État unitaire et État fédéral. Régions dotées d''une **autonomie politique et législative**, mais sans Constitution propre.

#### Exemples
- **Italie** : Constitution de `1947`, 20 régions dont 5 à statut spécial
- **Espagne** : Constitution de `1978`, 17 communautés autonomes
- **Royaume-Uni** : devolution depuis `1998` (Écosse, Pays de Galles, Irlande du Nord)

### D. La confédération

#### Définition
**Association d''États souverains** liés par un **traité international** (non par une Constitution). Pas un véritable État.

#### Caractéristiques
- États conservent leur souveraineté
- Lien fondé sur un traité
- Organes communs limités (pas de souveraineté supérieure)

#### Exemples historiques
- **Confédération suisse** (`1291-1848`)
- **Articles de Confédération américains** (`1781-1787`)
- **Confédération germanique** (`1815-1866`)

## IV. Les phénomènes contemporains

### A. La décentralisation française

#### Étapes
- **Lois Defferre** du `2 mars 1982` : suppression de la tutelle, libre administration
- **Acte II** : révision constitutionnelle du `28 mars 2003`, lois subsequentes
- **Acte III** : lois MAPTAM (`2014`), NOTRe (`2015`)

### B. La construction européenne

#### Une organisation *sui generis*
L''Union européenne n''est ni un État fédéral, ni une simple organisation internationale. Concept original.

#### Élements fédéraux
- Primauté du droit de l''UE
- Effet direct
- Citoyenneté européenne
- Parlement européen élu

#### Éléments non fédéraux
- Les États restent souverains
- Pas de Constitution européenne (échec du traité de `2004`)
- Compétences d''attribution

## V. Le déclin de l''État ?

### A. Critiques de l''État
- Mondialisation économique
- Émergence d''acteurs transnationaux
- Critique néolibérale (réduction de l''État)

### B. Persistance de l''État
- Cadre de la démocratie
- Producteur de droit
- Acteur des relations internationales

## À retenir

**Trois éléments constitutifs** (Jellinek) : `territoire` + `population` + `souveraineté`.

**Souveraineté** (Bodin) : pouvoir suprême, originaire, indivisible.

**Nation** : conception **subjective française** (Renan, `1882`) vs **objective allemande** (Fichte, Herder).

**Trois formes d''État** :
- **Unitaire** (centralisé / déconcentré / décentralisé) — France
- **Fédéral** (3 principes : superposition, autonomie, participation) — USA, Allemagne
- **Régional** (intermédiaire) — Italie, Espagne

**Article 1 C.** : *« La France est une République indivisible […]. Son organisation est décentralisée »* (révision du `28 mars 2003`).'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 3 - LA CONSTITUTION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Constitution : notion et fonctions', 'Chapitre 3 - La Constitution',
       'Définition, classification, élaboration et révision des Constitutions. Le pouvoir constituant originaire et dérivé.',
       array['Constitution', 'Pouvoir constituant', 'Constitution rigide', 'Constitution souple', 'Préambule', 'Révision', 'Article 89', 'Limites à la révision', 'Forme républicaine'],
       22, 3,
'# La Constitution : notion et fonctions

## Introduction

La **Constitution** est la **norme suprême** d''un État. Apparue avec les révolutions américaines (`1787`) et françaises (`1791`), elle incarne le **constitutionnalisme** moderne : encadrer le pouvoir politique par le droit. La compréhension de sa notion, de ses fonctions et de sa modification est centrale pour tout étudiant en droit.

> **Définition** : La Constitution est l''ensemble des règles juridiques relatives à l''organisation et au fonctionnement des pouvoirs publics dans un État, ainsi qu''à la garantie des droits fondamentaux des citoyens.

## I. Définitions de la Constitution

### A. Le sens matériel
La Constitution est constituée par l''**ensemble des règles** (écrites ou non) qui régissent l''**organisation du pouvoir** politique et les **droits fondamentaux**.

Selon **Carl Schmitt**, la Constitution au sens matériel est la *décision politique fondamentale* qui structure l''État.

### B. Le sens formel
La Constitution est l''**acte juridique** adopté selon une procédure spéciale, doté d''une autorité supérieure aux lois ordinaires.

Pour **Hans Kelsen**, ce qui caractérise la Constitution, c''est sa **place au sommet de la pyramide des normes**.

### C. Approche descriptive vs normative
- **Approche descriptive** : décrit le fonctionnement effectif (Aristote, sociologues)
- **Approche normative** : ce que doit être la Constitution (idéal du constitutionnalisme)

## II. Les fonctions de la Constitution

### A. Organiser les pouvoirs publics

Première fonction historique. La Constitution :
- **Crée** les organes politiques
- **Définit** leurs compétences
- **Régit** leurs rapports

### B. Limiter le pouvoir

Conformément à l''**article 16 DDHC** :
> *« Toute société dans laquelle la garantie des droits n''est pas assurée, ni la séparation des pouvoirs déterminée, n''a point de Constitution. »*

La Constitution impose des **bornes** à l''action des gouvernants.

### C. Garantir les droits fondamentaux

Fonction renforcée depuis le XX^e^ siècle :
- Énumération des **droits** (DDHC, Préambule `1946`, Charte de l''environnement `2004`)
- **Justice constitutionnelle** pour les faire respecter

### D. Exprimer l''identité politique d''un peuple

La Constitution exprime un **projet politique** et des **valeurs**. Par exemple :
- Article 1 C. : *« République indivisible, laïque, démocratique et sociale »*
- Préambule de `1946` : *« principes politiques, économiques et sociaux particulièrement nécessaires à notre temps »*

## III. La classification des Constitutions

### A. Constitution écrite / coutumière

#### Constitution écrite
**Document formel** unique ou ensemble cohérent de textes. Majoritaire aujourd''hui.
- Avantages : clarté, accessibilité, sécurité juridique
- Inconvénients : rigidité parfois excessive

#### Constitution coutumière
**Ensemble de coutumes et de conventions** non codifiées dans un document unique.

**Exemple emblématique** : le **Royaume-Uni**. Composée de :
- Grands textes : *Magna Carta* (`1215`), *Bill of Rights* (`1689`)
- Conventions constitutionnelles
- Lois ordinaires touchant aux institutions
- Jurisprudence

### B. Constitution rigide / souple

#### Constitution rigide
**Procédure de révision plus difficile** que celle des lois ordinaires. Garantit la suprématie de la Constitution.

**Exemple** : France, USA, Allemagne. La `Constitution française` exige la procédure de l''article `89`.

#### Constitution souple
**Modifiable par loi ordinaire**. La distinction Constitution/loi est gommée.

**Exemple** : Royaume-Uni — le Parlement est *« sovereign »* et peut tout modifier.

### C. Constitution courte / longue

#### Constitution courte
Se limite aux principes essentiels.
- **USA** : 7 articles originels (`1787`) + 27 amendements
- Avantages : longévité, souplesse interprétative
- Inconvénient : laisse beaucoup à l''interprétation

#### Constitution longue
Détaille de nombreux aspects.
- **Constitution française de 1958** : 89 articles + préambules
- **Constitution indienne** : la plus longue au monde (~150 000 mots)

### D. Constitution-règle / Constitution-loi

#### Constitution-règle
Se limite à l''**organisation des pouvoirs**. Modèle libéral classique.

#### Constitution-loi (contemporaine)
Intègre des **principes substantiels**, des **droits**, des **valeurs**. La Constitution devient un programme politique.

## IV. L''élaboration de la Constitution

### A. Le pouvoir constituant originaire

#### Définition
**Pouvoir d''établir une nouvelle Constitution**. C''est le pouvoir fondateur.

#### Caractères
- **Originaire** : ne dérive d''aucun autre
- **Inconditionné juridiquement** : « hors du droit »
- **Souverain** : exerce la souveraineté nationale

**Citation** : *« Le pouvoir constituant peut tout »* (Sieyès).

#### Titulaire
- En théorie démocratique : le **peuple souverain**
- En pratique : une **Assemblée constituante** ou un référendum

### B. Les modes d''élaboration

#### Mode autoritaire
Constitution **octroyée** par un monarque ou un chef.
**Exemples** :
- Charte de `1814` (Louis XVIII)
- Constitution de `1799` (Bonaparte)

#### Mode démocratique
- **Assemblée constituante élue** (`1791`, `1848`, IV^e^ République)
- **Référendum constituant** (`Constitution du 4 octobre 1958` approuvée par référendum)

#### Mode mixte
Combinaison : projet rédigé par un comité, soumis à référendum (cas de la V^e^ République).

### C. L''exemple de la V^e^ République

Procédure d''élaboration :
1. **Loi constitutionnelle du 3 juin 1958** : autorisation donnée au Gouvernement
2. **Comité consultatif constitutionnel** : examen
3. **Conseil d''État** : avis
4. **Référendum du 28 septembre 1958** : adoption (79,25% de oui)
5. **Promulgation : 4 octobre 1958**

## V. La révision de la Constitution

### A. Le pouvoir constituant dérivé (de révision)

#### Définition
**Pouvoir de modifier** une Constitution existante. **Encadré** par la Constitution elle-même.

#### Différence avec l''originaire
- Limites procédurales et matérielles
- Pouvoir « institué » et non « instituant »

### B. La procédure de révision en France (article 89 C.)

#### Étape 1 : L''initiative
- **Président de la République** sur proposition du **Premier ministre** : projet de révision
- **Membres du Parlement** : proposition de révision

#### Étape 2 : Vote en termes identiques
Les **deux assemblées** doivent voter le texte **en termes identiques** (pas de dernier mot de l''AN).

#### Étape 3 : Approbation définitive

##### Voie référendaire (de droit pour les propositions de révision)
**Référendum du peuple**.

##### Voie du Congrès (pour les projets de révision)
**Réunion à Versailles** des deux assemblées. Majorité requise : **3/5 des suffrages exprimés**.

### C. Le bilan des révisions de la V^e^ République

`24 révisions` depuis `1958` (au 1er janvier 2024). Quelques révisions majeures :
- `1962` : élection du Président au suffrage universel direct (par référendum, voie controversée de l''article 11)
- `1974` : ouverture de la saisine du Conseil constitutionnel à 60 parlementaires
- `1992` : Traité de Maastricht
- `2000` : quinquennat
- `2003` : décentralisation
- `2008` : « grande révision » : QPC, limitation à 2 mandats présidentiels, droits de l''opposition

### D. Les limites à la révision

#### Limites temporelles (article 89 C.)
- **Pendant la vacance présidentielle**
- **Pendant l''exercice de l''article 16** (pouvoirs exceptionnels)
- **En cas d''atteinte à l''intégrité du territoire**

#### Limites matérielles (article 89 al. 5)
> *« La forme républicaine du Gouvernement ne peut faire l''objet d''une révision. »*

#### Le débat sur l''**identité constitutionnelle**
Selon le **Conseil constitutionnel** (`Décision 2006-540 DC, 27 juillet 2006`), certains *« principes inhérents à l''identité constitutionnelle de la France »* sont **soustraits à la primauté du droit de l''Union européenne**. Mais sont-ils insusceptibles d''être révisés ?

### E. La controverse de l''article 11 C.

#### L''utilisation par de Gaulle
- `1962` : élection du Président au suffrage universel direct par **référendum (art. 11)**, et non par la procédure normale de l''article 89.
- `1969` : nouveau référendum sur le Sénat et les régions (rejeté, démission de De Gaulle)

#### Le débat doctrinal
- **Critique majoritaire** : violation de l''article 89 qui exige le vote des deux assemblées
- **Argument gaullien** : l''article 11 sur l''« organisation des pouvoirs publics » permet la révision
- **Pratique** : validé politiquement, mais juridiquement controversé

## VI. La Constitution et la coutume

### A. Existe-t-il une coutume constitutionnelle ?

#### Position majoritaire (Capitant, Pierre Avril)
Oui, certaines pratiques répétées peuvent acquérir force normative :
- Présidence du Conseil des ministres par le Président
- Procédure d''accueil des chefs d''État étrangers

#### Position de la doctrine restrictive
Les pratiques ne sauraient s''imposer contre le texte de la Constitution. Seules les **conventions de la Constitution** existent (pratiques sans force juridique mais politiquement contraignantes).

### B. La question des **mutations constitutionnelles**

Phénomène par lequel l''**interprétation** d''une Constitution évolue sans modification du texte. Exemple :
- Évolution des pouvoirs présidentiels américains au XX^e^ siècle
- Lecture présidentialiste de la V^e^ République sous De Gaulle

## À retenir

**Définition** : la Constitution est l''ensemble des règles relatives à l''**organisation politique** de l''État et à la **garantie des droits**.

**Article 16 DDHC** : pierre angulaire — *« point de Constitution »* sans séparation des pouvoirs ni garantie des droits.

**Classifications** :
- Écrite/coutumière (Royaume-Uni)
- Rigide/souple (selon procédure de révision)
- Constitution-règle / Constitution-loi

**Pouvoir constituant** :
- **Originaire** : inconditionné, souverain
- **Dérivé** : encadré (article `89` en France)

**Procédure article 89** : initiative → vote en termes identiques par les deux assemblées → référendum (proposition) ou Congrès à `3/5` (projet).

**Limites à la révision** : forme républicaine inviolable (art. 89 al. 5), vacance, article 16, atteinte à l''intégrité du territoire.'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 4 - LA SOUVERAINETÉ
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La souveraineté', 'Chapitre 4 - Le pouvoir politique',
       'Souveraineté nationale, souveraineté populaire, conséquences juridiques et politiques.',
       array['Souveraineté nationale', 'Souveraineté populaire', 'Sieyès', 'Rousseau', 'Mandat impératif', 'Mandat représentatif', 'Référendum', 'Article 3 Constitution'],
       16, 4,
'# La souveraineté

## Introduction

La **souveraineté** est le concept central de la pensée politique moderne. Forgée au XVI^e^ siècle par **Jean Bodin**, elle désigne le **pouvoir suprême** d''un État. La question essentielle est : **qui est titulaire** de la souveraineté ? Deux théories s''opposent depuis la Révolution : la **souveraineté nationale** (Sieyès) et la **souveraineté populaire** (Rousseau). Leurs conséquences juridiques et politiques sont radicalement différentes.

> **Définition** : La souveraineté est le pouvoir suprême, ne dépendant d''aucun autre, qui appartient à l''État ou à son fondement (la Nation ou le peuple).

## I. La notion classique de souveraineté

### A. La théorisation par Jean Bodin

**Jean Bodin** (`1530-1596`), dans *Les Six Livres de la République* (`1576`), définit la souveraineté comme :
> *« la puissance absolue et perpétuelle d''une République »*

#### Caractères posés par Bodin
- **Absolue** : pas de partage avec un autre pouvoir
- **Perpétuelle** : ne s''éteint pas (continuité)
- **Indivisible** : un seul souverain
- **Inaliénable** : ne peut être cédée

### B. La distinction interne/externe

#### Souveraineté interne
**Autorité suprême** à l''intérieur du territoire. Le souverain :
- Édicte les **lois**
- N''est soumis à aucune autorité supérieure
- Détient le **monopole** de la contrainte légitime (Max Weber)

#### Souveraineté externe
**Indépendance** vis-à-vis des autres États. Conditions :
- Reconnaissance internationale
- Égalité formelle avec les autres États
- Liberté de conclure des traités

### C. Le débat moderne sur la souveraineté

#### Limites internes : l''État de droit
L''État est désormais soumis au droit :
- Hiérarchie des normes
- Contrôle juridictionnel
- Droits fondamentaux

#### Limites externes : la mondialisation
- **Droit international** contraignant
- **Organisations internationales** (ONU, OMC)
- **Union européenne** : transferts de compétences

#### La souveraineté résiste
Malgré ces évolutions, la souveraineté demeure un concept central. Cf. **décision du Conseil constitutionnel** sur l''*« identité constitutionnelle de la France »*.

## II. Les théories de la souveraineté

### A. La théorie de la souveraineté nationale

#### Le fondement théorique : Sieyès

**Emmanuel-Joseph Sieyès** (`1748-1836`) théorise la souveraineté nationale dans *Qu''est-ce que le Tiers État ?* (`1789`).

Pour Sieyès :
- La **Nation** est titulaire de la souveraineté
- La Nation est une **entité abstraite**, distincte de la somme des individus
- Le peuple **n''exerce pas** directement la souveraineté

#### Consécration historique

Article 3 de la **Déclaration des droits de l''homme et du citoyen** (`1789`) :
> *« Le principe de toute Souveraineté réside essentiellement dans la Nation. Nul corps, nul individu ne peut exercer d''autorité qui n''en émane expressément. »*

#### Conséquences juridiques

##### Régime représentatif
La Nation ne peut **agir directement**. Elle s''exprime par ses **représentants**.

##### Mandat représentatif
Les élus représentent **la Nation entière**, non leurs électeurs spécifiques.
> *« Le mandat impératif est nul »* (article 27 C.)

##### Suffrage censitaire possible
Le vote n''est pas un **droit** mais une **fonction**. Peut être réservé à certains citoyens (jugés capables).

##### Possibilité de **modes de scrutin** divers
Les conditions du vote sont fixées par la Nation à travers ses représentants.

### B. La théorie de la souveraineté populaire

#### Le fondement théorique : Rousseau

**Jean-Jacques Rousseau** (`1712-1778`), dans *Du Contrat social* (`1762`), développe la théorie de la souveraineté populaire.

Pour Rousseau :
- Le **peuple**, ensemble des citoyens, est souverain
- La souveraineté est **inaliénable** (ne se transmet pas par représentation)
- La **volonté générale** s''exprime directement

#### Consécration historique

**Constitution montagnarde du 24 juin 1793** (jamais appliquée) :
> *« La souveraineté réside dans le peuple ; elle est une et indivisible, imprescriptible et inaliénable. »*

#### Conséquences juridiques

##### Démocratie directe ou semi-directe
Le peuple exerce **directement** la souveraineté :
- **Référendum**
- **Veto populaire**
- **Initiative populaire**

##### Mandat impératif
Les élus seraient liés par les instructions de leurs électeurs.

##### Suffrage universel
Chaque citoyen est partie du souverain. **Droit** au vote, et non fonction.

##### Mandat révocable
Les élus peuvent être révoqués par leurs électeurs.

## III. La synthèse française (article 3 C.)

### A. Le texte

> Article 3 alinéa 1 C. (`1958`) :
> *« La souveraineté nationale appartient au peuple qui l''exerce par ses représentants et par la voie du référendum. »*

### B. Une synthèse paradoxale

L''article 3 C. opère un **compromis** entre les deux théories :
- *« Souveraineté nationale »* → théorie nationale
- *« Appartient au peuple »* → théorie populaire
- *« Par ses représentants »* → régime représentatif
- *« Et par la voie du référendum »* → démocratie semi-directe

### C. Les implications juridiques

#### Le régime représentatif
Domine en pratique :
- Élection du Président (suffrage universel direct depuis `1962`)
- Élection du Parlement
- Mandat représentatif (art. 27 al. 1 C.)

#### Les éléments de démocratie directe
- **Référendum** (art. 11 C., art. 89 C.)
- **Référendum d''initiative partagée** (depuis `2008`, art. 11 al. 3 C.)
- Mais : initiative très encadrée, jamais utilisée jusqu''ici

### D. Conséquences pratiques

#### Suffrage universel
Conquis progressivement :
- **Suffrage universel masculin** : `1848`
- **Suffrage universel féminin** : `21 avril 1944` (ordonnance), exercice en `1945`

#### Mandat représentatif
Article 27 C. : *« Tout mandat impératif est nul »*. Les élus ne sont pas liés par les promesses électorales (en droit).

## IV. Le référendum sous la V^e^ République

### A. Le référendum législatif (article 11 C.)

#### Domaines (initialement)
- Organisation des pouvoirs publics
- Réformes relatives à la politique économique ou sociale de la Nation et services publics
- Autorisation de ratifier un traité

#### Élargissement de `1995`
- Réformes relatives aux libertés publiques
- Politique sociale et environnementale

#### Procédure
- **Sur proposition** du Gouvernement (pendant les sessions) ou des deux assemblées
- **Décision** du Président de la République

#### Cas d''utilisation
- `1962` : élection du Président au suffrage universel direct (controverse sur l''utilisation de l''art. 11 pour réviser la Constitution)
- `1962` : Algérie (Évian)
- `1969` : Sénat et régions (rejeté → démission de De Gaulle)
- `1972` : Élargissement CEE
- `1988` : Statut de la Nouvelle-Calédonie
- `1992` : Traité de Maastricht
- `2000` : Quinquennat
- `2005` : Traité établissant une Constitution pour l''Europe (rejeté)

### B. Le référendum d''initiative partagée (article 11 al. 3 C.)

Instauré par la **révision du 23 juillet 2008**. Procédure :
- **1/5 des parlementaires** + soutien d''**1/10 des électeurs inscrits** (~4,7 millions)
- Examen par le Parlement dans les 6 mois
- Si pas examiné : référendum

**Bilan** : jamais aboutie. Procédure tentée pour les aéroports de Paris en `2019` (échec).

### C. Le référendum constituant (article 89 C.)
Voir fiche sur la Constitution.

### D. Le référendum local (article 72-1 C.)
Depuis la **révision du 28 mars 2003**. Permet aux collectivités de soumettre certains projets à référendum.

## V. La crise de la souveraineté ?

### A. Les transferts vers l''Union européenne

#### Décisions du Conseil constitutionnel
Position constante : les transferts sont possibles tant qu''ils ne portent pas atteinte aux *« conditions essentielles d''exercice de la souveraineté nationale »*.

#### La révision pré-Maastricht (`1992`)
Insertion dans la Constitution d''un titre XV sur l''Union européenne.

### B. La mondialisation

- **Multinationales** : pouvoir économique des géants privés
- **Organisations internationales** : OMC, FMI
- **Cybersécurité** et **espace numérique** : nouveaux défis

### C. Les souverainetés régionales

#### Le défi catalan (Espagne)
Référendum d''indépendance illégal de `2017`, déclenchant une crise.

#### Le Brexit (Royaume-Uni)
Référendum du `23 juin 2016`, sortie de l''UE le `31 janvier 2020`.

## À retenir

**Définition** : la souveraineté est le **pouvoir suprême** ne dépendant d''aucun autre.

**Bodin** (`1576`) : caractères classiques de la souveraineté (absolue, perpétuelle, indivisible).

**Deux théories** :

| | **Souveraineté nationale (Sieyès)** | **Souveraineté populaire (Rousseau)** |
|---|---|---|
| Titulaire | Nation (abstraite) | Peuple (citoyens) |
| Régime | Représentatif | Direct ou semi-direct |
| Mandat | Représentatif | Impératif |
| Suffrage | Possiblement censitaire | Universel |

**Article 3 C.** : *« La souveraineté nationale appartient au peuple »* — synthèse française.

**Référendum** : article `11` (législatif), article `89` (constituant), article `11 al. 3` (initiative partagée, depuis `2008`), article `72-1` (local).

**Mandat impératif nul** (article 27 C.) : conséquence directe de la conception nationale.'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 5 - LA SÉPARATION DES POUVOIRS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La séparation des pouvoirs', 'Chapitre 5 - La séparation des pouvoirs',
       'De Locke à Montesquieu : la théorie classique, ses interprétations et applications dans les régimes contemporains.',
       array['Locke', 'Montesquieu', 'De l''Esprit des lois', 'Pouvoir législatif', 'Pouvoir exécutif', 'Pouvoir judiciaire', 'Checks and balances', 'Faculté d''empêcher'],
       18, 5,
'# La séparation des pouvoirs

## Introduction

La **séparation des pouvoirs** est l''un des principes les plus célèbres du constitutionnalisme. Formulé au XVII^e^ siècle par **John Locke** puis théorisé au XVIII^e^ par **Montesquieu**, il vise à **prévenir l''abus de pouvoir** en évitant qu''une seule personne ou un seul organe concentre les fonctions étatiques. *« Le pouvoir arrête le pouvoir »* : telle est la formule fondatrice.

> **Article 16 DDHC** (`1789`) :
> *« Toute société dans laquelle la garantie des droits n''est pas assurée, ni la séparation des pouvoirs déterminée, n''a point de Constitution. »*

## I. Les origines théoriques

### A. John Locke (`1632-1704`)

#### L''ouvrage fondateur
*Two Treatises of Government* (`1689`), publié après la Glorieuse Révolution anglaise.

#### Les trois pouvoirs selon Locke
1. **Pouvoir législatif** : le plus important, fait les lois
2. **Pouvoir exécutif** : applique les lois à l''intérieur
3. **Pouvoir fédératif** : conduit les relations extérieures

#### L''idée centrale
Le pouvoir politique doit être limité par le droit naturel et la **représentation**. La concentration des pouvoirs en une même main mène à la tyrannie.

### B. Montesquieu (`1689-1755`)

#### L''ouvrage de référence
*De l''Esprit des lois* (`1748`), spécialement le **Livre XI, chapitre 6** : *« De la Constitution d''Angleterre »*.

#### La formulation classique

> *« Pour qu''on ne puisse abuser du pouvoir, il faut que par la disposition des choses, le pouvoir arrête le pouvoir. »* (*De l''Esprit des lois*, XI, 4)

#### Les trois pouvoirs selon Montesquieu
1. **Pouvoir législatif** : fait les lois
2. **Pouvoir exécutif** des choses qui dépendent du droit des gens (international)
3. **Pouvoir exécutif** des choses qui dépendent du droit civil — qu''il appelle aussi **pouvoir judiciaire**

#### La méthode comparative
Montesquieu étudie le régime anglais qu''il considère (à tort en partie) comme appliquant ce principe.

#### Une influence majeure
- **Constitution américaine** de `1787` (Madison, *Federalist Papers*)
- **DDHC** de `1789` (article 16)
- **Constitutions révolutionnaires** françaises

### C. Comparaison Locke / Montesquieu

| | **Locke** | **Montesquieu** |
|---|---|---|
| Date | `1689` | `1748` |
| Pouvoirs distingués | Législatif, exécutif, fédératif | Législatif, exécutif, judiciaire |
| Spécificité | Pas de pouvoir judiciaire isolé | Reconnaissance du pouvoir judiciaire |
| Influence | Constitutionalisme anglais | Constitutionalisme mondial |

## II. Les sens de la séparation des pouvoirs

### A. La séparation organique

Les organes exerçant chaque pouvoir doivent être **distincts et indépendants**. **Pas de cumul** :
- Un parlementaire ne devrait pas être ministre
- Un juge ne devrait pas siéger au Parlement

### B. La séparation fonctionnelle

Chaque organe exerce une **fonction spécifique** :
- Le Parlement légifère
- Le Gouvernement administre
- Le Juge juge

### C. L''interprétation stricte vs souple

#### Interprétation stricte (lecture jacobine, certaines traditions américaines)
**Aucune interférence** entre les pouvoirs. Étanchéité totale.

#### Interprétation souple (Montesquieu lui-même)
**Collaboration et contrôle mutuels**. Montesquieu admettait la *« faculté d''empêcher »* mutuelle :
- Veto royal sur les lois
- Possibilité de dissolution
- Contrôle judiciaire

### D. Le système américain : checks and balances

Les **Pères fondateurs** américains (`1787`) ont mis en œuvre une **séparation tempérée** par des contrôles mutuels :
- **Veto présidentiel** sur les lois (peut être renversé par majorité qualifiée)
- **Impeachment** : destitution par le Congrès
- **Confirmation des nominations** par le Sénat
- **Contrôle de constitutionnalité** par la Cour suprême

## III. Les applications dans les régimes politiques

### A. Le régime présidentiel

#### Définition
Régime caractérisé par une **séparation stricte** des pouvoirs.

#### Caractéristiques
- **Président élu au suffrage universel** : chef de l''État et chef du gouvernement
- **Pas de responsabilité gouvernementale** devant le Parlement
- **Pas de dissolution** du Parlement par l''exécutif
- **Mandat fixe** des deux pouvoirs
- **Contrepoids** : *checks and balances*

#### Exemple type : les États-Unis
- Président : élu pour `4 ans` (limité à 2 mandats depuis le 22^e^ amendement, `1951`)
- Congrès : Chambre des représentants (2 ans) + Sénat (6 ans)
- Cour suprême : 9 juges nommés à vie

### B. Le régime parlementaire

#### Définition
Régime caractérisé par une **collaboration** des pouvoirs et une **responsabilité gouvernementale**.

#### Caractéristiques
- **Dualisme de l''exécutif** : chef d''État (apolitique) + chef du gouvernement
- **Gouvernement issu** et **responsable devant** le Parlement
- **Motion de censure** : possibilité de renverser le gouvernement
- **Dissolution** du Parlement par l''exécutif
- **Collaboration** des organes

#### Variantes
- **Parlementarisme moniste** : pouvoir réel au PM (Royaume-Uni)
- **Parlementarisme dualiste** : pouvoir partagé chef d''État/PM (orléanisme français du XIX^e^)
- **Parlementarisme rationalisé** : techniques pour stabiliser le gouvernement

#### Exemples
- **Royaume-Uni** : modèle historique
- **Allemagne** : Loi fondamentale de `1949`, parlementarisme rationalisé (vote constructif de défiance, art. 67 LF)
- **Italie**, **Espagne**

### C. Le régime semi-présidentiel

#### Définition (Maurice Duverger)
**Maurice Duverger** (`1980`) caractérise ce régime par :
- Un Président **élu au suffrage universel direct**
- Disposant de **pouvoirs propres importants**
- Un gouvernement **responsable** devant le Parlement

#### Exemples
- **France** : V^e^ République (`1958`)
- **Portugal** : depuis `1976`
- **Russie**, **Roumanie**

#### La cohabitation
Phénomène spécifique : Président d''un bord, majorité parlementaire de l''autre. Trois cohabitations en France :
- `1986-1988` : Mitterrand / Chirac
- `1993-1995` : Mitterrand / Balladur
- `1997-2002` : Chirac / Jospin

### D. Le régime d''assemblée

#### Définition
**Concentration** des pouvoirs au profit du Parlement.

#### Exemples
- **Convention** (`1792-1795`) : période révolutionnaire
- **IV^e^ République** (`1946-1958`) : instabilité gouvernementale (24 gouvernements en 12 ans)

## IV. Le cas français

### A. L''interprétation jacobine de la séparation

Sous la Révolution, la séparation des pouvoirs a justifié :
- L''**interdiction au juge** de connaître des actes administratifs (loi des `16-24 août 1790`)
- La création d''un **ordre juridictionnel administratif** séparé

### B. La V^e^ République

#### Une séparation souple
La Constitution de `1958` combine :
- **Éléments parlementaires** : responsabilité gouvernementale (art. `49`), dissolution (art. `12`)
- **Éléments présidentiels** : élection au suffrage universel (depuis `1962`), pouvoirs propres
- → Régime **semi-présidentiel**

#### Le poids du Président
Sous la V^e^ République, en période de **concordance des majorités**, le Président domine de fait l''exécutif et oriente la majorité parlementaire. La séparation organique est respectée, mais la séparation politique s''estompe.

### C. La séparation des autorités administratives et judiciaires

Principe constitutionnel français (Cons. const. `23 janvier 1987, Conseil de la concurrence`) :
- Le **juge judiciaire** ne peut connaître des litiges relatifs à des actes de l''administration
- Le **juge administratif** est compétent pour les contentieux administratifs

## V. La séparation des pouvoirs aujourd''hui

### A. La critique de Carré de Malberg

**Raymond Carré de Malberg** (`1861-1935`) critique la théorie : il n''y a en réalité **qu''une seule fonction étatique** (la volonté), seulement répartie organiquement. La pureté de la séparation est impossible.

### B. La crise du modèle classique

#### L''émergence d''autres pouvoirs
- **Médias** : « quatrième pouvoir »
- **Marchés financiers**
- **Autorités administratives indépendantes**

#### Le rôle du juge constitutionnel
La justice constitutionnelle ajoute un **« super-pouvoir »** qui contrôle les autres.

#### La majorité présidentielle
En régime présidentialisé, la **majorité parlementaire soutient le Président**, ce qui annule la séparation effective entre exécutif et législatif.

### C. La séparation verticale

Au modèle horizontal (exécutif/législatif/judiciaire), s''ajoute aujourd''hui une **séparation verticale** :
- État / **collectivités** (décentralisation)
- État / **Union européenne**
- État / **autorités administratives indépendantes**

### D. La justice constitutionnelle

Le développement du **contrôle de constitutionnalité** (Conseil constitutionnel français, Cour suprême américaine, Cour constitutionnelle allemande…) renforce la séparation en imposant les normes constitutionnelles aux autres pouvoirs.

## À retenir

**Origine** : *Locke* (`1689`) puis **Montesquieu**, *De l''Esprit des lois* (`1748`, Livre XI ch. 6).

**Principe central** : *« le pouvoir arrête le pouvoir »* (Montesquieu).

**Sens** :
- **Organique** : organes distincts
- **Fonctionnel** : fonctions séparées
- **Stricte** ou **souple** (Montesquieu admettait la *« faculté d''empêcher »*)

**Article 16 DDHC** : *« point de Constitution »* sans séparation des pouvoirs.

**Régimes politiques** :
- **Présidentiel** (USA) : séparation stricte + *checks and balances*
- **Parlementaire** (UK, Allemagne) : responsabilité + dissolution
- **Semi-présidentiel** (France) : Président fort + responsabilité gouvernementale
- **Assemblée** : concentration parlementaire

**Cohabitation** française : trois épisodes (`1986`, `1993`, `1997`).

**Critique de Carré de Malberg** : pureté théorique inatteignable.'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 6 - LES RÉGIMES POLITIQUES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les régimes politiques', 'Chapitre 6 - Typologie des régimes politiques',
       'Classification approfondie des régimes politiques : présidentiel, parlementaire, semi-présidentiel, dictatures, totalitarismes.',
       array['Régime présidentiel', 'Régime parlementaire', 'Régime semi-présidentiel', 'Démocratie représentative', 'Démocratie directe', 'Démocratie illibérale', 'Totalitarisme', 'Autoritarisme'],
       17, 6,
'# Les régimes politiques

## Introduction

La **classification des régimes politiques** est l''un des plus vieux exercices de la science politique. Aristote, déjà, distinguait monarchies, aristocraties et démocraties. Les classifications modernes prennent en compte les structures juridiques (séparation des pouvoirs) et les modalités d''exercice du pouvoir (démocratique ou autoritaire). Comprendre ces typologies est essentiel pour analyser tout système politique.

## I. La classification d''Aristote

### A. Aristote, fondateur de la science politique

**Aristote** (`-384 / -322`), dans *Politique*, propose la première classification systématique.

### B. Le critère du nombre

Selon le **nombre de gouvernants**, Aristote distingue trois régimes purs et trois régimes dégénérés :

| **Nombre** | **Régime pur** | **Régime dégénéré** |
|---|---|---|
| Un seul | **Monarchie** | Tyrannie |
| Quelques-uns | **Aristocratie** | Oligarchie |
| Tous | **Politeia** / **démocratie** | Démagogie |

### C. Le régime mixte

Aristote, comme **Polybe** plus tard, prônait un **régime mixte** combinant éléments des trois formes pour assurer la stabilité.

## II. La classification selon la séparation des pouvoirs

### A. Le régime présidentiel

#### Caractéristiques
- **Séparation stricte** des pouvoirs
- **Président élu** au suffrage universel
- **Chef de l''État et du gouvernement** (cumul)
- **Pas de responsabilité** gouvernementale devant le Parlement
- **Pas de dissolution**
- **Mandats fixes**

#### Le modèle : les États-Unis

##### Architecture institutionnelle
- **Président** : 4 ans (max 2 mandats, 22^e^ amendement de `1951`)
- **Congrès** : Chambre (2 ans) + Sénat (6 ans, renouvelé par 1/3)
- **Cour suprême** : 9 juges nommés à vie

##### Les mécanismes de **checks and balances**
- **Veto présidentiel** sur les lois (renversable par 2/3 des votes)
- **Impeachment** : Chambre (mise en accusation) + Sénat (jugement, 2/3)
- **Confirmation** par le Sénat des nominations et des traités
- **Judicial review** : contrôle de constitutionnalité (Cour suprême)

##### Exemples d''impeachment
- **Andrew Johnson** (`1868`) : acquitté
- **Bill Clinton** (`1998-1999`) : acquitté
- **Donald Trump** : `2019` et `2021`, acquitté deux fois
- **Richard Nixon** (`1974`) : démission avant impeachment (Watergate)

### B. Le régime parlementaire

#### Caractéristiques
- **Séparation souple** des pouvoirs
- **Dualisme de l''exécutif** : chef d''État + chef du gouvernement
- Le **gouvernement** est issu et responsable du Parlement
- **Dissolution** possible
- **Contreseing** des actes du chef d''État

#### Le modèle : le Royaume-Uni

##### Roi/Reine
- *« The Queen reigns but does not rule »*
- Rôle symbolique et de continuité
- *« Royal assent »* (sanction royale des lois) : jamais refusé depuis `1708`

##### Premier ministre
- Leader du parti majoritaire aux Communes
- Vrai détenteur du pouvoir exécutif

##### Parlement
- **Chambre des Communes** : 650 membres élus au scrutin majoritaire à un tour
- **Chambre des Lords** : non élue (pairs héréditaires, à vie, ecclésiastiques)

##### Mécanismes
- **Motion of no confidence** : peut renverser le gouvernement
- **Dissolution** du Parlement (depuis le Dissolution and Calling of Parliament Act `2022`, prérogative royale rétablie)

#### Le parlementarisme rationalisé : l''Allemagne

##### Loi fondamentale (`1949`)
Conçue pour éviter l''instabilité de la République de Weimar.

##### Le vote constructif de défiance (art. 67 LF)
- L''opposition doit désigner un **successeur** avant de renverser le Chancelier
- Évite les renversements purement négatifs
- Une seule application : `1982`, Helmut Kohl remplace Helmut Schmidt

##### La présentation de la motion de confiance (art. 68 LF)
- Le Chancelier peut demander la confiance
- En cas de refus, dissolution possible

### C. Le régime semi-présidentiel

#### Définition (Maurice Duverger)
**Maurice Duverger**, *Le système politique français* (`1980`), définit le régime semi-présidentiel par trois critères cumulatifs :
1. Président **élu au suffrage universel direct**
2. Disposant de **pouvoirs propres importants**
3. Gouvernement **responsable** devant le Parlement (élément parlementaire)

#### Pays concernés
- **France** : V^e^ République
- **Portugal** : depuis `1976`
- **Russie** : depuis `1993`
- **Roumanie**, **Pologne**, **Finlande** (avant `2000`)

#### Spécificité française : la cohabitation
- Quand le Président et la majorité parlementaire sont d''**opposition** :
- Le pouvoir glisse vers le PM (chef de la majorité)
- Le Président conserve son « domaine réservé » (affaires étrangères, défense)

### D. Le régime d''assemblée

#### Définition
**Concentration** des pouvoirs au profit du Parlement, sans contrepoids effectif.

#### Exemples
- **Convention** française (`1792-1795`) : Comité de salut public
- **IV^e^ République française** (`1946-1958`) : 24 gouvernements en 12 ans

#### Risques
- Instabilité gouvernementale
- Absence de leadership
- Dérives autoritaires possibles

## III. La classification selon la nature démocratique

### A. La démocratie

#### Définition
*« Gouvernement du peuple, par le peuple, pour le peuple »* (Abraham Lincoln, **discours de Gettysburg**, `19 novembre 1863`).

#### Critères de la démocratie libérale
- **Pluralisme politique** (multipartisme)
- **Libertés publiques** garanties (expression, association, presse)
- **Élections libres et régulières** au suffrage universel
- **Alternance** possible
- **État de droit** : hiérarchie des normes, contrôle juridictionnel
- **Séparation des pouvoirs**
- **Justice indépendante**

#### Démocratie représentative / directe / semi-directe
- **Représentative** : décisions prises par des élus (modèle dominant)
- **Directe** : participation directe des citoyens (Suisse pour certaines décisions, modèle athénien)
- **Semi-directe** : combinaison (référendums + élections)

### B. Les régimes autoritaires

#### Caractéristiques
- **Pluralisme limité**
- **Élections** souvent non concurrentielles
- **Libertés** restreintes mais société civile partiellement libre
- **Stabilité** du pouvoir par la coercition

#### Exemples
- Régimes militaires (Argentine `1976-1983`, Chili `1973-1990`)
- Monarchies absolues (Arabie saoudite, Brunei)

### C. Les régimes totalitaires

#### Théorisation
**Hannah Arendt** (*Les Origines du totalitarisme*, `1951`) et **Carl Friedrich-Zbigniew Brzezinski** (*Totalitarian Dictatorship and Autocracy*, `1956`) identifient six caractéristiques :
1. **Idéologie officielle** unique et totale
2. **Parti unique** dirigé par un chef
3. **Police politique** (terreur)
4. **Monopole des moyens** d''information
5. **Monopole des armes**
6. **Économie planifiée** centralement

#### Exemples historiques
- **Allemagne nazie** (`1933-1945`)
- **URSS stalinienne** (`1924-1953`)
- **Italie fasciste** (`1922-1943`)
- **Chine maoïste**, **Corée du Nord**

#### Distinction avec l''autoritarisme
- Totalitarisme : volonté de **contrôle total** de la société et de l''individu
- Autoritarisme : contrôle politique mais société partiellement autonome

### D. Les « démocraties illibérales »

#### Concept
**Fareed Zakaria**, *The Rise of Illiberal Democracy* (`Foreign Affairs, 1997`), théorise l''émergence de régimes :
- **Élections libres**
- **Mais** restriction des libertés et de l''opposition
- Affaiblissement de l''**État de droit**

#### Exemples contemporains
- **Hongrie** (Viktor Orbán, depuis `2010`)
- **Turquie** (Erdoğan)
- **Russie** (Poutine)
- **Pologne** (PiS, `2015-2023`)

#### Caractéristiques
- Concentration du pouvoir
- Affaiblissement de la justice indépendante
- Pression sur les médias
- Lois restrictives pour la société civile

## IV. Les approches contemporaines

### A. Indice de démocratie (*Democracy Index*)

#### The Economist Intelligence Unit
Classement annuel selon 5 critères :
1. **Processus électoral et pluralisme**
2. **Fonctionnement du gouvernement**
3. **Participation politique**
4. **Culture politique**
5. **Libertés civiles**

#### Catégorisation
- **Démocraties pleines** : Norvège, Suède, Danemark, France (selon les années)
- **Démocraties imparfaites**
- **Régimes hybrides**
- **Régimes autoritaires**

### B. La théorie du *« post-démocratie »*

**Colin Crouch** (`2004`) : les démocraties contemporaines fonctionnent formellement, mais le pouvoir réel passe aux **élites économiques** et aux **experts**.

### C. La crise des démocraties représentatives

#### Symptômes
- **Abstention** croissante
- **Méfiance** envers les institutions
- **Populismes**
- **Polarisation**

#### Réponses tentées
- **Démocratie participative** (budgets participatifs, conventions citoyennes)
- **Référendums** plus fréquents
- **Élection des juges** (USA dans certains États)

## À retenir

**Classification d''Aristote** : selon le nombre (monarchie/aristocratie/démocratie + dégénérés).

**Régimes selon la séparation des pouvoirs** :

| | **Présidentiel** | **Parlementaire** | **Semi-présidentiel** |
|---|---|---|---|
| Exécutif | Président | PM | Président + PM |
| Élection Pdt | Suffrage direct | Indirect/Mineur | Suffrage direct |
| Responsabilité | Non | Oui | Oui |
| Dissolution | Non | Oui | Oui |
| Exemple | USA | UK, Allemagne | France |

**Régime semi-présidentiel** (Duverger, `1980`) : 3 critères cumulatifs.

**Démocratie** : pluralisme + libertés + élections libres + alternance + État de droit.

**Totalitarisme** (Arendt) : idéologie totale + parti unique + terreur + monopoles.

**Démocratie illibérale** (Zakaria, `1997`) : phénomène contemporain inquiétant (Hongrie, Turquie).'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 7 - LA DÉMOCRATIE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La démocratie : principes et modalités', 'Chapitre 7 - La démocratie',
       'Définition, formes (directe, représentative, semi-directe), conditions et défis de la démocratie.',
       array['Démocratie représentative', 'Démocratie directe', 'Démocratie semi-directe', 'Suffrage universel', 'Pluralisme', 'État de droit', 'Alternance', 'Élections'],
       16, 7,
'# La démocratie : principes et modalités

## Introduction

La **démocratie** est devenue le régime de référence dans le monde contemporain. Pourtant, elle reste un concept ambigu : qu''est-ce qu''une démocratie ? Un régime où le peuple vote ? Où les libertés sont garanties ? Où la majorité décide ? La réponse a varié à travers les âges et reste débattue. Cette fiche explore les principes fondamentaux et les modalités de la démocratie moderne.

> **Définition de Lincoln** (`Discours de Gettysburg, 19 novembre 1863`) :
> *« Le gouvernement du peuple, par le peuple, pour le peuple. »*

## I. Les fondements théoriques

### A. La démocratie antique

#### La démocratie athénienne (V^e^ siècle av. J.-C.)
- Période de Périclès (`-495 / -429`)
- **Démocratie directe** : assemblée des citoyens (Ecclésia)
- **Tirage au sort** pour les fonctions
- Mais **exclusion** des femmes, étrangers, esclaves

#### Les critiques antiques
- **Platon** (*République*) : la démocratie mène à la tyrannie
- **Aristote** : la démocratie est une dégénérescence (le bon régime est la « politeia »)

### B. La démocratie moderne

#### Les inspirations
- **Rousseau** (*Contrat social*, `1762`) : souveraineté populaire
- **Locke** : représentation et libertés
- **Montesquieu** : séparation des pouvoirs

#### Les déclencheurs historiques
- **Révolution américaine** (`1776`)
- **Révolution française** (`1789`)
- **Vagues de démocratisation** au XX^e^ siècle (après les guerres mondiales, chute du communisme)

### C. Trois grandes traditions

#### Tradition libérale (anglo-saxonne)
- Primat des **libertés individuelles**
- **Limitation du pouvoir** par le droit
- Méfiance envers la majorité

#### Tradition républicaine (française)
- Primat de la **volonté générale**
- **Souveraineté nationale**
- *« République indivisible »*

#### Tradition sociale (européenne contemporaine)
- Intégration des **droits sociaux**
- **État-providence**
- Préambule de `1946` (français)

## II. Les conditions de la démocratie

### A. Le pluralisme

#### Pluralisme politique
- **Multipartisme** garanti
- **Liberté des partis** : article 4 C. *« concourent à l''expression du suffrage »*
- **Alternance** possible

#### Pluralisme idéologique
- **Liberté d''opinion** (article 10 DDHC)
- **Liberté d''expression**
- **Tolérance** des opinions minoritaires

#### Pluralisme dans les médias
- **Indépendance** des médias
- **Diversité** de l''offre informationnelle
- Régulation par des **autorités indépendantes** (ARCOM en France depuis `2022`)

### B. Les libertés publiques

#### Libertés individuelles
- **Liberté individuelle** (sûreté)
- **Liberté d''aller et venir**
- **Inviolabilité du domicile**
- **Secret de la correspondance**

#### Libertés collectives
- **Liberté d''association** (loi du `1er juillet 1901`)
- **Liberté de réunion**
- **Liberté de manifestation**
- **Liberté syndicale** (Préambule `1946`)
- **Droit de grève** (Préambule `1946`)

### C. L''État de droit

#### Définition
État dans lequel les autorités publiques sont **soumises au droit**.

#### Composantes
- **Hiérarchie des normes** respectée
- **Contrôle juridictionnel** des actes
- **Indépendance de la justice**
- **Égalité devant la loi**
- **Sécurité juridique**

#### Garants
- **Juge constitutionnel**
- **Juge administratif** et judiciaire
- **Cour européenne des droits de l''homme**

### D. Le suffrage universel

#### Conquête progressive en France
- `1791` : suffrage **censitaire** (sous condition de cens)
- `1848` : **suffrage universel masculin**
- `21 avril 1944` : **suffrage universel** étendu aux femmes (ordonnance)
- `1945` : premier vote des femmes (municipales d''avril, législatives d''octobre)
- `1974` : majorité abaissée à `18 ans` (loi du `5 juillet 1974`)
- `1992` : droit de vote aux européens pour les municipales et européennes

#### Caractères du suffrage moderne
- **Universel**
- **Égal** : un homme, une voix
- **Direct** ou indirect (selon les scrutins)
- **Secret**
- **Personnel**
- **Libre**

## III. Les formes de la démocratie

### A. La démocratie directe

#### Définition
Le peuple **exerce directement** le pouvoir, sans intermédiaire.

#### Modèle historique : Athènes
- **Ecclésia** : assemblée des citoyens
- **Boulè** : conseil de 500 membres tirés au sort
- **Héliée** : tribunal populaire

#### Modèle contemporain : la Suisse
- **Référendums** fréquents (en moyenne 10 par an au niveau fédéral)
- **Initiatives populaires** (`100 000 signatures`)
- **Référendum obligatoire** pour toute révision constitutionnelle

#### Limites
- **Échelle** : difficile dans les grands États
- **Compétence** : tous les citoyens peuvent-ils se prononcer sur tous les sujets ?
- **Risques de manipulation**

### B. La démocratie représentative

#### Définition
Le peuple **élit des représentants** qui exercent le pouvoir en son nom.

#### Justifications
- **Praticabilité** dans les grands États
- **Compétence** présumée des élus
- **Délibération** parlementaire favorisée
- **Filtrage** des passions populaires (Sieyès)

#### Caractéristiques juridiques en France
- **Mandat représentatif** (art. 27 C. : *« Tout mandat impératif est nul »*)
- **Indépendance** des élus
- **Cumul des mandats** longtemps possible, désormais limité (loi du `14 février 2014`)

### C. La démocratie semi-directe

#### Définition
**Combinaison** d''éléments représentatifs et directs.

#### Modèle français
- **Régime représentatif** dominant
- **Référendums** possibles (art. `11`, `89`, `72-1` C.)
- **Référendum d''initiative partagée** (depuis `2008`)

#### Avantages
- Maintien des avantages de la représentation
- Possibilité de **consultation directe** sur des questions majeures

### D. La démocratie participative

#### Concept
Forme **complémentaire** à la démocratie représentative, visant à **associer les citoyens** entre les élections.

#### Mécanismes
- **Budgets participatifs**
- **Conseils de quartier**
- **Conférences de citoyens**
- **Conventions citoyennes** (ex. : Convention pour le climat, `2019-2020`)
- **Consultations publiques** en ligne

#### Limites
- Effets souvent **consultatifs** seulement
- **Représentativité** des participants
- **Coûts** importants

## IV. Les défis contemporains de la démocratie

### A. La crise de la représentation

#### Symptômes
- **Abstention** croissante (record aux législatives `2022` : 53,8% au 1er tour)
- **Défiance** envers les partis (sondages réguliers)
- **Volatilité** électorale
- **Émergence** de leaders « antisystème »

#### Causes invoquées
- Distance entre élus et citoyens
- Sentiment d''impuissance face aux enjeux globaux
- Évolution des modes de communication

### B. Les populismes

#### Définition
Discours politique qui **oppose le peuple aux élites**, souvent avec des **simplifications** et un **chef charismatique**.

#### Exemples contemporains
- **Donald Trump** aux États-Unis
- **Viktor Orbán** en Hongrie
- **Jair Bolsonaro** au Brésil
- **Marine Le Pen** en France
- **Jean-Luc Mélenchon** (populisme de gauche)

#### Risques
- **Polarisation**
- **Délégitimation** des institutions
- **Glissement** vers l''illibéralisme

### C. La démocratie face au numérique

#### Opportunités
- **Information** accessible
- **Mobilisation** facilitée (mouvements sociaux)
- **Démocratie participative** numérique

#### Risques
- **Fake news** et désinformation
- **Filter bubbles** et polarisation
- **Manipulation** des élections (Cambridge Analytica, `2016`)
- **Cyberattaques** étatiques
- Domination des **plateformes** (GAFAM)

### D. La démocratie face au climat et au temps long

#### La temporalité démocratique
- **Court terme électoral** (5 ans)
- **Long terme nécessaire** pour les transitions

#### Solutions explorées
- **Conventions citoyennes** (Convention citoyenne pour le climat, France `2019-2020`)
- **Inscription** de droits environnementaux (Charte de l''environnement de `2004`)
- **Recours juridictionnels** (*L''affaire du siècle*, `2021`)

### E. Le défi sécuritaire

#### Tension liberté-sécurité
Les attentats (`2015` en France, `2001` aux États-Unis) ont conduit à :
- **Lois antiterroristes**
- **État d''urgence**
- **Loi SILT** (`30 octobre 2017`) intégrant des mesures d''exception dans le droit commun

#### Risques pour la démocratie
- **Bridage** des libertés
- **Banalisation** de l''exception

## V. La défense de la démocratie

### A. Les mécanismes de protection

#### La démocratie militante (*« streitbare Demokratie »*)
Concept allemand : possibilité d''**interdire** les partis menaçant l''ordre démocratique (art. 21 LF).

#### En France
- **Dissolution administrative** d''associations (loi du `10 janvier 1936`, élargie en `1986` et `2021`)
- **Lois mémorielles**
- **Loi confortant les principes de la République** (`24 août 2021`)

### B. L''éducation à la citoyenneté

- **Enseignement civique** dans les écoles
- **Service national universel** (SNU) en expérimentation
- **Éducation aux médias**

### C. La justice constitutionnelle

#### Le rôle du Conseil constitutionnel
- **Contrôle des lois**
- **Protection des libertés** (depuis `1971`)
- **QPC** (depuis `2010`) : démocratisation de l''accès

## À retenir

**Lincoln** : *« Le gouvernement du peuple, par le peuple, pour le peuple »* (`19 novembre 1863`).

**Conditions** : pluralisme + libertés + État de droit + suffrage universel + alternance.

**Trois formes** :
- **Directe** : Athènes, Suisse contemporaine
- **Représentative** : modèle dominant
- **Semi-directe** : France (représentation + référendums)

**Étapes du suffrage en France** :
- `1848` : suffrage universel masculin
- `21 avril 1944` : ouverture aux femmes
- `1974` : majorité à 18 ans
- `1992` : Européens aux municipales

**Défis contemporains** : crise de la représentation, populismes, démocratie numérique, urgence climatique, sécurité.

**Démocratie militante** : possibilité de défendre l''ordre démocratique contre ses ennemis (concept allemand).'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- FICHE 8 - HISTOIRE CONSTITUTIONNELLE FRANÇAISE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''histoire constitutionnelle française', 'Chapitre 8 - L''héritage constitutionnel français',
       'De 1789 à 1958 : panorama des 16 textes constitutionnels français et de leurs apports.',
       array['Constitution de 1791', 'Constitution de 1793', 'Empire', 'Charte de 1814', 'IIe République', 'IIIe République', 'IVe République', 'Ve République', 'De Gaulle'],
       20, 8,
'# L''histoire constitutionnelle française

## Introduction

La France détient un **record mondial** : `16 textes constitutionnels` entre `1789` et `1958`. Cette instabilité chronique contraste avec la longévité d''autres systèmes (Constitution américaine de `1787` toujours en vigueur). Comprendre cette histoire est indispensable pour saisir la V^e^ République, qui se nourrit autant des leçons des échecs que des innovations.

## I. La Révolution française (`1789-1799`)

### A. Le contexte

#### La Déclaration des droits de l''homme et du citoyen
**26 août 1789**. Texte fondateur :
- **Souveraineté nationale** (art. 3)
- **Liberté** (art. 4)
- **Égalité** (art. 1, 6)
- **Propriété** (art. 17)
- **Séparation des pouvoirs** (art. 16)

### B. La Constitution du `3 septembre 1791`

#### Première Constitution écrite française
- **Monarchie constitutionnelle**
- Le Roi : pouvoir exécutif, droit de veto **suspensif**
- **Assemblée législative** unique élue au suffrage **censitaire**

#### Caractéristiques
- **Souveraineté nationale**
- **Citoyens actifs** (paient le cens) et **citoyens passifs**
- **Séparation stricte** des pouvoirs

#### Échec
La fuite du roi (Varennes, `20-21 juin 1791`) puis la prise des Tuileries (`10 août 1792`) marquent la chute.

### C. La Constitution du `24 juin 1793` (Montagnarde)

#### Texte révolutionnaire
- **Souveraineté populaire** (Rousseau)
- **Suffrage universel masculin**
- **Droit à l''insurrection** (art. 35)
- **Droit au travail**, à l''instruction, aux secours publics

#### Une démocratie radicale
- Référendum obligatoire pour les lois
- **Mandat impératif** admis

#### Non appliquée
Suspendue par la Convention. La **Terreur** prend le relais. **Robespierre** tombe le `9 thermidor` (`27 juillet 1794`).

### D. La Constitution du `5 fructidor an III` (`22 août 1795`)

#### Le Directoire
- **Suffrage censitaire** rétabli
- **Pouvoir législatif** bicaméral (Conseil des Anciens, Conseil des Cinq-Cents)
- **Pouvoir exécutif** : 5 **Directeurs**

#### Instabilité chronique
Plusieurs coups d''État. Le `18 brumaire an VIII` (`9 novembre 1799`), **Bonaparte** prend le pouvoir.

## II. Le Consulat et l''Empire (`1799-1815`)

### A. La Constitution de l''an VIII (`13 décembre 1799`)

#### Concentration du pouvoir
- **Trois Consuls** : Bonaparte (Premier consul, vraie autorité), Cambacérès, Lebrun
- **Sénat conservateur**, Tribunat, Corps législatif (suffrage indirect complexe)

#### Le plébiscite
Adoption par **plébiscite** : `3 011 007 oui` contre `1 562 non` (chiffres contestables).

### B. La Constitution de l''an X (`4 août 1802`)

Bonaparte devient **Consul à vie**.

### C. La Constitution de l''an XII (`18 mai 1804`)

#### L''Empire
Bonaparte devient **Empereur des Français** sous le nom de **Napoléon I^er^**.

#### Réformes durables
Sous Napoléon : **Code civil** (`1804`), Code de commerce (`1807`), Code pénal (`1810`), création des préfets, du Conseil d''État, des lycées…

### D. L''Acte additionnel (`22 avril 1815`)

Pendant les **Cent-Jours**. Napoléon, après son retour de l''île d''Elbe, octroie une nouvelle Constitution plus libérale. Waterloo (`18 juin 1815`) met fin à l''aventure.

## III. La Restauration et la monarchie de Juillet (`1814-1848`)

### A. La Charte du `4 juin 1814` (Louis XVIII)

#### Caractéristiques
- **Octroyée** par le Roi (et non votée)
- **Monarchie limitée**
- **Bicamérisme** : Chambre des Pairs (héréditaire) + Chambre des Députés
- **Suffrage censitaire** très restreint (~100 000 votants)

#### Reconnaissance des acquis révolutionnaires
- **Égalité civile**
- **Liberté individuelle**
- **Liberté de la presse**
- **Liberté de culte** (mais catholicisme = religion d''État)

### B. Les Cent-Jours et la Seconde Restauration

Après Waterloo, retour de Louis XVIII puis Charles X, plus conservateur.

### C. La Charte du `14 août 1830` (Monarchie de Juillet)

#### La révolution de `1830` (Trois Glorieuses : `27-29 juillet 1830`)
Suite aux ordonnances de Charles X, soulèvement parisien. **Louis-Philippe** devient *« Roi des Français »* (et non *« de France »*).

#### Innovations
- **Charte révisée** (votée, non plus octroyée)
- **Souveraineté nationale**
- Élargissement progressif du suffrage censitaire

#### Évolution vers le parlementarisme
**Orléanisme** : développement de la **responsabilité ministérielle** devant les chambres (parlementarisme dualiste).

## IV. La II^e^ République (`1848-1852`)

### A. La révolution de février `1848`

Suite à la **campagne des banquets**, soulèvement parisien (`22-24 février 1848`). Abdication de Louis-Philippe. **République proclamée**.

### B. La Constitution du `4 novembre 1848`

#### Innovations majeures
- **Suffrage universel masculin** (décret du `2 mars 1848`)
- **Abolition** définitive de l''esclavage (`27 avril 1848`)
- **Abolition** de la peine de mort en matière politique
- **Droit au travail** (controversé, supprimé après les journées de juin)

#### Institutions
- **Président** élu au suffrage universel direct pour 4 ans (non renouvelable immédiatement)
- **Assemblée législative** unique élue au suffrage universel

#### Le coup d''État du `2 décembre 1851`
**Louis-Napoléon Bonaparte**, Président élu en `1848`, ne peut se représenter. Il fait un coup d''État, prolongé par référendum.

### C. La Constitution du `14 janvier 1852`

#### Caractéristiques
- **Plébiscitarisme** : tout par le peuple, mais sous l''autorité du Président
- Concentration des pouvoirs

#### Le Second Empire (`1852-1870`)
Le `2 décembre 1852`, Louis-Napoléon devient **Napoléon III**, Empereur. L''Empire évolue d''autoritaire (`1852-1860`) à libéral (`1860-1870`).

#### La défaite de Sedan (`1er-2 septembre 1870`)
Capture de Napoléon III lors de la **guerre franco-allemande**. République proclamée le `4 septembre 1870`.

## V. La III^e^ République (`1870-1940`) : la plus longue

### A. Une genèse difficile

#### Le gouvernement de la Défense nationale
Après Sedan, gouvernement provisoire. Continuation de la guerre, défaite, perte de l''Alsace-Lorraine.

#### Les lois constitutionnelles de `1875`
- **Trois lois constitutionnelles** :
  - `24 février 1875` : Sénat
  - `25 février 1875` : organisation des pouvoirs publics
  - `16 juillet 1875` : rapports entre pouvoirs publics
- **Compromis** entre républicains et monarchistes (espoir d''une restauration)
- **L''amendement Wallon** (`30 janvier 1875`, voté à une voix de majorité) introduit le mot **République**

### B. Le régime parlementaire

#### Institutions
- **Président** élu par les chambres (7 ans)
- **Sénat** et **Chambre des députés**
- **Conseil des ministres** dirigé par un Président du Conseil
- **Responsabilité gouvernementale** devant les chambres

#### La pratique
- Domination du **Parlement** (parlementarisme absolu)
- **Instabilité ministérielle** chronique (104 gouvernements en 70 ans)
- **Présidents effacés** après MacMahon (`1879`, après la crise du `16 mai 1877`)

### C. Apports majeurs

- **Démocratisation** de la République
- **Lois fondatrices** : laïcité (`1905`), libertés publiques (associations `1901`, presse `1881`)
- **Suffrage universel** établi durablement
- **Éducation** publique gratuite et obligatoire (lois Ferry, `1881-1882`)

### D. La fin (`10 juillet 1940`)

Après la défaite, le **vote des pleins pouvoirs à Pétain** (`10 juillet 1940`) marque la fin. Régime de **Vichy** non démocratique.

## VI. La IV^e^ République (`1946-1958`)

### A. La Libération et la Constitution

#### Le référendum du `21 octobre 1945`
Question 1 : *« Voulez-vous que l''Assemblée élue ce jour soit constituante ? »* → **Oui à 96%**.
Question 2 : limitation des pouvoirs et durée → **Oui à 66%**.

#### Première Constitution rejetée (référendum du `5 mai 1946`)
Texte trop radical. **Rejeté** par les électeurs.

#### Constitution du `27 octobre 1946`
Adoptée par référendum le `13 octobre 1946`.

### B. Caractéristiques de la IV^e^ République

#### Institutions
- **Président** : rôle réduit, élu par le Parlement
- **Président du Conseil** (PM) : chef effectif de l''exécutif
- **Assemblée nationale** : dominante
- **Conseil de la République** (ancien Sénat) : rôle limité

#### Préambule de `1946`
Maintenu et intégré au bloc de constitutionnalité par le Conseil constitutionnel en `1971`.

### C. L''instabilité gouvernementale

#### Les chiffres
- **24 gouvernements** en 12 ans
- Durée moyenne : 6 mois
- Investiture difficile (« double investiture » du PM puis du gouvernement)

#### Causes
- Multipartisme
- Mode de scrutin proportionnel
- Pas de fait majoritaire
- Manque de discipline parlementaire

### D. La crise et la chute

#### La guerre d''Algérie (`1954-1962`)
Conflit colonial qui mine la IV^e^ République.

#### Le `13 mai 1958`
Insurrection à Alger. Appel à de Gaulle. Le Président **Coty** confie au **Général de Gaulle** la mission de former un gouvernement.

#### La fin (`3 juin 1958`)
**Loi constitutionnelle du 3 juin 1958** autorisant le Gouvernement à élaborer une nouvelle Constitution.

## VII. La V^e^ République (`1958-...`)

### A. L''élaboration

#### Acteurs
- **Charles de Gaulle**
- **Michel Debré** (rédacteur)
- **Comité consultatif constitutionnel**
- **Conseil d''État**

#### Méthode
Élaboration **gouvernementale**, soumise au peuple par référendum.

#### Référendum du `28 septembre 1958`
- **Oui : 79,25%**
- Participation : 85%

#### Promulgation : `4 octobre 1958`

### B. Les caractéristiques fondamentales

#### Innovations
- **Domaine limité de la loi** (art. 34) et **pouvoir réglementaire autonome** (art. 37)
- **Parlementarisme rationalisé** : 49.3, vote bloqué, ordre du jour gouvernemental
- **Conseil constitutionnel** : nouveauté
- **Élection présidentielle au suffrage universel direct** (révision de `1962`)

#### Une stabilité retrouvée
- Durée moyenne des gouvernements bien plus longue
- **Fait majoritaire** depuis les années 1960
- Présidents au mandat plein (sauf démission de De Gaulle en `1969`)

### C. Les grandes étapes
- `1962` : élection présidentielle au suffrage universel direct
- `1974` : ouverture saisine Conseil constitutionnel
- `2000` : quinquennat
- `2003` : décentralisation
- `2008` : grande révision (QPC, limitation à 2 mandats…)

## À retenir

`16 textes constitutionnels` entre `1789` et `1958` — record mondial d''instabilité.

**Grandes étapes** :
- **Révolution** : `1791` (monarchie constitutionnelle), `1793` (jamais appliquée), `1795` (Directoire)
- **Empire** : `1799`, `1802`, `1804` (Napoléon I^er^)
- **Restauration** : Chartes de `1814` et `1830`
- **II^e^ République** : `1848` (suffrage universel masculin)
- **Second Empire** : `1852` (Napoléon III)
- **III^e^ République** : lois de `1875` — la plus longue (70 ans)
- **Vichy** : régime non démocratique (`1940-1944`)
- **IV^e^ République** : `1946` — instabilité chronique (24 gouvernements en 12 ans)
- **V^e^ République** : `1958` — actuelle

**Dates clés à retenir** :
- `26 août 1789` : DDHC
- `21 mars 1804` : Code civil
- `28 septembre 1958` : référendum constitutionnel
- `4 octobre 1958` : promulgation de la Constitution actuelle'
from public.subjects where name = 'Introduction au droit constitutionnel';
