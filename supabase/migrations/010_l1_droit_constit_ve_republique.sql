-- =====================================================================
-- JurisPrép - Cours complet : Droit constitutionnel (L1 S2)
-- La Ve République - 8 fiches très approfondies avec code couleur
-- =====================================================================

delete from public.revision_sheets
where subject_id in (
  select id from public.subjects
  where name = 'Droit constitutionnel' and level = 'L1'
);

-- =====================================================================
-- FICHE 1 - GENÈSE ET CARACTÉRISTIQUES DE LA Ve RÉPUBLIQUE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Genèse et caractéristiques de la Ve République', 'Chapitre 1 - L''avènement et la nature de la Ve République',
       'Du 13 mai 1958 au régime actuel : crise algérienne, élaboration de la Constitution, débats sur la nature du régime.',
       array['13 mai 1958', 'De Gaulle', 'Michel Debré', 'Discours de Bayeux', 'Loi constitutionnelle du 3 juin 1958', 'Référendum du 28 septembre 1958', 'Régime semi-présidentiel', 'Maurice Duverger', 'Parlementarisme rationalisé'],
       30, 1,
'# Genèse et caractéristiques de la Ve République

## Introduction

La **Ve République** est née d''une **crise** : celle de la guerre d''Algérie qui menaçait, en mai `1958`, de dégénérer en guerre civile. Le retour au pouvoir du général **Charles de Gaulle**, dans un climat de quasi-coup d''État, va déboucher sur l''élaboration d''une **nouvelle Constitution** rompant avec les défauts de la IVe République : instabilité gouvernementale chronique, hégémonie parlementaire, faiblesse de l''exécutif. Adoptée par référendum le `28 septembre 1958` avec un *« oui »* à `79,25 %`, la Constitution du `4 octobre 1958` met en place un régime original, **constamment débattu** quant à sa nature exacte : régime parlementaire ? présidentiel ? semi-présidentiel ? Cette fiche examine la genèse historique, l''élaboration du texte, et les caractéristiques fondamentales d''un régime qui dure depuis plus de **`65 ans`** — performance inédite dans l''histoire constitutionnelle française.

> **Définition de référence** : La **Ve République** est le régime politique français institué par la **Constitution du 4 octobre 1958**, organisant un exécutif fort autour d''un Président de la République élu (depuis `1962`) au suffrage universel direct, un Gouvernement responsable devant le Parlement, et un parlementarisme rationalisé encadré par un Conseil constitutionnel.

## I. La crise de la IVe République et le contexte de mai 1958

### A. Les défauts structurels de la IVe République

#### L''instabilité gouvernementale chronique
La IVe République (`1946-1958`) a connu **`24 gouvernements`** en seulement **`12 ans`**, soit une durée moyenne de **6 mois** par gouvernement. Cette instabilité résultait d''une combinaison de causes :
- **Multipartisme** : éclatement de la vie politique entre nombreux partis (PCF, SFIO, MRP, RPF, radicaux, modérés…)
- **Mode de scrutin proportionnel** empêchant l''émergence d''une majorité stable
- **Absence de fait majoritaire** : aucun parti ne disposait à lui seul d''une majorité
- **Discipline parlementaire faible** : les députés votaient souvent contre leur propre groupe
- **Procédure d''investiture complexe** : double investiture (du Président du Conseil pressenti, puis de son gouvernement)
- **Article 49** ancien (motion de censure trop facile) : *« la confiance ne peut être refusée qu''à la majorité absolue des députés »* — règle théorique souvent contournée

#### L''affaiblissement de l''exécutif
- **Président de la République** sans pouvoir réel : élu par le Parlement, simple *« inaugurateur de chrysanthèmes »*
- **Président du Conseil** (PM) à la merci d''une coalition fragile
- **Régime d''assemblée** masqué : *« hégémonie parlementaire »*

#### L''incapacité à résoudre les crises majeures
- **Décolonisation** : guerre d''Indochine (`1946-1954`, défaite de Diên Biên Phu le `7 mai 1954`)
- **Suez** (`1956`) : humiliation diplomatique
- **Guerre d''Algérie** (depuis le `1er novembre 1954`) : crise insoluble

### B. Le déclencheur : la crise algérienne de mai 1958

#### Le 13 mai 1958 à Alger
- **Manifestation** des Français d''Algérie contre la nomination du gouvernement Pierre Pflimlin
- **Création d''un Comité de salut public** par les militaires (général Massu)
- **Appel au général de Gaulle** par les insurgés
- **Risque de coup d''État militaire** (opération *« Résurrection »*, parachutage prévu sur Paris)

#### La pression sur le pouvoir parlementaire
- **15 mai** : de Gaulle se déclare *« prêt à assumer les pouvoirs de la République »*
- **24 mai** : Corse rallie le Comité de salut public
- **27 mai** : de Gaulle annonce avoir entamé *« le processus régulier nécessaire à l''établissement d''un gouvernement républicain »*
- **28 mai** : démission de Pflimlin
- **29 mai** : le président **René Coty** appelle de Gaulle, le qualifiant de *« plus illustre des Français »*
- **1^er^ juin** : de Gaulle obtient l''investiture (`329 voix contre 224`)
- **3 juin** : le Parlement vote la **loi constitutionnelle** permettant la révision de la Constitution

### C. Les conditions posées par de Gaulle (`3 juin 1958`)

La **loi constitutionnelle du 3 juin 1958** habilitait le gouvernement à rédiger une nouvelle Constitution selon **cinq principes** :

1. **Suffrage universel** seule source du pouvoir
2. **Séparation effective** des pouvoirs exécutif et législatif
3. **Responsabilité** du Gouvernement devant le Parlement
4. **Autorité judiciaire indépendante**
5. **Organisation des rapports** avec les peuples associés (Communauté française)

#### La procédure
- **Avant-projet** rédigé par un comité dirigé par **Michel Debré** (garde des Sceaux)
- **Comité consultatif constitutionnel** (CCC) composé de parlementaires et de personnalités
- **Conseil d''État** consulté
- **Référendum** populaire pour adoption

### D. La doctrine constitutionnelle de De Gaulle

#### Le *Discours de Bayeux* (`16 juin 1946`)
Dès `1946`, de Gaulle exposait sa vision constitutionnelle :
> *« Le chef de l''État, placé au-dessus des partis, élu par un collège englobant le Parlement mais beaucoup plus large […], doit être l''arbitre au-dessus des contingences politiques. »*

**Principes** :
- **Bicaméralisme** équilibré
- **Exécutif fort** distinct du Parlement
- Chef de l''État *« arbitre »* au-dessus des partis
- Stabilité gouvernementale

#### L''influence sur 1958
- Michel Debré, fervent gaulliste, va concrétiser cette vision
- **Synthèse** : exécutif fort + parlementarisme rationalisé

## II. L''élaboration de la Constitution du 4 octobre 1958

### A. Les acteurs et la méthode

#### Le gouvernement et le comité de rédaction
- **Michel Debré**, garde des Sceaux, principal rédacteur
- **Comité d''experts** au ministère de la Justice
- **De Gaulle** intervient personnellement sur les grandes orientations
- **Comité interministériel** sous présidence du général

#### Le Comité consultatif constitutionnel (CCC)
- **39 membres** : 26 parlementaires + 13 personnalités
- Présidé par **Paul Reynaud**
- **Avis consultatif**
- Sessions du `30 juillet au 14 août 1958`

#### Le Conseil d''État
- **Examen** du projet
- **Avis** rendu le `28 août 1958`

### B. Les débats fondamentaux lors de la rédaction

#### Régime présidentiel ou parlementaire ?
- **De Gaulle** : pencherait pour un régime quasi-présidentiel
- **Michel Debré** : attaché au parlementarisme (*« parlementaire jusqu''au bout des ongles »*, dit-on)
- **Compromis** : régime parlementaire à exécutif fort, *« parlementarisme rationalisé »*

#### Le rôle du Président
- **Discours de Debré devant le Conseil d''État** (`27 août 1958`) :
  > *« La Constitution donne au chef de l''État ce qu''il faut pour qu''il soit le gardien de la République et le garant de son destin, pour qu''il soit l''arbitre au-dessus des contingences politiques. »*

#### Le pouvoir réglementaire autonome
- **Article 37** : innovation majeure, le règlement devient compétence de droit commun
- **Article 34** : la loi est limitée à un domaine énuméré

### C. Le référendum du 28 septembre 1958

#### Question
> *« Approuvez-vous la Constitution qui vous est proposée par le Gouvernement de la République ? »*

#### Résultats
- **Inscrits** : `27 235 765`
- **Votants** : `22 596 850` (taux de participation : `84,9 %`)
- **OUI** : `17 668 790` (**`79,25 %`** des suffrages exprimés)
- **NON** : `4 624 511` (`20,75 %`)
- **Participation** record (85%) et plébiscite massif

#### Vote dans les départements d''outre-mer
- **Très majoritaire OUI** sauf Guinée (qui devient indépendante immédiatement)
- En Algérie : organisation difficile mais OUI massif

#### Promulgation : `4 octobre 1958`

### D. Les premières applications

#### Élections législatives (`novembre 1958`)
- **Scrutin majoritaire à deux tours** rétabli (rupture avec la proportionnelle)
- **UNR** (Union pour la Nouvelle République, gaullistes) : majorité relative
- **Première Assemblée nationale** de la Ve République

#### Élection présidentielle (`21 décembre 1958`)
- **De Gaulle** élu par un **collège électoral** de `80 000 grands électeurs`
- **`78,5 %`** des voix
- **Investiture** : `8 janvier 1959`

#### Premier gouvernement
- **Michel Debré** Premier ministre (`8 janvier 1959`)

## III. Les caractéristiques du régime

### A. La structure constitutionnelle

#### Le texte de la Constitution
- **Préambule** se référant à la DDHC de `1789` et au Préambule de `1946`
- **Article 1** : caractères de la République (depuis la révision de `1992`)
- **`16 titres`** comprenant les articles
- **89 articles** à l''origine (modifiés depuis)

#### Architecture des pouvoirs
1. **Président de la République** (Titre II, articles 5 à 19)
2. **Gouvernement** (Titre III, articles 20 à 23)
3. **Parlement** (Titre IV, articles 24 à 33)
4. **Rapports entre Parlement et Gouvernement** (Titre V, articles 34 à 51-2)
5. **Conseil constitutionnel** (Titre VII, articles 56 à 63)
6. **Autorité judiciaire** (Titre VIII)
7. **Haute Cour** (Titre IX) et **Cour de justice de la République** (Titre X)
8. **Conseil économique, social et environnemental** (Titre XI)
9. **Défenseur des droits** (Titre XI bis, depuis `2008`)
10. **Collectivités territoriales** (Titre XII)
11. **Union européenne** (Titre XV)
12. **Traités** (Titre VI)
13. **Révision** (Titre XVI)

### B. Les caractéristiques fondamentales

#### Un exécutif renforcé
- **Président** doté de pouvoirs propres (sans contreseing)
- **Premier ministre** dirigeant l''action gouvernementale (`art. 21`)
- **Stabilité** gouvernementale obtenue grâce à la rationalisation

#### Un parlementarisme rationalisé
- **Domaine de la loi** limité (`art. 34`)
- **Pouvoir réglementaire** autonome (`art. 37`)
- **Article 49 alinéa 3** : engagement de responsabilité sur un texte
- **Motion de censure** difficile : majorité absolue des inscrits, vote au scrutin secret
- **Ordre du jour** maîtrisé par le Gouvernement (article 48, modifié en `2008`)
- **Vote bloqué** (`art. 44 al. 3`)
- **CMP** (commission mixte paritaire) et dernier mot de l''AN (`art. 45`)

#### Un nouveau contrôle constitutionnel
- **Création** du Conseil constitutionnel
- **Contrôle a priori** par voie d''action
- **Saisine** initialement restreinte (élargie en `1974`)
- **QPC** (Question Prioritaire de Constitutionnalité) ajoutée en `2008`

### C. Les innovations majeures par rapport à la IVe République

#### Procédures parlementaires
- **Limitation** du nombre des commissions permanentes (à 6, désormais 8 depuis `2008`)
- **Engagement de responsabilité** : la motion de censure nécessite **`1/10`** des députés
- **Article 49.3** : adoption sans vote sauf motion de censure
- **Suppression** de la double investiture (le PM est nommé par le Président)

#### Rapports avec les électeurs
- **Référendum** réintroduit (`art. 11`)
- **Élection** présidentielle au suffrage universel direct (depuis `1962`)

## IV. Le débat sur la nature du régime

### A. Le qualificatif officiel : régime parlementaire

#### Selon Michel Debré
**Régime parlementaire** rationalisé avec un exécutif fort :
- **Responsabilité** gouvernementale devant le Parlement (art. 49)
- **Dissolution** possible (art. 12)
- **Contreseing** des actes présidentiels (art. 19, sauf pouvoirs propres)
- **Élection** indirecte du Président à l''origine (collège électoral)

### B. La présidentialisation depuis 1962

#### L''élection au suffrage universel direct
- **Référendum du 28 octobre 1962** (organisé par l''art. 11) : adoption à `61,75 %`
- **Légitimité populaire** directe du Président
- Le Président devient le **chef effectif** de l''exécutif
- Avènement d''une **majorité présidentielle** au Parlement

#### Les conséquences
- **Effacement** du Premier ministre en période de concordance des majorités
- **Domaine réservé** présidentiel (affaires étrangères, défense)
- **Quasi-fusion** Président/PM en majorité concordante

### C. La théorie du régime semi-présidentiel (Maurice Duverger)

#### *Maurice Duverger*, *Le système politique français* (`1980`)
**Définition** : régime caractérisé par **trois critères cumulatifs** :
1. **Président élu au suffrage universel direct**
2. Disposant de **pouvoirs propres importants**
3. Le **Gouvernement** est **responsable** devant le Parlement (élément parlementaire)

#### Classification de la Ve République
- **Régime semi-présidentiel** selon Duverger
- À distinguer du présidentiel (USA) et du parlementaire classique (UK)

### D. La cohabitation : test de la nature du régime

#### Définition
**Situation** où le Président appartient à une majorité différente de la majorité parlementaire.

#### Trois cohabitations
- **1986-1988** : François Mitterrand (PS) / Jacques Chirac (RPR)
- **1993-1995** : François Mitterrand / Édouard Balladur (RPR)
- **1997-2002** : Jacques Chirac (RPR) / Lionel Jospin (PS)

#### Conséquences institutionnelles
- **Le Président s''efface** : il garde son *« domaine réservé »* mais le Premier ministre dirige
- **Régime parlementaire** redevient effectif
- **Conflits** possibles (refus de signer un acte, refus de l''ordre du jour…)

#### Le quinquennat et la fin des cohabitations
- **Loi constitutionnelle du 2 octobre 2000** : passage du septennat au quinquennat
- **Concordance** des élections présidentielles et législatives
- **Disparition** des cohabitations (la dernière date de `2002`)

### E. La présidentialisation accentuée

#### Évolution
Depuis 2002, la Ve République fonctionne comme un **régime quasi-présidentiel** :
- Président = chef incontesté de la majorité
- Premier ministre = collaborateur exécutant
- Parlement = chambre d''enregistrement (en majorité absolue)

#### Critique
- **« Hyperprésidence »** : risque d''autoritarisme
- **Affaiblissement** du Parlement
- **Mépris** du Premier ministre

### F. La position de la doctrine contemporaine

#### Pierre Avril
*Régime politique*, qualifie la Ve République de **« parlementaire à correction présidentielle »**.

#### Olivier Duhamel
**« Régime parlementaire à présidence semi-monarchique »**.

#### Synthèse
**Pas de consensus**. La nature dépend largement du contexte politique (concordance ou cohabitation).

## V. La longévité de la Ve République

### A. Une stabilité institutionnelle inédite

#### Comparaison historique
- **Toutes** les Républiques précédentes ont chuté avant 30 ans
- La Ve approche les **`70 ans`** (`2024`)

#### Facteurs de stabilité
- **Quinquennat** et fait majoritaire
- **Mode de scrutin** majoritaire
- **Bipolarisation** historique (jusqu''à `2017`)
- **Légitimité présidentielle**

### B. Les révisions constitutionnelles

#### Volume
**`24 révisions`** depuis `1958`.

#### Principales révisions
- `1962` : élection au suffrage universel direct (référendum)
- `1974` : saisine du Conseil constitutionnel par 60 parlementaires
- `1992` : Maastricht (titre XV sur l''UE)
- `1995` : Élargissement du domaine du référendum, session unique
- `2000` : Quinquennat
- `2003` : Décentralisation (art. 1 : « organisation décentralisée »)
- `2005` : Charte de l''environnement
- **`2008`** : « Grande révision » constitutionnelle (37 articles modifiés)

### C. Les défis contemporains

#### La crise de la représentation
- **Abstention** record
- **Volatilité** électorale
- **Recomposition** politique

#### La question de la VIe République
- **Débat** récurrent (notamment à gauche)
- **Mélenchon** : Assemblée constituante
- **Hollande** : VIe République dans son projet de `2012` (abandonnée)

## À retenir

**Crise du 13 mai 1958** : crise algérienne déclenche le retour de **Charles de Gaulle**.

