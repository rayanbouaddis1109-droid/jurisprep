-- =====================================================================
-- JurisPrép - Fiches de révision complètes L1 (S1 + S2)
-- Bloc 1 - Licence 1 Droit
-- =====================================================================

-- =====================================================================
-- L1 S1 - INTRODUCTION GÉNÉRALE AU DROIT
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Définition et caractères de la règle de droit', 'Notions fondamentales',
       'Qu''est-ce que le droit ? Définition, caractères de la règle juridique, distinction avec les autres règles.',
       array['Règle de droit', 'Caractère général', 'Caractère obligatoire', 'Sanction étatique', 'Droit objectif', 'Droits subjectifs'],
       12, 1,
'# Définition et caractères de la règle de droit

## I. Définition du droit
Le **droit** est l''ensemble des règles de conduite générales et impersonnelles, sanctionnées par l''autorité publique, qui régissent la vie en société. On distingue :
- **Le droit objectif** : ensemble des règles qui s''imposent à tous
- **Les droits subjectifs** : prérogatives reconnues à un individu (droit de propriété, droit de créance...)

## II. Les caractères de la règle de droit

### A. Caractère général et impersonnel
La règle de droit s''applique à tous ceux qui se trouvent dans la situation qu''elle vise, sans distinction de personne (art. 6 DDHC : « La loi est la même pour tous »).

### B. Caractère obligatoire
La règle doit être respectée. On distingue :
- Règles **impératives** (ordre public) : interdiction d''y déroger
- Règles **supplétives** : applicables sauf volonté contraire des parties

### C. Caractère coercitif (sanction étatique)
C''est le critère distinctif fondamental : seul le droit bénéficie d''une sanction organisée par l''État. Trois types de sanctions :
- **Exécution forcée** (saisie, expulsion)
- **Réparation** (dommages-intérêts)
- **Punition** (amende, prison)

## III. Distinction avec les autres règles
- **Règles morales** : pas de sanction étatique organisée
- **Règles religieuses** : fondées sur la foi, pas universelles
- **Règles de courtoisie** : pas de force obligatoire

## À retenir
La règle de droit se distingue par son **caractère général, obligatoire et sanctionné par l''État**. C''est la sanction étatique qui constitue le critère distinctif fondamental.'
from public.subjects where name = 'Introduction générale au droit';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les sources du droit', 'Sources',
       'Hiérarchie et présentation des différentes sources du droit français : Constitution, traités, lois, règlements, jurisprudence, coutume.',
       array['Constitution', 'Traités internationaux', 'Loi', 'Règlement', 'Jurisprudence', 'Coutume', 'Doctrine', 'Hiérarchie des normes'],
       15, 2,
'# Les sources du droit

## I. Les sources formelles (écrites)

### A. La Constitution (sommet)
Le **bloc de constitutionnalité** comprend :
- Constitution du 4 octobre 1958
- Préambule de 1946
- DDHC de 1789
- Charte de l''environnement de 2004
- PFRLR (Principes fondamentaux reconnus par les lois de la République)

### B. Les traités internationaux
Selon l''article 55 C, les traités régulièrement ratifiés ont une autorité supérieure à celle des lois. Le droit de l''Union européenne bénéficie d''une primauté (CJCE Costa c/ ENEL 1964).

### C. La loi
- **Lois organiques** : complètent la Constitution (art. 46 C)
- **Lois ordinaires** : votées par le Parlement (art. 34 C)
- **Ordonnances** ratifiées (art. 38 C)
- **Référendum** législatif (art. 11 C)

### D. Le règlement
- **Règlements autonomes** : matières non réservées à la loi (art. 37 C)
- **Règlements d''application** des lois
- **Arrêtés** (ministériels, préfectoraux, municipaux)
- Hiérarchie : décret > arrêté

## II. Les sources non écrites

### A. La jurisprudence
Ensemble des décisions rendues par les juridictions. Discussion doctrinale sur sa qualité de source : l''article 5 C. civ. interdit les arrêts de règlement, mais la jurisprudence crée du droit en pratique (revirements de jurisprudence).

### B. La coutume
Usage répété et constant, vécu comme obligatoire. Exige :
- **Élément matériel** : pratique répétée (longa consuetudo)
- **Élément psychologique** : sentiment du caractère obligatoire (opinio juris)

### C. La doctrine
Ensemble des écrits des juristes. Pas une source directe, mais influence forte sur la jurisprudence et le législateur.

## III. La hiérarchie des normes (pyramide de Kelsen)
Constitution > Traités > Lois organiques > Lois ordinaires > Règlements > Actes individuels

Le **contrôle de constitutionnalité** (Conseil constitutionnel, QPC depuis 2008) et le **contrôle de conventionnalité** (juge ordinaire depuis Cass. Jacques Vabre 1975 et CE Nicolo 1989) garantissent cette hiérarchie.

## À retenir
Les sources se hiérarchisent selon la pyramide de Kelsen. La loi reste au centre du système, encadrée par la Constitution au-dessus et complétée par les règlements en-dessous. La jurisprudence est devenue une source incontournable en pratique.'
from public.subjects where name = 'Introduction générale au droit';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les divisions du droit', 'Branches du droit',
       'Distinction droit public / droit privé, et présentation des principales branches du droit.',
       array['Droit public', 'Droit privé', 'Droit mixte', 'Droit interne', 'Droit international', 'Droit civil', 'Droit administratif'],
       10, 3,
'# Les divisions du droit

## I. Droit public et droit privé : la summa divisio

### A. Le droit privé
Régit les rapports entre **personnes privées** (physiques ou morales).
Principales branches :
- **Droit civil** : famille, biens, contrats, responsabilité, successions
- **Droit commercial** : commerçants, sociétés, fonds de commerce
- **Droit du travail** : relations employeur-salarié
- **Droit social** (sécurité sociale)
- **Droit international privé** : conflits de lois et juridictions

### B. Le droit public
Régit les rapports impliquant au moins **une personne publique** (État, collectivités).
Principales branches :
- **Droit constitutionnel** : institutions politiques et libertés fondamentales
- **Droit administratif** : organisation et activité de l''administration
- **Droit fiscal** : impôts et taxes
- **Droit international public** : relations entre États
- **Finances publiques** : budget et comptabilité publique

## II. Critères de distinction

### A. Critères classiques
- **Critère des parties** : présence d''une personne publique
- **Critère du but** : intérêt général (public) vs intérêts privés
- **Critère des moyens** : prérogatives de puissance publique (public)

### B. Limites et nuances
La distinction n''est pas absolue. Cas particuliers :
- **Service public industriel et commercial (SPIC)** : relève largement du droit privé
- **Personnes privées chargées de missions de service public** : peuvent être soumises au droit public

## III. Les droits mixtes
Certaines matières combinent les deux :
- **Droit pénal** : protège des intérêts privés (victime) mais par l''action publique (Ministère public)
- **Droit processuel** (procédure civile, pénale, administrative)
- **Droit de la concurrence**

## IV. Distinction droit interne / droit international
- **Droit interne** : produit par les autorités nationales, applicable sur le territoire
- **Droit international** : produit par accords entre États (traités) ou organisations (UE)

## À retenir
La **summa divisio** droit public / droit privé structure le système juridique français. Elle entraîne des **juridictions distinctes** (juge judiciaire pour le droit privé, juge administratif pour le droit public — séparation depuis la loi des 16-24 août 1790).'
from public.subjects where name = 'Introduction générale au droit';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''application de la loi dans le temps', 'Application de la loi',
       'Entrée en vigueur, abrogation, conflits de lois dans le temps, principe de non-rétroactivité.',
       array['Promulgation', 'Publication', 'Entrée en vigueur', 'Non-rétroactivité', 'Abrogation', 'Effet immédiat', 'Survie de la loi ancienne'],
       12, 4,
'# L''application de la loi dans le temps

## I. L''entrée en vigueur

### A. La promulgation
Acte par lequel le **Président de la République** atteste l''existence de la loi (art. 10 C). Doit intervenir dans les 15 jours suivant l''adoption définitive.

### B. La publication
La loi entre en vigueur après publication au **Journal officiel** (JORF). Par défaut, le lendemain de la publication (art. 1er C. civ.). En cas d''urgence, le jour même.

### C. La vacatio legis
Délai entre publication et entrée en vigueur, parfois nécessaire pour les décrets d''application.

## II. La sortie de vigueur : l''abrogation

### A. L''abrogation expresse
La loi nouvelle indique expressément qu''elle abroge la précédente.

### B. L''abrogation tacite
Résulte de l''incompatibilité entre une loi ancienne et une loi nouvelle.

### C. Le désuétude
**Principe** : la non-application prolongée n''entraîne pas abrogation. Une loi reste en vigueur tant qu''elle n''est pas formellement abrogée.

## III. Les conflits de lois dans le temps

### A. Le principe de non-rétroactivité (art. 2 C. civ.)
« La loi ne dispose que pour l''avenir ; elle n''a point d''effet rétroactif. »

### B. Exceptions à la non-rétroactivité
- **Lois expressément rétroactives** (sauf en matière pénale)
- **Lois interprétatives**
- **Lois pénales plus douces** : rétroactivité in mitius (art. 112-1 C. pén.)
- **Lois de procédure** : application immédiate

### C. L''effet immédiat de la loi nouvelle
Pour les **situations en cours**, la loi nouvelle s''applique immédiatement aux effets futurs, sauf en matière contractuelle (principe de la **survie de la loi ancienne**).

### D. La survie de la loi ancienne (contrats)
Les contrats restent régis par la loi en vigueur au jour de leur conclusion, pour garantir la **sécurité contractuelle**. Exception : lois d''ordre public économique ou social impérieux.

## IV. Le contrôle des lois rétroactives
- **Conseil constitutionnel** : les lois rétroactives ne doivent pas porter atteinte aux droits acquis ni à des situations légalement constituées
- **CEDH** : les lois rétroactives en matière fiscale ou civile doivent respecter le procès équitable (art. 6 § 1 CEDH)

## À retenir
**Principe** : la loi nouvelle n''est pas rétroactive (art. 2 C. civ.). **Exception en matière pénale** : la loi plus douce s''applique rétroactivement (in mitius). **Pour les contrats** : survie de la loi ancienne.'
from public.subjects where name = 'Introduction générale au droit';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La preuve en droit', 'Preuve',
       'Charge de la preuve, modes de preuve, admissibilité et force probante.',
       array['Charge de la preuve', 'Actori incumbit probatio', 'Preuve écrite', 'Preuve testimoniale', 'Présomptions', 'Aveu', 'Serment'],
       10, 5,