**Loi constitutionnelle du 3 juin 1958** : habilite le gouvernement à rédiger une nouvelle Constitution selon `5 principes` (suffrage universel, séparation des pouvoirs, responsabilité gouvernementale, indépendance judiciaire, rapports avec la Communauté).

**Rédacteurs** : Michel Debré (principal), de Gaulle (orientations), CCC, Conseil d''État.

**Référendum du 28 septembre 1958** : adoption à **`79,25 %`** des suffrages exprimés (participation `85 %`).

**Promulgation** : `4 octobre 1958`.

**Caractéristiques** :
- **Exécutif renforcé** (Président + PM)
- **Parlementarisme rationalisé** (49.3, vote bloqué, dernier mot AN, ordre du jour…)
- **Conseil constitutionnel** créé
- **Domaine de la loi** limité (`art. 34`) ; pouvoir réglementaire autonome (`art. 37`)

**Nature du régime** :
- Officiellement **parlementaire rationalisé**
- Selon **Maurice Duverger** (`1980`) : **semi-présidentiel** (élection directe du Président + pouvoirs propres + responsabilité gouvernementale)
- Évolution vers la **présidentialisation** depuis `1962` et surtout `2002`

**Cohabitations** : trois épisodes (`1986`, `1993`, `1997`) qui ont confirmé la nature parlementaire en l''absence de concordance des majorités.

**Quinquennat** (`2000`) → fait majoritaire renforcé → **régime quasi-présidentiel** depuis `2002`.

**Longévité exceptionnelle** : ~`65 ans`, record dans l''histoire constitutionnelle française. `24 révisions` depuis `1958`, dont la **« grande révision »** du `23 juillet 2008`.'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 2 - LE PRÉSIDENT DE LA RÉPUBLIQUE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Président de la République : statut et pouvoirs', 'Chapitre 2 - Le Président de la République',
       'Statut (élection, durée, statut pénal), pouvoirs propres et partagés, responsabilité, évolution du rôle.',
       array['Article 5', 'Article 6', 'Article 7', 'Article 8', 'Article 9', 'Article 10', 'Article 11', 'Article 12', 'Article 13', 'Article 14', 'Article 15', 'Article 16', 'Article 17', 'Article 18', 'Article 19', 'Article 67', 'Article 68', 'Suffrage universel direct', 'Quinquennat', 'Pouvoirs propres', 'Article 16', 'Domaine réservé'],
       30, 2,
'# Le Président de la République : statut et pouvoirs

## Introduction

Le **Président de la République** est la **clé de voûte** des institutions de la Ve République. Pensé initialement comme un *« arbitre »* (selon la doctrine gaullienne), il est devenu, grâce à l''élection au suffrage universel direct (révision de `1962`) et au quinquennat (`2000`), le **véritable chef de l''exécutif** et le moteur du système politique en période de concordance des majorités. Son statut, ses pouvoirs (propres et partagés) et sa responsabilité ont fait l''objet de profondes évolutions. Cette fiche présente le statut juridique, l''ensemble des compétences, et la responsabilité du Président de la République.

> **Article 5 C.** : *« Le Président de la République veille au respect de la Constitution. Il assure, par son arbitrage, le fonctionnement régulier des pouvoirs publics ainsi que la continuité de l''État. Il est le garant de l''indépendance nationale, de l''intégrité du territoire et du respect des traités. »*

## I. Le statut du Président de la République

### A. L''élection présidentielle

#### Évolution historique

##### `1958` : élection indirecte
- **Collège électoral** d''environ `80 000 grands électeurs` (parlementaires + élus locaux)
- **Premier Président élu** : Charles de Gaulle (`21 décembre 1958`, `78,5 %`)

##### `1962` : élection au suffrage universel direct
- **Loi constitutionnelle du 6 novembre 1962**, adoptée par référendum le `28 octobre 1962`
- **Procédé controversé** : utilisation de l''article 11 (référendum législatif) au lieu de l''article 89 (révision)
- **Validation politique** : abandonné par la classe politique, mais accepté
- **Premier Président élu au SUD** : Charles de Gaulle (`19 décembre 1965`)

#### Les conditions d''éligibilité (`art. 6 C.` et **loi organique du 6 novembre 1962**)
- **Nationalité française**
- **Majorité civile** (`18 ans` depuis `2011`, auparavant `23 ans`)
- **Jouissance des droits civils et politiques**
- **Avoir satisfait** aux obligations imposées par le code du service national
- **Compte de campagne** dans les limites légales
- **Parrainages** : `500 signatures` d''élus (parlementaires, maires, conseillers régionaux/départementaux…) issues d''**au moins 30 départements** différents (et pas plus d''`1/10` du même département)

#### Le mode de scrutin (`art. 7 C.`)

##### Scrutin majoritaire à deux tours
- **1^er^ tour** : élu à la **majorité absolue** des suffrages exprimés (rare)
- **2^e^ tour** : entre les **2 candidats** arrivés en tête (sauf désistement)

##### Calendrier
- **1^er^ tour** : `20 à 35 jours` avant la fin du mandat précédent
- **2^e^ tour** : `2 semaines` après

##### Effet majoritaire
- **Légitimité forte** du Président élu
- **Concordance** souvent avec les législatives qui suivent

### B. La durée du mandat

#### Le septennat originel
- **`7 ans`** dans la Constitution de `1958`
- Inspiré de la IIIe République
- **Renouvelable** sans limite

#### Le passage au quinquennat (`2000`)
- **Loi constitutionnelle du 2 octobre 2000**, approuvée par référendum (mais participation faible : `30,2 %`)
- **`5 ans`** au lieu de 7
- **Concordance** voulue avec les législatives
- **Premier Président élu** pour 5 ans : Jacques Chirac (`2002`)

#### La limitation à deux mandats consécutifs
- **Loi constitutionnelle du 23 juillet 2008** : ajout à l''article 6 :
> *« Nul ne peut exercer plus de deux mandats consécutifs. »*

#### Conséquences
- **Aucun Président** n''a pu exercer 3 mandats consécutifs
- **Renouvellement** politique forcé

### C. La vacance et l''empêchement (`art. 7 C.`)

#### Causes de cessation anticipée

##### Démission
- **De Gaulle** : `28 avril 1969` (après l''échec du référendum sur le Sénat et la régionalisation)

##### Décès en cours de mandat
- **Georges Pompidou** : `2 avril 1974`

##### Destitution (cas non advenu)
- Procédure de l''**article 68**

#### Constatation de la vacance ou de l''empêchement
- **Conseil constitutionnel** sur saisine du Gouvernement
- **Distinction** :
  - **Vacance définitive** (décès, démission, destitution)
  - **Empêchement** (temporaire ou définitif)

#### L''intérim
- Assuré par le **Président du Sénat**
- **Pouvoirs restreints** : ne peut pas dissoudre l''Assemblée, recourir au référendum, ni utiliser l''article 16 modifié
- **Exemple** : Alain Poher (`1969` après démission de De Gaulle, `1974` après décès de Pompidou)

#### L''élection nouvelle
- **`20 à 35 jours`** après la constatation

### D. Les incompatibilités et le statut pénal

#### Les incompatibilités
- Avec toute autre fonction publique ou privée
- Avec un mandat parlementaire (suspension)

#### L''irresponsabilité pour les actes accomplis en cette qualité (`art. 67 C.`)

##### Principe
> *« Le Président de la République n''est pas responsable des actes accomplis en cette qualité, sous réserve des dispositions des articles 53-2 et 68. »*

##### Conséquence
**Aucune** poursuite judiciaire pour les actes liés à l''exercice de la fonction.

#### L''inviolabilité pendant le mandat (`art. 67 al. 2`)
> *« Il ne peut, durant son mandat et devant aucune juridiction ou autorité administrative française, être requis de témoigner non plus que faire l''objet d''une action, d''un acte d''information, d''instruction ou de poursuite. »*

##### Conséquences
- **Suspension** des prescriptions et délais
- **Actes antérieurs** au mandat : poursuites suspendues
- **Reprise** des procédures **`1 mois après`** la fin du mandat

##### Exemples
- **Jacques Chirac** : poursuites pour les emplois fictifs de la ville de Paris **reprises** après son mandat ; condamné en `2011`
- **Nicolas Sarkozy** : poursuites multiples pendant et après son mandat (affaires Bismuth, financement libyen, sondages…)

#### Les exceptions à l''immunité

##### Compétence de la Cour pénale internationale (`art. 53-2 C.`)
- **Crimes contre l''humanité**
- **Génocide**
- **Crimes de guerre**

##### Destitution (`art. 68 C.`)
- Pour *« manquement à ses devoirs manifestement incompatible avec l''exercice de son mandat »*
- **Procédure** complexe : voir infra

## II. Les pouvoirs propres du Président (`art. 19 C.`)

### A. La notion de pouvoirs propres

#### Article 19 C.
> *« Les actes du Président de la République autres que ceux prévus aux articles 8 (1^er^ alinéa), 11, 12, 16, 18, 54, 56 et 61 sont contresignés par le Premier ministre et, le cas échéant, par les ministres responsables. »*

#### Distinction
- **Pouvoirs propres** : exercés **sans contreseing** du PM
- **Pouvoirs partagés** : nécessitent le **contreseing**

#### Liste des pouvoirs propres
1. **Nomination** du Premier ministre (`art. 8 al. 1`)
2. **Référendum** (`art. 11`)
3. **Dissolution** (`art. 12`)
4. **Pouvoirs exceptionnels** (`art. 16`)
5. **Message au Parlement** (`art. 18`)
6. **Saisine** du Conseil constitutionnel sur les traités (`art. 54`) et sur les lois (`art. 61`)
7. **Nominations** au Conseil constitutionnel (`art. 56`)

### B. La nomination du Premier ministre (`art. 8 al. 1 C.`)

#### Principe
> *« Le Président de la République nomme le Premier ministre. Il met fin à ses fonctions sur la présentation par celui-ci de la démission du Gouvernement. »*

#### Marge de manœuvre
- **Discrétion** théorique
- **Contrainte politique** : doit choisir une personnalité compatible avec la majorité parlementaire
- **En cohabitation** : doit nommer le leader de la majorité opposée

#### Exemples
- **Concordance** : Chirac → Raffarin → de Villepin (Chirac choisit librement)
- **Cohabitation** : Mitterrand obligé de nommer Chirac (`1986`), puis Balladur (`1993`)

#### La fin des fonctions
- **Démission** présentée par le PM
- **En pratique** : le PM démissionne souvent à la demande du Président (« je démissionne »)
- **Cas atypique** : Jacques Chirac, PM de Giscard, démissionne contre la volonté du Président en `1976`

### C. Le recours au référendum (`art. 11 C.`)

#### Le texte (depuis la révision de `2008`)
> *« Le Président de la République, sur proposition du Gouvernement pendant la durée des sessions ou sur proposition conjointe des deux assemblées, publiées au Journal officiel, peut soumettre au référendum tout projet de loi portant sur l''organisation des pouvoirs publics, sur des réformes relatives à la politique économique, sociale ou environnementale de la nation et aux services publics qui y concourent, ou tendant à autoriser la ratification d''un traité… »*

#### Le champ
**À l''origine** : organisation des pouvoirs publics, ratification de traités.
**Élargi en `1995`** : réformes économiques, sociales, environnementales, libertés.

#### La procédure
- **Initiative** : Gouvernement ou les deux assemblées
- **Décision** : Président
- **Publication** au JO

#### Les principaux référendums de la Ve République
- `8 janvier 1961` : autodétermination de l''Algérie (`75,3 %` oui)
- `8 avril 1962` : indépendance de l''Algérie (`90,7 %` oui, accords d''Évian)
- `28 octobre 1962` : élection présidentielle au SUD (`61,7 %` oui) — controverse
- `27 avril 1969` : Sénat et régions (`52,4 %` NON) → démission de de Gaulle
- `23 avril 1972` : élargissement CEE (`67,7 %` oui)
- `6 novembre 1988` : statut de la Nouvelle-Calédonie (`80 %` oui)
- `20 septembre 1992` : Maastricht (`51,04 %` oui)
- `24 septembre 2000` : quinquennat (`73,2 %` oui mais participation `30,2 %`)
- `29 mai 2005` : Traité établissant une Constitution pour l''Europe (`54,7 %` NON) → choc politique

#### L''article 11 et la révision constitutionnelle : la controverse
- De Gaulle utilise l''art. 11 pour **réviser la Constitution** en `1962`
- **Doctrine majoritaire** : violation de l''art. 89 (procédure normale de révision)
- **Mais** : validation politique par le peuple
- **Conseil constitutionnel** se refuse à contrôler une loi adoptée par référendum (*Cons. const. 6 novembre 1962*) : *« expression directe de la souveraineté nationale »*

#### Le référendum d''initiative partagée (depuis `2008`)
- **`1/5`** des parlementaires + **`1/10`** des électeurs inscrits (`~4,7 millions`)
- Examen par le Parlement dans `6 mois`
- Si pas examiné : référendum
- **Bilan** : tentative pour les aéroports de Paris (`2019`) → échec (seuil non atteint)

### D. La dissolution de l''Assemblée nationale (`art. 12 C.`)

#### Le texte
> *« Le Président de la République peut, après consultation du Premier ministre et des Présidents des assemblées, prononcer la dissolution de l''Assemblée nationale. Les élections générales ont lieu vingt jours au moins et quarante jours au plus après la dissolution. »*

#### Conditions
- **Consultation** (non décision) du PM et des Présidents des assemblées
- **Aucun motif** à indiquer
- **Décision discrétionnaire** du Président

#### Limites
- **Pas dans l''année suivant** des élections législatives (suite à une dissolution)
- **Pas** pendant l''exercice de l''article 16
- **Pas** pendant l''intérim présidentiel
- **Pas** pendant un état d''urgence (en pratique, non prévu mais admis)

#### Les six dissolutions de la Ve République

1. **De Gaulle, 9 octobre 1962** : après motion de censure censurant le projet d''élection au SUD du Président
2. **De Gaulle, 30 mai 1968** : pendant la crise de Mai 1968, suite à la manifestation des Champs-Élysées
3. **Mitterrand, 22 mai 1981** : après son élection présidentielle (volonté d''avoir une majorité)
4. **Mitterrand, 14 mai 1988** : après sa réélection présidentielle
5. **Chirac, 21 avril 1997** : *« dissolution à risque »* — échec, victoire de la gauche, cohabitation
6. **Macron, 9 juin 2024** : dissolution après les élections européennes (RN majoritaire), AN éclatée en 3 blocs sans majorité

### E. Les pouvoirs exceptionnels (`art. 16 C.`)

#### Le texte
> *« Lorsque les institutions de la République, l''indépendance de la Nation, l''intégrité de son territoire ou l''exécution de ses engagements internationaux sont menacées d''une manière grave et immédiate et que le fonctionnement régulier des pouvoirs publics constitutionnels est interrompu, le Président de la République prend les mesures exigées par ces circonstances, après consultation officielle du Premier ministre, des Présidents des assemblées ainsi que du Conseil constitutionnel. »*

#### Conditions cumulatives
1. **Menace grave et immédiate** sur :
   - Les institutions
   - L''indépendance nationale
   - L''intégrité du territoire
   - Les engagements internationaux
2. **Interruption** du fonctionnement régulier des pouvoirs publics

#### Procédure
- **Consultation** (non décision) du PM, Présidents des assemblées, Conseil constitutionnel
- **Information** de la Nation par message
- **Le Parlement** se réunit de plein droit
- **L''Assemblée nationale ne peut être dissoute**

#### Contrôle (depuis la révision de `2008`)
- Après **`30 jours`**, le Conseil constitutionnel peut être saisi par `60 parlementaires`
- Après **`60 jours`**, il est saisi de plein droit
- Il se prononce sur la persistance des conditions

#### Une seule utilisation
**De Gaulle**, `23 avril au 29 septembre 1961`, **putsch des généraux** à Alger.
- Durée : **`5 mois`**
- **Critiquée** : maintenue après la fin de la crise

### F. Le message au Parlement (`art. 18 C.`)

#### Texte original
Le Président pouvait communiquer avec les chambres par un **message lu**, sans débat.

#### Révision de `2008`
> *« Le Président de la République peut prendre la parole devant le Parlement réuni à cet effet en Congrès. Sa déclaration peut donner lieu, hors sa présence, à un débat qui ne fait l''objet d''aucun vote. »*

#### Applications
- **Sarkozy** : 22 juin 2009 (Versailles, devant le Congrès)
- **Macron** : 9 juillet 2017, 3 juillet 2018 (devant le Congrès)

### G. Les nominations au Conseil constitutionnel

#### Article 56 C.
Le Président nomme **3 membres** sur 9 (les autres : Président AN, Président Sénat).

#### Mandat
**`9 ans`** non renouvelable.

#### Le président du Conseil constitutionnel
Désigné par le Président de la République parmi les membres.

## III. Les pouvoirs partagés (avec contreseing)

### A. Le pouvoir réglementaire et de nomination

#### La signature des décrets en Conseil des ministres (`art. 13 C.`)
- **Signés** par le Président
- **Contresignés** par le PM et ministres responsables

#### Les nominations aux emplois civils et militaires (`art. 13 C.`)
- **Hauts fonctionnaires** : préfets, ambassadeurs, recteurs, dirigeants d''entreprise publique…
- **Liste précisée** par décret en Conseil des ministres
- **Depuis 2008** : pour certains emplois, **avis** des commissions parlementaires (vote négatif des 3/5 = blocage)

### B. La promulgation des lois (`art. 10 C.`)
- **`15 jours`** suivant la transmission
- **Peut demander** une nouvelle délibération
- **Peut saisir** le Conseil constitutionnel

### C. La présidence des conseils

#### Conseil des ministres (`art. 9 C.`)
**Présidence hebdomadaire**.

#### Autres conseils
- **Conseils** et comités supérieurs de la **défense nationale**
- **CSM** en formation plénière (depuis `2008` : présidé par le 1er président de la Cour de cassation)

### D. Les compétences diplomatiques et militaires

#### Article 14 C.
**Accrédite** les ambassadeurs.

#### Article 15 C.
**Chef des armées**, préside les conseils de défense.

#### Article 52 C.
**Négocie et ratifie** les traités.

### E. Le droit de grâce individuelle (`art. 17 C.`)

#### Depuis `2008`
**Limité aux grâces individuelles** (suppression des grâces collectives).

#### Effets
- **Dispense** de tout ou partie de la peine
- **N''efface** pas la condamnation (différent de l''amnistie)

## IV. La responsabilité du Président

### A. L''irresponsabilité de principe (`art. 67 C.`)

Voir supra.

### B. Les exceptions

#### La compétence de la CPI (`art. 53-2 C.`)
- **Crimes** contre l''humanité
- **Génocide**
- **Crimes de guerre**

#### La destitution (`art. 68 C.`)
Réforme de `2007` (suite à la réforme constitutionnelle Vedel et au comité Avril).

##### Texte
> *« Le Président de la République ne peut être destitué qu''en cas de manquement à ses devoirs manifestement incompatible avec l''exercice de son mandat. La destitution est prononcée par le Parlement constitué en Haute Cour. »*

##### Procédure
1. **Proposition** de réunion adoptée par l''une des assemblées à la **majorité des 2/3**
2. **Décision** de réunion adoptée par l''autre assemblée à la **majorité des 2/3**
3. La Haute Cour (les deux assemblées) statue dans le **mois suivant la réunion**
4. **Destitution** à la **majorité des 2/3** des membres composant la Haute Cour
5. **Effet immédiat**

##### Aucune utilisation à ce jour

### C. La responsabilité politique

#### Pas de responsabilité juridique
Mais la **responsabilité politique** peut s''exprimer :
- **Élection** suivante : sanction populaire
- **Référendum** dont le Président engage sa propre responsabilité (méthode gaullienne)
- **Démission** volontaire (de Gaulle `1969`)

## V. L''évolution du rôle présidentiel

### A. La conception gaullienne : le Président arbitre

#### Le *« domaine réservé »*
**Affaires étrangères, défense**, présidence de la République = compétence présidentielle.

#### Le président « au-dessus des partis »

### B. La présidentialisation depuis 1962

#### Légitimité populaire directe
Le Président élu au SUD devient **chef de la majorité**.

#### Concordance majoritaire
**Effacement** du Premier ministre.

### C. Les cohabitations (1986-1988, 1993-1995, 1997-2002)

#### Effacement présidentiel
Le Premier ministre dirige.

#### Maintien du domaine réservé
**Mitterrand-Chirac** : tension sur les décrets de privatisation refusés (`1986`).

### D. L''ère du quinquennat (depuis 2002)

#### Hyperprésidence
- **Concordance** quasi-automatique
- **Domination** du PM par le Président
- Critiques : **« République élyséenne »**

## À retenir

**Statut** :
- Élection au **SUD** depuis `1962`, scrutin majoritaire à 2 tours
- **Mandat** de `5 ans` (depuis `2000`), **limité à 2 consécutifs** (depuis `2008`)
- **`500 parrainages`** d''élus
- **Irresponsabilité** pour les actes en qualité (`art. 67`), **inviolabilité** pendant le mandat

**Pouvoirs propres** (`art. 19`) :
- Nomination PM (`art. 8 al. 1`)
- Référendum (`art. 11`)
- Dissolution (`art. 12`)
- Article 16 (pouvoirs exceptionnels)
- Message au Parlement (`art. 18`)
- Saisine Conseil constitutionnel
- Nominations Conseil constitutionnel (3 membres)

**Pouvoirs partagés** (avec contreseing) :
- Signature des décrets en Conseil des ministres (`art. 13`)
- Nominations (`art. 13`)
- Promulgation des lois (`art. 10`)
- Présidence du Conseil des ministres (`art. 9`)
- Chef des armées (`art. 15`)
- Négociation des traités (`art. 52`)
- Grâce individuelle (`art. 17`)

**Responsabilité** :
- **Irresponsable** pour les actes en qualité
- **Exceptions** : CPI (`art. 53-2`), destitution par la Haute Cour (`art. 68`, depuis `2007`)

**Évolution** : du Président arbitre (`1958`) à l''hyperprésident (depuis `2002`) ; cohabitations comme parenthèses parlementaires.'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 3 - LE GOUVERNEMENT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Gouvernement : composition, fonctions et responsabilité', 'Chapitre 3 - Le Gouvernement',
       'Composition (PM, ministres), fonctionnement (Conseil des ministres), missions (art. 20-21), responsabilité (art. 49).',
       array['Article 20', 'Article 21', 'Article 22', 'Article 23', 'Premier ministre', 'Conseil des ministres', 'Contreseing', 'Pouvoir réglementaire', 'Domaine de la loi', 'Article 49', 'Responsabilité collective'],
       28, 3,
'# Le Gouvernement : composition, fonctions et responsabilité

## Introduction

Le **Gouvernement** est l''organe **central de l''exécutif** en droit français. À côté du Président de la République, il détient le pouvoir exécutif au sens fonctionnel : il **détermine et conduit la politique de la Nation** (`art. 20 C.`), dispose de l''**administration** et de la **force armée**, et exerce le **pouvoir réglementaire**. Son chef, le **Premier ministre**, est nommé par le Président mais est responsable devant le Parlement. Cette responsabilité fait du régime de la Ve République un régime fondamentalement **parlementaire**, malgré la présidentialisation de fait.

> **Article 20 C.** : *« Le Gouvernement détermine et conduit la politique de la Nation. Il dispose de l''administration et de la force armée. Il est responsable devant le Parlement dans les conditions et suivant les procédures prévues aux articles 49 et 50. »*

## I. La composition du Gouvernement

### A. Le Premier ministre (`art. 8 al. 1 C.`)

#### Nomination
Voir fiche précédente. **Discrétion** présidentielle théorique, **contrainte** par la majorité parlementaire.

#### Caractères de la fonction
- **Chef du Gouvernement**
- **Responsable** devant l''Assemblée nationale
- **Acteur politique** central en cohabitation, **exécutant** en concordance

#### La fin des fonctions
- **Démission** présentée au Président (`art. 8 al. 1`)
- **Démission politique** sur demande présidentielle (fréquent)
- **Démission** après motion de censure
- **Démission** automatique après élections législatives (par convention)

#### Les Premiers ministres de la Ve République (sélection)
- **Michel Debré** (`1959-1962`)
- **Georges Pompidou** (`1962-1968`)
- **Maurice Couve de Murville** (`1968-1969`)
- **Jacques Chaban-Delmas** (`1969-1972`)
- **Pierre Messmer** (`1972-1974`)
- **Jacques Chirac** (`1974-1976`, `1986-1988`)
- **Raymond Barre** (`1976-1981`)
- **Pierre Mauroy** (`1981-1984`)
- **Laurent Fabius** (`1984-1986`)
- **Michel Rocard** (`1988-1991`)
- **Édith Cresson** (`1991-1992`) — **première femme PM**
- **Pierre Bérégovoy** (`1992-1993`)
- **Édouard Balladur** (`1993-1995`)
- **Alain Juppé** (`1995-1997`)
- **Lionel Jospin** (`1997-2002`)
- **Jean-Pierre Raffarin** (`2002-2005`)
- **Dominique de Villepin** (`2005-2007`)
- **François Fillon** (`2007-2012`)
- **Jean-Marc Ayrault** (`2012-2014`)
- **Manuel Valls** (`2014-2016`)
- **Bernard Cazeneuve** (`2016-2017`)
- **Édouard Philippe** (`2017-2020`)
- **Jean Castex** (`2020-2022`)
- **Élisabeth Borne** (`2022-2024`)
- **Gabriel Attal** (`2024`)
- **Michel Barnier** (`2024`)
- **François Bayrou** (`depuis 2024`)

### B. Les ministres

#### Nomination (`art. 8 al. 2 C.`)
> *« Sur la proposition du Premier ministre, [le Président] nomme les autres membres du Gouvernement et met fin à leurs fonctions. »*

#### Procédure
- **Proposition** du PM
- **Décision** du Président
- **Décret** signé du Président, contresigné par le PM

#### Catégories
##### Ministres d''État
- **Préséance** protocolaire
- Souvent **personnalités politiques** importantes
- Pas systématique selon les gouvernements

##### Ministres
- **Membres** du Gouvernement à part entière
- **Préside** un département ministériel

##### Ministres délégués
- **Auprès d''un ministre** ou du PM
- **Compétence** spécifique

##### Secrétaires d''État
- **Rang inférieur**
- **Ne siègent pas** au Conseil des ministres sauf invitation pour les affaires les concernant

#### Le statut juridique des ministres

##### Incompatibilité parlementaire (`art. 23 C.`)
> *« Les fonctions de membre du Gouvernement sont incompatibles avec l''exercice de tout mandat parlementaire, de toute fonction de représentation professionnelle à caractère national et de tout emploi public ou de toute activité professionnelle. »*

- Un **parlementaire nommé ministre** voit son siège pris par son **suppléant**
- Pas de cumul avec un emploi public ou privé
- **Loi du 13 octobre 2014** : prohibition également du cumul avec un mandat **exécutif local** important

##### Responsabilité pénale spécifique : la CJR (`art. 68-1 et 68-2 C.`)
- **Cour de justice de la République** (CJR), créée en `1993`
- Compétente pour les **actes accomplis dans l''exercice des fonctions ministérielles** qualifiés de crimes ou délits
- **Composition** : 15 juges (12 parlementaires + 3 magistrats de la Cour de cassation)
- **Saisine** par le **Procureur général** près la Cour de cassation ou par toute personne se prétendant lésée (commission des requêtes)
- **Procédure** : instruction par la commission d''instruction puis jugement par la formation de jugement

##### Affaires marquantes
- **Affaire du sang contaminé** : Laurent Fabius, Georgina Dufoix, Edmond Hervé (relaxe pour les deux premiers, dispense de peine pour Hervé en `1999`)
- **Affaire Christine Lagarde** : condamnation pour négligence (sans peine) en `2016`

##### Critiques
- **Politisation** de la composition
- **Lenteur**
- Projets de **suppression** récurrents

## II. Les organes du Gouvernement

### A. Le Conseil des ministres (`art. 9 C.`)

#### Présidence
> *« Le Président de la République préside le conseil des ministres. »*

#### Composition
- **Président** : Président de la République
- **Premier ministre**
- **Ministres** (les **secrétaires d''État** n''y assistent que pour les sujets les concernant)

#### Périodicité
**Hebdomadaire**, traditionnellement le **mercredi matin** (autour de 10h).

#### Compétences
- **Délibération** sur les **projets de loi** avant dépôt au Parlement
- **Décrets en Conseil des ministres** (`art. 13`)
- **Nominations** aux emplois supérieurs (`art. 13`)
- **Engagement de responsabilité** sur 49.3 délibéré en Conseil des ministres

### B. Les autres formations

#### Le Conseil de cabinet
- **Sans le Président**
- Présidé par le **PM**
- **Prépare** le Conseil des ministres
- **Rare en pratique**

#### Les Conseils restreints
- Convoqués par le **Président** sur un sujet précis
- Quelques ministres concernés

#### Les Comités interministériels
- Présidés par le **PM**
- **Coordination** sur un domaine (CIM jeunesse, CIM emploi…)

#### Le Conseil de défense
- Présidé par le **Président**
- **Sujets** de défense et sécurité
- Utilisation massive sous **Emmanuel Macron** (Covid-19, terrorisme, Ukraine)

## III. Les missions et fonctions du Gouvernement

### A. La détermination et la conduite de la politique de la Nation (`art. 20 C.`)

#### Portée
- **Définition** des orientations politiques
- **Mise en œuvre** des décisions
- **Responsabilité** politique devant le Parlement

#### Limites
- **En concordance** : politique souvent dictée par l''Élysée
- **En cohabitation** : le Gouvernement et le PM dirigent effectivement

### B. La disposition de l''administration et de la force armée (`art. 20 C.`)

#### L''administration
- **Pouvoir hiérarchique** sur les fonctionnaires
- **Direction** des services centraux et déconcentrés
- **Nominations** (sauf hauts emplois en Conseil des ministres)

#### La force armée
- **Sous l''autorité** du Premier ministre (`art. 21 al. 1`) : *« le Premier ministre est responsable de la défense nationale »*
- **Mais** : le Président est *« chef des armées »* (`art. 15`)
- **Tension** apparente : en pratique, le Président décide en dernier ressort

### C. Le pouvoir réglementaire (`art. 21 et 37 C.`)

#### Le pouvoir réglementaire du PM (`art. 21 al. 1`)
> *« Le Premier ministre […] exerce le pouvoir réglementaire. »*

##### Décrets simples
**Signés** par le PM, **contresignés** par les ministres responsables.

##### Décrets en Conseil d''État
**Préparés** après avis du Conseil d''État.

#### Le pouvoir réglementaire autonome (`art. 37 C.`)
- **Domaine** : matières non listées à l''article 34
- **Forme** : décrets ou arrêtés
- **Contrôle** : par le Conseil d''État (REP, contentieux)

#### La délégalisation (`art. 37 al. 2`)
- Un texte législatif intervenu dans le **domaine réglementaire** peut être **délégalisé** par décret pris après avis du Conseil constitutionnel

#### Les pouvoirs réglementaires des ministres
- **Très limités** : organisation interne, application des lois
- Le PM est le **principal détenteur** du pouvoir réglementaire

### D. Les fonctions législatives

#### L''initiative législative (`art. 39 C.`)
- **Projets de loi** déposés par le Gouvernement
- **Présentation** au Conseil d''État pour avis (sauf projets de loi de finances)
- **Délibération** en Conseil des ministres

#### La participation à la procédure législative
- **Membres** du Gouvernement assistant aux débats parlementaires
- **Droit d''amendement** (`art. 44 C.`)
- **Vote bloqué** (`art. 44 al. 3`) : *« le Gouvernement peut demander à la chambre qui en est saisie de se prononcer par un seul vote sur tout ou partie du texte »*

#### L''ordre du jour (`art. 48 C.`)
- **Avant 2008** : ordre du jour maîtrisé par le Gouvernement
- **Depuis 2008** : partage avec le Parlement (`2 semaines` sur 4 pour le Gouvernement)
- **Priorité** maintenue pour les projets de loi de finances et de financement de la SS

#### L''engagement de responsabilité (`art. 49 al. 3`) — voir infra

#### Les ordonnances (`art. 38 C.`)
- **Habilitation** législative par le Parlement
- **Délai** d''adoption
- **Ratification** explicite obligatoire depuis la **révision de 2008** (avant : ratification implicite possible)
- **Procédure** très utilisée (loi Travail El Khomri, loi Macron…)

## IV. La responsabilité du Gouvernement (`art. 49 C.`)

### A. Le principe : la responsabilité collective

#### Article 20 al. 3 C.
> *« Il est responsable devant le Parlement dans les conditions et suivant les procédures prévues aux articles 49 et 50. »*

#### Caractères
- **Politique** (pas juridique)
- **Collective** (tout le Gouvernement)
- **Devant l''Assemblée nationale** seulement (le Sénat ne peut pas renverser le Gouvernement)

### B. La question de confiance (`art. 49 al. 1`)

#### Texte
> *« Le Premier ministre, après délibération du conseil des ministres, engage devant l''Assemblée nationale la responsabilité du Gouvernement sur son programme ou éventuellement sur une déclaration de politique générale. »*

#### Caractères
- **Engagement spontané** du PM
- **Vote** à la majorité simple
- **Démission** automatique en cas de refus

#### Pratique
- **Souvent** utilisée à la prise de fonctions par les PM
- **Rituel** politique
- **N''a jamais conduit** à un renversement du Gouvernement à la Ve République

### C. La motion de censure (`art. 49 al. 2`)

#### Texte
> *« L''Assemblée nationale met en cause la responsabilité du Gouvernement par le vote d''une motion de censure. Une telle motion n''est recevable que si elle est signée par un dixième au moins des membres de l''Assemblée nationale. Le vote ne peut avoir lieu que quarante-huit heures après son dépôt. Seuls sont recensés les votes favorables à la motion de censure qui ne peut être adoptée qu''à la majorité des membres composant l''Assemblée. »*