'# La preuve en droit

## I. La charge de la preuve (art. 1353 C. civ.)

### A. Principe : actori incumbit probatio
Celui qui réclame l''exécution d''une obligation doit la prouver. Réciproquement, celui qui prétend en être libéré doit prouver le paiement ou le fait qui a produit l''extinction.

### B. Le renversement de la charge : les présomptions

#### Présomptions légales
Établies par la loi, elles dispensent celui en faveur duquel elles existent de toute preuve (art. 1354 C. civ.) :
- **Simples** : peuvent être renversées par preuve contraire
- **Irréfragables** : preuve contraire interdite
- **Mixtes** : preuve contraire limitée à certains moyens

#### Présomptions judiciaires
Le juge en tire de l''indice connu (« graves, précises et concordantes », art. 1382 C. civ.).

## II. L''objet de la preuve
- **Le fait** doit être prouvé
- **Le droit** est présumé connu du juge (jura novit curia)

## III. Les modes de preuve (art. 1358 C. civ.)

### A. La preuve par écrit
- **Acte authentique** (art. 1369) : reçu par un officier public (notaire, huissier). Force probante : fait foi jusqu''à inscription de faux.
- **Acte sous signature privée** (art. 1372) : rédigé et signé par les parties. Fait foi jusqu''à preuve contraire.
- **Écrit électronique** : admis dans les mêmes conditions (art. 1366).

### B. La preuve testimoniale
Déposition orale d''un témoin. Admissible **uniquement pour les actes juridiques < 1 500 €** (art. 1359 C. civ.) ou pour les faits juridiques.

### C. Les présomptions de l''homme
Indices que le juge interprète. Soumises aux mêmes restrictions que la preuve testimoniale.

### D. L''aveu
Reconnaissance par une partie d''un fait défavorable à elle.
- **Judiciaire** (art. 1383-2) : devant le juge, force probante absolue
- **Extrajudiciaire** : appréciation libre du juge

### E. Le serment
- **Décisoire** : déféré par une partie à l''autre, tranche le litige
- **Supplétoire** : déféré par le juge

## IV. La distinction acte juridique / fait juridique

### A. Actes juridiques (contrats, testaments)
Preuve par écrit au-dessus de 1 500 €. Exceptions : impossibilité matérielle ou morale, commencement de preuve par écrit.

### B. Faits juridiques (accidents, naissances)
Preuve libre par tous moyens.

## À retenir
**Charge de la preuve** : pèse sur le demandeur (art. 1353). Pour les **actes juridiques > 1 500 €**, preuve écrite obligatoire. Pour les **faits juridiques**, preuve libre.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- L1 S1 - INTRODUCTION AU DROIT CONSTITUTIONNEL
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''État : éléments constitutifs', 'Notion d''État',
       'Les trois éléments constitutifs de l''État (territoire, population, souveraineté), formes d''État (unitaire, fédéral).',
       array['Territoire', 'Population', 'Souveraineté', 'État unitaire', 'État fédéral', 'État régional', 'Nation'],
       12, 1,
'# L''État : éléments constitutifs

## I. Les éléments constitutifs de l''État

### A. Le territoire
Espace géographique sur lequel s''exerce la souveraineté étatique. Comprend :
- **Espace terrestre** (sol et sous-sol)
- **Espace maritime** (mer territoriale jusqu''à 12 milles)
- **Espace aérien** au-dessus

Caractères : **délimité** (frontières) et **continu** (sauf État archipel).

### B. La population
Ensemble des personnes vivant sur le territoire.
- **Nation** : communauté ayant conscience d''un destin commun (Renan, *Qu''est-ce qu''une nation ?* 1882)
- **Peuple** : ensemble des citoyens, titulaires de la souveraineté

Distinction entre conception **objective** (allemande, ethnique) et **subjective** (française, contractuelle) de la nation.

### C. La souveraineté
**Pouvoir suprême** de l''État. Caractères :
- **Originaire** : ne dérive d''aucun autre pouvoir
- **Inconditionné** : pas de limites
- **Indivisible**

Distinction :
- **Souveraineté interne** : autorité suprême sur le territoire
- **Souveraineté externe** : indépendance face aux autres États (Convention de Montevideo 1933)

## II. Les formes d''État

### A. L''État unitaire
Un seul ordre juridique, un seul pouvoir central. Exemple : France.
Modalités :
- **Centralisation** : tout le pouvoir à l''État central
- **Déconcentration** : transfert à des agents locaux nommés (préfet)
- **Décentralisation** : transfert à des collectivités élues (communes, départements, régions)

### B. L''État fédéral
Union d''**États fédérés** (qui conservent leur Constitution) sous une **Constitution fédérale**. Exemples : USA, Allemagne, Suisse.
Principes (Schmitt, Burdeau) :
- **Principe de superposition** : deux ordres juridiques
- **Principe d''autonomie** : États fédérés conservent compétences
- **Principe de participation** : participation aux décisions fédérales (Sénat fédéral)

### C. L''État régional
Forme intermédiaire. Régions dotées d''une autonomie politique et législative, mais sans Constitution propre. Exemples : Italie, Espagne.

### D. La confédération
Association d''États souverains liés par un traité. Pas un véritable État. Exemples historiques : USA 1781-1787.

## III. L''évolution contemporaine
- **Décentralisation française** : 1982 (lois Defferre), révision de 2003 inscrivant la décentralisation dans la Constitution (art. 1er C. : « son organisation est décentralisée »)
- **Phénomène de fédéralisation** : Union européenne (sui generis)

## À retenir
L''État repose sur la **triade territoire-population-souveraineté** (Jellinek). La distinction unitaire/fédéral structure les différents modèles d''État. La France est un État **unitaire décentralisé**.'
from public.subjects where name = 'Introduction au droit constitutionnel';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Constitution', 'Concept de Constitution',
       'Définition, classification, élaboration et révision des Constitutions.',
       array['Constitution', 'Pouvoir constituant', 'Constitution rigide', 'Constitution souple', 'Constitution écrite', 'Révision', 'Coutume constitutionnelle'],
       14, 2,
'# La Constitution

## I. Définition

### A. Sens matériel et formel
- **Sens matériel** : ensemble des règles relatives à l''organisation et au fonctionnement des pouvoirs publics
- **Sens formel** : règles consignées dans un document écrit selon une procédure spéciale, supérieur aux lois ordinaires

### B. Fonctions de la Constitution
1. **Organiser les pouvoirs** publics
2. **Limiter le pouvoir** (article 16 DDHC : « Toute société dans laquelle la garantie des droits n''est pas assurée, ni la séparation des pouvoirs déterminée, n''a point de Constitution »)
3. **Garantir les droits** fondamentaux

## II. Classification des Constitutions

### A. Constitution écrite / non écrite
- **Écrites** : la plupart des États modernes
- **Coutumières** : Royaume-Uni (mélange de textes, conventions, jurisprudence)

### B. Constitution rigide / souple
- **Rigide** : procédure de révision plus difficile que celle des lois ordinaires (France art. 89 C.)
- **Souple** : modifiable par loi ordinaire (Angleterre)

### C. Constitution-loi / Constitution-règle
- **Constitution-loi** : se contente d''organiser les pouvoirs
- **Constitution-règle** : intègre des valeurs et principes (modèle français contemporain)

## III. L''élaboration de la Constitution

### A. Le pouvoir constituant originaire
Pouvoir d''établir une nouvelle Constitution. Inconditionné juridiquement, mais légitimé par la Nation/Peuple.
Modes :
- **Autoritaire** : Constitution octroyée (Charte de 1814)
- **Démocratique** : Constituante élue (1791, 1848) ou référendum (1958)

### B. Le pouvoir constituant dérivé (de révision)
Pouvoir de modifier la Constitution. Encadré par la Constitution elle-même.

## IV. La révision de la Constitution

### A. La procédure (art. 89 C.)
1. **Initiative** : Président (sur proposition du PM) ou parlementaires
2. **Vote** : adoption en termes identiques par les deux assemblées
3. **Approbation** :
   - **Référendum** (voie normale)
   - **Congrès** à Versailles (3/5 des suffrages exprimés) si initiative présidentielle

### B. Limites à la révision
- **Temporelles** : vacance présidentielle, atteinte au territoire (art. 89 C.)
- **Matérielles** : la **forme républicaine du gouvernement** ne peut être révisée (art. 89 al. 5 C.)

### C. L''utilisation contestée de l''article 11
Le Général de Gaulle a utilisé l''art. 11 (référendum législatif) pour réviser la Constitution en 1962 (élection du Président au suffrage universel direct). Doctrine majoritairement critique, mais procédé validé politiquement.

## V. La coutume constitutionnelle
Pratiques répétées. La doctrine débat de leur valeur normative. Exemples : présence du Premier ministre aux Conseils des ministres, conférences de presse présidentielles.

## À retenir
La Constitution est la **norme suprême** de l''ordre juridique étatique. Sa **rigidité** garantit sa supériorité. En France, la révision suit l''**article 89** (procédure normale) ou exceptionnellement l''article 11 (procédé gaullien).'
from public.subjects where name = 'Introduction au droit constitutionnel';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La séparation des pouvoirs', 'Théorie de la séparation',
       'De Locke à Montesquieu, la théorie classique et ses interprétations.',
       array['Locke', 'Montesquieu', 'De l''Esprit des lois', 'Pouvoir législatif', 'Pouvoir exécutif', 'Pouvoir judiciaire', 'Checks and balances'],
       11, 3,
'# La séparation des pouvoirs

## I. Origines théoriques

### A. John Locke (1689)
*Two Treatises of Government*. Distingue trois pouvoirs :
- **Législatif** (suprême)
- **Exécutif** (lois nationales)
- **Fédératif** (relations extérieures)

### B. Montesquieu (1748)
*De l''Esprit des lois*, Livre XI, chapitre 6. Théorisation classique :
- **Pouvoir législatif** (faire les lois)
- **Pouvoir exécutif** (exécuter les lois)
- **Pouvoir judiciaire** (juger les conflits)

**Citation célèbre** : « Pour qu''on ne puisse abuser du pouvoir, il faut que par la disposition des choses, le pouvoir arrête le pouvoir. »

## II. Sens de la séparation

### A. Séparation organique
Les organes exerçant chaque pouvoir doivent être distincts et indépendants.

### B. Séparation fonctionnelle
Chaque organe exerce une fonction spécifique. **MAIS** : Montesquieu admettait la **faculté d''empêcher** mutuelle.