#### Caractères du parlementarisme rationalisé
- **Initiative limitée** : `1/10` des députés au minimum (soit 58 députés sur 577)
- **Délai** : `48 heures` minimum entre dépôt et vote
- **Comptage des votes favorables seulement** : les abstentions et absences favorisent le Gouvernement
- **Majorité absolue** des membres composant l''Assemblée (`289 voix sur 577`)
- **Limitation** : un député ne peut signer plus de 3 motions par session ordinaire (1 en session extraordinaire)

#### Bilan
- **Une seule motion de censure adoptée à la Ve République** :
- **5 octobre 1962** : motion de censure contre le gouvernement **Pompidou** suite au référendum sur le SUD du Président. `280 voix` pour (majorité requise : `241`).
- **Conséquence** : démission du Gouvernement, **dissolution** par De Gaulle, élections législatives.

#### Tentatives notables
- **Édouard Balladur** (`1986-1988`, sous Chirac) : `7 motions`, aucune adoptée
- **Lionel Jospin** : `6 motions`
- **Élisabeth Borne** : motion contre la **réforme des retraites** (`mars 2023`), `278 voix` (manque `9 voix`)
- Sous Michel Barnier puis Bayrou : motions multiples (record de motions sous le Gouvernement Barnier)

### D. L''engagement de responsabilité sur un texte (`art. 49 al. 3`)

#### Texte
> *« Le Premier ministre peut, après délibération du conseil des ministres, engager la responsabilité du Gouvernement devant l''Assemblée nationale sur le vote d''un projet de loi de finances ou de financement de la sécurité sociale. Dans ce cas, ce projet est considéré comme adopté, sauf si une motion de censure, déposée dans les vingt-quatre heures qui suivent, est votée dans les conditions prévues à l''alinéa précédent. Le Premier ministre peut, en outre, recourir à cette procédure pour un autre projet ou une proposition de loi par session. »*

#### Mécanisme
- **Le PM engage la responsabilité** du Gouvernement sur un texte
- Le texte est **automatiquement adopté** sans vote
- **Sauf** dépôt d''une motion de censure dans les `24 heures` et adoption à la **majorité absolue**

#### Limites (depuis la réforme de `2008`)
- **Lois de finances** : sans limite
- **Lois de financement** de la sécurité sociale : sans limite
- **Autres textes** : **`1 par session`** (sauf budget)

#### Bilan
- **`100+ utilisations`** depuis `1958`
- **Premier utilisateur** : Georges Pompidou (`24 octobre 1962`)
- **Recordman** : Michel Rocard (`28 fois`)
- **Élisabeth Borne** : utilisation massive (`23 fois`), notamment pour la réforme des retraites (`mars 2023`)
- **Michel Barnier** : utilisation pour le budget `2025`, débouchant sur la censure du gouvernement (`4 décembre 2024`) — **deuxième motion de censure adoptée** à la Ve République, 62 ans après la première !

#### Réforme de `2008`
- **Limitation** à un texte par session ordinaire (sauf budget)
- **Critique** : marginalise le débat parlementaire

### E. La déclaration de politique générale au Sénat (`art. 49 al. 4`)

#### Caractères
- Le PM peut faire une **déclaration de politique générale** au Sénat
- **Le Sénat approuve ou non**, mais **sans effet juridique** : il ne peut pas renverser le Gouvernement
- **Politique** seulement

## V. La cessation des fonctions du Gouvernement

### A. La démission collective

#### Article 50 C.
> *« Lorsque l''Assemblée nationale adopte une motion de censure ou lorsqu''elle désapprouve le programme ou une déclaration de politique générale du Gouvernement, le Premier ministre doit remettre au Président de la République la démission du Gouvernement. »*

### B. La démission spontanée

#### Pratique
- **Démission** présentée par le PM à la demande du Président
- **Démission** après élections (par convention)
- **Démission** pour raisons personnelles

### C. La fin du mandat présidentiel
**Démission** automatique du Gouvernement à la prise de fonctions du nouveau Président.

## VI. Le statut des actes du Gouvernement

### A. Les actes individuels et collectifs

#### Actes du Premier ministre
- **Décrets** simples
- **Arrêtés** ministériels

#### Actes des ministres
- **Arrêtés ministériels**
- **Circulaires** d''interprétation

### B. Le contreseing (`art. 19 et 22 C.`)

#### Article 19 (Président)
- **Pouvoirs partagés** : contresignés par le **PM** et les ministres responsables

#### Article 22 (PM)
- Les actes du PM sont **contresignés** par les ministres chargés de leur **exécution**

### C. Le contrôle juridictionnel
- **Conseil d''État** : recours pour excès de pouvoir
- **Conseil constitutionnel** : sur les lois et certains actes
- **Cour de cassation** : pour les contentieux civils

## À retenir

**Le Gouvernement** : **Premier ministre** + **ministres**.

**Article 20 C.** : *« Le Gouvernement détermine et conduit la politique de la Nation. »*

**Composition** :
- **PM** nommé par le Président (`art. 8 al. 1`)
- **Ministres** nommés sur proposition du PM (`art. 8 al. 2`)
- **Incompatibilité** parlementaire (`art. 23`)
- **Responsabilité pénale** devant la **CJR** (`art. 68-1, 68-2`, depuis `1993`)

**Conseil des ministres** : hebdomadaire (mercredi), présidé par le Président, délibère les projets de loi et décrets importants.

**Pouvoirs du Gouvernement** :
- **Détermine et conduit** la politique
- **Pouvoir réglementaire** (PM, `art. 21`)
- **Pouvoir réglementaire autonome** (`art. 37`)
- **Initiative législative** (projets de loi)
- **Maîtrise** d''une partie de l''ordre du jour parlementaire

**Responsabilité collective** devant l''Assemblée nationale (`art. 49`) :
- **Question de confiance** (`art. 49 al. 1`)
- **Motion de censure** (`art. 49 al. 2`) : 1/10 des députés, 48h, majorité absolue. **Une seule adoptée** historiquement (`Pompidou, 5 oct. 1962`), puis **Barnier (4 déc. 2024)**.
- **Engagement de responsabilité sur un texte** (`art. 49 al. 3`) : adoption sans vote sauf motion de censure dans `24h`. Limité à `1 texte/session` (sauf budget) depuis `2008`.

**Cessation** : motion de censure adoptée, désapprobation 49.1, démission spontanée, fin du mandat présidentiel.'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 4 - LE PARLEMENT : ORGANISATION ET STATUT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Parlement : organisation et statut des parlementaires', 'Chapitre 4 - Le Parlement',
       'Bicaméralisme, AN et Sénat (composition, mode de scrutin), organisation interne, statut des parlementaires.',
       array['Bicaméralisme', 'Assemblée nationale', 'Sénat', 'Article 24', 'Article 25', 'Article 26', 'Article 27', 'Scrutin majoritaire', 'Suffrage indirect', 'Immunité parlementaire', 'Irresponsabilité', 'Inviolabilité', 'Incompatibilités', 'Commissions permanentes', 'Groupes politiques'],
       28, 4,
'# Le Parlement : organisation et statut des parlementaires

## Introduction

Le **Parlement** est l''organe **représentatif** de la souveraineté nationale. Il est **bicaméral** : composé de l''**Assemblée nationale** et du **Sénat**. Dans la conception française, l''Assemblée nationale, élue au suffrage universel direct, représente la **Nation tout entière** ; le Sénat, élu au suffrage indirect, représente les **collectivités territoriales** (`art. 24 C.`). Le statut des parlementaires repose sur un équilibre entre **indépendance** (immunités) et **moralisation** (incompatibilités, contrôle de l''argent en politique). Cette fiche présente l''organisation du Parlement et le statut individuel des parlementaires.

> **Article 24 C.** : *« Le Parlement vote la loi. Il contrôle l''action du Gouvernement. Il évalue les politiques publiques. Il comprend l''Assemblée nationale et le Sénat. Les députés à l''Assemblée nationale, dont le nombre ne peut excéder cinq cent soixante-dix-sept, sont élus au suffrage direct. Le Sénat, dont le nombre de membres ne peut excéder trois cent quarante-huit, est élu au suffrage indirect. Il assure la représentation des collectivités territoriales de la République. Les Français établis hors de France sont représentés à l''Assemblée nationale et au Sénat. »*

## I. L''Assemblée nationale

### A. La composition

#### Nombre de députés
- **`577 députés`** (depuis `1986`)
- **`11 députés`** représentant les Français établis hors de France (depuis `2012`)
- Maximum constitutionnel (depuis `2008`) : **`577`**

#### Répartition territoriale
- **Découpage** en circonscriptions
- **Révision** régulière selon les évolutions démographiques
- **Dernier découpage** : `2010` (ordonnance et loi de validation)
- **Censuré pour certaines circonscriptions** par le Conseil constitutionnel

### B. Le mode d''élection

#### Scrutin majoritaire uninominal à deux tours
- **Par circonscription** unique
- **1^er^ tour** : élu si majorité absolue et au moins `25 %` des inscrits
- **2^e^ tour** : qualification si au moins `12,5 %` des inscrits

#### Histoire
- **Premier choix de 1958** (rupture avec la proportionnelle de la IVe République)
- **Exception** : élections de `1986` à la proportionnelle (loi de `1985`)
- **Retour** au scrutin majoritaire pour `1988`

#### Évolution
- **Proposition** récurrente de proportionnelle (totale ou partielle)
- **François Mitterrand** (`1985`), **François Hollande** (`2017`) ont projeté une dose
- **Aucune** mise en œuvre durable

#### Effets
- **Bipolarisation** historique (Gauche/Droite jusqu''à `2017`)
- **Surreprésentation** du parti majoritaire
- **Crise** depuis `2017` : éclatement et difficultés à constituer une majorité (cas extrême depuis `2024`)

### C. La durée du mandat

#### Cinq ans (`art. 24 al. 3`)
- **5 ans** sauf dissolution
- **Renouvellement** intégral
- **Législature** : période entre deux élections

#### Dissolution (`art. 12`)
Voir fiche 2.

## II. Le Sénat

### A. La composition

#### Nombre de sénateurs
- **`348 sénateurs`** (maximum constitutionnel)
- **`12 sénateurs`** pour les Français de l''étranger

#### Caractère représentatif
- **Représentation** des collectivités territoriales (`art. 24 al. 4`)
- **Conséquence** : surreprésentation des collectivités rurales

### B. Le mode d''élection

#### Suffrage universel indirect
- **Par les grands électeurs** : députés, conseillers régionaux, départementaux, municipaux
- **`162 000 grands électeurs` environ**
- **Collège fortement marqué** par les élus locaux (`95 %` du collège)

#### Renouvellement par moitié tous les 3 ans
- **Mandat** : `6 ans`
- **Renouvellement** progressif : série 1 puis série 2 alternativement

#### Modes de scrutin variables
- **Départements ≤ 2 sénateurs** : scrutin majoritaire à 2 tours
- **Départements ≥ 3 sénateurs** : scrutin proportionnel

### C. Le caractère politique

#### Une chambre traditionnellement conservatrice
- **Collège électoral** dominé par les **petites communes** (rurales)
- **Majorité de droite** habituelle (jusqu''aux récentes alternances)
- **Alternance** rare : `2011` (gauche), `2014` (retour droite)

#### Les Présidents du Sénat
- **Alain Poher** (`1968-1992`) — durée record
- **Gérard Larcher** (depuis `2014`, plusieurs mandats)

## III. Les Français établis hors de France

### A. Représentation à l''Assemblée nationale
- **`11 circonscriptions` à l''étranger** (depuis `2012`)
- **Élection** des députés des Français de l''étranger

### B. Représentation au Sénat
- **`12 sénateurs`** élus par les **conseillers consulaires** (eux-mêmes élus par les Français résidant à l''étranger)

### C. L''Assemblée des Français de l''étranger
- **`90 membres`** élus
- **Avis** sur les questions intéressant les Français de l''étranger

## IV. L''organisation interne du Parlement

### A. La présidence

#### Président de l''Assemblée nationale
- **Élu** pour la **durée de la législature**
- **`4e personnage`** de l''État (après Président, PM, Président du Sénat)
- **Pouvoirs** :
  - Présidence des séances
  - Garant du règlement
  - Membre du **Conseil constitutionnel** (nomination)
  - Saisine du Conseil constitutionnel

#### Président du Sénat
- **Élu** après chaque renouvellement (tous les 3 ans)
- **`2e personnage`** de l''État
- **Successeur** du Président de la République en cas de vacance (`art. 7`)
- **Pouvoirs** :
  - Présidence
  - Saisine du Conseil constitutionnel
  - Nomination de 3 membres du Conseil constitutionnel

### B. Le Bureau

#### Composition
- **Président**
- **Vice-présidents** (6 à l''AN, 7 ou 8 au Sénat)
- **Secrétaires**
- **Questeurs** (gestion administrative et financière)

#### Rôle
**Organe collégial de direction** de chaque assemblée.

### C. La Conférence des présidents

#### Composition
- **Président** de l''assemblée
- **Vice-présidents**
- **Présidents des commissions**
- **Présidents des groupes politiques**

#### Compétences
- **Organisation** des travaux
- **Ordre du jour** (avec le Gouvernement)
- **Conférence des présidents** = lieu de **négociation** politique

### D. Les commissions parlementaires

#### Commissions permanentes
- **`8` maximum** (depuis la révision de `2008`, auparavant `6`)
- **Préparent** l''examen des textes
- **Rapports** publics

#### Liste actuelle (Assemblée nationale)
1. **Affaires culturelles et éducation**
2. **Affaires économiques**
3. **Affaires étrangères**
4. **Affaires sociales**
5. **Défense nationale**
6. **Développement durable et aménagement du territoire**
7. **Finances**
8. **Lois constitutionnelles, législation et administration générale**

#### Commissions spéciales
- **Pour un texte particulier**
- Création par décision de la conférence des présidents

#### Commissions d''enquête (`art. 51-2 C.`)
- **Investigations** sur un fait précis
- **Durée** : 6 mois maximum
- **Pouvoirs** : auditions sous serment
- **Exemples** : « affaire Benalla » (`2018`), Covid-19 (`2020`)

#### Missions d''information
- **Investigations** plus souples
- **Rapports** publics

### E. Les groupes politiques

#### Constitution
- **`15 députés` minimum** à l''AN (depuis la réforme de `2009`, auparavant 20)
- **`10 sénateurs` minimum** au Sénat

#### Rôle
- **Affirmation** politique
- **Droits spécifiques** : ordre du jour, niches parlementaires
- **Statut** :
  - **Majoritaire** vs **opposition**
  - Depuis `2008` : **droits spécifiques** des groupes d''opposition

### F. Les sessions

#### La session ordinaire (`art. 28 C.`, depuis `1995`)
- **Du 1^er^ octobre au 30 juin** (avant `1995` : deux sessions de 3 mois)
- **`120 jours de séance` maximum** par session ordinaire
- **Décompte** des jours par chaque assemblée

#### Les sessions extraordinaires (`art. 29-30 C.`)
- **Convoquées par le Président de la République** sur demande du **PM** ou de la **majorité** des députés
- **Ordre du jour** déterminé
- **Décrets** présidentiels d''ouverture et de clôture

#### Les sessions de plein droit
- **Article 12** : après dissolution
- **Article 16** : pendant les pouvoirs exceptionnels
- **Article 28** al. 2 : si nécessaire à la séance d''ouverture

## V. Le statut des parlementaires

### A. L''indépendance des parlementaires

#### Le mandat représentatif (`art. 27 C.`)
> *« Tout mandat impératif est nul. Le droit de vote des membres du Parlement est personnel. La loi organique peut autoriser exceptionnellement la délégation de vote. Dans ce cas, nul ne peut recevoir délégation de plus d''un mandat. »*

##### Conséquence
- Le **parlementaire représente la Nation**, non ses électeurs spécifiques
- Il **vote selon sa conscience**
- **Pas** d''instructions liantes

##### Pratique
- **Discipline** des groupes politiques (whip system limité en France)
- **Risque** d''exclusion du groupe en cas de vote contraire

#### L''indemnité parlementaire

##### Composantes
- **Indemnité de base** : ~`5 800 € net` mensuels
- **Indemnité de fonction**
- **Frais de mandat** (encadrés depuis `2017`) : `5 400 €` mensuels

##### Encadrement
- **Loi du 15 septembre 2017** sur la confiance dans la vie politique
- **Interdiction** des emplois familiaux
- **HATVP** (Haute autorité pour la transparence de la vie publique)

### B. Les immunités parlementaires (`art. 26 C.`)

#### L''irresponsabilité (`art. 26 al. 1`)
> *« Aucun membre du Parlement ne peut être poursuivi, recherché, arrêté, détenu ou jugé à l''occasion des opinions ou votes émis par lui dans l''exercice de ses fonctions. »*

##### Domaine
- **Discours** prononcés en séance
- **Votes**
- **Rapports**
- **Questions**

##### Durée
- **À vie** pour les actes de l''époque

##### Exclusions
- **Propos** tenus en dehors des fonctions
- **Activités** purement politiques (réunions, médias)

#### L''inviolabilité (`art. 26 al. 2 et 3`)

##### Pendant les sessions
> *« Aucun membre du Parlement ne peut faire l''objet, en matière criminelle ou correctionnelle, d''une arrestation ou de toute autre mesure privative ou restrictive de liberté qu''avec l''autorisation du Bureau de l''assemblée dont il fait partie. »*

##### Exceptions
- **Crime ou délit flagrant**
- **Condamnation définitive**

##### Hors session
- **Procédures judiciaires** possibles
- Mais **arrestation** soumise à autorisation **du Bureau**

##### Suspension
- L''assemblée peut **suspendre** les poursuites ou la détention pour la **durée de la session**

##### Exemples
- **Manuel Aeschlimann** : levée de l''immunité (`2007`)
- **Jérôme Lavrilleux** : levée demandée et accordée (`2014`)

### C. Les incompatibilités

#### Avec les fonctions ministérielles (`art. 23 C.`)
Voir fiche 3.

#### Avec d''autres mandats (loi du 14 février 2014, en vigueur 2017)
- **Interdiction** du cumul avec une fonction exécutive locale (maire, président de département, etc.)
- **Loi très contestée** mais entrée en vigueur

#### Avec des fonctions ou activités professionnelles
- **Pas** de fonction publique active
- **Pas** de direction d''entreprise vivant principalement de marchés publics
- **Encadrement** des activités de conseil et de lobbying

### D. Les contrôles déontologiques

#### Le déontologue
- **Présent** dans chaque assemblée depuis `2011`
- **Conseille** les parlementaires
- **Veille** au respect des règles

#### La HATVP
- **Déclarations** d''intérêts et de patrimoine
- **Publicité** des déclarations
- **Contrôles**

#### Les sanctions
- **Rappel à l''ordre**
- **Censure**
- **Censure** avec exclusion temporaire
- **Atteinte** au mandat (rare)

## VI. Les rapports entre les deux assemblées

### A. La fonction législative
Voir fiche 5.

### B. La fonction de contrôle
Le **Sénat** a moins de pouvoirs en matière de contrôle (pas de motion de censure du Gouvernement).

### C. Les nominations
- **Conseil constitutionnel** : 3 nommés par chaque Président
- **CSM** : avis sur les nominations
- **Défenseur des droits** : commission paritaire

### D. La révision constitutionnelle (`art. 89`)
- Accord nécessaire des **deux assemblées** en termes identiques
- Pas de **dernier mot** de l''AN

## VII. La modernisation du Parlement

### A. La révision de `2008` : renforcement du Parlement

#### Domaine de la loi élargi
- **Article 34** étendu (libertés, fiscalité…)

#### Ordre du jour partagé
- **2 semaines** sur 4 pour le Gouvernement
- **2 semaines** pour le Parlement

#### Droits de l''opposition
- **Niche parlementaire** réservée à l''opposition (1 jour de séance par mois)
- **Présidence** des commissions d''enquête

#### Limitation du 49.3
- **`1 texte par session`** (sauf budget)

### B. La transparence et la modernisation

#### Diffusion des débats
- **LCP** (La Chaîne parlementaire)
- **Streaming** sur Internet

#### Open data
- **Données** sur les votes, les présences, les déclarations…
- **Sites associatifs** : NosDéputés.fr, NosSénateurs.fr

### C. Les défis actuels

#### Crise de la représentativité
- **Abstention**
- **Méfiance** envers les élus
- **Volatilité**

#### Élections de 2024
- **AN éclatée** en 3 blocs sans majorité absolue
- **Cohabitation conflictuelle**
- **Instabilité** gouvernementale

## À retenir

**Bicaméralisme** : **Assemblée nationale** (`577`, suffrage direct, 5 ans) + **Sénat** (`348`, suffrage indirect, 6 ans, renouvellement par moitié tous les 3 ans).

**Article 24 C.** : le Parlement vote la loi, contrôle l''action du Gouvernement, évalue les politiques publiques.

**Mode de scrutin AN** : majoritaire uninominal à 2 tours par circonscription.

**Mode de scrutin Sénat** : indirect, par les grands électeurs (162 000), majoritaire ou proportionnel selon le département.

**Organisation interne** :
- **Président** de chaque assemblée
- **Bureau**
- **Conférence des présidents**
- **8 commissions permanentes** (depuis `2008`)
- **Groupes politiques** (`15 députés` mini à l''AN)
- **Sessions** : ordinaire du 1^er^ octobre au 30 juin (depuis `1995`), extraordinaires

**Statut des parlementaires** :
- **Mandat représentatif** (`art. 27`)
- **Irresponsabilité** (`art. 26 al. 1`) pour les actes en fonctions
- **Inviolabilité** (`art. 26 al. 2, 3`) : autorisation du Bureau pour les mesures privatives de liberté
- **Incompatibilités** : ministériel, mandat exécutif local, fonction publique active, direction d''entreprises de marchés publics

**Révision de `2008`** : renforcement du Parlement (ordre du jour partagé, droits de l''opposition, limitation du 49.3).'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 5 - LA PROCÉDURE LÉGISLATIVE ET LE CONTRÔLE PARLEMENTAIRE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La procédure législative et le contrôle parlementaire', 'Chapitre 5 - Fonctions du Parlement',
       'Initiative législative, navette, CMP, dernier mot AN, vote bloqué, 49.3 ; questions, commissions d''enquête, évaluation.',
       array['Article 34', 'Article 37', 'Article 39', 'Article 44', 'Article 45', 'Initiative législative', 'Navette', 'CMP', 'Vote bloqué', 'Procédure accélérée', 'Questions au Gouvernement', 'Commissions d''enquête', 'Évaluation'],
       30, 5,
'# La procédure législative et le contrôle parlementaire

## Introduction

Le **Parlement** exerce deux fonctions principales : **voter la loi** et **contrôler l''action du Gouvernement** (`art. 24 C.`). Ces deux fonctions sont profondément organisées par le **« parlementarisme rationalisé »**, signature de la Ve République, qui vise à éviter les blocages de la IVe République tout en garantissant la responsabilité gouvernementale. Cette fiche présente la procédure législative dans toutes ses étapes (initiative, navette, sanctions) et les moyens de contrôle dont dispose le Parlement.

> **Article 24 al. 1 C.** : *« Le Parlement vote la loi. Il contrôle l''action du Gouvernement. Il évalue les politiques publiques. »*

## I. Le domaine de la loi (`art. 34 C.`)

### A. L''innovation de 1958

#### Rupture avec la tradition
- **Sous la IIIe et la IVe République** : compétence générale du Parlement
- **Sous la Ve République** : **compétence d''attribution** — la loi est limitée à un domaine énuméré

#### La justification
- Lutter contre **l''inflation législative**
- Garantir un **pouvoir réglementaire** autonome au Gouvernement
- **Rationaliser** le parlementarisme

### B. Le contenu de l''article 34

#### Domaines où la loi **fixe les règles**
- **Droits civiques et garanties fondamentales** accordées aux citoyens
- **Nationalité**, état et capacité des personnes, régimes matrimoniaux, successions et libéralités
- **Détermination** des crimes et délits, peines, procédure pénale
- **Impôts** : assiette, taux, modalités de recouvrement
- **Émission de la monnaie**
- **Régime électoral** des assemblées parlementaires et des assemblées locales

#### Domaines où la loi **détermine les principes fondamentaux**
- **Organisation générale** de la défense nationale
- **Libre administration** des collectivités territoriales
- **Enseignement**
- **Préservation de l''environnement**
- **Régime de la propriété**, des droits réels, des obligations civiles et commerciales
- **Droit du travail**, droit syndical, sécurité sociale

#### Lois de programmation (révision de 2008)
> *« Des lois de programmation déterminent les objectifs de l''action de l''État. »*

#### Domaines législatifs élargis depuis 1958
- **`1996`** : finances de la sécurité sociale (LFSS)
- **`2008`** : nombreux domaines (libertés, environnement, fiscalité…)

### C. La portée du domaine de la loi

#### La frontière loi/règlement
- **Article 37 C.** : *« Les matières autres que celles qui sont du domaine de la loi ont un caractère réglementaire. »*

#### Le contrôle
- **Article 41 C.** : irrecevabilité opposée par le Gouvernement ou le Président de l''assemblée à une proposition empiétant sur le domaine réglementaire
- **Article 37 al. 2 C.** : **délégalisation** d''un texte législatif par décret après avis du Conseil constitutionnel

#### La porosité de la frontière en pratique
- **Le législateur empiète** souvent sur le domaine réglementaire
- **Le Gouvernement** accepte généralement (matières considérées comme politiquement importantes)
- **Le Conseil constitutionnel** a admis une **conception large** du domaine législatif

#### Les ordonnances (`art. 38`)
- **Habilitation** du Parlement
- **Champ déterminé** et délai
- **Ratification expresse** requise (depuis `2008`)

## II. L''initiative législative (`art. 39 C.`)

### A. Les projets de loi (origine gouvernementale)

#### Procédure
1. **Préparation** par le ministère concerné
2. **Étude d''impact** (obligatoire depuis `2008`)
3. **Délibération en Conseil des ministres**
4. **Avis du Conseil d''État**
5. **Dépôt** au bureau de l''Assemblée nationale ou du Sénat

#### Priorité
- **Projets de loi de finances** et de **financement de la sécurité sociale** : dépôt **prioritairement** à l''Assemblée nationale (`art. 39 al. 2`)
- Autres projets : libre choix

### B. Les propositions de loi (origine parlementaire)

#### Procédure
1. **Rédaction** par un parlementaire (ou plusieurs)
2. **Dépôt** au bureau de son assemblée
3. **Examen** en commission
4. **Inscription** à l''ordre du jour (souvent dans la « niche parlementaire »)

#### Limites
- **Article 40 C.** : irrecevabilité financière (création ou aggravation des charges publiques)
- **Article 41 C.** : irrecevabilité du domaine réglementaire

### C. La répartition de l''initiative
- **80-90 %** des lois adoptées sont d''origine **gouvernementale**
- **Propositions de loi** : essentiellement « niches parlementaires » ou questions sociétales

## III. L''examen parlementaire

### A. L''examen en commission

#### Commission saisie au fond
- **Une commission permanente** (sauf commission spéciale)
- Désignation d''un **rapporteur**
- **Examen** article par article
- **Adoption** d''un texte amendé

#### Innovation de 2008
- **Le texte examiné en séance est le texte issu de la commission**, et non le texte initial du Gouvernement
- **Renforcement** du rôle de la commission

#### Commissions saisies pour avis
- D''autres commissions peuvent **donner leur avis**

### B. L''examen en séance publique

#### Discussion générale
- **Présentation** par le rapporteur et le ministre
- **Interventions** des groupes politiques

#### Examen des articles
- **Article par article**
- **Examen** des amendements

#### Le droit d''amendement (`art. 44 C.`)

##### Principe
> *« Les membres du Parlement et le Gouvernement ont le droit d''amendement. »*

##### Procédure
- **Dépôt** d''amendements
- **Examen** par la commission
- **Discussion** en séance
- **Vote**

#### Les irrecevabilités

##### Article 40
**Irrecevabilité financière** des amendements parlementaires qui créent ou aggravent une charge publique.

##### Article 41
**Irrecevabilité du domaine réglementaire**.

##### Article 45 al. 1
**Lien direct** avec le texte en discussion (« cavaliers législatifs » prohibés).

### C. Le vote sur l''ensemble du texte

#### Vote par chaque assemblée
- **Majorité simple**
- **Scrutin public** ou scrutin solennel pour les textes importants

#### Adoption ou rejet
- **Texte adopté** : transmission à l''autre assemblée (navette)
- **Texte rejeté** : la procédure s''arrête (sauf cas exceptionnels)

## IV. La navette parlementaire (`art. 45 C.`)

### A. Le principe

#### Texte
> *« Tout projet ou proposition de loi est examiné successivement dans les deux assemblées du Parlement en vue de l''adoption d''un texte identique. »*

#### Mécanisme
- **Le texte voyage** entre les deux assemblées
- **Chaque assemblée** peut le modifier
- **Adoption** en termes **identiques** = fin de la navette
- **Désaccord persistant** = procédure spéciale

### B. La commission mixte paritaire (CMP)

#### Composition
- **`7 députés` + `7 sénateurs`**
- Désignés par les présidents des assemblées (équilibre majorité/opposition)

#### Convocation
- **Sur initiative** du Premier ministre (pour les projets de loi)
- **Présidents des deux assemblées** d''un commun accord (propositions de loi)

#### Mission
- **Rédiger un texte commun** sur les dispositions restant en discussion

#### Issue
- **Accord** : texte soumis aux deux assemblées
- **Désaccord** : nouvelle lecture par les deux assemblées

### C. Le dernier mot de l''Assemblée nationale (`art. 45 al. 4`)

#### En cas d''échec de la CMP ou après nouvelle lecture
> *« Le Gouvernement peut, après une nouvelle lecture par l''Assemblée nationale et par le Sénat, demander à l''Assemblée nationale de statuer définitivement. »*

#### Texte
- L''Assemblée peut reprendre :
  - Le texte de la CMP
  - Son dernier texte modifié éventuellement par des amendements adoptés par le Sénat

#### Exception : les lois constitutionnelles
**Pas de dernier mot** : accord obligatoire des deux assemblées (`art. 89`).

#### Exception : les lois organiques relatives au Sénat
**Vote conforme** des deux assemblées requis.

### D. La procédure accélérée (`art. 45 al. 2`)

#### Décision
- **Engagée par le Gouvernement**
- **Présidents des assemblées** peuvent s''y opposer (rare)

#### Effets
- **Une seule lecture** par chaque assemblée
- **Convocation immédiate** d''une CMP en cas de désaccord
- **Délais** réduits

#### Pratique
**Largement utilisée** : environ 60-70 % des textes.

## V. Les armes du parlementarisme rationalisé

### A. L''ordre du jour (`art. 48 C.`)

#### Avant 2008
- **Maîtrisé** par le Gouvernement
- **Priorité** aux projets et propositions du Gouvernement

#### Depuis 2008 — Partage
- **Deux semaines sur quatre** : Gouvernement
- **Deux semaines sur quatre** : Parlement
- **Une semaine sur quatre** : contrôle et évaluation

#### Priorités constitutionnelles
- **Lois de finances** et **LFSS** : priorité Gouvernement
- **Une niche** mensuelle pour l''opposition

### B. Le vote bloqué (`art. 44 al. 3`)

#### Texte
> *« Si le Gouvernement le demande, l''assemblée saisie se prononce par un seul vote sur tout ou partie du texte en discussion en ne retenant que les amendements proposés ou acceptés par le Gouvernement. »*

#### Effet
- **Plus d''amendements parlementaires** non acceptés
- **Vote global** sur le texte
- **Permet** d''éviter l''obstruction par les amendements

#### Bilan
**Utilisé fréquemment**, surtout au Sénat.

### C. L''article 49 alinéa 3 (engagement de responsabilité sur un texte)

Voir fiche 3.

### D. La procédure accélérée

Voir supra.

## VI. La promulgation et la publication

### A. La transmission au Président
- **Texte adopté** transmis au PM puis au Président

### B. La promulgation (`art. 10 C.`)

#### Délai
- **`15 jours`** suivant la transmission

#### Pouvoirs du Président
- **Promulguer**
- **Demander une nouvelle délibération** sur tout ou partie du texte (rare : `1983` par Mitterrand sur la loi d''indemnisation des Français rapatriés d''Algérie)
- **Saisir le Conseil constitutionnel** (suspend le délai)

### C. La publication
- **Au Journal officiel**
- **Entrée en vigueur** : le lendemain (sauf disposition contraire)

## VII. Le contrôle parlementaire du Gouvernement

### A. Les questions

#### Questions au Gouvernement (QAG)
- **Mardi et mercredi après-midi** à l''AN
- **Une heure** par séance
- **Diffusion télévisée**
- **Posées** par tous les groupes politiques

#### Questions orales
- **Avec ou sans débat**
- **Procédure moins solennelle**

#### Questions écrites
- **Texte écrit** au JO
- **Réponse écrite** du ministre
- **Nombreuses** (`~15 000 par an`)

### B. Les résolutions

#### Article 34-1 (depuis 2008)
- **Résolutions** du Parlement
- **Non contraignantes** mais expression politique

#### Limites
- Ne peuvent porter sur la **responsabilité** du Gouvernement (ce serait un moyen de censure détourné)

### C. Les commissions d''enquête (`art. 51-2 C.`)

#### Création
- **Décision** d''une assemblée
- **Durée** : `6 mois` maximum

#### Pouvoirs
- **Auditions sous serment**
- **Documents** communiqués
- **Investigations**

#### Rapport public

#### Exemples célèbres
- **« Affaire Benalla »** (`2018`)
- **Covid-19** (gestion par le Gouvernement)
- **Affaire Dr. Mediator** (`2011`)
- **Évolution du droit de la femme**

### D. L''évaluation des politiques publiques

#### Article 24 (depuis 2008)
- **« Le Parlement évalue les politiques publiques »**

#### Mécanismes
- **Office parlementaire d''évaluation** des politiques publiques
- **Cour des comptes** : assistance (art. 47-2)
- **Rapports** d''information

### E. Les missions d''information
- **Procédure** plus souple que les commissions d''enquête
- **Rapports** publics

### F. La séance des questions sur les politiques publiques (depuis 2008)

Une fois par semaine en moyenne.

### G. La motion de censure et la question de confiance
Voir fiche 3.