### C. Interprétations
- **Stricte** : interdiction de toute interférence (modèle américain initial)
- **Souple** : collaboration et contrôle mutuels (parlementarisme britannique)

## III. Application dans les régimes politiques

### A. Régime présidentiel (USA)
- Séparation **stricte** des pouvoirs
- Pas de responsabilité gouvernementale devant le Parlement
- Pas de dissolution
- Pouvoirs d''**empêchement réciproques** (veto présidentiel, impeachment, confirmation des nominations)

### B. Régime parlementaire (Royaume-Uni, Allemagne)
- Séparation **souple**
- Gouvernement issu et responsable du Parlement (**motion de censure**)
- Pouvoir de **dissolution** du Parlement par l''exécutif
- Collaboration des organes

### C. Régime d''assemblée
Concentration des pouvoirs au profit du Parlement (Convention 1792-1795). Souvent dérives autoritaires.

### D. Le régime français
La V^e^ République mêle des éléments :
- Parlementaires (responsabilité, dissolution)
- Présidentiels (élection au suffrage universel)
Qualification doctrinale : **régime semi-présidentiel** (Duverger), ou parlementaire à correction présidentielle.

## IV. La séparation aujourd''hui

### A. Critiques
- **Carré de Malberg** : la séparation parfaite est impossible
- Émergence de la **majorité présidentielle** au Parlement supprime la séparation effective entre exécutif et législatif

### B. Renouveau : la séparation verticale
- **Décentralisation** : séparation État / collectivités
- **Indépendance des autorités** administratives indépendantes
- **Justice constitutionnelle** : contrôle des autres pouvoirs

### C. Le pouvoir juridictionnel
Long temps minimisé en France (« la bouche de la loi », Montesquieu). Aujourd''hui, l''indépendance de la justice est consacrée constitutionnellement (art. 64 C.).

## À retenir
**Théorie** : Montesquieu, *De l''Esprit des lois* (1748). **But** : éviter la tyrannie par le contrôle mutuel des pouvoirs. **Mise en œuvre** variable : stricte (USA), souple (UK), mixte (France). Aujourd''hui, la séparation prend des formes nouvelles (juge constitutionnel, AAI, fédéralisme).'
from public.subjects where name = 'Introduction au droit constitutionnel';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les régimes politiques', 'Typologie des régimes',
       'Classification des régimes politiques : présidentiel, parlementaire, semi-présidentiel, dictature.',
       array['Régime présidentiel', 'Régime parlementaire', 'Régime semi-présidentiel', 'Démocratie représentative', 'Démocratie directe', 'Démocratie semi-directe'],
       12, 4,
'# Les régimes politiques

## I. Classification selon les modes de désignation

### A. Démocratie directe
Le peuple exerce directement le pouvoir. Modèle athénien. Aujourd''hui : référendum (modalité), démocratie locale (Confédération helvétique).

### B. Démocratie représentative
Le peuple élit des représentants qui exercent le pouvoir en son nom. **Modèle français** (art. 3 C. : « La souveraineté nationale appartient au peuple qui l''exerce par ses représentants et par la voie du référendum »).

### C. Démocratie semi-directe
Combine représentation et participation directe. France : référendum (art. 11, 89 C.).

## II. Classification selon la séparation des pouvoirs

### A. Le régime présidentiel
**Modèle** : États-Unis.

Caractéristiques :
- **Séparation stricte** des pouvoirs
- Président **élu au suffrage universel** (chef de l''État et chef du gouvernement)
- Pas de **responsabilité gouvernementale** devant le Parlement
- Pas de **dissolution** du Parlement
- **Veto présidentiel** sur les lois
- **Impeachment** : procédure exceptionnelle de destitution

### B. Le régime parlementaire
**Modèles** : Royaume-Uni, Allemagne, Italie, Espagne.

Caractéristiques :
- **Séparation souple**
- **Dualisme de l''exécutif** : chef de l''État (apolitique) + chef du gouvernement
- Gouvernement **issu de** et **responsable devant** le Parlement
- **Motion de censure** / question de confiance
- **Dissolution** du Parlement par l''exécutif
- **Contreseing** des actes du chef d''État

Types :
- **Parlementarisme moniste** : pouvoir réel au Premier ministre (UK, Allemagne)
- **Parlementarisme dualiste** : pouvoir partagé (orléanisme historique)
- **Parlementarisme rationalisé** : techniques pour stabiliser le gouvernement (49.3 français, vote constructif allemand)

### C. Le régime semi-présidentiel (Duverger)
**Modèles** : France, Russie, Portugal, Roumanie.

Caractéristiques :
- Président **élu au suffrage universel direct**
- Président dispose de **pouvoirs propres importants**
- Mais le **gouvernement est responsable** devant le Parlement (élément parlementaire)

**Cohabitation** : phénomène spécifique quand majorité présidentielle et majorité parlementaire sont opposées.

### D. Le régime d''assemblée
Concentration au profit du Parlement. Exemples historiques :
- Convention (1792-1795)
- I^V^e^ République (instabilité gouvernementale)

## III. Classification selon le respect de la démocratie

### A. Régimes démocratiques
- Pluralisme politique
- Libertés publiques garanties
- Élections libres et régulières
- État de droit

### B. Régimes autoritaires
Restrictions des libertés politiques mais société civile partiellement libre.

### C. Régimes totalitaires (Arendt, Friedrich-Brzezinski)
- Idéologie officielle unique
- Parti unique
- Contrôle total de la société
- Terreur d''État

## IV. Les régimes hybrides contemporains
Émergence de « démocraties illibérales » (Zakaria) : élections libres mais limitation des libertés et de l''opposition. Hongrie, Turquie, Russie.

## À retenir
**Régime présidentiel** : séparation stricte (USA). **Régime parlementaire** : responsabilité gouvernementale + dissolution (UK, Allemagne). **Régime semi-présidentiel** : Président fort élu au suffrage universel + gouvernement responsable (France).'
from public.subjects where name = 'Introduction au droit constitutionnel';

-- =====================================================================
-- L1 S1 - INTRODUCTION HISTORIQUE AU DROIT
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le droit romain', 'Antiquité',
       'Les grandes étapes du droit romain : Royauté, République, Empire. Apports majeurs et héritage.',
       array['Droit romain', 'XII Tables', 'Corpus juris civilis', 'Justinien', 'Ius civile', 'Ius gentium', 'Préteur'],
       13, 1,
'# Le droit romain

## I. Périodisation

### A. La Royauté (753-509 av. J.-C.)
Droit essentiellement **religieux** (fas) et coutumier. Pontifes dépositaires du savoir juridique.

### B. La République (509-27 av. J.-C.)
- **Loi des XII Tables (451-450 av. J.-C.)** : première codification, transition vers un droit laïc. Affichée sur le Forum.
- Distinction **ius civile** (droit des citoyens romains) / **ius gentium** (droit des étrangers, plus souple)
- Rôle du **préteur** : magistrat qui adapte le droit par ses édits
- **Jurisconsultes** : développent la doctrine (responsa prudentium)

### C. Le Haut-Empire (27 av. J.-C. - 284 ap. J.-C.)
- **Âge d''or de la jurisprudence** : Gaius (Institutes, v. 160), Papinien, Ulpien, Paul
- L''Empereur devient source principale du droit (constitutions impériales)
- **Édit perpétuel** (vers 130) : fige le droit prétorien (Salvius Julianus)

### D. Le Bas-Empire (284-565)
- Multiplication des textes impériaux
- Compilations privées : Code grégorien, Code hermogénien

### E. Justinien (527-565) : la grande compilation
*Corpus juris civilis* :
- **Code** (529, révisé 534) : constitutions impériales
- **Digeste** (533) : fragments des jurisconsultes (50 livres)
- **Institutes** (533) : manuel d''enseignement
- **Novelles** : constitutions de Justinien

## II. Les grandes notions du droit romain

### A. Distinction droit privé / droit public
Ulpien : « Le droit public est celui qui regarde l''état de la chose publique romaine ; le droit privé celui qui regarde l''utilité des particuliers ».

### B. Les sources
- **Coutumes**
- **Lois** (loi des XII Tables, plébiscites, sénatus-consultes)
- **Édits des magistrats**
- **Constitutions impériales**
- **Responsa prudentium** (doctrine)

### C. Personnes, biens, obligations
La trilogie repère du Code civil français vient de Gaius : *omne autem ius quo utimur vel ad personas pertinet vel ad res vel ad actiones*.

### D. La distinction obligation / propriété
Construction romaine fondatrice. Droits personnels (obligation) et droits réels (propriété, démembrements).

## III. L''héritage du droit romain

### A. Persistance dans l''Empire byzantin
Continuité jusqu''en 1453.

### B. Redécouverte en Occident (XII^e^ siècle)
- **École de Bologne** (Irnerius, vers 1100) : commentaire du *Digeste*
- **Glossateurs** puis **postglossateurs** (Bartole, XIV^e^)

### C. Le ius commune européen (XII^e^ - XVIII^e^)
Droit romain + droit canonique = droit commun de l''Europe continentale.

### D. Influence sur le Code civil (1804)
- Plan tripartite (personnes, biens, obligations)
- Théorie générale du contrat
- Théorie de la propriété
- Régime des actions

## IV. Héritage conceptuel
- **Système romaniste** vs **common law** : la distinction structure les familles de droit aujourd''hui
- Vocabulaire juridique : la plupart des termes en français viennent du latin (contrat, obligation, propriété, prescription...)
- Méthode du raisonnement juridique

## À retenir
Le droit romain (-450 → +565) est le **socle des systèmes juridiques continentaux**. Sa redécouverte au Moyen Âge en Italie a façonné le **droit commun européen**. Le Code civil français de 1804 en est l''héritier direct.'
from public.subjects where name = 'Introduction historique au droit';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''Ancien Régime', 'Ancien Régime',
       'Le droit français entre Moyen Âge et Révolution : coutumes, ordonnances royales, droit canonique.',
       array['Pays de coutumes', 'Pays de droit écrit', 'Ordonnances royales', 'Parlements', 'Droit canonique', 'Lits de justice'],
       12, 2,
'# L''Ancien Régime

## I. Pluralisme des sources

### A. La division Nord/Sud
- **Pays de coutumes** (Nord de la Loire) : droit coutumier d''origine germanique
- **Pays de droit écrit** (Sud) : droit romain (sous l''influence du *Corpus juris*)

### B. Les coutumes
Plus de **300 coutumes locales** au XV^e^ siècle. Charles VII (ordonnance de Montils-lès-Tours, 1454) ordonne leur **rédaction** :
- Coutume de Paris (1510, refonte 1580)
- Coutume de Normandie
- Coutume de Bretagne

### C. Le droit canonique
Droit de l''Église catholique. Régit largement :
- **Mariage** (compétence ecclésiastique jusqu''en 1789)
- **Filiation**
- **Successions** (en partie)

### D. Le droit romain
Source du droit dans le Midi. Étudié dans les facultés. Servait de droit subsidiaire ailleurs.

### E. Les ordonnances royales
Affirmation progressive du **pouvoir législatif royal**. Grandes ordonnances :
- **Ordonnance de Villers-Cotterêts (1539)** : langue française obligatoire dans les actes
- **Ordonnances de Colbert** (1667 civile, 1670 criminelle, 1673 commerciale)
- **Ordonnances de Daguesseau** (1731 donations, 1735 testaments, 1747 substitutions) : préparent l''unification

## II. Les institutions

### A. Le roi
Théorie de la **monarchie absolue** (Bodin, *Six livres de la République*, 1576) : roi source de toute justice et législation. Limites traditionnelles :
- **Lois fondamentales** du royaume (succession, inaliénabilité du domaine)
- **Droits acquis**, libertés des corps

### B. Les Parlements
Cours souveraines, principalement le **Parlement de Paris**. Compétences :
- Jugement en dernier ressort
- **Enregistrement des édits royaux** (avec possibilité de **remontrances**)
- Lits de justice : le roi vient en personne imposer l''enregistrement

Conflit récurrent avec la monarchie au XVIII^e^ siècle.

### C. Les autres juridictions
- **Justice seigneuriale** (subsistante)
- **Justice ecclésiastique** (officialités)
- **Juridictions consulaires** (commerciale)
- Multiplicité confuse, dénoncée par les Lumières

## III. La question de l''unification

### A. Les obstacles
- Pluralisme des sources
- Particularismes provinciaux
- Privilèges des ordres et des corps

### B. Les tentatives
- Travaux de **Daguesseau** au XVIII^e^
- Projets d''unification de **Pothier** (manuels de droit)
- Cahiers de doléances de 1789 demandent « une seule loi pour la France entière »

## IV. Société d''ordres et droit
- **Trois ordres** : clergé, noblesse, tiers état
- Privilèges fiscaux, juridiques, honorifiques
- Critique des Lumières (Voltaire, Rousseau)

## À retenir
L''Ancien Régime se caractérise par un **pluralisme des sources** (coutumes Nord, droit écrit Sud, droit canonique, ordonnances royales). L''unification du droit est un **objectif politique majeur** des Lumières, repris par la Révolution.'
from public.subjects where name = 'Introduction historique au droit';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Révolution française et le Code civil', 'Révolution et codification',
       'Rupture révolutionnaire et grande œuvre napoléonienne : le Code civil de 1804.',
       array['Révolution française', 'DDHC', 'Code civil', 'Napoléon', 'Portalis', 'Égalité civile', 'Codification'],
       14, 3,
'# La Révolution française et le Code civil

## I. La rupture révolutionnaire (1789-1799)

### A. La nuit du 4 août 1789
**Abolition des privilèges** féodaux et de l''ordre social ancien.

### B. La Déclaration des droits de l''homme et du citoyen (26 août 1789)
Texte fondateur :
- **Art. 1** : « Les hommes naissent et demeurent libres et égaux en droits »
- **Art. 4** : Définition de la liberté
- **Art. 6** : Loi expression de la volonté générale
- **Art. 17** : Propriété, droit inviolable et sacré

### C. Bouleversements du droit civil
- **Loi du 20 septembre 1792** : laïcisation du mariage, divorce
- **Abolition de l''esclavage** (1794, rétabli par Napoléon en 1802)
- **Égalité successorale** entre enfants (loi du 17 nivôse an II)
- **Vente des biens nationaux**

### D. Tentatives de codification révolutionnaires
**Cambacérès** présente trois projets de Code civil (1793, 1794, 1796) : non aboutis car contexte politique tumultueux.

## II. Le Code civil de 1804

### A. Contexte
Napoléon, Premier consul, veut **stabiliser la société** post-révolutionnaire.

### B. La commission
4 juristes (deux des pays de coutumes, deux des pays de droit écrit) :
- **Tronchet** (droit coutumier)
- **Bigot de Préameneu** (droit coutumier)
- **Portalis** (droit écrit, principal artisan)
- **Maleville**

### C. Élaboration
- Projet présenté à Napoléon en 1801
- **Conseil d''État** discute le projet (102 sessions, Napoléon préside 57)
- 36 lois adoptées entre 1803 et 1804
- **Loi du 21 mars 1804** : réunion en un *Code civil*

### D. Le Discours préliminaire de Portalis
Manifeste de la codification :
- « **Les lois ne sont pas de purs actes de puissance ; ce sont des actes de sagesse, de justice et de raison** »
- Compromis entre droit révolutionnaire et tradition
- Rôle du juge dans l''interprétation

### E. Plan du Code (inspiré de Gaius)
- **Livre préliminaire** : publication, effets, application
- **Livre I** : Des personnes
- **Livre II** : Des biens et des différentes modifications de la propriété
- **Livre III** : Des différentes manières dont on acquiert la propriété (le plus volumineux, comprend les obligations)

### F. Caractères
- **Compromis** entre Ancien Régime (autorité paternelle, mariage) et Révolution (égalité civile, propriété individuelle)
- **Langue claire**, accessible
- **Brièveté** (2 281 articles)
- Style direct, articles courts

## III. Le rayonnement du Code civil

### A. En France
- **Code Napoléon** (titre officiel 1807-1814 et 1852-1870)
- Reste en vigueur, **plus de 2 200 articles** maintenus ou modifiés
- **2016** : grande réforme du droit des contrats (ordonnance du 10 février)

### B. Dans le monde
Influence majeure :
- **Italie**, **Belgique**, **Pays-Bas**, **Espagne**, **Portugal**
- Amérique latine (Bolívar admire Napoléon)
- Louisiane (USA)
- Québec
- **Japon** (Code civil de 1898)
- Colonies françaises

## IV. Les autres codes napoléoniens
- **Code de procédure civile** (1806)
- **Code de commerce** (1807)
- **Code d''instruction criminelle** (1808)
- **Code pénal** (1810)

Forment l''ensemble dit **« Codes napoléoniens »**.

## À retenir
La **Révolution** rompt avec l''Ancien Régime (DDHC 1789, égalité civile). Le **Code civil de 1804** (Portalis) opère la **synthèse** entre tradition et révolution. Il rayonne dans le monde entier, fondement du **système romano-germanique**.'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- L1 S1 - INSTITUTIONS JURIDICTIONNELLES
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''ordre judiciaire', 'Juridictions judiciaires',
       'Organisation des juridictions civiles et pénales : du tribunal judiciaire à la Cour de cassation.',
       array['Tribunal judiciaire', 'Cour d''appel', 'Cour de cassation', 'Tribunal de commerce', 'Conseil de prud''hommes', 'Cour d''assises'],
       14, 1,
'# L''ordre judiciaire

## I. Premier degré

### A. Le tribunal judiciaire (TJ)
**Issue de la fusion** TGI + tribunal d''instance (loi du 23 mars 2019, en vigueur 1er janvier 2020).

Compétence :
- Litiges **civils > 10 000 €** ou non chiffrables
- Compétences exclusives : famille, succession, état civil, propriété immobilière
- **Chambre de proximité** : ancien tribunal d''instance (litiges < 10 000 €)

Composition : juges professionnels. Décisions susceptibles d''appel (sauf petits litiges).

### B. Le tribunal de commerce
**Composé de juges consulaires** (commerçants élus). Compétence :
- Litiges entre commerçants
- Litiges relatifs aux actes de commerce
- Procédures collectives (sauvegarde, redressement, liquidation)

### C. Le conseil de prud''hommes (CPH)
**Juridiction paritaire** : 4 conseillers (2 salariés + 2 employeurs, élus). Compétence :
- Litiges individuels nés du contrat de travail

Procédure : **bureau de conciliation**, puis **bureau de jugement**.

### D. Le tribunal des affaires de sécurité sociale (TASS)
Supprimé en 2019 → compétences transférées au **pôle social du tribunal judiciaire**.

### E. Juridictions pénales du premier degré
- **Tribunal de police** : contraventions
- **Tribunal correctionnel** : délits (jusqu''à 10 ans de prison)
- **Cour d''assises** : crimes. Jury de **6 jurés** (1er degré) + 3 magistrats. Décisions rendues à la majorité de 7 voix sur 9.
- **Cour criminelle départementale** (expérimentation puis généralisation 2023) : crimes punis de 15-20 ans, sans jury

## II. Second degré : la Cour d''appel

### A. Compétence
**Voie de l''appel** : réformation ou confirmation des décisions du premier degré.

### B. Organisation
- **Chambres** spécialisées (civile, commerciale, sociale, pénale)
- **Cour d''assises d''appel** : 9 jurés + 3 magistrats, décisions à 8 voix sur 12

### C. Le double degré de juridiction
Principe consacré par la **CEDH (art. 2 du protocole n° 7)** en matière pénale. Pas absolu en matière civile.

## III. La Cour de cassation

### A. Rôle
**Pas un troisième degré** : ne juge pas le fait, mais le droit.
- Veille à l''**application uniforme** de la loi
- Contrôle la **conformité au droit** des décisions des juges du fond

### B. Composition
- Premier président
- 6 chambres : 3 civiles + 1 commerciale + 1 sociale + 1 criminelle
- Formations : **chambre mixte**, **assemblée plénière** (plus solennelles)

### C. Le pourvoi en cassation
**Effets** :
- **Cassation** : annule la décision attaquée et renvoie devant une autre juridiction de même degré
- **Rejet** : maintient la décision

Sur **second pourvoi** dans la même affaire : la cour de renvoi doit se conformer à la décision de l''**Assemblée plénière** (loi du 3 juillet 1967).

### D. La saisine pour avis
**Loi du 15 mai 1991** : un juge du fond peut interroger la Cour sur une question de droit nouvelle, complexe et sérieuse.

## IV. Le Ministère public (Parquet)

### A. Rôle
- Représente les intérêts de la société
- Conduit l''action publique en matière pénale
- Donne des avis en matière civile

### B. Organisation
- **Procureur de la République** (TJ)
- **Procureur général** près la Cour d''appel
- **Procureur général près la Cour de cassation**
- Lien hiérarchique avec le **garde des Sceaux**