## VIII. Le contrôle parlementaire du Gouvernement en cohabitation

### A. Renforcement effectif
- **Le Parlement** retrouve son rôle de contrôleur
- **Le Gouvernement** doit composer avec sa propre majorité parlementaire

### B. Sous concordance des majorités
- **Discipline** majoritaire
- **Contrôle** souvent formel
- **Recours aux questions** par l''opposition

## IX. La fonction budgétaire

### A. Les lois de finances (LF)

#### Loi de finances initiale (LFI)
- **Adoptée** chaque année avant le 31 décembre
- **Autorise** les ressources et les dépenses de l''État

#### Loi de finances rectificative (LFR)
- **Modification** en cours d''année
- **Plusieurs** par an souvent

#### Loi de règlement
- **Arrêté** des comptes après l''exécution

### B. Le délai constitutionnel (`art. 47 C.`)

#### Texte
> *« Si le Parlement ne s''est pas prononcé dans un délai de soixante-dix jours, les dispositions du projet peuvent être mises en vigueur par ordonnance. »*

#### Application
- **`70 jours`** au total
- **`40 jours`** pour l''AN
- **`15 jours`** pour le Sénat
- **`15 jours`** pour la procédure d''accord

### C. Les LFSS (lois de financement de la sécurité sociale)

#### Création
**Loi constitutionnelle du 22 février 1996**.

#### Caractéristiques similaires aux LF
- **Annuelles**
- **Délai** de `50 jours`

#### Importance
- **Régulation** des dépenses sociales
- **Sources** des principales prestations sociales

## À retenir

**Domaine de la loi** (`art. 34`) : compétence d''attribution, mais étendue. La loi **fixe les règles** ou **détermine les principes fondamentaux**. Le **pouvoir réglementaire autonome** (`art. 37`) s''applique aux autres matières.

**Initiative législative** (`art. 39`) : projets de loi (Gouvernement) et propositions de loi (parlementaires).

**Procédure** :
1. **Examen** en commission (le texte de la commission est désormais le texte de référence depuis `2008`)
2. **Débat** en séance, **examen** des articles, **amendements**
3. **Vote** sur l''ensemble
4. **Navette** entre AN et Sénat
5. En cas de désaccord : **CMP** (7+7)
6. En cas d''échec : **dernier mot de l''AN** (sauf lois constitutionnelles)
7. **Promulgation** par le Président (`15 jours`)
8. **Publication** au JO

**Armes du parlementarisme rationalisé** :
- **Maîtrise** partielle de l''ordre du jour par le Gouvernement (`art. 48`)
- **Vote bloqué** (`art. 44 al. 3`)
- **49.3** (engagement de responsabilité sur un texte)
- **Procédure accélérée** (`art. 45 al. 2`)
- **CMP** + dernier mot AN (`art. 45 al. 4`)

**Contrôle parlementaire** :
- **Questions** (QAG, orales, écrites)
- **Résolutions** (`art. 34-1`)
- **Commissions d''enquête** (`art. 51-2`)
- **Évaluation** des politiques publiques (`art. 24`)
- **Lois de finances** et **LFSS**

**Calendrier législatif** :
- **LF** : avant le 31 décembre, délai constitutionnel de 70 jours
- **LFSS** : 50 jours'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 6 - LE CONSEIL CONSTITUTIONNEL
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Conseil constitutionnel : composition, compétences, jurisprudence', 'Chapitre 6 - La justice constitutionnelle',
       'Composition (art. 56), compétences (art. 61, 61-1), évolution du rôle, bloc de constitutionnalité, jurisprudence majeure.',
       array['Article 56', 'Article 61', 'Article 61-1', 'QPC', 'Bloc de constitutionnalité', 'Décision 71-44 DC', 'Liberté d''association', 'Cour de cassation', 'Conseil d''État', 'PFRLR', 'OVC', 'IVG'],
       30, 6,
'# Le Conseil constitutionnel : composition, compétences, jurisprudence

## Introduction

Le **Conseil constitutionnel** est une **création majeure** de la Ve République. Pensé initialement comme un simple **régulateur des pouvoirs publics** chargé de garantir les nouveaux domaines de compétence (loi/règlement), il s''est **transformé**, à partir de la **décision *Liberté d''association*** du `16 juillet 1971`, en véritable **gardien des libertés fondamentales**. La création de la **Question Prioritaire de Constitutionnalité** (QPC) par la révision du `23 juillet 2008` a parachevé cette mutation en lui donnant accès à la « justice » constitutionnelle au profit de tout justiciable. Cette fiche présente la composition, les compétences, et la jurisprudence essentielle du Conseil constitutionnel.

> **Article 56 al. 1 C.** : *« Le Conseil constitutionnel comprend neuf membres, dont le mandat dure neuf ans et n''est pas renouvelable. »*

## I. La composition du Conseil constitutionnel

### A. Les membres nommés (`art. 56 C.`)

#### Les neuf membres nommés
**Nomination** :
- **3 par le Président de la République**
- **3 par le Président de l''Assemblée nationale**
- **3 par le Président du Sénat**

#### Procédure depuis 2008
- **Avis** des commissions parlementaires compétentes
- **Veto** : `3/5` des voix négatives bloquent la nomination
- **Procédure peu utilisée** mais existante

#### Profils
**Pas de condition** d''âge ni de compétence juridique (différence avec l''Allemagne).
En pratique :
- **Anciens magistrats** (Cour de cassation, Conseil d''État)
- **Hauts fonctionnaires**
- **Politiques** (anciens parlementaires, ministres)
- **Universitaires**

#### Mandat
- **`9 ans`** non renouvelable (`art. 56 al. 1`)
- **Renouvellement par tiers** tous les `3 ans` (3 membres en `2025`, 3 en `2028`, etc.)
- **Stabilité** garantie

#### Le président du Conseil
- **Désigné** par le Président de la République parmi les membres
- **Voix prépondérante** en cas d''égalité

#### Anciens présidents du Conseil constitutionnel
- **Léon Noël** (`1959-1965`)
- **Gaston Palewski** (`1965-1974`)
- **Roger Frey** (`1974-1983`)
- **Daniel Mayer** (`1983-1986`)
- **Robert Badinter** (`1986-1995`) — défense forte des libertés
- **Roland Dumas** (`1995-2000`)
- **Yves Guéna** (`2000-2004`)
- **Pierre Mazeaud** (`2004-2007`)
- **Jean-Louis Debré** (`2007-2016`)
- **Laurent Fabius** (`2016-2025`)
- **Richard Ferrand** (depuis `2025`)

### B. Les membres de droit

#### Article 56 al. 2 C.
> *« En sus des neuf membres prévus ci-dessus, font de droit partie à vie du Conseil constitutionnel les anciens Présidents de la République. »*

#### Pratique
- **Valéry Giscard d''Estaing** : a siégé jusqu''à son décès (`2020`)
- **Jacques Chirac** : très peu siégé (santé)
- **Nicolas Sarkozy** : décision controversée de ne plus siéger (`2013`, après l''invalidation de ses comptes de campagne)
- **François Hollande** : n''a pas siégé
- **Emmanuel Macron** : devra trancher à la fin de son mandat

#### Critique de la doctrine
- **Conflits d''intérêts** : l''ancien Président peut être amené à juger des lois qu''il a portées
- **Juridicité douteuse**
- **Projets de réforme** récurrents

### C. Le statut

#### Incompatibilités
- Avec tout **mandat électif**
- Avec une **fonction ministérielle**
- Avec une fonction de **direction** d''un parti politique
- Avec **toute fonction publique**

#### Indépendance
- **Inamovibilité** (sauf démission ou cas exceptionnels)
- **Serment** prêté à la prise de fonction
- **Secret** des délibérations
- Aucune **opinion dissidente** publiée (différence avec la Cour suprême américaine ou la Cour constitutionnelle allemande)

#### Indemnité
- **Identique** à celle des ministres

### D. Le secrétariat général
- **Service** d''appui des membres
- **Greffe**, communication, études

## II. Les compétences du Conseil constitutionnel

### A. Le contrôle de constitutionnalité a priori (`art. 61 C.`)

#### Texte
> *« Les lois organiques, avant leur promulgation, les propositions de loi mentionnées à l''article 11 avant qu''elles ne soient soumises au référendum, et les règlements des assemblées parlementaires, avant leur mise en application, doivent être soumis au Conseil constitutionnel qui se prononce sur leur conformité à la Constitution. »*

#### Saisine obligatoire
- **Lois organiques**
- **Règlements des assemblées parlementaires**
- **Propositions de loi** de l''article 11 (référendum)

#### Saisine facultative
> *« Aux mêmes fins, les lois peuvent être déférées au Conseil constitutionnel, avant leur promulgation, par le Président de la République, le Premier ministre, le Président de l''Assemblée nationale, le Président du Sénat ou soixante députés ou soixante sénateurs. »*

#### Évolution de la saisine
- **`1958`** : seulement 4 autorités (Président, PM, Présidents des assemblées)
- **`1974`** : ouverture à `60 députés ou 60 sénateurs` — révolution !
- **Conséquence** : multiplication des saisines par l''opposition

#### Délais
- **1 mois** entre la saisine et la décision
- **8 jours** si l''urgence est déclarée
- **Suspension** du délai de promulgation pendant l''examen

#### Effet de la déclaration de non-conformité
- **Non-promulgation** de la disposition
- **Effet erga omnes**
- Possibilité de **non-conformité partielle** (« réserves d''interprétation »)

### B. La Question Prioritaire de Constitutionnalité (`art. 61-1 C.`)

#### Création
**Loi constitutionnelle du 23 juillet 2008** (révision Sarkozy).
**Entrée en vigueur** : **`1^er^ mars 2010`** (après la loi organique du `10 décembre 2009`).

#### Innovation majeure
**Pour la première fois en France**, un justiciable peut **contester la constitutionnalité** d''une loi **en vigueur** à l''occasion d''un litige.

#### Texte
> *« Lorsque, à l''occasion d''une instance en cours devant une juridiction, il est soutenu qu''une disposition législative porte atteinte aux droits et libertés que la Constitution garantit, le Conseil constitutionnel peut être saisi de cette question sur renvoi du Conseil d''État ou de la Cour de cassation qui se prononce dans un délai déterminé. »*

#### Procédure

##### Étape 1 : devant la juridiction du fond
Le justiciable **soulève une QPC** à l''occasion d''un litige.
**Conditions** :
- **Disposition applicable** au litige
- **Pas déjà déclarée conforme** par le Conseil constitutionnel (sauf changement de circonstances)
- **Question présentant un caractère sérieux** ou nouveau

La juridiction du fond examine la **recevabilité** et **transmet** ou non au Conseil d''État ou à la Cour de cassation.

##### Étape 2 : filtrage par les cours suprêmes
- **Conseil d''État** (juridictions administratives) ou **Cour de cassation** (juridictions judiciaires)
- **Délai** : 3 mois
- **Examen** : mêmes conditions + **nouveauté** ou **sérieux**

##### Étape 3 : décision du Conseil constitutionnel
- **Délai** : `3 mois` maximum
- **Audience publique**
- **Décision** :
  - **Conformité** : la disposition reste en vigueur
  - **Non-conformité** : **abrogation** (`art. 62 al. 2 C.`)

#### Effet erga omnes
La disposition abrogée **disparaît** pour tous les justiciables (et non pas seulement entre les parties à l''instance).

#### Modulation des effets
Le Conseil peut **différer** l''abrogation pour permettre au législateur d''intervenir (généralement de quelques mois).

#### Bilan de la QPC

##### Volume
- **Plus de 1 000 décisions QPC** depuis 2010
- **Plusieurs centaines** de transmissions par an

##### Domaines variés
- **Droit pénal et procédure pénale**
- **Droit du travail**
- **Droit fiscal**
- **Droit administratif**
- **Libertés fondamentales**

##### Exemples célèbres
- **`QPC 30 juillet 2010`** : garde à vue (réforme de la procédure)
- **`QPC 11 octobre 2012`** : cumul des sanctions pénales et fiscales
- **`QPC 27 mars 2014`** : géolocalisation
- **`QPC 5 octobre 2018`** : peine de mort pour mineurs (déjà supprimée)
- **`QPC 6 juillet 2023`** : Pass sanitaire

### C. Le contrôle des engagements internationaux (`art. 54 C.`)

#### Texte
> *« Si le Conseil constitutionnel, saisi par le Président de la République, par le Premier ministre, par le Président de l''une ou l''autre assemblée ou par soixante députés ou soixante sénateurs, a déclaré qu''un engagement international comporte une clause contraire à la Constitution, l''autorisation de ratifier ou d''approuver l''engagement international en cause ne peut intervenir qu''après révision de la Constitution. »*

#### Saisine
- **Avant** la ratification
- **Mêmes autorités** que pour l''article 61

#### Effet
- **Inconstitutionnalité** = nécessité de **réviser** la Constitution avant ratification

#### Cas célèbres
- **`Maastricht I`** (`9 avril 1992`) : nécessité de réviser → titre XV ajouté à la Constitution
- **`Constitution européenne`** (`19 novembre 2004`) : nécessité de réviser → article 88-1 modifié
- **`Traité de Lisbonne`** (`20 décembre 2007`) : nécessité de réviser → adoption de la loi de février 2008

### D. Le contentieux électoral

#### Élection présidentielle
- **Régularité** de l''élection
- **Validation** des comptes de campagne
- **Proclamation** des résultats

##### Cas célèbres
- **Sarkozy** (`2013`) : invalidation des comptes de campagne de 2012 (dépassement du plafond) — réaction politique de Sarkozy : annonce qu''il ne siège plus au Conseil

#### Élections législatives
- **Contestations** des résultats individuels
- **Compétence** depuis `1958`

#### Élections sénatoriales
- **Idem**

#### Référendums (`art. 60 C.`)
- **Contrôle** de la régularité
- **Proclamation** des résultats

### E. Les compétences consultatives

#### Article 16 C. (pouvoirs exceptionnels)
- **Constatation** des conditions de l''article 16
- **Consultation** sur les mesures prises
- **Saisine** possible après 30 jours

#### Vacance et empêchement présidentiel (`art. 7 C.`)
- **Constatation** de la vacance ou de l''empêchement
- **Saisine** par le Gouvernement

## III. Le bloc de constitutionnalité

### A. La décision fondatrice

#### *Cons. const., 71-44 DC, 16 juillet 1971, Liberté d''association*

##### Le contexte
- **Loi** modifiant la déclaration préalable pour les associations
- **Saisine** par le **Président du Sénat** Alain Poher (l''un des rares cas de saisine présidentielle d''une assemblée à cette époque)

##### La décision
Le Conseil constitutionnel **censure** la loi en se fondant sur le **Préambule de la Constitution de 1946** (qui se réfère aux *« principes politiques, économiques et sociaux particulièrement nécessaires à notre temps »*) et sur les **principes fondamentaux reconnus par les lois de la République** (PFRLR), dont il dégage la **liberté d''association**.

##### Citation
> *« Au nombre des principes fondamentaux reconnus par les lois de la République et solennellement réaffirmés par le Préambule de la Constitution il y a lieu de ranger le principe de la liberté d''association »*

##### Portée
- **Tournant** majeur : le Conseil **devient** un protecteur des droits fondamentaux
- Intégration du **Préambule de 1946** et de la **DDHC** dans le bloc de constitutionnalité
- Naissance d''un véritable **contrôle matériel** de constitutionnalité

### B. La composition actuelle du bloc

#### La Constitution du 4 octobre 1958
**Norme suprême**, organisant les pouvoirs publics.

#### Le Préambule de la Constitution de 1946
**Référence** dans le Préambule de 1958. Contient les **droits économiques et sociaux** :
- **Droit au travail**, droit d''obtenir un emploi
- **Liberté syndicale**
- **Droit de grève**
- **Sécurité matérielle, santé, repos, loisirs**
- **Égalité hommes/femmes**
- **Droit à l''enseignement** gratuit et laïque
- **Solidarité** nationale face aux calamités

#### La Déclaration des droits de l''homme et du citoyen de 1789
**Texte fondateur** des **droits civils et politiques** :
- **Article 1** : liberté et égalité
- **Article 2** : droits naturels (liberté, propriété, sûreté, résistance à l''oppression)
- **Article 4** : liberté
- **Article 6** : loi expression de la volonté générale, égalité
- **Article 7-9** : présomption d''innocence, légalité des délits et peines
- **Article 11** : liberté de communication
- **Article 16** : séparation des pouvoirs et garantie des droits
- **Article 17** : propriété

#### La Charte de l''environnement de 2004
**Intégrée** par la loi constitutionnelle du `1^er^ mars 2005`.
- **Article 1** : droit à un environnement équilibré
- **Article 3** : devoir de prévenir les atteintes
- **Article 5** : principe de précaution

#### Les Principes fondamentaux reconnus par les lois de la République (PFRLR)

##### Définition (Cons. const. 1988)
- **Tradition** républicaine consacrée par des **textes législatifs**
- **Avant** le Préambule de 1946
- **Sans interruption**