## À retenir
Premier degré : **TJ, tribunal de commerce, CPH** (civil), **tribunal de police/correctionnel/cour d''assises** (pénal). Second degré : **Cour d''appel**. Au sommet : **Cour de cassation** (ne juge pas le fait, mais le droit).'
from public.subjects where name = 'Institutions juridictionnelles';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''ordre administratif', 'Juridictions administratives',
       'Tribunal administratif, cour administrative d''appel, Conseil d''État.',
       array['Tribunal administratif', 'Cour administrative d''appel', 'Conseil d''État', 'Recours pour excès de pouvoir', 'Plein contentieux', 'Arrêt Blanco'],
       12, 2,
'# L''ordre administratif

## I. Le dualisme juridictionnel français

### A. Le principe de séparation des autorités
- **Loi des 16-24 août 1790** : « Les fonctions judiciaires sont distinctes et demeureront toujours séparées des fonctions administratives. »
- **Décret du 16 fructidor an III (1795)** : « Défenses itératives sont faites aux tribunaux de connaître des actes d''administration. »

### B. La consécration jurisprudentielle
**Arrêt Blanco (TC, 8 février 1873)** : la responsabilité de l''État relevant des services publics est soumise au droit administratif et à la compétence du juge administratif.

## II. Premier degré : le tribunal administratif (TA)

### A. Compétence
**Juge de droit commun** du contentieux administratif. Connaît en premier ressort de l''ensemble des litiges, sauf attributions particulières.

### B. Compétence territoriale
**Lieu de l''autorité** qui a pris la décision contestée (en principe).

### C. Procédure
**Procédure essentiellement écrite**. Communication des mémoires via Télérecours.

## III. Second degré : la Cour administrative d''appel (CAA)

### A. Création
**Loi du 31 décembre 1987** : créées pour désengorger le Conseil d''État.

### B. Compétence
Appel des jugements des tribunaux administratifs, sauf :
- Élections municipales et cantonales (Conseil d''État directement)
- Référé

## IV. Le Conseil d''État

### A. Double fonction
- **Fonction consultative** (section administrative) : conseille le Gouvernement sur les projets de loi et de décret
- **Fonction juridictionnelle** (section du contentieux)

### B. Compétences contentieuses

#### Juge de cassation (cas le plus fréquent)
Casse les arrêts des CAA et juridictions administratives spécialisées.

#### Juge d''appel (résiduel)
Élections municipales, cantonales.

#### Juge en premier et dernier ressort
- Recours contre les **décrets**
- Recours contre les **actes réglementaires des ministres**
- Litiges relatifs à la situation individuelle des fonctionnaires nommés par décret
- Recours contre les décisions des **AAI** dans certains cas

### C. Composition
- **Vice-président** (préside dans les faits, car le PM préside formellement)
- 7 sections : 6 administratives + 1 contentieuse
- **Formations de jugement** : sous-section, chambres réunies, section, assemblée du contentieux

## V. Les juridictions administratives spécialisées

- **Cour des comptes** : contrôle des comptes publics
- **Chambres régionales des comptes**
- **Cour de discipline budgétaire et financière**
- **Commission du contentieux du stationnement payant** (CCSP)
- Anciens : Cour nationale du droit d''asile

## VI. Les recours

### A. Le recours pour excès de pouvoir (REP)
Vise l''**annulation** d''un acte administratif illégal. **Ouvert sans texte** (jurisprudence Dame Lamotte, CE 1950).

Cas d''ouverture :
- **Incompétence** de l''auteur
- **Vice de forme** ou **de procédure**
- **Violation de la loi** (illégalité interne)
- **Détournement de pouvoir**

### B. Le plein contentieux
Le juge peut :
- Annuler
- Réformer
- Condamner à indemnisation
- Apprécier la situation à la date de sa décision

Application : responsabilité, contrats, contraventions de grande voirie, contentieux fiscal.

### C. Le contentieux de l''interprétation et de l''appréciation de légalité
Le juge dit ce qu''il faut comprendre par tel acte ou apprécie sa légalité, sans l''annuler.

### D. Le contentieux de la répression
Sanctions disciplinaires, contraventions de grande voirie.

## VII. Les référés
Procédures d''urgence :
- **Référé-suspension** (L. 521-1 CJA) : suspendre un acte
- **Référé-liberté** (L. 521-2 CJA) : protéger une liberté fondamentale, 48 h
- **Référé conservatoire** (L. 521-3 CJA)
- **Référé-mesures utiles** (L. 521-3 CJA)

## À retenir
Trois degrés : **TA → CAA → Conseil d''État**. Le **Conseil d''État** a une double fonction : consultative (gouvernement) et juridictionnelle. Le **REP** est le recours roi du contentieux administratif (annulation d''un acte illégal).'
from public.subjects where name = 'Institutions juridictionnelles';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Conseil constitutionnel', 'Conseil constitutionnel',
       'Organisation, compétences et place du Conseil constitutionnel dans le système juridique français.',
       array['Conseil constitutionnel', 'Contrôle a priori', 'QPC', 'Bloc de constitutionnalité', 'Décision 71-44 DC', 'Liberté d''association'],
       12, 3,
'# Le Conseil constitutionnel

## I. Composition et statut

### A. Membres
**9 membres nommés** (art. 56 C.) pour un **mandat de 9 ans non renouvelable**, renouvelés par tiers tous les 3 ans :
- **3 nommés par le Président de la République**
- **3 par le Président de l''Assemblée nationale**
- **3 par le Président du Sénat**

Le Président du Conseil constitutionnel est désigné par le Président de la République (sa voix est prépondérante).

### B. Membres de droit
Les **anciens Présidents de la République** sont membres de droit à vie. **Mais** : Nicolas Sarkozy, François Hollande et autres ne siègent plus en pratique.

### C. Incompatibilités
Avec toute fonction électorale ou ministérielle. Indépendance garantie.

## II. Compétences juridictionnelles

### A. Contrôle de constitutionnalité a priori (art. 61 C.)

#### Saisine obligatoire
- **Lois organiques** (art. 61 al. 1)
- **Règlements des assemblées parlementaires**

#### Saisine facultative
Par : Président, PM, Présidents des assemblées, **60 députés ou 60 sénateurs** (depuis 1974).

Délai : 1 mois avant promulgation.

### B. La QPC (art. 61-1 C.)
**Question prioritaire de constitutionnalité**, instituée par la **révision du 23 juillet 2008**.

Procédure :
1. Justiciable soulève la question devant une juridiction
2. La juridiction examine la **recevabilité** (lien avec le litige, caractère sérieux)
3. Transmission à la **Cour de cassation** ou au **Conseil d''État**
4. Ces juridictions filtrent et transmettent au Conseil constitutionnel
5. Le CC statue dans les **3 mois**

Conséquence : si l''article est jugé inconstitutionnel, il est **abrogé** (effet erga omnes).

### C. Contentieux électoral
- Élection présidentielle (régularité)
- Élections législatives et sénatoriales
- Référendums (art. 60 C.)

## III. Compétences consultatives
- Avis sur l''application de l''**article 16 C.** (pouvoirs exceptionnels)
- Constatation de l''**empêchement** ou de la **vacance** présidentielle

## IV. Le bloc de constitutionnalité

### A. Composition
- Constitution du 4 octobre 1958
- Préambule de 1946 (économiques et sociaux)
- DDHC de 1789
- Charte de l''environnement (2004, depuis révision 2005)
- **PFRLR** : principes fondamentaux reconnus par les lois de la République

### B. Décision fondatrice
**71-44 DC, 16 juillet 1971, Liberté d''association** : intègre le Préambule de 1946 et la DDHC au bloc de constitutionnalité. **Tournant majeur** : le Conseil devient un protecteur des libertés.

### C. Les PFRLR
Principes dégagés par le Conseil :
- Liberté d''association (1971)
- Droits de la défense
- Liberté individuelle
- Liberté de l''enseignement
- Indépendance de la juridiction administrative

## V. Évolution du rôle

### A. Phase 1 (1958-1971)
**Régulateur de la séparation des pouvoirs** : protège l''exécutif contre les empiétements du Parlement.

### B. Phase 2 (1971-2008)
**Protecteur des libertés** depuis la décision Liberté d''association (1971). Contrôle a priori uniquement.

### C. Phase 3 (2008-...)
**Véritable Cour constitutionnelle** depuis l''instauration de la QPC. Accès du justiciable.

## VI. Limites
- **Pas de contrôle de conventionnalité** : refuse depuis la décision IVG (1975). Délégué au juge ordinaire.
- **Pas d''autosaisine**
- Délais courts qui limitent l''instruction

## À retenir
**9 membres**, mandat de **9 ans non renouvelable**. Compétences : **contrôle a priori** (art. 61) + **QPC** (art. 61-1) + contentieux électoral. Bloc de constitutionnalité étendu depuis la **décision 71-44 DC**.'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- L1 S2 - DROIT CIVIL DE LA FAMILLE
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le mariage : formation', 'Mariage',
       'Conditions de formation du mariage : conditions de fond, de forme, opposition et nullité.',
       array['Mariage', 'Conditions de fond', 'Consentement', 'Capacité', 'Empêchements', 'Opposition', 'Nullité'],
       14, 1,
'# Le mariage : formation

## I. Définition
Le **mariage** est l''union de deux personnes consacrée par la célébration devant un officier d''état civil et créant entre les époux une communauté de vie (art. 143 C. civ., depuis la loi du 17 mai 2013).

## II. Les conditions de fond

### A. Le consentement (art. 146 C. civ.)
« Il n''y a pas de mariage lorsqu''il n''y a point de consentement. »

#### Caractères requis
- **Existant** : pas de simulation
- **Sérieux** : pas en vue d''une finalité étrangère (mariage blanc)
- **Libre** : non vicié

#### Vices du consentement
- **Erreur sur la personne** ou ses qualités essentielles (art. 180)
- **Violence**, y compris dans le cadre de mariages forcés (loi du 4 avril 2006)

### B. L''âge
- **18 ans révolus** (art. 144 C. civ., depuis la loi du 4 avril 2006 — auparavant 15 ans pour les filles)
- **Dispense pour motifs graves** par le Procureur de la République

### C. La capacité
- Pas de mariage des **mineurs** sans dispense
- Mariage des **majeurs protégés** : autorisé sous conditions (art. 460)

### D. L''absence d''empêchements

#### Empêchements absolus
- **Mariage antérieur non dissous** (bigamie, art. 147)
- **Inceste** : entre ascendants/descendants, frère/sœur, oncle/nièce

#### Empêchements relatifs
- Mariage entre **alliés en ligne directe** (beau-père/belle-fille) : dispense possible si le lien qui créait l''alliance est rompu

### E. Le mariage des personnes de même sexe
**Loi du 17 mai 2013 « Taubira »** : ouverture du mariage aux couples de même sexe. Modification de l''art. 143 C. civ.

## III. Les conditions de forme

### A. Les formalités préalables
- **Publication des bans** : 10 jours, à la mairie du lieu de chaque futur époux
- Dépôt du **dossier** auprès de l''officier d''état civil

### B. La célébration
- **Lieu** : mairie du lieu où l''un des futurs époux a son domicile/résidence
- **Officier d''état civil** : maire ou adjoint, parfois conseiller municipal
- **Publicité** : porte ouverte
- **Présence des futurs époux** (sauf mariage posthume autorisé par art. 171)
- **Témoins** : 2 minimum, 4 maximum
- **Échange des consentements** : « Je le veux »
- **Lecture des articles** du Code civil

## IV. L''opposition à mariage

### A. Qui peut s''opposer ?
- Le **Ministère public** (cas de bigamie, défaut de consentement, etc.)
- Les **ascendants** (pour des motifs particuliers)
- Le **conjoint** précédent (si bigamie)

### B. Effet
Suspend la célébration jusqu''à la mainlevée (judiciaire) de l''opposition.

## V. Les sanctions : la nullité du mariage

### A. Nullité absolue
**Atteinte à l''ordre public**. Action ouverte à tout intéressé pendant **30 ans** :
- Défaut de consentement
- Bigamie
- Inceste
- Incompétence de l''officier
- Clandestinité

### B. Nullité relative
**Protection d''intérêt privé**. Action limitée :
- **Vices du consentement** : action 5 ans à compter de la découverte (art. 181)
- **Défaut d''autorisation** : action ouverte à ceux dont le consentement était requis

### C. Effets
- **En principe rétroactifs** : le mariage est censé n''avoir jamais existé
- **Tempérament** : la théorie du **mariage putatif** (art. 201) : si l''un des époux était de **bonne foi**, le mariage produit des effets à son égard

## À retenir
**Conditions de fond** : consentement libre + 18 ans + capacité + absence d''empêchements. **Conditions de forme** : publication + célébration publique par officier d''état civil. **Sanction** : nullité absolue ou relative, avec la possibilité du mariage putatif si bonne foi.'
from public.subjects where name = 'Droit civil de la famille';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Effets du mariage et devoirs des époux', 'Effets du mariage',
       'Les devoirs réciproques des époux et les effets du mariage sur leur situation personnelle et patrimoniale.',
       array['Fidélité', 'Cohabitation', 'Assistance', 'Devoir de secours', 'Régime primaire', 'Solidarité ménagère', 'Logement familial'],
       12, 2,
'# Effets du mariage et devoirs des époux

## I. Les devoirs personnels réciproques (art. 212-215 C. civ.)

### A. Le devoir de respect (art. 212)
Ajouté par la loi du 4 avril 2006. Inclut la lutte contre les violences conjugales.

### B. Le devoir de fidélité (art. 212)
Devoir civil. L''adultère n''est plus pénalement sanctionné depuis 1975. **Mais** : peut constituer une **faute** justifiant le divorce ou des dommages-intérêts.

### C. Le devoir de secours et d''assistance (art. 212)
- **Secours** : aide matérielle, financière
- **Assistance** : soutien moral, soins en cas de maladie

### D. La communauté de vie (art. 215)
- **Cohabitation** : devoir de vivre ensemble
- **Communion de vie** : partage de l''existence

### E. Le devoir de contribution aux charges du mariage (art. 214)
Chacun contribue **à proportion de ses facultés** respectives.

## II. Le régime primaire (art. 214 à 226 C. civ.)

Règles **impératives** applicables à **tous** les couples mariés, quel que soit leur régime matrimonial.

### A. La contribution aux charges du mariage (art. 214)
Voir supra.

### B. La solidarité ménagère (art. 220)
**Chaque époux** peut conclure seul des contrats pour l''**entretien du ménage** ou l''**éducation des enfants**. Solidarité **automatique** des deux époux pour ces dettes.

Exclusions :
- **Dépenses manifestement excessives**
- **Achats à tempérament** sans accord des deux
- **Emprunts** (sauf petites sommes nécessaires)

### C. La protection du logement familial (art. 215 al. 3)
**Aucun des époux** ne peut, sans l''accord de l''autre, **disposer** des droits sur le logement familial (vente, donation, hypothèque).

Sanction : nullité de l''acte (action 1 an depuis la connaissance, max 1 an depuis dissolution).

### D. La représentation entre époux (art. 218-219)
- **Mandat tacite** entre époux
- **Mandat judiciaire** en cas d''empêchement de l''un (art. 219)

### E. Les pouvoirs en cas de crise

#### Procédure d''autorisation (art. 217)
Un époux empêché ou refusant : autorisation judiciaire pour faire seul un acte nécessitant accord des deux.

#### Procédure de désaveu (art. 218)
Empêchement de fait d''un époux : représentation judiciaire.

#### Le déplafonnement des dépôts (art. 221)
Chaque époux peut ouvrir un compte bancaire en son nom seul.

### F. Indépendance professionnelle (art. 223)
Chacun peut exercer une profession et percevoir ses gains.

## III. Les effets patrimoniaux : les régimes matrimoniaux

### A. Notion
Ensemble de règles régissant les rapports pécuniaires entre époux et avec les tiers.

### B. Le régime légal : communauté réduite aux acquêts (art. 1400 et s.)
**Régime supplétif** depuis 1965. Distinctions :
- **Biens communs** : acquis pendant le mariage à titre onéreux
- **Biens propres** : antérieurs au mariage ou reçus par succession/donation

### C. Les régimes conventionnels
Possibles par **contrat de mariage** (notaire) :
- **Communauté universelle**
- **Séparation de biens**
- **Participation aux acquêts**

### D. Le changement de régime
**Loi du 23 juin 2006** assouplie. Conditions :
- 2 ans après le mariage (sauf le 1er changement à partir de 2007)
- Acte notarié + parfois homologation judiciaire

## IV. Les sanctions des manquements

### A. Recours civils
- **Divorce pour faute** (art. 242)
- **Dommages-intérêts** pour violation des devoirs
- **Mesures urgentes** (art. 220-1)

### B. Recours pénaux
- **Abandon de famille** (art. 227-3 C. pén.)
- **Violences conjugales**
- **Bigamie**

## À retenir
**Devoirs personnels** : respect, fidélité, secours, assistance, communauté de vie. **Régime primaire** : règles impératives (contribution, solidarité ménagère, protection du logement, etc.). Régimes matrimoniaux : régime légal = communauté réduite aux acquêts, ou contrat de mariage.'
from public.subjects where name = 'Droit civil de la famille';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le divorce', 'Dissolution du mariage',
       'Les quatre cas de divorce, les procédures et les effets de la dissolution.',
       array['Divorce par consentement mutuel', 'Divorce accepté', 'Divorce pour altération définitive du lien conjugal', 'Divorce pour faute', 'Prestation compensatoire'],
       15, 3,
'# Le divorce

## I. Les cas de divorce (art. 229 C. civ.)

### A. Le divorce par consentement mutuel
**Deux formes** depuis la loi du 18 novembre 2016 :

#### Divorce sans juge (art. 229-1 et s.)
- Convention rédigée et signée devant **chaque avocat** (un par époux)
- Dépôt au rang des minutes d''un **notaire**
- Pas de juge
- Exclusion si l''**enfant mineur** demande son audition

#### Divorce judiciaire par consentement mutuel
- Maintenu quand un enfant mineur demande son audition
- Présentation au juge

**Conditions** : accord sur la rupture et toutes ses conséquences. Mention dans une **convention** complète.

### B. Le divorce accepté (art. 233)
**Acceptation du principe** de la rupture par les deux époux, mais désaccord sur les conséquences.
Procès devant le **juge aux affaires familiales (JAF)** qui statue sur les effets.

### C. Le divorce pour altération définitive du lien conjugal (art. 237)
Conditions :
- **Cessation de communauté de vie**
- **Depuis 1 an** (avant 2020 : 2 ans) au jour de l''assignation

Imposable même sans accord de l''autre époux.

### D. Le divorce pour faute (art. 242)
Conditions :
- **Violation grave ou renouvelée des devoirs et obligations** du mariage
- **Imputable** à l''époux
- Rend **intolérable le maintien de la vie commune**

Exemples : adultère, violences, abandon, alcoolisme, refus de communauté de vie.

## II. La procédure (depuis la réforme du 23 mars 2019, en vigueur 2021)

### A. Simplification
**Plus de phase de conciliation préalable**. Procédure unifiée.

### B. Demande
**Assignation** ou requête conjointe directe devant le **JAF**.

### C. Mesures provisoires
Possibles dès la **première audience** (art. 254 et s.) :
- Logement
- Pension alimentaire
- Mesures relatives aux enfants

### D. Audience d''orientation et sur mesures provisoires (AOMP)
Permet d''ordonner les **mesures provisoires** pendant la procédure.

### E. Jugement final
Prononcé du divorce + règlement des conséquences.

## III. Les effets du divorce

### A. Dissolution du lien matrimonial
- **Fin des devoirs** réciproques (sauf prestation compensatoire)
- Possibilité de **conserver le nom** d''usage avec accord ou intérêt particulier (art. 264)
- Liquidation du **régime matrimonial**

### B. Effets entre époux

#### La prestation compensatoire (art. 270 et s.)
Compense la **disparité que la rupture crée dans les conditions de vie**.

Forme :
- **Capital** (privilégié) : argent, biens, attribution du logement
- **Rente viagère** (exceptionnel)

Critères :
- Durée du mariage
- Âge, état de santé
- Qualification, situation professionnelle
- Conséquences des choix professionnels
- Patrimoine

#### Les dommages-intérêts
- **Article 266** : circonstances d''une particulière gravité dans le divorce pour altération définitive non demandé
- **Article 1240 (responsabilité de droit commun)** : autres préjudices

### C. Effets pour les enfants
**Principe** : le divorce ne modifie pas la dévolution de l''**autorité parentale** (art. 372). Elle reste conjointe.

#### Résidence
- **Alternée** (depuis 2002) ou **fixée chez un parent**
- Décidée d''un commun accord ou par le juge selon **l''intérêt supérieur de l''enfant**

#### Droit de visite et d''hébergement
Pour le parent chez qui l''enfant ne réside pas habituellement.