##### Liste des PFRLR identifiés
1. **Liberté d''association** (`Cons. const., 16 juillet 1971`)
2. **Droits de la défense** (`Cons. const., 2 décembre 1976`)
3. **Liberté individuelle** (`Cons. const., 12 janvier 1977`)
4. **Liberté de l''enseignement** (`Cons. const., 23 novembre 1977`)
5. **Indépendance des juridictions administratives** (`Cons. const., 22 juillet 1980`)
6. **Indépendance des professeurs d''université** (`Cons. const., 20 janvier 1984`)
7. **Compétence du juge judiciaire en matière de propriété immobilière** (`Cons. const., 25 juillet 1989`)
8. **Atténuation de la responsabilité pénale des mineurs** (`Cons. const., 29 août 2002`)
9. **Réserve de compétence législative en matière de droit local d''Alsace-Moselle** (`Cons. const., 5 août 2011`)

#### Les Objectifs de valeur constitutionnelle (OVC)
**Dégagés** par la jurisprudence : pas des droits subjectifs mais des **objectifs** que le législateur doit poursuivre.
- **Sauvegarde de l''ordre public**
- **Recherche des auteurs d''infractions**
- **Droit à un logement décent**
- **Pluralisme dans les médias**
- **Accessibilité et intelligibilité** de la loi
- **Lutte contre la fraude fiscale**

## IV. La jurisprudence majeure

### A. Le développement de la protection des libertés

#### *Liberté d''association* (`16 juillet 1971`)
Naissance du contrôle matériel.

#### *Liberté individuelle* (`12 janvier 1977`)
Sur la fouille des véhicules.

#### *Nationalisations* (`16 janvier 1982`)
- Censure partielle d''une loi de Mitterrand
- **Protection** du droit de propriété

#### *Sécurité et liberté* (`19-20 janvier 1981`)
- **Présomption d''innocence**, garanties pénales

#### *Loi pénitentiaire* (`24 novembre 2009`)

### B. Le contrôle de constitutionnalité de fond

#### *IVG* (`75-54 DC, 15 janvier 1975`)

##### Importance
**Décision majeure** : le Conseil **refuse** de contrôler la conventionnalité (par rapport à la CEDH) des lois. **Délégation** au juge ordinaire.

##### Conséquence
- **CEDH** : non utilisée comme norme de contrôle par le Conseil constitutionnel
- **Conventionnalité** contrôlée par le Conseil d''État et la Cour de cassation depuis *Jacques Vabre* (Cass. ch. mixte, 24 mai 1975) et *Nicolo* (CE Ass., 20 octobre 1989)

#### *Liberté de communication* (`84-181 DC, 10-11 octobre 1984`)
- **Censure** de la loi sur la presse (anti-Hersant)
- **Pluralisme** comme OVC

#### *Bioéthique* (`94-343/344 DC, 27 juillet 1994`)
- Sur les lois de bioéthique
- **Dignité de la personne humaine** : nouveau principe constitutionnel

### C. Les grandes décisions QPC

#### *Garde à vue* (`QPC 30 juillet 2010`)
- **Censure** de la garde à vue traditionnelle
- **Loi du 14 avril 2011** : réforme complète

#### *Procédure simplifiée OPCO* (`QPC 12 mai 2010`)

#### *Mariage pour tous* (en amont)
- **Cons. const., 17 mai 2013, n° 2013-669 DC** : validation de la loi Taubira

#### *Présomption de propriété* (`QPC 23 mai 2018`)

#### *Pass sanitaire* (`Cons. const., 5 août 2021`)

## V. Le rôle du Conseil constitutionnel aujourd''hui

### A. Une vraie cour constitutionnelle

#### Reconnaissance progressive
- **1971** : protection des droits fondamentaux
- **1974** : élargissement de la saisine
- **2008** : QPC
- **2010** : entrée en vigueur

#### Comparaison européenne
- **Comparable** à la Cour constitutionnelle allemande, à la Cour suprême américaine (différents systèmes mais rôles équivalents)

### B. Les limites persistantes

#### Pas de contrôle de conventionnalité
- **Position constante** depuis IVG (`1975`)

#### Pas d''autosaisine
- **Saisine externe** requise

#### Délais courts
- 1 mois en a priori, 3 mois en QPC

#### Pas d''opinions dissidentes
- **Secret** des délibérations
- **Différence** avec les cours allemande et américaine

### C. Les évolutions souhaitées

#### Réformes envisagées
- **Indépendance** renforcée (suppression des membres de droit ?)
- **Compétence** juridique exigée ?
- **Opinions dissidentes** ?
- **Élargissement** de la saisine ?

## À retenir

**Composition** :
- **`9 membres` nommés** (3 par le Président, 3 par le Président de l''AN, 3 par le Président du Sénat)
- **Mandat de `9 ans` non renouvelable**, renouvellement par tiers tous les 3 ans
- **Anciens Présidents de la République** : membres de droit (à vie)
- **Président** désigné par le Président de la République (voix prépondérante)

**Compétences principales** :
- **Article 61** : contrôle de constitutionnalité **a priori** (avant promulgation)
- **Article 61-1** : **QPC** (depuis `2010`) — accès du justiciable
- **Article 54** : contrôle des engagements internationaux
- **Contentieux électoral** : présidentielles, législatives, sénatoriales, référendums
- **Article 7** : vacance/empêchement présidentiel
- **Article 16** : pouvoirs exceptionnels

**Saisine de l''article 61** : Président, PM, Présidents des assemblées, **60 députés ou 60 sénateurs** (depuis `1974`).

**Saisine de la QPC** : juge du fond → filtrage Cass./CE → Conseil constitutionnel.

**Décision *Liberté d''association*** (`71-44 DC, 16 juillet 1971`) : naissance du contrôle matériel + intégration du Préambule de 1946 et de la DDHC.

**Bloc de constitutionnalité** :
- Constitution 1958
- Préambule 1946
- DDHC 1789
- Charte de l''environnement 2004
- **PFRLR** (liberté d''association, droits de la défense, indépendance des juridictions administratives, etc.)
- **OVC** (sauvegarde de l''ordre public, accessibilité de la loi, etc.)

**Limites** :
- Pas de contrôle de conventionnalité (*IVG*, `1975`)
- Pas d''autosaisine
- Pas d''opinions dissidentes'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 7 - L''AUTORITÉ JUDICIAIRE ET LES AUTRES INSTITUTIONS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''autorité judiciaire et les autres institutions', 'Chapitre 7 - Les autres organes constitutionnels',
       'L''autorité judiciaire (art. 64-66), le CSM, le Défenseur des droits, le CESE, la Cour des comptes, les AAI.',
       array['Article 64', 'Article 65', 'Article 66', 'CSM', 'Indépendance', 'Inamovibilité', 'Défenseur des droits', 'Article 71-1', 'CESE', 'Cour des comptes', 'AAI', 'ARCOM', 'CNIL', 'Autorité de la concurrence'],
       22, 7,
'# L''autorité judiciaire et les autres institutions

## Introduction

La **Constitution de 1958** organise, à côté du Président, du Gouvernement, du Parlement et du Conseil constitutionnel, plusieurs autres **organes essentiels** au fonctionnement de la République : l''**autorité judiciaire** (Titre VIII), le **Conseil supérieur de la magistrature** (Titre VIII), le **Défenseur des droits** (Titre XI bis, depuis `2008`), le **Conseil économique, social et environnemental** (Titre XI), la **Cour des comptes** (Titre XII), et un ensemble d''**autorités administratives indépendantes** (AAI) au statut hybride. Cette fiche présente ces institutions et leur rôle dans la République.

> **Article 64 al. 1 C.** : *« Le Président de la République est garant de l''indépendance de l''autorité judiciaire. »*

## I. L''autorité judiciaire (`art. 64-66 C.`)

### A. La terminologie

#### « Autorité » et non « pouvoir »
- La Constitution parle d''*« autorité judiciaire »* et non de *« pouvoir judiciaire »*
- **Choix sémantique** : indique une certaine subordination ?
- **Doctrine** : la justice est tout de même un pouvoir en pratique

#### Composition de l''autorité judiciaire
- **Magistrats du siège** : jugent
- **Magistrats du parquet** : représentent l''État dans les procès

### B. Le Président, garant de l''indépendance (`art. 64`)

#### Texte
> *« Le Président de la République est garant de l''indépendance de l''autorité judiciaire. Il est assisté par le Conseil supérieur de la magistrature. Une loi organique porte statut des magistrats. Les magistrats du siège sont inamovibles. »*

#### Le statut des magistrats
- **Loi organique du 22 décembre 1958** (ordonnance)
- **Recrutement** par l''**École nationale de la magistrature** (ENM, Bordeaux)
- **Inamovibilité** garantie aux magistrats du siège

### C. L''inamovibilité du siège

#### Principe constitutionnel
- **Article 64 al. 4** : les magistrats du siège sont **inamovibles**
- **Garantie d''indépendance** essentielle

#### Conséquences
- **Pas de mutation** sans leur consentement
- **Pas de révocation** sans procédure disciplinaire
- **Carrière protégée**

### D. Le statut des magistrats du parquet

#### Lien hiérarchique
- **Soumis** au **garde des Sceaux** (ministre de la Justice)
- **Lien** institutionnel à l''origine

#### Évolution récente
- **Loi du 25 juillet 2013** : **suppression** des instructions individuelles du garde des Sceaux
- **Pratique** : circulaires de politique pénale générale uniquement

#### La CEDH et le parquet
- **CEDH, Medvedyev c/ France, 29 mars 2010** : le parquet n''est pas un *« tribunal indépendant »* au sens de l''article 5 CESDH
- **Conséquence** : le parquet ne peut pas justifier seul une privation de liberté prolongée

#### Projets de réforme
- **Statut unique** des magistrats (siège et parquet) régulièrement envisagé
- **Indépendance** renforcée du parquet à l''agenda

### E. L''autorité judiciaire, gardienne de la liberté individuelle (`art. 66`)

#### Texte
> *« Nul ne peut être arbitrairement détenu. L''autorité judiciaire, gardienne de la liberté individuelle, assure le respect de ce principe dans les conditions prévues par la loi. »*

#### Conséquences
- **Compétence judiciaire** pour les **atteintes à la liberté individuelle**
- **Détention provisoire** : compétence judiciaire
- **Rétention administrative** des étrangers : compétence partagée
- **Hospitalisation d''office** : compétence judiciaire

## II. Le Conseil supérieur de la magistrature (CSM) (`art. 65`)

### A. La composition

#### Avant 2008
- **Présidé** par le Président de la République
- **Vice-Président** : ministre de la Justice
- **Composition** : magistrats et personnalités

#### Réforme de 2008
- **Présidence** par le Premier président de la Cour de cassation (formation siège) ou le Procureur général (formation parquet)
- **Composition** :
  - **Formation siège** : `15 membres` (Premier président, 7 magistrats, 7 personnalités)
  - **Formation parquet** : `15 membres` (Procureur général, 7 magistrats, 7 personnalités)
  - **Personnalités** : 1 conseiller d''État, 1 avocat, 6 personnalités qualifiées (`2` nommées par chaque autorité : Président de la République, Président de l''AN, Président du Sénat)

### B. Les compétences

#### Formation siège
- **Avis conforme** pour les nominations des magistrats du siège (le Président de la République ne peut pas nommer sans cet avis)
- **Discipline** des magistrats du siège

#### Formation parquet
- **Avis** sur les nominations (depuis la loi de 2013 : **avis conforme**, en pratique respecté)
- **Discipline** des magistrats du parquet

#### Formation plénière
- **Avis** sur les questions générales relatives à la magistrature
- **Saisine** par le justiciable depuis 2010

### C. La saisine par le justiciable
- **Loi du 22 juillet 2010**
- **Tout justiciable** peut saisir le CSM en cas de **manquement disciplinaire** d''un magistrat
- **Filtrage** par une commission

## III. Le Défenseur des droits (Titre XI bis, depuis 2008)

### A. Création
**Loi constitutionnelle du 23 juillet 2008** : ajout du titre XI bis et de l''article 71-1.

### B. Nature

#### Article 71-1 C.
> *« Le Défenseur des droits veille au respect des droits et libertés par les administrations de l''État, les collectivités territoriales, les établissements publics, ainsi que par tout organisme investi d''une mission de service public, ou à l''égard duquel la loi organique lui attribue des compétences. »*

#### Caractères
- **Autorité constitutionnelle indépendante**
- **Loi organique du 29 mars 2011** : précise les compétences

#### Le titulaire
- **Nommé** par le Président de la République pour **`6 ans` non renouvelable**
- **Avis** des commissions parlementaires (veto à 3/5 possible)

#### Anciens Défenseurs des droits
- **Dominique Baudis** (`2011-2014`)
- **Jacques Toubon** (`2014-2020`)
- **Claire Hédon** (depuis `2020`)

### C. Les compétences

#### Domaines de compétence
1. **Défense des droits** des usagers du service public
2. **Défense des droits de l''enfant**
3. **Lutte contre les discriminations**
4. **Respect de la déontologie** par les personnes exerçant des activités de sécurité

#### Fusion d''anciennes autorités
- **Médiateur de la République**
- **Défenseur des enfants**
- **HALDE** (Haute Autorité de Lutte contre les Discriminations et pour l''Égalité)
- **CNDS** (Commission nationale de déontologie de la sécurité)

#### Pouvoirs
- **Investigations**
- **Médiations**
- **Recommandations** aux autorités
- **Avis** au Parlement et au Gouvernement
- **Recommandations** à valeur quasi-juridique

### D. Bilan
- **`100 000+`** dossiers par an
- **Recommandations** souvent suivies
- **Rôle** de plus en plus important

## IV. Le Conseil économique, social et environnemental (CESE) (`art. 69-71`)

### A. Histoire

#### Origines
- **Conseil économique** créé en `1925`
- **Conseil économique et social** dans la Constitution de `1946`
- **Maintenu** en `1958`

#### Évolutions
- **`2008`** : ajout de la dimension **environnementale** (CESE)
- **`2021`** : réforme structurelle

### B. Composition
- **`175 membres`** depuis 2021 (`233` auparavant)
- Désignés par les organisations représentatives (syndicats, employeurs, associations)

### C. Compétences

#### Avis sur les projets de loi
- **Sur consultation** du Gouvernement, du Parlement

#### Saisine populaire (depuis 2008)
- **`500 000 signatures`** permettent de saisir le CESE
- **Avis** sur les sujets de société

#### Convention citoyenne pour le climat (2019-2020)
- Adaptée au CESE
- `150 citoyens` tirés au sort
- Propositions sur la transition écologique

## V. La Cour des comptes (`art. 47-2 C.`)

### A. Mission

#### Texte
> *« La Cour des comptes assiste le Parlement dans le contrôle de l''action du Gouvernement. Elle assiste le Parlement et le Gouvernement dans le contrôle de l''exécution des lois de finances et de l''application des lois de financement de la sécurité sociale ainsi que dans l''évaluation des politiques publiques. »*

### B. Composition
- **Premier président**
- **Présidents de chambre** et **conseillers**
- **Magistrats financiers**

### C. Compétences

#### Contrôle des comptes publics
- **État**
- **Collectivités** (via les chambres régionales des comptes)
- **Sécurité sociale**
- **Entreprises** publiques

#### Jugement des gestionnaires publics
- **Comptables publics**
- **Ordonnateurs** (depuis la **réforme du 23 mars 2022**)

#### Rapport public annuel
- **Publication** des observations

#### Assistance au Parlement
- **Rapports** sur la mise en œuvre des lois de finances

## VI. Les autorités administratives indépendantes (AAI)

### A. Notion

#### Définition
**Organismes publics** placés **en dehors** de la hiérarchie ministérielle classique, dotés d''une **autonomie** de fonctionnement et de **pouvoirs propres**.

#### Pas de définition constitutionnelle
- Concept **doctrinal et législatif**
- **Loi du 20 janvier 2017** : statut général des AAI

### B. Les AAI principales

#### Régulation
- **ARCOM** (Autorité de Régulation de la Communication Audiovisuelle et Numérique) — depuis `2022`, fusion CSA + Hadopi
- **ARCEP** (Autorité de régulation des communications électroniques et des postes)
- **CRE** (Commission de régulation de l''énergie)
- **AMF** (Autorité des marchés financiers)
- **Autorité de la concurrence**

#### Libertés et droits
- **CNIL** (Commission nationale de l''informatique et des libertés)
- **Défenseur des droits** (qualifié d''AAI)

#### Sécurité et déontologie
- **CNCTR** (Commission nationale de contrôle des techniques de renseignement)
- **HATVP** (Haute Autorité pour la Transparence de la Vie Publique)

### C. Le statut

#### Caractéristiques
- **Indépendance** garantie (mandats fixes des dirigeants)
- **Personnalité morale** parfois (Autorité publique indépendante, API)
- **Pouvoirs** : recommandation, réglementation, décision individuelle, sanction, enquête

#### Loi du 20 janvier 2017
- **Limite** le nombre d''AAI et d''API
- **Statut commun** (mandats, déontologie, contrôle parlementaire)

### D. Le contrôle

#### Pas de tutelle ministérielle
- Différent d''un service ministériel

#### Contrôle juridictionnel
- **Conseil d''État** pour les recours contre leurs décisions

#### Contrôle parlementaire
- **Auditions** annuelles
- **Rapports** publics

## VII. Les autres institutions