#### Contribution à l''entretien et l''éducation (art. 371-2)
Pension alimentaire, à proportion des ressources et besoins.

### D. Le sort des biens
Liquidation du régime matrimonial. Si **communauté** : partage des biens communs.

## IV. Quelques chiffres
Environ **120 000 divorces** par an en France. La majorité (60 %) : divorce par consentement mutuel.

## À retenir
**4 cas de divorce** : consentement mutuel, accepté, altération définitive (1 an), faute. Procédure simplifiée depuis 2021 (plus de conciliation préalable). Effets : dissolution + prestation compensatoire + règles sur les enfants + liquidation du régime.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- L1 S2 - DROIT CONSTITUTIONNEL (Ve République)
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Président de la République', 'Institutions',
       'Statut, élection, pouvoirs et responsabilité du Président de la République sous la Ve République.',
       array['Élection', 'Suffrage universel direct', 'Quinquennat', 'Pouvoirs propres', 'Pouvoirs partagés', 'Article 16', 'Haute Cour'],
       15, 1,
'# Le Président de la République

## I. Statut et élection

### A. Les conditions d''éligibilité
- **Nationalité française**
- **Majorité** (18 ans depuis 2011)
- Inscription sur les listes électorales
- Pas de condamnation entraînant inéligibilité
- **Parrainages** : 500 signatures d''élus dans 30 départements

### B. L''élection au suffrage universel direct
**Loi constitutionnelle du 6 novembre 1962** (référendum gaullien). Modification de l''**article 6 C.** :
- **Scrutin majoritaire à deux tours**
- Élu à la **majorité absolue** des suffrages exprimés au 1er tour, sinon ballottage entre les 2 candidats arrivés en tête

### C. La durée du mandat : quinquennat
- **Loi constitutionnelle du 2 octobre 2000** : septennat → quinquennat (référendum)
- **Loi organique du 14 avril 2006** : limite à **2 mandats consécutifs**

### D. Vacance et empêchement (art. 7 C.)
- **Constatation** par le Conseil constitutionnel
- Intérim par le **Président du Sénat**
- Élection nouvelle dans 20 à 35 jours

## II. Les pouvoirs propres (art. 19 C.)

Dispensés du **contreseing** du Premier ministre. Le Président agit seul.

### A. Nomination du Premier ministre (art. 8 al. 1)
Le Président choisit librement, mais doit respecter la **majorité parlementaire** (sinon démission obligatoire après vote de censure).

### B. Recours au référendum (art. 11)
Domaines limités : organisation des pouvoirs publics, réformes sociales et économiques, traités internationaux.

### C. Dissolution de l''Assemblée nationale (art. 12)
**Pouvoir discrétionnaire**. Limites :
- Pas dans l''année suivant des élections législatives
- Pas pendant l''exercice de l''article 16
- Pas pendant l''intérim présidentiel
- Pas pendant un état d''urgence (en pratique)

### D. Pouvoirs exceptionnels (art. 16)
En cas de :
- Menace grave et immédiate sur les institutions
- Sur l''indépendance de la Nation
- Sur l''intégrité du territoire
- Sur les engagements internationaux
- Interruption du fonctionnement régulier des pouvoirs publics

Procédure :
- Consultation du PM, présidents des chambres, Conseil constitutionnel
- Information de la Nation par message
- Mesures contrôlées par le Conseil constitutionnel après 30 jours, à la demande de 60 parlementaires (depuis 2008)

**Une seule utilisation** : 1961 (putsch d''Alger), pendant 5 mois.

### E. Message au Parlement (art. 18)
- Lu, sans débat (avant 2008)
- **Depuis 2008** : possibilité de venir s''exprimer devant le Congrès, suivi d''un débat sans présence présidentielle

### F. Saisine du Conseil constitutionnel
- Pour lois ou traités (art. 54, 61)

### G. Nomination de 3 membres du Conseil constitutionnel (art. 56)

### H. Droit de grâce individuelle (art. 17)
Depuis 2008, **plus de grâce collective**.

## III. Les pouvoirs partagés (avec contreseing du PM)

### A. Nomination aux emplois civils et militaires (art. 13)
Nominations en Conseil des ministres.

### B. Signature des ordonnances et décrets (art. 13)
Sauf ordonnance du 28 juin 2024 *Sarah Halimi* : le Conseil d''État a confirmé que le Président peut **refuser de signer** une ordonnance.

### C. Promulgation des lois (art. 10)
Dans les 15 jours suivant l''adoption. **Peut demander une nouvelle délibération**.

### D. Chef des armées (art. 15)
Préside les Conseils et comités supérieurs de la défense.

### E. Négociation et ratification des traités (art. 52)
Le PM contresignée.

### F. Accréditation des ambassadeurs (art. 14)

### G. Présidence du Conseil des ministres (art. 9)

## IV. La responsabilité présidentielle

### A. Principe d''irresponsabilité (art. 67)
Pour les actes accomplis dans l''exercice de ses fonctions.

### B. Exceptions

#### Compétence de la CPI (art. 53-2)
Pour crimes contre l''humanité, crimes de guerre, génocide.

#### Destitution par le Parlement (art. 68)
**Manquement à ses devoirs manifestement incompatible avec l''exercice de son mandat**.
- Réuni en **Haute Cour** (les deux chambres)
- Vote à la **majorité des 2/3**

Procédure :
- Réunion proposée par l''une ou l''autre chambre à la majorité des 2/3
- Décision dans un délai de 1 mois

### C. Pendant le mandat
**Inviolabilité** pour ses actes antérieurs (suspension des procédures pendant le mandat, sauf certaines limites).

## À retenir
Élu au **suffrage universel direct** (depuis 1962), pour **5 ans** (depuis 2000), **renouvelable une fois** (depuis 2008). **Pouvoirs propres** (sans contreseing) + **pouvoirs partagés**. Responsabilité limitée : **art. 68 (destitution)** et **CPI**.'
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Parlement', 'Institutions',
       'Composition, organisation et fonctions de l''Assemblée nationale et du Sénat.',
       array['Assemblée nationale', 'Sénat', 'Bicaméralisme', 'Domaine de la loi', 'Domaine du règlement', 'Navette', 'Commission mixte paritaire'],
       14, 2,
'# Le Parlement

## I. Composition et statut

### A. L''Assemblée nationale
- **577 députés**
- Élus pour **5 ans** au **suffrage universel direct**
- Scrutin **majoritaire à deux tours**, par **circonscription**
- **Mandat impératif** prohibé (art. 27 C.)

### B. Le Sénat
- **348 sénateurs**
- Élus pour **6 ans** au **suffrage universel indirect**
- Par les **grands électeurs** (députés, conseillers municipaux, départementaux, régionaux)
- **Renouvellement par moitié** tous les 3 ans
- Représente les **collectivités territoriales** (art. 24 C.)

### C. Le statut des parlementaires

#### Incompatibilités
- Avec une fonction ministérielle (art. 23)
- Avec d''autres mandats publics (loi sur le cumul, depuis 2017)

#### Immunités
- **Irresponsabilité** : pour les opinions et votes émis dans l''exercice du mandat (art. 26 al. 1)
- **Inviolabilité** : restrictions à l''arrestation et aux mesures privatives de liberté pendant les sessions (art. 26 al. 2-4)

#### Indemnité
Salariale + frais de mandat (encadrés depuis 2017).

## II. L''organisation interne

### A. La présidence
- **Président** élu pour la **durée de la législature** à l''Assemblée
- Président du Sénat élu **après chaque renouvellement** (3 ans)

### B. Le Bureau
Organe collégial de direction.

### C. La Conférence des présidents
Détermine l''ordre du jour. Composée des présidents des groupes, vice-présidents, présidents de commissions.

### D. Les commissions

#### Commissions permanentes (8 maximum)
Préparent l''examen des textes :
- Affaires culturelles
- Affaires économiques
- Affaires étrangères
- Affaires sociales
- Défense
- Finances
- Lois
- Développement durable

#### Commissions spéciales
Pour un texte particulier.

#### Commissions d''enquête
Investigations sur des faits déterminés.

### E. Les groupes politiques
Au moins **15 députés** ou **10 sénateurs**.

## III. Les sessions
- **Session ordinaire** : 1er octobre au 30 juin (depuis 1995)
- **Sessions extraordinaires** : convoquées par le Président de la République

## IV. La fonction législative

### A. Le domaine de la loi (art. 34 C.)
**Innovation majeure de 1958** : le Parlement n''a plus une compétence générale. Domaines limitativement énumérés.

Catégories :
- **Règles** : libertés publiques, état des personnes, droit pénal, fiscalité
- **Principes fondamentaux** : enseignement, propriété, droit du travail, etc.

### B. Le domaine du règlement (art. 37 C.)
**Compétence de droit commun** appartient au Gouvernement.
- **Règlements autonomes** : matières non législatives
- **Délégalisation** : le Gouvernement peut faire reclasser un texte législatif comme réglementaire (art. 37 al. 2)

### C. La procédure législative

#### Initiative
- **Projets de loi** (Gouvernement)
- **Propositions de loi** (parlementaires)

#### Étapes
1. **Dépôt** sur le bureau d''une assemblée
2. Examen en **commission**
3. **Débat en séance** publique
4. **Vote**
5. **Navette** entre les deux assemblées (jusqu''à accord)
6. En cas de désaccord : **commission mixte paritaire (CMP)** (7+7)
7. Si échec CMP : possibilité pour l''AN d''**avoir le dernier mot** (art. 45 al. 4)
8. **Promulgation** par le Président (15 jours)

#### Procédures accélérées
- **Engagement de la procédure accélérée** par le Gouvernement (art. 45)
- **Vote bloqué** (art. 44 al. 3)
- **Article 49 al. 3** : engagement de responsabilité sur un texte ; adoption sans vote sauf motion de censure

### D. Le vote du budget
**Délai constitutionnel** : 70 jours (art. 47). Au-delà : possibilité pour le Gouvernement d''adopter par ordonnance.

## V. Les fonctions de contrôle

### A. Information (art. 24)
Le Parlement contrôle l''action du Gouvernement.

### B. Questions
- Questions au Gouvernement
- Questions orales/écrites

### C. Résolutions (art. 34-1)
Depuis 2008, peuvent porter sur l''action du Gouvernement (non contraignantes).

### D. Évaluation des politiques publiques (art. 24)
Mission attribuée par la révision de 2008.

### E. Engagement de responsabilité

#### Question de confiance (art. 49 al. 1)
PM demande approbation de son programme.

#### Motion de censure (art. 49 al. 2)
- Initiée par **1/10^e^ des députés**
- Adoptée à la **majorité absolue** des membres composant l''Assemblée
- **Seuls les votes favorables sont comptés**

#### Article 49 alinéa 3
Engagement de responsabilité sur un texte. Adoption sans vote, sauf si motion de censure adoptée dans 24 heures. Limité depuis 2008 à un texte par session (sauf budget et loi de financement de la sécurité sociale).

#### Article 49 alinéa 4
Déclaration de politique générale au Sénat (purement déclaratoire).

## À retenir
**Bicaméralisme** : Assemblée nationale (577, 5 ans, suffrage direct) + Sénat (348, 6 ans, suffrage indirect). **Domaine de la loi** limité (art. 34). Pouvoirs : **législatif** (procédure + navette + CMP) et **contrôle** (49.2, 49.3).'
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

-- =====================================================================
-- L1 S2 - INSTITUTIONS ADMINISTRATIVES
-- =====================================================================

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''administration centrale de l''État', 'État',
       'Président, Premier ministre, ministres : l''organisation au sommet de l''État.',
       array['Président de la République', 'Premier ministre', 'Ministres', 'Conseil des ministres', 'Cabinet ministériel', 'Secrétariat général'],
       11, 1,
'# L''administration centrale de l''État

## I. Le sommet exécutif

### A. Le Président de la République
**Chef de l''État**. Outre ses fonctions politiques (vues en droit constitutionnel), il a des compétences administratives :
- **Nomination** aux hauts emplois civils et militaires (art. 13)
- **Signature** des ordonnances et décrets délibérés en Conseil des ministres
- **Chef des armées** (art. 15)
- Préside :
  - Conseil des ministres
  - Conseils de défense nationale
  - Conseils supérieurs de la magistrature

### B. Le Premier ministre

#### Statut
- Nommé par le Président (art. 8)
- Responsable devant l''Assemblée nationale (art. 20)

#### Pouvoirs (art. 21)
- **Dirige l''action du Gouvernement**
- **Responsable de la défense nationale**
- **Assure l''exécution des lois**
- **Pouvoir réglementaire** (sauf décrets en Conseil des ministres : Président)
- **Pouvoir de nomination** aux emplois civils et militaires
- Peut **déléguer** certains de ses pouvoirs aux ministres

#### Services
- **Cabinet du PM**
- **Secrétariat général du Gouvernement (SGG)** : coordonne le travail interministériel
- **Services rattachés** : direction interministérielle de la transformation publique, etc.

### C. Les ministres

#### Nomination
- Par le **Président** sur proposition du **PM** (art. 8 al. 2)
- Pas de critère de nationalité ou d''âge

#### Catégories
- **Ministres d''État** : prééminence protocolaire
- **Ministres** ordinaires
- **Ministres délégués** auprès d''un ministre
- **Secrétaires d''État**

#### Statut
- **Incompatibilité parlementaire** (art. 23) : un parlementaire devenu ministre cède son siège à son suppléant
- **Responsabilité pénale** devant la **Cour de justice de la République** (CJR) pour les actes accomplis dans l''exercice de leurs fonctions (art. 68-1)

#### Pouvoirs
- **Politique** : déterminent la politique de leur secteur, en application de celle du Gouvernement
- **Administratif** : chefs d''administration
- **Pouvoir réglementaire** : limité, par délégation du PM ou pour l''organisation interne
- **Pouvoir hiérarchique** sur leurs services

## II. L''organisation gouvernementale

### A. Le Conseil des ministres
- **Réunion hebdomadaire** (mercredi)
- **Présidence** : Président de la République
- **Composition** : PM et ministres (pas les secrétaires d''État sauf inscription à l''ordre du jour)
- **Compétences** : délibération des principaux projets

### B. Les conseils restreints
Réunions du Président avec quelques ministres concernés.

### C. Les comités interministériels
Réunis sous l''autorité du PM. Coordonnent l''action gouvernementale dans un domaine.

## III. Les services centraux des ministères

### A. Le cabinet ministériel
- **Équipe de conseillers** choisie par le ministre
- **Pas de statut administratif**
- Lien entre le politique et l''administration
- **Limitation** depuis 2017 (10 à 15 membres maximum)

### B. Les directions

#### Directions générales / directions
Pilotent les grandes politiques publiques.

#### Sous-directions et bureaux
Subdivisions opérationnelles.

### C. Le secrétaire général
Haut fonctionnaire qui coordonne l''action des directions.

## IV. Les autorités administratives indépendantes (AAI)

### A. Notion
**Personnes morales de droit public** (ou non), placées en dehors de la hiérarchie ministérielle classique.

### B. Caractères
- **Indépendance**
- **Autorité administrative** : pouvoir de décision
- **Statut spécifique**

### C. Exemples
- **CSA** (devenu **ARCOM** en 2022)
- **CNIL** (libertés numériques)
- **Défenseur des droits** (depuis 2008, art. 71-1 C.)
- **ARCEP** (communications électroniques)
- **AMF** (autorité des marchés financiers)
- **Autorité de la concurrence**
- **HATVP** (transparence de la vie publique)

### D. Pouvoirs
Selon les cas :
- **Recommandation**
- **Réglementation**
- **Décision individuelle**
- **Sanction**
- **Enquête**

### E. Le statut depuis 2017
**Loi du 20 janvier 2017** : limite à un nombre fixe d''AAI / autorités publiques indépendantes (API). Création soumise à conditions.

## V. Les services à compétence nationale
Services à statut particulier, en dehors des directions classiques.

## À retenir
Triade : **Président, PM, ministres**. PM = **chef de l''action gouvernementale**, dispose du **pouvoir réglementaire** général (art. 21). Multiplication des **AAI** depuis les années 1970, encadrée depuis 2017.'
from public.subjects where name = 'Institutions administratives';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les collectivités territoriales', 'Décentralisation',
       'Communes, départements, régions : organisation et compétences des collectivités territoriales françaises.',
       array['Commune', 'Département', 'Région', 'Conseil municipal', 'Conseil départemental', 'Conseil régional', 'Libre administration', 'Clause de compétence générale'],
       13, 2,
'# Les collectivités territoriales

## I. Le cadre constitutionnel

### A. Les principes (art. 72 C.)
- Les collectivités s''**administrent librement** par des conseils élus
- Disposent d''un **pouvoir réglementaire** pour l''exercice de leurs compétences
- **Subsidiarité** : prennent les décisions à leur niveau pour celles qui peuvent être mises en œuvre à leur échelle

### B. La révision du 28 mars 2003
**Inscription** dans la Constitution :
- « L''organisation de la République est **décentralisée** » (art. 1)
- Possibilité d''**expérimentation** (art. 72 al. 4)
- **Référendum local** (art. 72-1)
- **Autonomie financière** (art. 72-2)

### C. Les collectivités énumérées (art. 72)
- Communes
- Départements
- Régions
- Collectivités à statut particulier (Paris, Lyon, Marseille...)
- Collectivités d''outre-mer

## II. La commune

### A. Données
**35 000 communes** en France. Énorme diversité de tailles.

### B. Organisation
- **Conseil municipal** : élu pour 6 ans, scrutin variable selon la taille
- **Maire** : élu par le conseil. Exécutif.
- **Adjoints au maire**

### C. Compétences

#### Police municipale
Maintien de l''ordre, salubrité, sécurité, tranquillité publique (art. L. 2212-2 CGCT).

#### Urbanisme
- **Plan local d''urbanisme (PLU)**
- **Permis de construire**

#### Action sociale
- **CCAS** (centre communal d''action sociale)

#### Enseignement
- Écoles **maternelles et primaires** (construction, entretien)

#### Voirie, transports, eau, assainissement

#### État civil
- Le maire agit comme **officier d''état civil**, **agent de l''État**

### D. L''intercommunalité
Regroupement des communes :
- **Métropoles**
- **Communautés urbaines**
- **Communautés d''agglomération**
- **Communautés de communes**

## III. Le département

### A. Données
**101 départements** (96 + 5 outre-mer + Mayotte).

### B. Organisation
- **Conseil départemental** : élu pour 6 ans (renouvellement par moitié)
- **Président du conseil départemental** : exécutif (depuis loi de 1982)

### C. Compétences
- **Action sociale et solidarité** : RSA, APA, aide à l''enfance
- **Collèges** (construction, entretien)
- **Voirie départementale**
- **SDIS** (incendie et secours)
- **Aide aux communes rurales**

## IV. La région

### A. Données
**18 régions** (13 métropolitaines + 5 outre-mer) depuis 2016.

### B. Création
- Établissements publics depuis 1972
- Collectivités depuis la **loi du 2 mars 1982**

### C. Organisation
- **Conseil régional** : élu pour 6 ans (scrutin de liste proportionnel à 2 tours)
- **Président du conseil régional** : exécutif

### D. Compétences
- **Lycées** (construction, entretien)
- **Formation professionnelle**, apprentissage
- **Développement économique**
- **Aménagement du territoire**
- **Transports** (TER, transports interurbains)
- **Environnement** (parc naturels régionaux)

## V. L''évolution récente

### A. La fin de la clause de compétence générale
**Loi NOTRe du 7 août 2015** : suppression de la clause générale pour départements et régions. Compétences désormais **attribuées par la loi**. Pour la **commune**, clause de compétence générale **maintenue**.

### B. La répartition des compétences
- Compétences **exclusives** (par exemple, lycées pour la région)
- Compétences **partagées** (tourisme, culture, sport, éducation populaire)

## VI. Les principes financiers

### A. Autonomie financière (art. 72-2)
Les recettes propres représentent une **part déterminante** des ressources.

### B. Les ressources
- **Fiscalité locale** : taxe foncière, taxe d''habitation (résidences secondaires), CFE, CVAE
- **Dotations** de l''État
- **Emprunts**

### C. La péréquation
Mécanisme de **redistribution** entre collectivités riches et pauvres.

## VII. Le contrôle

### A. Pas de tutelle (art. 72 al. 5)
**Aucune collectivité ne peut exercer une tutelle sur une autre.**

### B. Le contrôle de légalité
**Préfet** : transmet les actes au tribunal administratif s''il les estime illégaux. Plus de contrôle a priori depuis 1982.

### C. Le contrôle budgétaire
Par les **chambres régionales des comptes**.

## À retenir
**3 niveaux** : commune (35 000), département (101), région (18). **Constitution révisée 2003** : décentralisation, libre administration, autonomie financière. **Loi NOTRe 2015** : suppression de la clause générale pour départements/régions, conservée pour les communes.'
from public.subjects where name = 'Institutions administratives';