### A. La Haute Cour (`art. 67-68`)
Voir fiche 2. Compétente pour la **destitution** du Président de la République.

### B. La Cour de justice de la République (`art. 68-1 et 68-2`)
Voir fiche 3. Compétente pour les **infractions commises par les ministres** dans l''exercice de leurs fonctions.

### C. Le Conseil d''État (Titre XII)
- **Mentionné** dans la Constitution (art. 39 : avis sur les projets de loi)
- **Statut** consolidé par la jurisprudence

### D. Le Conseil supérieur de la programmation et du commerce extérieur

### E. Le Haut Conseil des finances publiques (HCFP)

## À retenir

**Autorité judiciaire** (Titre VIII) :
- **Article 64** : Président **garant** de l''indépendance
- **Inamovibilité** des magistrats du siège
- **Article 66** : autorité judiciaire **gardienne de la liberté individuelle**
- **CSM** réformé en `2008` : formations siège et parquet, présidées par le Premier président et le Procureur général

**Défenseur des droits** (Titre XI bis, depuis `2008`) :
- **Autorité constitutionnelle indépendante**
- **6 ans** non renouvelable
- **Fusion** des anciennes autorités (Médiateur, HALDE, Défenseur des enfants, CNDS)
- **4 domaines** : services publics, droits de l''enfant, discriminations, déontologie de la sécurité

**CESE** (Titre XI) :
- **Réforme 2021** : `175 membres`
- **Avis** sur les projets de loi
- **Saisine populaire** : 500 000 signatures

**Cour des comptes** (`art. 47-2`) :
- **Contrôle** des comptes publics
- **Jugement** des gestionnaires (ordonnateurs depuis `2022`)
- **Assistance** au Parlement et au Gouvernement

**AAI** : régulateurs (ARCOM, ARCEP, AMF, Autorité de la concurrence), CNIL, Défenseur des droits, HATVP… **Loi du 20 janvier 2017** : statut commun.'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- FICHE 8 - LA RÉVISION CONSTITUTIONNELLE ET L''ÉVOLUTION DU RÉGIME
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La révision constitutionnelle et l''évolution de la Ve République', 'Chapitre 8 - La révision et l''avenir',
       'Procédure de l''article 89, controverse de l''article 11, panorama des 24 révisions, débats sur l''avenir du régime.',
       array['Article 89', 'Article 11', 'Pouvoir constituant dérivé', 'Congrès', 'Référendum', 'Identité constitutionnelle', 'VIe République', 'Limitation de la révision', 'Forme républicaine'],
       22, 8,
'# La révision constitutionnelle et l''évolution de la Ve République

## Introduction

La Constitution de `1958` est une **Constitution rigide** : sa modification suit une procédure spéciale et plus difficile que celle des lois ordinaires (`art. 89`). Pourtant, en plus de **65 ans**, elle a fait l''objet de **`24 révisions`**, dont la plus importante reste la **« grande révision »** du `23 juillet 2008`. La pratique constitutionnelle a également vu l''utilisation **controversée** de l''article 11 par De Gaulle pour des révisions de fond. La question de l''avenir du régime — voire d''une **VIe République** — est aujourd''hui posée. Cette fiche présente les procédures de révision et l''évolution du régime depuis 1958.

> **Article 89 al. 1 C.** : *« L''initiative de la révision de la Constitution appartient concurremment au Président de la République sur proposition du Premier ministre et aux membres du Parlement. »*

## I. La procédure normale : l''article 89

### A. L''initiative

#### Présidentielle (sur proposition du PM)
- **Projet de révision** délibéré en Conseil des ministres
- **Avis** du Conseil d''État

#### Parlementaire
- **Proposition de révision** par un membre du Parlement
- **En pratique** : presque jamais réussi

### B. L''adoption parlementaire

#### Article 89 al. 2
> *« Le projet ou la proposition de révision doit être examiné dans les conditions de délai fixées au troisième alinéa de l''article 42 et voté par les deux assemblées en termes identiques. »*

#### Caractéristiques
- **Vote en termes identiques** par les deux assemblées
- **Pas de dernier mot** de l''Assemblée nationale (différence avec la loi ordinaire)
- **CMP** possible pour rechercher l''accord

#### Conséquence
**Le Sénat dispose d''un veto de fait** sur les révisions. Il peut bloquer toute révision en refusant de voter.

### C. L''approbation finale

#### Voie référendaire (`art. 89 al. 3`)
> *« La révision est définitive après avoir été approuvée par référendum. »*

- **Voie normale** pour les **propositions de loi** de révision (parlementaires)
- **Choix** pour le Président pour les projets de révision

#### Voie du Congrès (`art. 89 al. 3`)
> *« Toutefois, le projet de révision n''est pas présenté au référendum lorsque le Président de la République décide de le soumettre au Parlement convoqué en Congrès ; dans ce cas, le projet de révision n''est approuvé que s''il réunit la majorité des trois cinquièmes des suffrages exprimés. »*

- **Pour les projets de révision** (pas pour les propositions)
- **Réunion à Versailles** des deux assemblées
- **Majorité requise** : `3/5` des suffrages exprimés

#### Pratique
- **Voie du Congrès** : voie principalement utilisée pour les révisions importantes
- **Référendum** : utilisé seulement pour le quinquennat en `2000`

### D. Les limites à la révision

#### Limites temporelles
- **Pendant la vacance** présidentielle
- **Pendant l''exercice de l''article 16** (pouvoirs exceptionnels)
- **En cas d''atteinte à l''intégrité du territoire** (`art. 89 al. 4`)

#### Limites matérielles (`art. 89 al. 5`)
> *« La forme républicaine du Gouvernement ne peut faire l''objet d''une révision. »*

#### Le débat sur l''identité constitutionnelle
- **Conseil constitutionnel, n° 2006-540 DC, 27 juillet 2006** : *« principes inhérents à l''identité constitutionnelle de la France »*
- **Bouclier** contre la primauté du droit de l''UE
- **Identité** = principes propres à l''ordre juridique français
- Mais ces principes sont-ils insusceptibles d''être révisés par le pouvoir constituant ?

## II. La controverse de l''article 11

### A. Le texte de l''article 11

#### Domaine
- **Organisation des pouvoirs publics**
- **Réformes** relatives à la politique économique, sociale, environnementale
- **Ratification** de traités

### B. Le précédent de 1962

#### Le contexte
- **De Gaulle** veut faire élire le Président au suffrage universel direct
- **Le Parlement** (et notamment le Sénat) y est largement opposé

#### La décision présidentielle
- **Utilisation de l''article 11** plutôt que de l''article 89
- **Référendum du 28 octobre 1962** : `61,7 %` de OUI

#### Les critiques
- **Doctrine majoritaire** : violation de l''article 89 qui exige le vote des deux assemblées
- **Motion de censure** contre Pompidou adoptée le `5 octobre 1962`
- **Conseil constitutionnel** (`Cons. const., 6 novembre 1962`) : refuse de contrôler la loi adoptée par référendum
- *« Expression directe de la souveraineté nationale »*

### C. La tentative de 1969

#### De Gaulle utilise à nouveau l''article 11
- **Référendum** sur le Sénat et les régions
- **`27 avril 1969`** : `52,4 %` de NON
- **Démission** de De Gaulle

### D. Bilan
- **2 utilisations** de l''article 11 pour réviser la Constitution
- **Procédé** politiquement validé une fois (`1962`), désavoué une autre fois (`1969`)
- **Doctrine** : considère cette pratique comme **inconstitutionnelle** mais consacrée par l''usage

## III. Panorama des 24 révisions de la Ve République

### A. Les révisions majeures

#### 1962 : élection au suffrage universel direct
- **Loi constitutionnelle du 6 novembre 1962**
- **Référendum** (procédure de l''article 11)

#### 1974 : élargissement de la saisine du Conseil constitutionnel
- **Loi constitutionnelle du 29 octobre 1974**
- **60 députés ou 60 sénateurs** peuvent saisir
- **Importance majeure** : explose le contentieux constitutionnel

#### 1992 : Maastricht
- **Loi constitutionnelle du 25 juin 1992**
- **Titre XV ajouté** : l''Union européenne
- **Préparation** à la ratification du Traité de Maastricht

#### 1993 : Justice
- **Loi constitutionnelle du 27 juillet 1993**
- Création de la **CJR** (Cour de justice de la République)
- Réforme du **CSM**

#### 1995 : Renforcement du Parlement
- **Loi constitutionnelle du 4 août 1995**
- **Session unique** (du 1^er^ octobre au 30 juin)
- **Élargissement** du champ du référendum
- **Suppression** de l''immunité parlementaire en certains cas

#### 1996 : Lois de financement de la sécurité sociale
- **Loi constitutionnelle du 22 février 1996**
- **Création** des LFSS

#### 1999 : Parité
- **Loi constitutionnelle du 8 juillet 1999**
- **« Égal accès des femmes et des hommes »** aux mandats électoraux

#### 1999 : CPI
- **Loi constitutionnelle du 8 juillet 1999**
- **Reconnaissance** de la juridiction de la Cour pénale internationale (`art. 53-2`)

#### 2000 : Quinquennat
- **Loi constitutionnelle du 2 octobre 2000**
- **Mandat présidentiel de 5 ans**
- **Référendum** : `73,2 %` OUI (mais participation `30,2 %`)

#### 2003 : Décentralisation
- **Loi constitutionnelle du 28 mars 2003**
- **Article 1** : *« son organisation est décentralisée »*
- **Référendum local** (`art. 72-1`)
- **Expérimentation** (`art. 72 al. 4`)
- **Autonomie financière** (`art. 72-2`)

#### 2005 : Charte de l''environnement
- **Loi constitutionnelle du 1^er^ mars 2005**
- **Intégration** au bloc de constitutionnalité

#### 2007 : Statut pénal du Président
- **Loi constitutionnelle du 23 février 2007**
- **Réforme** des articles 67 et 68
- Introduction de la **destitution** par la Haute Cour

#### 2008 : La grande révision
- **Loi constitutionnelle du 23 juillet 2008**
- **`37 articles modifiés`**
- **Trois axes** :
  1. **Renforcement** du Parlement
  2. **Création de la QPC**
  3. **Encadrement** des pouvoirs présidentiels

##### Principaux apports
- **QPC** (`art. 61-1`)
- **Limitation à 2 mandats** consécutifs du Président
- **Article 49.3** limité (`1 par session` sauf budget)
- **Ordre du jour** partagé
- **Étude d''impact** des projets de loi obligatoire
- **Référendum d''initiative partagée**
- **Défenseur des droits**
- **Droits de l''opposition**
- **Allocution du Président** devant le Congrès

### B. Les révisions techniques

#### 1976 : Communauté française
**Adaptation** aux indépendances.

#### 1992-2008 : Adaptations à l''UE
Plusieurs révisions liées aux traités européens.

#### 2007 : Abolition de la peine de mort
**Loi constitutionnelle du 23 février 2007** : `art. 66-1`.

## IV. Les tentatives de révision avortées

### A. La proposition de réforme du quinquennat (1973)
**Pompidou** : projet d''instaurer le quinquennat. **Abandonné** faute de majorité au Congrès.

### B. La réforme constitutionnelle de Sarkozy (2008)
**Adoptée** mais à `1 voix` près au Congrès. Tension maximale.

### C. Le projet de Sarkozy (2008-2011)
- **Réduction** du nombre de parlementaires
- **Reconnaissance** des langues régionales
- **Diverses réformes** : non aboutis

### D. La réforme Hollande
- **Suppression** du mot « race » dans la Constitution
- **Inscription** de l''état d''urgence
- **Déchéance** de la nationalité pour les terroristes binationaux
- **Abandonné** en `2016` faute d''accord avec le Sénat

### E. Les projets de Macron
- **Réforme** des institutions (2018, 2019, 2024) :
- **Réduction** des parlementaires
- **Dose de proportionnelle**
- **Réforme** du CSM
- Le quinquennat à 30/40 % de proportionnelle
- **Abandonnés** ou enlisés

## V. L''évolution pratique du régime

### A. La présidentialisation progressive

#### Phase 1 (`1958-1962`) : régime parlementaire renforcé
- **Élection** indirecte du Président
- **De Gaulle** marque par sa personnalité

#### Phase 2 (`1962-1986`) : présidentialisation
- **Suffrage universel direct** depuis `1962`
- **Concordance** majoritaire (sauf 1986)
- **« Hyperprésidence »** progressive

#### Phase 3 (`1986-2002`) : alternances et cohabitations
- **Trois cohabitations**
- **Test** du caractère parlementaire du régime

#### Phase 4 (`2002-2024`) : hyperprésidentialisation
- **Quinquennat** + fait majoritaire
- **Domination** présidentielle complète
- **Critiques** récurrentes

#### Phase 5 (depuis `2024`) : fragmentation
- **AN éclatée** en 3 blocs
- **Cohabitation** conflictuelle (Macron-PM divers)
- **Instabilité** gouvernementale (Barnier, Bayrou)
- **Crise** politique

### B. Les ajustements pratiques

#### Le « domaine réservé »
- **Convention** politique : affaires étrangères, défense
- **Pas** dans la Constitution
- **Affirmé** dès la conférence de presse de De Gaulle (`31 janvier 1964`)

#### Le « parlementarisme négatif »
- **Contournement** du Parlement par le 49.3, les ordonnances, le vote bloqué…
- **Critique** : marginalise le débat parlementaire

#### La judiciarisation
- **Conseil constitutionnel** = arbitre majeur
- **CEDH** et **CJUE** : standards européens

## VI. Le débat sur une VIe République

### A. Les arguments en faveur

#### Critiques de la Ve République
- **Hyperprésidence** dénaturant le parlementarisme
- **Faiblesse** du contrôle parlementaire
- **Crise** de la représentation
- **Élu présidentiel** au-dessus des partis devenu impossible

#### Projets de VIe République
- **Mélenchon** : assemblée constituante, régime parlementaire
- **Hollande** (`2012`, abandonné) : VIe République comme symbole
- **Variantes** : régime parlementaire pur, régime présidentiel, autres

### B. Les arguments contre

#### Stabilité de la Ve République
- **Plus de 65 ans** de durée
- **Adaptation** par les révisions

#### Coût d''une refondation
- **Risque** de période de transition difficile

#### Les vrais problèmes
- **Pratiques** plutôt qu''institutions
- **Réformes** ciblées suffiraient ?

### C. Les pistes de réforme

#### Représentation
- **Dose** de proportionnelle
- **Reconnaissance** du vote blanc
- **Référendum** d''initiative citoyenne

#### Pouvoirs
- **Rééquilibrage** Président/Parlement
- **Limitation** du 49.3
- **Renforcement** du contrôle parlementaire

#### Démocratie
- **Conventions citoyennes**
- **Démocratie** participative
- **Décentralisation** renforcée

## VII. Les défis du XXI^e^ siècle

### A. L''Union européenne
- **Intégration** croissante
- **Tension** souveraineté/intégration
- **Identité constitutionnelle** comme bouclier

### B. La justice constitutionnelle
- **QPC** comme outil démocratique
- **Risque** de « gouvernement des juges »

### C. Les libertés et la sécurité
- **État d''urgence** intégré dans le droit commun (loi SILT du `30 octobre 2017`)
- **Surveillance** et libertés numériques
- **Algorithmes** et droits fondamentaux

### D. La crise climatique
- **Charte de l''environnement** (`2005`)
- **Affaire du siècle** (`2021`)
- **Tribunaux** climatiques

### E. La crise démocratique
- **Abstention**
- **Populismes**
- **Polarisation**
- **Méfiance** envers les institutions

## À retenir

**Article 89** : procédure normale de révision constitutionnelle.

**Procédure** :
1. **Initiative** : Président (sur proposition du PM) ou parlementaires
2. **Adoption** en **termes identiques** par les **deux assemblées** (Sénat dispose d''un veto)
3. **Approbation finale** :
   - **Référendum** (voie normale, obligatoire pour les propositions parlementaires)
   - **Congrès** à `3/5` des suffrages exprimés (pour les projets, choix présidentiel)

**Limites** :
- **Temporelles** : vacance présidentielle, art. 16, atteinte au territoire
- **Matérielles** : **forme républicaine** (`art. 89 al. 5`)
- **Identité constitutionnelle** (Cons. const. 2006) ?

**Article 11** : utilisé controversément par **De Gaulle** en `1962` et `1969` pour réviser la Constitution. Validation politique mais critiques doctrinales.

**24 révisions** depuis 1958. Les plus importantes :
- `1962` : SUD du Président
- `1974` : saisine du CC par 60 parlementaires
- `1992` : Maastricht
- `2000` : quinquennat
- `2003` : décentralisation
- `2005` : Charte de l''environnement
- **`2008`** : grande révision (37 articles, QPC, limitation des pouvoirs présidentiels)

**Évolution du régime** : présidentialisation depuis `1962`, hyperprésidence depuis le quinquennat (`2002`), crise du fait majoritaire depuis `2024`.

**Débat sur une VIe République** : critique de l''hyperprésidence, propositions diverses (régime parlementaire, plus de démocratie directe).

**Défis** : Union européenne, justice constitutionnelle, libertés/sécurité, crise climatique, crise démocratique.'
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1';
