-- =====================================================================
-- JurisPrép - Cours complet : Institutions administratives (L1 S2)
-- 8 fiches très approfondies avec code couleur
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Institutions administratives');

-- =====================================================================
-- FICHE 1 - NOTION ET FONDEMENTS DE L''ADMINISTRATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Notion et fondements de l''administration', 'Chapitre 1 - Introduction aux institutions administratives',
       'Définition, distinction administration/gouvernement, principes fondamentaux, sources juridiques.',
       array['Administration', 'Service public', 'Intérêt général', 'Personnalité morale de droit public', 'État', 'Centralisation', 'Décentralisation', 'Déconcentration', 'Article 20 C.', 'Article 21 C.', 'Article 72 C.'],
       28, 1,
'# Notion et fondements de l''administration

## Introduction

L''**administration** est au cœur de la vie quotidienne : elle délivre les pièces d''identité, organise les écoles, ramasse les ordures, sécurise les routes, perçoit les impôts. Pourtant, sa **notion juridique** reste complexe et son **organisation** parmi les plus sophistiquées au monde. La France est traditionnellement décrite comme un *« État administratif »* — un pays où l''administration occupe une place centrale, héritage de la **centralisation napoléonienne**, du jacobinisme révolutionnaire et de l''héritage royal. Le **droit des institutions administratives** étudie cette organisation : qui sont les autorités administratives ? Comment sont-elles articulées entre elles ? Selon quels principes ? C''est le préalable indispensable à l''étude du **droit administratif** (les règles qui régissent l''action de ces autorités).

> **Définition** : L''**administration** désigne l''ensemble des autorités publiques chargées, sous l''autorité du Gouvernement et dans le cadre fixé par la loi, de mettre en œuvre les **politiques publiques** et de satisfaire l''**intérêt général** par la fourniture de **services publics**.

## I. La notion d''administration

### A. Approche fonctionnelle vs organique

#### Sens organique
L''**administration au sens organique** désigne **l''ensemble des organes** publics qui exercent une mission administrative : ministères, préfectures, communes, hôpitaux publics, universités, etc.

#### Sens fonctionnel ou matériel
L''**administration au sens fonctionnel** désigne l''**activité** d''intérêt général menée par ces organes, distincte de :
- L''**activité politique** (gouverner, légiférer)
- L''**activité juridictionnelle** (juger)
- L''**activité privée** (poursuivre un profit privé)

#### Articulation
Les deux approches se complètent : l''administration **organique** exerce généralement l''activité **fonctionnelle**. Mais des exceptions existent :
- Des **personnes privées** peuvent exercer une mission de service public (associations, entreprises délégataires)
- Des **organes publics** peuvent agir comme des personnes privées (achats courants)

### B. La distinction administration / gouvernement

#### Le gouvernement
**Détermine** la politique (`art. 20 C.`) : choix, orientations, décisions politiques.

#### L''administration
**Met en œuvre** ces choix : exécute, applique, met en pratique.

#### Citation classique
> *« Le gouvernement gouverne, l''administration administre. »*

#### Une frontière floue
En pratique :
- Les **hauts fonctionnaires** participent à la décision politique (cabinets ministériels)
- Les **politiques** descendent dans le détail administratif
- Les **AAI** (autorités administratives indépendantes) brouillent la séparation

### C. La distinction administration / juridiction

#### Principe
L''administration **décide**, le juge **juge**.

#### Conséquences
- **Distinction** des autorités
- **Distinction** des actes
- **Séparation** des autorités administratives et judiciaires (loi des `16-24 août 1790`)

#### Cas particuliers
- Certaines **AAI** ont un pouvoir quasi-juridictionnel (CNIL, Autorité de la concurrence)
- **Procédures administratives** parfois proches du procès (instruction, débat)

### D. Distinction administration / activité privée

#### Critère traditionnel : la **mission de service public**
L''administration vise l''**intérêt général**, le privé poursuit l''**intérêt particulier**.

#### Critère moderne : les **prérogatives de puissance publique**
L''administration dispose de moyens exorbitants (police, expropriation, décision unilatérale).

#### *Arrêt Blanco* (`TC, 8 février 1873`)
Affirme l''**autonomie** du droit administratif et la compétence du juge administratif pour les services publics.

## II. Les fondements juridiques de l''administration

### A. La Constitution

#### Article 20 al. 2 C.
> *« [Le Gouvernement] dispose de l''administration et de la force armée. »*

#### Article 21 al. 1 C.
> *« Le Premier ministre dirige l''action du Gouvernement. Il est responsable de la défense nationale. Il assure l''exécution des lois. Sous réserve des dispositions de l''article 13, il exerce le pouvoir réglementaire et nomme aux emplois civils et militaires. »*

#### Article 72 C. (collectivités territoriales)
- **Libre administration** des collectivités territoriales
- Principe de **subsidiarité**

#### Article 13 C. (nominations)
- Le Président nomme aux **emplois civils et militaires** de l''État
- **Liste** précisée par décret en Conseil des ministres

### B. Les principes fondamentaux

#### Le principe de **légalité**
L''administration est **soumise au droit** :
- Hiérarchie des normes
- Contrôle juridictionnel des actes administratifs

#### Le principe d''**égalité**
- **Égalité devant la loi** (`art. 6 DDHC`)
- **Égalité devant le service public**
- **Égalité d''accès** aux emplois publics (`art. 6 DDHC`)

#### Le principe de **continuité**
- Le service public ne peut être interrompu
- **Sauf** force majeure
- **Limitations** au droit de grève des agents publics

#### Le principe d''**adaptabilité**
- L''administration doit s''adapter aux **besoins** de l''intérêt général
- **Mutabilité** des actes administratifs

#### Le principe de **transparence et de participation**
- Développé progressivement
- **Loi du 17 juillet 1978** sur l''accès aux documents administratifs
- **CADA** (Commission d''accès aux documents administratifs)

#### Le principe de **bonne administration**
- Charte européenne (Conseil de l''Europe, `2007`)
- Cohérence avec les standards européens

### C. Les sources législatives et réglementaires

#### Sources principales
- **Code général des collectivités territoriales** (CGCT)
- **Code général de la fonction publique** (CGFP, depuis `2022`)
- **Code des relations entre le public et l''administration** (CRPA, depuis `2016`)
- **Code de l''urbanisme**, **Code de l''environnement**, etc.

#### Lois fondamentales
- **Loi du 2 mars 1982** (Lois Defferre - décentralisation)
- **Loi du 6 février 1992** (administration territoriale de la République - ATR)
- **Loi du 13 août 2004** (libertés et responsabilités locales)
- **Loi MAPTAM du 27 janvier 2014** (modernisation de l''action publique)
- **Loi NOTRe du 7 août 2015** (nouvelle organisation territoriale de la République)

## III. Les grandes distinctions administratives

### A. Centralisation, déconcentration, décentralisation

#### La centralisation
- **Tous les pouvoirs** sont concentrés au niveau central
- **Aucune autonomie** locale
- **Modèle théorique** rarement intégral

#### La déconcentration
- **Transfert** de pouvoirs à des **agents** de l''État dans les territoires
- **Lien hiérarchique** maintenu
- **Outil** de la centralisation : *« c''est le même marteau qui frappe, mais on en a raccourci le manche »* (Odilon Barrot, `1849`)
- Exemple : **préfet** (agent de l''État dans le département)

#### La décentralisation
- **Transfert** de pouvoirs à des **collectivités territoriales** distinctes de l''État
- **Personnalité juridique** propre
- **Autorités** élues
- **Affaires propres**

#### Article 1 C. (depuis `2003`)
> *« Son organisation est décentralisée. »*

### B. Administration d''État vs administration locale

#### Administration d''État (centrale + déconcentrée)
- **Président**, Premier ministre, ministres
- **Administrations centrales** (ministères)
- **Préfets**, sous-préfets, services déconcentrés
- **Universités**, hôpitaux, etc.

#### Administration locale (décentralisée)
- **Communes** (`~35 000`)
- **Départements** (`101`)
- **Régions** (`18`)
- **Métropoles** et structures intercommunales

### C. Administration générale vs administration spécialisée

#### Générale
**Compétence transversale** : préfet, mairie, conseil départemental.

#### Spécialisée
**Domaine particulier** : Pôle emploi (chômage), CAF (famille), URSSAF (cotisations), Education nationale.

### D. Personnes publiques vs personnes privées

#### Personnes publiques
- **État**
- **Collectivités territoriales**
- **Établissements publics**
- **Groupements** d''intérêt public (GIP)

#### Personnes privées exerçant une mission de service public
- **Associations** délégataires
- **Entreprises** privées (concessions)
- **Ordres professionnels** (avocats, médecins)
- **Caisses** de sécurité sociale

## IV. La place de l''administration dans l''État

### A. L''administration sous la Ve République

#### Continuité historique
La Ve République a **conservé** l''essentiel de l''organisation administrative héritée :
- Préfets (napoléonien)
- Conseil d''État (consulaire)
- Communes, départements (révolutionnaire)
- Régions (1960s, consolidées en 1980s)

#### Innovations
- **Décentralisation** progressive (1982-2015)
- **Création** des AAI
- **Européanisation** croissante
- **Numérisation** (administration électronique)

### B. Les défis contemporains

#### Réforme de l''État
- **« Moderniser »** l''administration
- **RGPP** (révision générale des politiques publiques, `2007-2012`)
- **MAP** (modernisation de l''action publique, `2012-2017`)
- **Réformes** récurrentes, succès mitigés

#### Numérisation
- **Dématérialisation** des démarches
- **Plateformes** comme service-public.fr, ANTS, FranceConnect
- **Fracture numérique** : risque d''exclusion

#### Européanisation
- **Influence** du droit de l''UE
- **Standards** européens
- **Coopération** administrative transfrontalière

#### Décentralisation et recentralisation
- **Mouvement** continu : pendules entre les deux
- Récente recentralisation budgétaire

### C. L''administration française dans le monde
- **Modèle** spécifique : forte centralisation traditionnelle + décentralisation progressive
- **Influence** historique : codes, préfets exportés dans certains pays
- **Comparaisons** : modèle anglo-saxon (faible étatisation), allemand (fédéralisme), italien (régionalisme avancé)

## V. Le contrôle de l''administration

### A. Contrôle juridictionnel

#### Juge administratif
- **Compétence** générale (depuis *Arrêt Blanco*, `1873`)
- **Tribunal administratif**, **Cour administrative d''appel**, **Conseil d''État**
- **Recours** principaux : REP, plein contentieux, référés

#### Juge judiciaire
- Compétence dans les **matières réservées** : liberté individuelle (`art. 66 C.`), propriété privée
- **Voies de fait**
- **Emprises** irrégulières

### B. Contrôles politiques

#### Contrôle parlementaire
- **Questions** au Gouvernement
- **Commissions** d''enquête
- **Évaluation** des politiques publiques (depuis `2008`)

#### Contrôle électoral
- **Renouvellement** des élus

### C. Contrôles administratifs internes

#### Hiérarchie
- **Contrôle hiérarchique** sur les actes des agents

#### Inspections
- **IGA** (Inspection générale de l''administration)
- **IGF** (Inspection générale des finances)
- **IGAS** (Inspection générale des affaires sociales)

### D. Contrôles indépendants

#### Cour des comptes (`art. 47-2 C.`)
**Contrôle** des comptes publics. Assiste Parlement et Gouvernement.

#### Défenseur des droits (`art. 71-1 C.`, depuis `2008`)
**Recours** des usagers contre l''administration.

#### AAI
**Régulation** indépendante (ARCOM, CNIL, AMF…).

#### Médiateur européen
**Recours** contre l''administration de l''UE.

## VI. La fonction publique : panorama

### A. Notion
**Ensemble des agents** qui exercent une activité au service de l''administration.

### B. Les trois fonctions publiques

#### Fonction publique d''État (FPE)
- **2,4 millions** d''agents environ
- Ministères, services déconcentrés

#### Fonction publique territoriale (FPT)
- **1,9 million** d''agents environ
- Collectivités territoriales, EPCI

#### Fonction publique hospitalière (FPH)
- **1,2 million** d''agents environ
- Hôpitaux publics, EHPAD

### C. Total
**~5,5 millions** d''agents publics (environ 20% de la population active française).

### D. Principes statutaires
- **Statut** : carrière, pas seulement contrat
- **Concours** : principal mode de recrutement
- **Garanties** : indépendance, neutralité, hiérarchie

## À retenir

**Définition** : l''administration est l''ensemble des autorités publiques chargées de mettre en œuvre les politiques publiques et de satisfaire l''**intérêt général** par les **services publics**.

**Distinctions** :
- **Organique** (organes) / **fonctionnelle** (activité)
- **Administration** / **gouvernement** (`art. 20 C.`)
- **Administration** / **juridiction**
- **Administration** / **privé**

**Fondements constitutionnels** :
- **Article 20** : le Gouvernement dispose de l''administration
- **Article 21** : le PM exerce le pouvoir réglementaire
- **Article 72** : libre administration des collectivités
- **Article 1** : organisation décentralisée (depuis `2003`)

**Principes** : légalité, égalité, continuité, adaptabilité, transparence, bonne administration.

**Trois modalités** :
- **Centralisation** : tout au centre
- **Déconcentration** : agents de l''État dans les territoires (préfet)
- **Décentralisation** : collectivités territoriales autonomes

**Trois types d''administration** :
- **D''État** : centrale + déconcentrée
- **Locale** : collectivités décentralisées
- **Spécialisée** : établissements publics, AAI

**Codes principaux** : **CGCT** (collectivités), **CGFP** (fonction publique, `2022`), **CRPA** (relations public-administration, `2016`).

**Fonction publique** : **3 versants** (FPE, FPT, FPH), **~5,5 millions** d''agents.

**Contrôles** : juridictionnels (CE, TA, CAA), politiques (Parlement), internes (hiérarchie, inspections), indépendants (Cour des comptes, Défenseur des droits, AAI).'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 2 - L''ADMINISTRATION CENTRALE DE L''ÉTAT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''administration centrale de l''État', 'Chapitre 2 - Le sommet de l''État',
       'Président, Premier ministre, ministres, secrétariat général du Gouvernement, cabinet ministériel, directions.',
       array['Président de la République', 'Premier ministre', 'Article 21 C.', 'Conseil des ministres', 'Cabinet ministériel', 'SGG', 'Directions ministérielles', 'Délégué interministériel', 'Décret en Conseil d''État'],
       28, 2,
'# L''administration centrale de l''État

## Introduction

L''**administration centrale** est le sommet de la pyramide administrative française. Située à **Paris** (et parfois en banlieue : La Défense, Bercy, etc.), elle regroupe le **Président de la République**, le **Premier ministre**, les **ministres** et leurs **services centraux**. C''est elle qui élabore les politiques publiques au niveau national, prépare les projets de loi, édicte la majorité des actes réglementaires, et coordonne l''action des administrations déconcentrées et décentralisées. Cette fiche présente les principaux organes de l''administration centrale, leur articulation, et leur fonctionnement concret.

> **Article 21 al. 1 C.** : *« Le Premier ministre dirige l''action du Gouvernement. Il est responsable de la défense nationale. Il assure l''exécution des lois. Sous réserve des dispositions de l''article 13, il exerce le pouvoir réglementaire et nomme aux emplois civils et militaires. »*

## I. Le Président de la République et l''administration

### A. Le rôle administratif du Président

#### Au cœur de l''exécutif
Bien que constitutionnellement *« arbitre »*, le Président est en pratique **chef de l''exécutif** en période de concordance des majorités.

#### Compétences administratives
- **Nominations** aux hauts emplois civils et militaires (`art. 13 C.`)
- **Signature** des décrets en Conseil des ministres (`art. 13 C.`)
- **Chef des armées** (`art. 15 C.`)
- **Présidence** des conseils :
  - Conseil des ministres
  - Conseils supérieurs de la défense
  - Conseils restreints (sur sujets sectoriels)
  - **CSM** : formation plénière (théoriquement, en pratique : Premier président de la Cour de cassation)

### B. Les services de la présidence

#### La présidence de la République (Élysée)
- **Quelques centaines** de collaborateurs
- **Cabinet** du Président (chef de cabinet, conseillers spéciaux)
- **État-major particulier** (conseillers militaires)
- **Service** des affaires étrangères
- **Service** des affaires économiques
- **Etc.**

#### Le **Secrétaire général de la présidence**
- **Chef** des services de l''Élysée
- **Influence** politique majeure
- **Coordonne** avec Matignon
- Premier conseiller du Président

#### Évolution
- **Renforcement** sous De Gaulle, puis chacun à sa manière
- **« Hyperprésidence »** depuis 2002 : l''Élysée intervient de plus en plus dans le détail

## II. Le Premier ministre et Matignon

### A. Le Premier ministre

#### Compétences (`art. 21 C.`)
- **Dirige** l''action du Gouvernement
- **Assure** l''exécution des lois
- **Pouvoir réglementaire** général
- **Nomination** aux emplois civils et militaires (sauf ceux du Président)
- **Responsable** de la défense nationale

#### Rôle de coordination
- **Arbitre** entre les ministères
- **Préside** les comités interministériels
- **Convoque** les réunions interministérielles

#### Évolution selon le contexte
- **Concordance** : effacement relatif derrière le Président
- **Cohabitation** : autorité réelle de chef de Gouvernement

### B. Le cabinet du Premier ministre

#### Composition
- **Directeur de cabinet**
- **Conseillers** (par domaine)
- **Chargé** de mission
- **Plafond** théorique de 15 collaborateurs (loi de `2017`)

#### Rôle
- **Coordination** politique
- **Lien** avec les ministères
- **Arbitrage** politique sur les dossiers

### C. Les organes rattachés au Premier ministre

#### Le Secrétariat général du Gouvernement (SGG)

##### Origine et statut
- **Créé** sous la IVe République
- **Pérennisé** sous la Ve
- **Service** stratégique, peu visible mais central

##### Missions
- **Coordination** interministérielle technique (juridique, administrative)
- **Préparation** des Conseils des ministres
- **Suivi** de l''action gouvernementale
- **Conseil juridique** au Premier ministre
- **Publication** au Journal officiel

##### Particularité
- **Continuité** : le SGG dure au-delà des gouvernements
- **Profil** des secrétaires généraux : hauts fonctionnaires neutres (souvent issus du Conseil d''État)
- **Mémoire** institutionnelle

#### Le Secrétariat général de la défense et de la sécurité nationale (SGDSN)
- **Coordination** des questions de défense et sécurité
- **Crise** (terrorisme, cyber)

#### Le Secrétariat général des affaires européennes (SGAE)
- **Coordination** de la position française sur les dossiers UE
- **Liaison** avec la représentation permanente à Bruxelles

#### Diverses missions, hauts-commissariats, délégations
- **France Travail** (ex-Pôle emploi)
- **Délégation interministérielle** à la transformation publique
- **Délégué interministériel** à la lutte contre le racisme et l''antisémitisme
- **Etc.**

### D. Les services à compétence nationale (SCN)
- **Statut** particulier
- **Compétence** sur l''ensemble du territoire
- **Direction nationale d''interventions domaniales** (DNID), **École nationale d''administration**...

## III. Les ministres et les ministères

### A. Les catégories de ministres

#### Hiérarchie protocolaire
- **Ministres d''État** : préséance honorifique
- **Ministres**
- **Ministres délégués** (auprès d''un ministre)
- **Secrétaires d''État** (pas systématiquement au Conseil des ministres)

#### Caractère politique
**Tous nommés** par le Président sur proposition du PM (`art. 8 al. 2 C.`).

### B. Le portefeuille ministériel
- **Variable** selon les gouvernements
- **Décret d''attribution** des compétences (publié au JO)
- Conflit de compétences fréquent (arbitré par Matignon)

### C. Le cabinet ministériel

#### Composition (loi du `15 septembre 2017`)
- **Plafond** : **10 collaborateurs** pour un ministre, **8** pour un ministre délégué, **5** pour un secrétaire d''État
- **Directeur de cabinet**
- **Conseillers** thématiques
- **Chef de cabinet** (logistique)

#### Statut
- **Personnels politiques** : choisis librement par le ministre
- **Pas** de statut administratif (contractuels)
- **Démissionnent** avec le ministre

#### Rôle
- **Lien** politique avec les services
- **Arbitrage** sur les dossiers
- **Filtre** entre le politique et l''administratif
- **Travail** avec Matignon et l''Élysée

### D. Les services centraux

#### L''administration centrale
- **Directions** (et sous-directions, bureaux)
- **Personnels** statutaires (fonctionnaires)
- **Continuité** au-delà des changements de ministre

#### Hiérarchie
- **Secrétaire général du ministère** (en haut, fonction réelle ou non)
- **Directeurs généraux**
- **Directeurs**
- **Sous-directeurs**
- **Chefs de bureau**

#### Exemples par ministère

##### Ministère de l''Économie et des Finances (Bercy)
- **DG Trésor**
- **DG Finances publiques** (DGFiP)
- **DG Douanes**
- **DG Concurrence, Consommation et Répression des Fraudes** (DGCCRF)
- **INSEE**

##### Ministère de l''Intérieur
- **DG Police nationale**
- **DG Gendarmerie nationale**
- **DG Sécurité civile**
- **DG Étrangers en France**
- **DG Collectivités locales** (DGCL)

##### Éducation nationale
- **DG Enseignement scolaire** (DGESCO)
- **DG Ressources humaines** (DGRH)

## IV. Le fonctionnement du Conseil des ministres

### A. La réunion

#### Présidence (`art. 9 C.`)
- **Président de la République** (toujours)
- **Hôtel de l''Élysée**
- **Hebdomadaire** : mercredi matin

#### Composition
- **Tous les ministres** (en pratique)
- **Secrétaires d''État** : seulement si point inscrit qui les concerne
- **Secrétaire général du gouvernement** (rapporteur)
- **Secrétaire général de la présidence**

#### Procédure
- **Communication** politique
- **Délibération** des projets de loi
- **Présentation** des nominations
- **Décisions** publiées au JO

### B. Les actes adoptés en Conseil des ministres

#### Projets de loi
- **Avant** dépôt au Parlement
- **Avis** du Conseil d''État
- **Étude d''impact** (depuis `2008`)

#### Décrets en Conseil des ministres
- **Signature** du Président + contreseing du PM
- **Forme** la plus solennelle

#### Nominations
- **Liste** établie par décret en Conseil d''État
- Plus haute administration (préfets, ambassadeurs, recteurs, dirigeants d''entreprise publique...)

### C. Les réunions interministérielles

#### Comités interministériels
- **Présidés** par le Premier ministre
- **Coordination** sur un domaine
- **Exemples** : CIM jeunesse, CIM emploi

#### Réunions interministérielles (RIM)
- **Préparées** par le SGG
- **Niveau directeurs d''administration**
- **Arbitrage** technique

#### Réunions de cabinet à Matignon
- **Niveau directeurs de cabinet**
- **Discussion politique**

#### Conseils restreints
- **À l''Élysée** sur sujets précis
- **Décisions** importantes (défense, sécurité)

#### Conseils de défense
- **Sous présidence du Président**
- Sécurité, terrorisme, **Covid-19** (innovation `2020`)

## V. Les autorités placées auprès des ministres

### A. Les inspections générales

#### Inspection générale des Finances (IGF)
- **Bercy**, mais compétence transversale
- **Audit** et conseil
- **Profil** : très prestigieux

#### Inspection générale de l''Administration (IGA)
- **Intérieur**

#### Inspection générale des Affaires sociales (IGAS)
- **Social, santé**

#### Inspection générale de l''Éducation nationale (IGÉSR)
- **Éducation, recherche**

### B. Les hauts conseils
- **Haut conseil pour le climat** (`2018`)
- **Haut conseil de la famille, de l''enfance et de l''âge** (`HCFEA`)
- **Haut conseil des finances publiques** (`HCFP`, `2012`)
- **Etc.**

### C. Les délégations interministérielles
- Pour traiter des sujets transversaux ne relevant pas d''un seul ministre
- **Délégué interministériel à la transformation publique** (DITP)
- **Délégué interministériel à l''hébergement et à l''accès au logement** (DIHAL)
- **Etc.**

## VI. Le Conseil d''État (volet administratif)

### A. Double fonction
- **Consultative**
- **Juridictionnelle** (voir cours de droit administratif)

### B. Fonction consultative

#### Avis obligatoires
- **Projets de loi**
- **Projets d''ordonnances**
- **Décrets en Conseil d''État**

#### Avis facultatifs
- Le Gouvernement peut consulter le CE sur toute question

#### Sections administratives
- **Section de l''intérieur**
- **Section des finances**
- **Section des travaux publics**
- **Section sociale**
- **Section de l''administration**
- **Section du rapport et des études**

#### Procédure
- **Examen** par la section concernée
- **Avis** transmis au Gouvernement
- **Confidentialité** des avis (mais publication facultative)

## VII. L''évolution de l''administration centrale

### A. La modernisation

#### RGPP (`2007-2012`)
- **Révision générale** des politiques publiques
- **Réductions** d''effectifs
- **Fusion** de directions

#### MAP (`2012-2017`)
- **Modernisation** de l''action publique
- **Suite** plus modérée

#### Action publique 2022 (depuis `2017`)
- **Transformation** publique
- **Numérisation**

### B. La numérisation
- **France Connect**
- **Service public.fr**
- **DINUM** (direction interministérielle du numérique)
- **API** publiques

### C. La rationalisation
- **Fusion** de ministères (variable selon les gouvernements)
- **Simplification** administrative
- **Loi ESSOC** (`2018`) : droit à l''erreur

## À retenir

**Sommet administratif** : Président + Premier ministre + ministres.

**Président de la République** (`art. 13, 15 C.`) :
- Nominations aux hauts emplois
- Signature des décrets en Conseil des ministres
- Présidence du Conseil des ministres
- Chef des armées
- Cabinet (Élysée) + Secrétaire général de la présidence

**Premier ministre** (`art. 21 C.`) :
- Dirige l''action gouvernementale
- **Pouvoir réglementaire** général
- Nominations
- Exécution des lois
- Cabinet (Matignon) limité à 15 collaborateurs

**Services rattachés à Matignon** :
- **SGG** (Secrétariat général du Gouvernement) : pivot juridique et coordination
- **SGDSN** : défense et sécurité
- **SGAE** : affaires européennes
- **DITP** : transformation publique

**Ministres** :
- Nommés par le Président sur proposition du PM (`art. 8 al. 2`)
- **Cabinet** plafonné (10 collaborateurs max)
- **Services centraux** : directions, sous-directions, bureaux

**Conseil des ministres** :
- **Hebdomadaire** (mercredi matin)
- Présidé par le Président
- Délibération des projets de loi, décrets, nominations

**Conseil d''État** (volet consultatif) :
- Avis obligatoires (projets de loi, décrets en CE)
- Avis facultatifs
- 6 sections administratives

**Réunions interministérielles** : à Matignon, niveau directeur de cabinet ou directeur d''administration.

**Inspections** : IGF (finances), IGA (administration), IGAS (social), IGÉSR (éducation).

**Loi de 2017** : limite des **cabinets ministériels** à 10 collaborateurs.'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 3 - L''ADMINISTRATION DÉCONCENTRÉE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''administration déconcentrée : le préfet et les services territoriaux', 'Chapitre 3 - L''État dans les territoires',
       'Préfet de département, préfet de région, sous-préfets, services déconcentrés, loi du 6 février 1992.',
       array['Préfet', 'Sous-préfet', 'Décret du 17 février 1800', 'Article 72 C.', 'Loi du 6 février 1992', 'Loi du 13 août 2004', 'DRRT', 'DDFiP', 'ARS', 'Recteur', 'Loi ATR', 'Déconcentration'],
       28, 3,
'# L''administration déconcentrée : le préfet et les services territoriaux

## Introduction

L''**administration déconcentrée** est le **bras armé de l''État dans les territoires**. Si la décentralisation a transféré de nombreuses compétences aux collectivités locales, l''État conserve néanmoins une présence territoriale forte à travers les **préfets** et les **services déconcentrés**. Au cœur de cette organisation : la figure du **préfet**, hérité de l''époque napoléonienne (`17 février 1800`), incarne sur le terrain l''autorité de l''État. Cette fiche détaille l''organisation de l''administration déconcentrée, le statut et les pouvoirs des préfets, et l''articulation avec les autres acteurs (collectivités, services centraux).

> **Définition** : La **déconcentration** est le mode d''organisation administrative par lequel l''État transfère des pouvoirs de décision à des agents (préfets, recteurs, directeurs régionaux) répartis sur le territoire, qui restent **soumis à l''autorité hiérarchique** du pouvoir central.

## I. Le préfet de département

### A. Origine et histoire

#### Création
**Loi du 28 pluviôse an VIII** (`17 février 1800`) sous le Consulat. Bonaparte instaure le préfet comme représentant de l''État dans le département.

#### Le mot de Chaptal
> *« Le préfet doit être un instrument actif, mais passif. Il doit transmettre les ordres avec rapidité, et les exécuter avec célérité. »*

#### Filiation
- Inspiré des **intendants** de l''Ancien Régime
- **Modernisé** : agent unique, révocable
- Modèle exporté : Italie, Espagne, Belgique...

#### Permanence
**220+ ans** après sa création, l''institution préfectorale subsiste, adaptée mais reconnaissable.

### B. Statut constitutionnel

#### Article 72 al. 6 C. (depuis `2003`)
> *« Dans les collectivités territoriales de la République, le représentant de l''État, représentant de chacun des membres du Gouvernement, a la charge des intérêts nationaux, du contrôle administratif et du respect des lois. »*

#### Conséquence
**Constitutionnalisation** du préfet, qui devient le **seul fonctionnaire** mentionné dans la Constitution.

### C. Statut juridique du préfet

#### Nomination
- **Par décret du Président de la République en Conseil des ministres** (`art. 13 C.`)
- **À la discrétion** du Gouvernement

#### Statut
- **Fonctionnaire** de l''État au statut spécial (loi du `29 août 1955`)
- **Hors hiérarchie** classique
- **« Emploi à la discrétion »** du Gouvernement
- **Révocable** ad nutum

#### Carrière
- Souvent issu de l''**ENA**/INSP (mais pas exclusivement)
- **Promotion** progressive (directeur de cabinet de préfet, sous-préfet, préfet)
- **Mobilité** géographique régulière

#### Incompatibilités et obligations
- **Neutralité politique** stricte (au moins en apparence)
- **Devoir de réserve**
- **Loyauté** envers le Gouvernement

### D. Les attributions du préfet

#### Représentant de l''État

##### *Article 72 al. 6 C.*
Le préfet :
- **Représente** le Premier ministre et chacun des ministres
- **Veille** au respect des lois
- **Charge** des intérêts nationaux dans le département

#### Délégué du Gouvernement
- **Coordonne** l''action des services de l''État
- **Décide** au nom de l''État
- **Communique** la politique gouvernementale

#### Police administrative

##### Compétence générale
- **Ordre public** : sécurité, salubrité, tranquillité
- **Article L. 2215-1 CGCT** (pour la commune)
- Préfet : police générale au niveau départemental

##### Pouvoirs spéciaux
- **Interdiction** de manifestation
- **Réquisitions**
- **État d''urgence** (depuis `1955`, renforcé après attentats)

#### Pouvoirs en matière d''immigration
- **Décisions** d''éloignement (OQTF)
- **Naturalisations** (instruction)
- **Visas** (rôle indirect)

#### Contrôle administratif des collectivités territoriales

##### Évolution majeure
- **Avant 1982** : tutelle a priori (autorisation préalable)
- **Loi du 2 mars 1982** : **suppression** de la tutelle, contrôle a posteriori

##### Mécanisme actuel (`art. L. 2131-1 et s. CGCT`)
- Les actes des collectivités sont **transmis** au préfet
- Le préfet a **2 mois** pour saisir le **tribunal administratif** s''il les estime illégaux
- Pas de pouvoir de **réformation directe**

#### Pouvoir réglementaire local
- **Arrêtés préfectoraux** dans les limites de sa compétence
- **Réglementations** spéciales (circulation, manifestations…)

#### Représentation contentieuse de l''État
- **Représente** l''État devant les juridictions
- **Défend** les intérêts de l''État

### E. La préfecture et les sous-préfectures

#### La préfecture
- **Siège** : chef-lieu du département
- **Services** : cabinet du préfet, directions, secrétariat général
- **Effectifs** : variable selon les départements

#### Le cabinet du préfet
- **Directeur de cabinet**
- **Conseillers**
- **Sécurité**, ordre public

#### Le secrétariat général de la préfecture (SGP)
- **Coordination** des services
- **Administration générale**
- **Affaires** courantes

#### Les directions territoriales
- **Selon** l''organisation

#### Sous-préfectures et arrondissements
- **Découpage** du département en **arrondissements**
- **Sous-préfet** à la tête de chaque arrondissement
- **Sous-préfecture** : déclinaison locale de la préfecture
- **Réduction** progressive du nombre (rationalisation)

## II. Le préfet de région

### A. Histoire

#### Création
- **Décret du 14 mars 1964** : naissance officielle
- **Choix** du préfet de département du chef-lieu de région

#### Renforcement
- **Décret du 29 avril 2004** : préfet de région **autorité hiérarchique** sur les préfets de département (pour les politiques publiques régionales)
- **Décret du 16 février 2010** : préfet de région coordonne l''action des services déconcentrés

### B. Statut
- Toujours le **préfet de département du chef-lieu de région**
- **Double casquette** : préfet de département + préfet de région

### C. Attributions

#### Coordination de l''État dans la région
- **Mise en œuvre** des politiques publiques de l''État
- **Autorité** sur les préfets de département (pour les politiques publiques)
- **Gestion** des fonds européens

#### Pouvoirs propres
- **Schémas régionaux** d''aménagement, économie, etc.
- **Préfet de défense et de sécurité** dans certaines régions

#### Articulation avec le Conseil régional
- Le préfet de région **représente** l''État face à la région
- **Coopération** mais distinction des rôles

## III. Les services déconcentrés de l''État

### A. Évolution depuis 1982

#### Avant les lois Defferre
- **Multiples directions départementales** spécialisées
- **Sous l''autorité** du préfet
- **Lien hiérarchique** avec les ministères

#### Réforme de 2010
- **Décret du 16 février 2010**
- **Regroupement** des services autour de directions intégrées

### B. Les directions départementales interministérielles (DDI)

#### Direction départementale des Territoires (DDT/DDTM)
- **Anciennes DDE, DDA…**
- **Aménagement** du territoire, environnement, agriculture, logement

#### Direction départementale de la Protection des Populations (DDPP)
- **Anciennes DSV, DDCCRF…**
- **Sécurité** sanitaire, consommation

#### Direction départementale de la Cohésion sociale (DDCS)
- **Affaires sociales, jeunesse, sports**

#### Direction départementale de l''Emploi, du Travail et des Solidarités (DDETS)
- **Création** récente (`2021`) : fusion d''anciennes directions

### C. Les services régionaux

#### Au niveau régional
- **Direction régionale** de chaque ministère ou service
- **Autorité** du préfet de région

#### Exemples
- **DREAL** : environnement, aménagement, logement
- **DRAF** : agriculture, forêt
- **DIRECCTE / DREETS** : économie, emploi, travail (réorganisée en `2021`)
- **DRJSCS / DREETS** : sport, jeunesse, cohésion sociale
- **DRAC** : affaires culturelles

### D. Services à part

#### L''Éducation nationale : le rectorat
- **Recteur d''académie** : représentant du ministre de l''Éducation
- **Pas** sous l''autorité du préfet
- **Lien direct** avec le ministère
- **Académies** : `30` actuellement (réorganisation `2021`)
- **DSDEN** (direction des services départementaux de l''Éducation nationale, ex-IA)

#### La Justice
- **Magistrats** : indépendants
- **Cours d''appel** et juridictions : pas sous autorité préfet
- **DDSP/DDPN** : sous autorité préfet (police)

#### Les Finances publiques
- **DDFiP** (Direction départementale des Finances publiques)
- **Réseau** déconcentré du ministère de l''Économie et des Finances
- **Compétences** : impôts, comptabilité publique
- **Pas** sous autorité directe du préfet (mais coordination)

#### Les ARS (Agences Régionales de Santé)

##### Création
- **Loi HPST du 21 juillet 2009**
- **Établissements publics** de l''État
- **Forme** : agences (statut particulier)

##### Missions
- **Pilotage** régional du système de santé
- **Tutelle** des hôpitaux
- **Médico-social**

##### Articulation
- **Directeur général d''ARS** nommé par décret en Conseil des ministres
- **Autorité** indépendante du préfet
- **Pendant Covid-19** : conflit de compétences fréquent avec les préfets

#### Les forces de sécurité intérieure

##### Police nationale
- **DDSP** (direction départementale de la sécurité publique)
- **Sous autorité du préfet** pour l''ordre public

##### Gendarmerie nationale
- **Compétence** zone rurale
- **Statut militaire** mais sous autorité fonctionnelle du préfet

## IV. Le contrôle administratif des actes des collectivités

### A. Le mécanisme du contrôle

#### Transmission obligatoire au préfet
- **Actes** des collectivités transmis pour leur publicité
- **Article L. 2131-1 et s. CGCT**

#### Délai pour saisir le juge
- **2 mois** pour le préfet pour saisir le TA

#### Recours du préfet
- **Recours pour excès de pouvoir** (REP) devant le tribunal administratif
- **Demande** de suspension possible

### B. Évolution
- **Plus de 8 millions d''actes** transmis par an
- **Très peu** font l''objet d''un recours préfectoral
- **Contrôle** essentiellement sur les actes sensibles

### C. Le contrôle budgétaire
- **Chambres régionales des comptes** (depuis `1982`)
- **Contrôle** des comptes des collectivités
- **Pouvoir** de redressement

## V. L''évolution de la déconcentration

### A. La loi du 6 février 1992 (ATR)

#### Loi sur l''Administration territoriale de la République
- **Préfet** : autorité unique de l''État dans le département
- **Renforcement** de la cohérence
- **Charte de la déconcentration** (`1992`, refondue `2015`)

### B. La loi du 13 août 2004

#### Loi libertés et responsabilités locales
- **Continuation** de la décentralisation
- **Adaptations** déconcentrées

### C. Les réformes récentes

#### Réate (`2010`)
- **Réforme** de l''administration territoriale de l''État
- **Création** des DDI

#### Loi NOTRe (`2015`)
- **Régions** réduites (de 22 à 13 en métropole, devenues 13)
- **Préfets** de région réorganisés

#### Recentralisation discrète
- **Influence** des préfets sur la gestion des fonds européens
- **Tendance** de recentralisation budgétaire

## À retenir

**Préfet** : héritier des **intendants** de l''Ancien Régime, créé par la **loi du 28 pluviôse an VIII** (`17 février 1800`). Plus vieille institution administrative française non révolutionnée.

**Statut constitutionnel** (`art. 72 al. 6 C.`, depuis `2003`) : *« le représentant de l''État […] a la charge des intérêts nationaux, du contrôle administratif et du respect des lois »*. Seul fonctionnaire cité dans la Constitution.

**Nomination** : décret du Président **en Conseil des ministres** (`art. 13 C.`). Statut spécial (loi du `29 août 1955`), **révocable ad nutum**.

**Attributions du préfet** :
- **Représentation** de l''État
- **Délégué** du Gouvernement
- **Police administrative**
- **Immigration**
- **Contrôle** administratif des collectivités (depuis `1982` : a posteriori uniquement)
- **Pouvoir réglementaire** local
- **Représentation contentieuse**

**Préfet de région** : préfet de département du chef-lieu. **Autorité** sur les préfets de département pour les politiques publiques régionales (décrets de `2004` et `2010`).

**Services déconcentrés** :
- **DDI** (directions départementales interministérielles) : DDT, DDPP, DDETS
- **Services régionaux** : DREAL, DREETS, DRAC...
- **Services indépendants du préfet** : Rectorat (Éducation), DDFiP (finances), ARS (santé), Justice

**Contrôle a posteriori** des collectivités : 2 mois, recours devant le TA. Pas de réformation directe.

**Réformes** :
- **Lois Defferre** (`1982`) : suppression de la tutelle préfectorale
- **Loi ATR** (`6 février 1992`) : préfet autorité unique
- **Réate** (`2010`) : DDI
- **Loi NOTRe** (`2015`) : réorganisation régionale'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 4 - LA COMMUNE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La commune', 'Chapitre 4 - La collectivité de base',
       'Organisation, organes (conseil municipal, maire), compétences, libre administration, clause de compétence générale.',
       array['Commune', 'Article 72 C.', 'Libre administration', 'Loi du 5 avril 1884', 'Conseil municipal', 'Maire', 'Adjoints', 'Clause de compétence générale', 'Police municipale', 'PLU', 'CCAS', 'Officier d''état civil'],
       28, 4,
'# La commune

## Introduction

La **commune** est la **plus ancienne** et la **plus nombreuse** des collectivités territoriales françaises. Avec ses **34 945 communes** (au 1er janvier 2024), la France détient le **record européen** : plus que tous les autres États membres de l''UE réunis. Cette particularité française remonte à la **loi du 14 décembre 1789** qui transforma les paroisses en communes. Symbole de proximité, de démocratie locale et d''identité française, la commune est aujourd''hui à la croisée de plusieurs défis : émiettement (la moitié des communes ont moins de 500 habitants), intercommunalité forcée, et redéfinition de ses compétences face à la décentralisation et à la nécessité de mutualisation.

> **Définition** : La **commune** est une **collectivité territoriale** de base, dotée de la **personnalité juridique** et de l''**autonomie financière**, administrée par un **conseil municipal élu** et un **maire**, exerçant des compétences propres dans l''intérêt des habitants de son territoire.

## I. Origines et fondements

### A. Naissance révolutionnaire

#### Loi du 14 décembre 1789
- **Transforme** les paroisses et villes de l''Ancien Régime en **communes**
- **Décret** du 14-22 décembre 1789 sur la constitution des municipalités
- Crée environ **44 000** communes (puis réduit progressivement)

#### Une multiplicité héritée
- Liées aux paroisses religieuses
- **Émiettement** subsistant à ce jour
- **Tentatives** de fusion (Marcellin, `1971`, peu de succès)

### B. La grande loi municipale du 5 avril 1884

#### Élaboration
- **Sous la IIIe République**
- Pendant le ministère **Jules Ferry**
- **Charte** de l''administration communale

#### Principes
- **Conseil municipal élu** au suffrage universel masculin
- **Maire élu** par le conseil municipal
- **Libre administration** affirmée
- **Compétences** étendues

#### Permanence
- **Toujours en vigueur** sur de nombreux points
- **Référence** centrale du droit communal

### C. Constitutionnalisation

#### Article 72 al. 1 C.
> *« Les collectivités territoriales de la République sont les communes, les départements, les régions, les collectivités à statut particulier et les collectivités d''outre-mer […]. »*

#### Article 72 al. 3 C.
> *« Dans les conditions prévues par la loi, ces collectivités s''administrent librement par des conseils élus et disposent d''un pouvoir réglementaire pour l''exercice de leurs compétences. »*

#### Révision constitutionnelle de 2003
- **Renforcement** des principes
- **Autonomie financière** (`art. 72-2 C.`)
- **Référendum** local (`art. 72-1 C.`)

## II. Données chiffrées

### A. Le nombre de communes

#### En France métropolitaine
**`34 945 communes`** au 1er janvier 2024 (en diminution lente).

#### Évolution
- `1789` : ~ 44 000 communes
- `1971` (loi Marcellin) : fusion volontaire encouragée, peu d''adhésion
- `2010` (loi RCT) : communes nouvelles
- **Diminution** progressive par fusion

### B. La répartition

#### Tailles
- **53%** des communes ont moins de **500 habitants**
- **70%** moins de **1 000 habitants**
- **Quelques** dizaines de villes au-dessus de 100 000 habitants
- **Top 5** : Paris (~`2 millions`), Marseille, Lyon, Toulouse, Nice

#### Caractéristiques
- **Émiettement** : la France compte plus de communes que **les 26 autres pays de l''UE réunis**
- **Densité** : énorme disparité (villes denses vs villages ruraux)

## III. Les organes de la commune

### A. Le conseil municipal

#### Composition

##### Nombre de conseillers
**Variable** selon la population (de `7` à `163` à Paris) :
- < 100 habitants : 7 conseillers
- 100-499 : 11
- 500-1 499 : 15
- ...
- Paris : 163

##### Élections municipales
- **Tous les 6 ans**
- **Suffrage universel direct**
- **Mode de scrutin** variable :
  - Communes < 1 000 habitants : scrutin majoritaire plurinominal
  - Communes ≥ 1 000 habitants : scrutin proportionnel de liste avec prime majoritaire
  - Paris, Lyon, Marseille : scrutin par arrondissement (loi PLM, `1982`)

#### Compétences (`art. L. 2121-29 CGCT`)
> *« Le conseil municipal règle par ses délibérations les affaires de la commune. »*

##### Délibérations sur :
- **Budget** communal
- **Comptes**
- **Urbanisme** (PLU, ZAC...)
- **Personnel** communal
- **Conventions**
- **Subventions**
- **Etc.**

#### Fonctionnement
- **Convocation** par le maire
- **Séances** : au moins **`1 fois par trimestre`** (commune > 3 500 habitants : minimum tous les 3 mois)
- **Quorum** : majorité des membres en exercice
- **Publicité** : séances publiques
- **PV** publié au compte rendu

### B. Le maire

#### Élection
- **Par le conseil municipal**
- **Première séance** après élections municipales
- **Majorité absolue** aux 2 premiers tours, **relative** au 3e
- **Mandat** : 6 ans

#### Statut

##### Statut hybride
- **Élu** de la commune
- **Agent de l''État** (pour certaines fonctions)
- **Personnage** central de la commune

##### Indemnités
- Indemnités prévues par la loi
- Variable selon la taille de la commune
- Pour les communes < 1 000 habitants : ~`1 000 €`/mois

##### Responsabilités
- **Civile, pénale, administrative**
- **Augmentation** des poursuites contre les maires (mises en cause)
- **Loi Fauchon** (`10 juillet 2000`) : assouplissement de la responsabilité pénale

#### Compétences

##### Compétences propres
- **Direction** de l''administration communale
- **Représentation** de la commune
- **Exécution** des délibérations
- **Police municipale**
- **Préparation** du budget
- **Recrutement** du personnel
- **Délivrance** des permis de construire (avec PLU)

##### Compétences en tant qu''agent de l''État
- **Officier d''état civil** (mariages, déclarations)
- **Officier de police judiciaire** (avec adjoints)
- **Recensement** militaire
- **Élections** : organisation
- **Cartes nationales d''identité, passeports** (instruction)

#### La police municipale (`art. L. 2212-1 CGCT`)

##### Objet
- **Maintien** de l''ordre public au niveau communal
- **Sécurité**, salubrité, tranquillité

##### Exemples
- **Réglementation** de la circulation
- **Lutte** contre les nuisances sonores
- **Arrêtés** anti-mendicité (souvent annulés)
- **Marchés**, foires, manifestations

### C. Les adjoints

#### Composition
- **Élus** par le conseil municipal
- **Nombre** limité (% du conseil)
- **Délégués** par le maire

#### Rôle
- **Suppléance** du maire
- **Délégations** de signature et de pouvoir
- **Domaines** : urbanisme, culture, sports, écoles, etc.

### D. Le conseil municipal des jeunes
- **Innovation** locale fréquente
- **Démocratie** participative
- **Pas** d''obligation légale

## IV. Les compétences de la commune

### A. La clause de compétence générale (art. L. 2121-29 CGCT)

#### Texte
> *« Le conseil municipal règle par ses délibérations les affaires de la commune. »*

#### Conséquence
La **commune** peut intervenir dans **tout domaine** d''intérêt communal, sous réserve :
- Du respect de la loi
- Des compétences attribuées à d''autres collectivités ou à l''État
- De ne pas empiéter sur le secteur privé

#### Maintien
**Loi NOTRe** (`2015`) : supprimé pour départements et régions, **maintenu pour la commune**. La commune reste la seule collectivité à conserver cette clause.

### B. Compétences principales

#### Urbanisme
- **Plan local d''urbanisme** (PLU) ou **PLU intercommunal**
- **Permis de construire**
- **Zones d''aménagement** (ZAC)
- **Politique foncière**

#### Action sociale
- **CCAS** (Centre communal d''action sociale)
- **Aide sociale** facultative
- **Personnes âgées, handicapées, enfance**
- **Coordination** avec le département

#### Enseignement
- **Écoles maternelles et primaires** (construction, entretien)
- **Cantines** scolaires
- **Périscolaire**
- **Inscription** scolaire

#### Culture, sport, loisirs
- **Bibliothèques**, **médiathèques**
- **Équipements sportifs**
- **Salles culturelles**
- **Subventions** aux associations

#### Voirie et services techniques
- **Voirie** communale
- **Eau** et **assainissement**
- **Éclairage** public
- **Déchets** (souvent transférés à l''intercommunalité)

#### Police municipale
Voir supra.

#### État civil
- **Naissance, mariage, décès** (le maire est officier d''état civil)
- **PACS** (depuis `2017`)
- **Délivrance** de copies d''actes

### C. Compétences obligatoires vs facultatives
- **Obligatoires** : état civil, élections, voirie communale...
- **Facultatives** : action sociale (au-delà du CCAS), culture, sport...

## V. La libre administration

### A. Principe constitutionnel (`art. 72 al. 3 C.`)

#### Texte
> *« Dans les conditions prévues par la loi, ces collectivités s''administrent librement par des conseils élus et disposent d''un pouvoir réglementaire pour l''exercice de leurs compétences. »*

#### Portée
- **Garantie** constitutionnelle
- **Limites** : la loi peut encadrer

### B. Conséquences

#### Autonomie de décision
- Le conseil municipal **décide** des affaires communales
- **Pas** d''instructions hiérarchiques de l''État

#### Pouvoir réglementaire
- **Arrêtés** du maire
- **Délibérations** du conseil

#### Autonomie financière (`art. 72-2 C.`)
- **Recettes propres** déterminantes
- **Voir** fiche suivante

### C. Limites

#### Respect de la loi
- **Contrôle** du préfet
- **Contrôle** des chambres régionales des comptes

#### Liberté professionnelle et droit de propriété
- Pas de mesures arbitraires

#### Égalité
- **Égalité** devant le service public communal

## VI. Le contrôle administratif

### A. Le contrôle du préfet

#### Mécanisme (depuis `1982`)
- **Transmission obligatoire** des actes au préfet
- **Préfet** a 2 mois pour saisir le TA
- **Pas** de réformation directe

#### Évolution
- **Suppression** de la tutelle a priori en `1982`
- **Plus de 8 millions** d''actes transmis par an

#### Évolution
- Contrôle léger en pratique (peu de recours)
- Contrôle plus actif sur **urbanisme, marchés publics, déontologie**

### B. Le contrôle budgétaire et financier

#### Chambres régionales des comptes (CRC)
- **Créées** par la loi Defferre (`1982`)
- **Contrôle** des comptes
- **Recommandations**

#### Loi du 7 octobre 2016
- **Renforcement** du contrôle
- **Publication** des rapports

### C. Le contrôle juridictionnel

#### Voies de recours
- **Recours pour excès de pouvoir** (REP) : annulation d''actes
- **Recours en responsabilité** : indemnisation

#### Auteurs des recours
- **Préfet**
- **Habitants**
- **Associations**
- **Entreprises**

## VII. Les particularités de Paris, Lyon, Marseille

### A. La loi PLM (`31 décembre 1982`)

#### Création
- **Paris, Lyon, Marseille** : statut particulier
- **Arrondissements** dotés d''un conseil et d''un maire

### B. Paris

#### Statut hybride
- **Commune** ET **département** (avant `2019`)
- **Depuis 2019** : la Ville de Paris est une **collectivité à statut particulier** (loi du `28 février 2017`)

#### Organes
- **Conseil de Paris** (`163 conseillers`)
- **Maire de Paris**
- **Conseils d''arrondissement** (20 arrondissements)

#### Compétences
- **Cumul** commune + département

### C. Lyon

#### La métropole de Lyon
- **Créée** au 1er janvier `2015`
- **Collectivité à statut particulier**
- **Fusion** : Communauté urbaine de Lyon + compétences départementales

### D. Marseille
- **Conseils** d''arrondissement et de secteur
- **Statut** complexe

## VIII. Les évolutions récentes

### A. Les communes nouvelles

#### Loi du 16 mars 2015
- **Encouragement** des fusions de communes
- **Avantages** : maintien des dotations, voire bonus

#### Bilan
- **Plusieurs centaines** de communes nouvelles créées
- **Réduction** lente du nombre total

### B. La mutualisation

#### Mutualisation des services
- Avec les **intercommunalités**
- **Économies** d''échelle

#### Schémas de mutualisation
- **Obligatoires** dans les communautés

### C. Les défis contemporains

#### Capacité financière
- **Disparités** énormes
- **Petites communes** : difficulté à investir

#### Démocratie locale
- **Abstention** record aux municipales
- **Crise** des vocations (peu de candidats maires)

#### Vie quotidienne
- **Fermeture** progressive de services publics dans les territoires ruraux
- **Tension** ville/campagne

## À retenir

**Définition** : la commune est une **collectivité territoriale** de base, héritière de la loi du `14 décembre 1789`.

**Cadre juridique** :
- **Loi du 5 avril 1884** (« charte communale »)
- **Article 72 C.** : libre administration
- **CGCT** : code général des collectivités territoriales

**Données** : **`34 945 communes`** (record européen).

**Organes** :
- **Conseil municipal** élu au SUD pour 6 ans (mode de scrutin variable selon la taille)
- **Maire** élu par le conseil municipal
- **Adjoints** désignés

**Maire** : double casquette — élu de la commune + agent de l''État (état civil, OPJ, police).

**Compétences** :
- **Clause de compétence générale** maintenue (seule collectivité)
- **Urbanisme** (PLU)
- **Action sociale** (CCAS)
- **Écoles primaires et maternelles**
- **Police municipale**
- **État civil**
- **Voirie communale**

**Libre administration** (`art. 72 al. 3 C.`) : autonomie constitutionnelle.

**Contrôle** : par le **préfet** (depuis `1982` : a posteriori uniquement, 2 mois). Chambres régionales des comptes.

**Particularismes** : **Paris** (collectivité à statut particulier depuis `2019`), **Lyon** (métropole à statut particulier), **Marseille** (loi PLM, `1982`).

**Évolutions** : communes nouvelles (`2015`), mutualisation, défis (financement, démocratie).'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 5 - LE DÉPARTEMENT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le département', 'Chapitre 5 - Le département',
       'Histoire, organes (conseil départemental, président), compétences (action sociale, collèges, voirie), évolution.',
       array['Département', 'Loi du 22 décembre 1789', 'Conseil départemental', 'Loi du 10 août 1871', 'Loi du 2 mars 1982', 'Aide sociale', 'Collèges', 'Voirie départementale', 'Loi NOTRe', 'Métropole de Lyon', 'Suppression'],
       22, 5,
'# Le département

## Introduction

Le **département** est, avec la commune, l''une des **plus anciennes collectivités territoriales** françaises. Créé par la **Révolution française** (`22 décembre 1789`) pour briser l''héritage provincial de l''Ancien Régime et rationaliser l''administration, il a longtemps été le **niveau territorial central** entre la commune et l''État. Pendant deux siècles, le département a évolué : d''abord simple circonscription administrative, il est devenu collectivité de plein exercice avec les **lois Defferre** (`1982`). Aujourd''hui, sa pertinence est régulièrement remise en cause : sa **suppression** a été débattue, sa **fusion** avec la région envisagée, et sa **transformation** réalisée à Lyon (où le département a été remplacé par la métropole en `2015`). Cette fiche présente l''histoire, l''organisation, les compétences et les défis du département.

## I. Histoire du département

### A. Création révolutionnaire

#### Loi du 22 décembre 1789
- **Décret** créant les départements
- **Suppression** des provinces de l''Ancien Régime
- **Découpage** rationnel : on cherche à pouvoir aller au chef-lieu en une journée de cheval

#### Nombre initial
- **`83 départements`** créés en `1790`
- Noms tirés de **caractéristiques géographiques** (rivières, montagnes…) — refus des références à l''Ancien Régime

#### Évolution
- Adjonctions, divisions...
- Aujourd''hui : **`101 départements`** (96 métropolitains + 5 d''outre-mer + Mayotte)

### B. Phase administrative (1789-1871)

#### Le département comme circonscription
- **Cadre** territorial de l''État
- **Préfet** à la tête (depuis `1800`)
- **Pas** de véritable collectivité

#### Conseil général
- **Élu** progressivement (`1833` puis `1848`)
- **Compétences** réduites

### C. La loi du 10 août 1871

#### Loi départementale
- **Charte** du département pour 100 ans
- **Élection** du conseil général au suffrage universel masculin
- **Préfet** exécutif (situation jusqu''en `1982`)

#### Conseil général
- **Élu** par canton
- **Délibérations** sur les affaires départementales

### D. La loi du 2 mars 1982

#### Réforme majeure
- **Décentralisation** : le département devient une vraie collectivité
- **Président du Conseil général** : exécutif (à la place du préfet)
- **Suppression** de la tutelle préfectorale

#### Évolutions ultérieures
- **Loi du 13 août 2004** : transferts de compétences (RSA, RMI, etc.)
- **Loi MAPTAM** (`2014`) : préparation à la suppression (avortée)
- **Loi NOTRe** (`2015`) : recentrage sur la solidarité

### E. Renommage

#### Loi du 17 mai 2013
- **« Conseil général »** devient **« Conseil départemental »**
- **« Président du Conseil général »** devient **« Président du Conseil départemental »**

#### Élections
- **Renommées** : élections **départementales** (et non plus cantonales)
- **Mode** de scrutin réformé : binôme paritaire homme-femme

## II. Organisation territoriale

### A. Le département en chiffres
- **`101 départements`** : 96 métropolitains + 5 outre-mer + Mayotte
- **Tailles** très variables (de Paris à la Lozère)

### B. Cas particuliers

#### Paris
- **Depuis 2019** : Ville de Paris collectivité à statut particulier
- **Plus** de département de Paris (75) en tant que tel

#### Métropole de Lyon
- **Depuis 1er janvier 2015**
- **Remplace** le département du Rhône sur son territoire
- **Reste** : département du Rhône (limité, sans Lyon)

#### Corse
- **Collectivité de Corse** depuis `2018` : remplace les départements de la Corse-du-Sud et de la Haute-Corse + la région
- **Statut** particulier

#### Outre-mer
- **Guadeloupe, Martinique, Guyane, La Réunion** : collectivités uniques (région + département confondus) ou statuts spéciaux
- **Mayotte** : DROM depuis `2011`

### C. Subdivisions
- **Arrondissements** : non plus subdivisions du département mais de l''État
- **Cantons** : circonscriptions électorales
- **Communes**

## III. Les organes du département

### A. Le conseil départemental

#### Élection
- **Tous les 6 ans**
- **Renouvellement** intégral
- **Mode de scrutin** : binôme paritaire (un homme + une femme) par canton
- **Suffrage** universel direct

#### Nombre de conseillers
- **Variable** selon le département
- **Égal** au nombre de cantons (depuis le redécoupage de `2013`)

#### Compétences
- **Délibérations** sur les affaires départementales
- **Vote du budget**
- **Politique** sociale, infrastructure, etc.

#### Fonctionnement
- **Sessions** : au moins **`1 fois par trimestre`**
- **Présidence** par le président du conseil départemental
- **Quorum**, vote, publicité

### B. Le président du conseil départemental

#### Élection
- **Par le conseil départemental**
- **Première séance** après les élections
- **Mandat** : 6 ans

#### Compétences
- **Exécute** les délibérations du conseil
- **Prépare** le budget
- **Dirige** les services
- **Représente** le département
- **Pouvoir** de police (limité)
- **Nominations** dans l''administration départementale

#### Le cabinet
- **Composition** politique
- **Limites** légales

### C. Commission permanente
- **Émanation** du conseil
- **Décide** entre les sessions
- **Compétences** déléguées par le conseil

### D. Les vice-présidents
- **Délégations** par le président
- **Domaines** : action sociale, voirie, collèges...

## IV. Les compétences du département

### A. La suppression de la clause de compétence générale (`2015`)

#### Loi NOTRe du 7 août 2015
- **Suppression** de la clause de compétence générale pour le département (et la région)
- **Maintien** uniquement pour la commune
- **Conséquence** : le département ne peut plus intervenir que dans ses compétences attribuées

### B. La solidarité humaine et territoriale : compétence principale

#### Le rôle social
**Loi NOTRe** : le département est **« chef de file »** de la solidarité sociale et de la cohésion territoriale.

#### Aide sociale

##### Revenu de solidarité active (RSA)
- **Transféré** au département en `2004`
- **Versement** géré par les CAF
- **Coût** majeur pour les départements

##### Allocation personnalisée d''autonomie (APA)
- **Personnes âgées** dépendantes
- **Évaluation** par équipes médico-sociales
- **GIR** (groupes iso-ressources)

##### Prestation de compensation du handicap (PCH)
- **Personnes handicapées**

##### Aide sociale à l''enfance (ASE)
- **Enfants en danger**
- **Placement, accueil**
- **Mineurs non accompagnés** (MNA)

##### Aide à domicile
- **Personnes âgées, handicapées**

#### Insertion professionnelle
- **PDI** : Plan départemental d''insertion
- **Articulation** avec Pôle emploi/France Travail

### C. Les autres compétences

#### Collèges
- **Construction** et **entretien**
- **Gestion** des personnels techniques (TOS) depuis `2004`

#### Voirie départementale
- **Routes** départementales
- **Entretien**, modernisation

#### SDIS (Service départemental d''incendie et de secours)
- **Cofinancé** : département + communes
- **Pompiers**

#### Aménagement du territoire
- **Soutien** aux communes rurales
- **Politique** de la ruralité

#### Culture
- **Bibliothèques** départementales de prêt
- **Archives** départementales
- **Soutien** à la culture

#### Sports
- **Soutien** au sport amateur

### D. Compétences partagées
- **Tourisme**
- **Culture**
- **Sport**
- **Promotion** des langues régionales
- **Éducation populaire**

(Article L. 1111-4 CGCT)

## V. Les finances départementales

### A. Recettes

#### Fiscalité locale
- **Avant `2010`** : taxe professionnelle (supprimée)
- **Aujourd''hui** : foncier bâti (TFPB), CFE, CVAE (en partie)
- **Réformes** progressives diminuant l''autonomie fiscale

#### Dotations de l''État
- **DGF** (Dotation globale de fonctionnement)
- **DSU** (Dotation de solidarité urbaine, pour les communes mais aussi départements)
- **Compensations** des transferts de compétences

#### Compensation du RSA
- **Insuffisante** selon de nombreux départements
- **Tensions** récurrentes avec l''État

### B. Difficultés financières

#### Effet « ciseaux »
- **Augmentation** des dépenses sociales (RSA, APA, PCH, ASE)
- **Diminution** ou stagnation des recettes
- **Étranglement** budgétaire

#### Disparités
- **Riches/pauvres** départements
- **Péréquation** insuffisante

## VI. Le débat sur la suppression

### A. Les critiques contre le département

#### Trop nombreux échelons
- **« Mille-feuille territorial »**
- **Commune + intercommunalité + département + région + État + UE** = 6 niveaux

#### Compétence sociale ailleurs ?
- **Régionalisation** ?
- **Communalisation** (via intercommunalité) ?

#### Coût administratif

### B. Les tentatives de suppression

#### Comité Balladur (`2009`)
- **Proposition** de fusion départements-régions
- **Non aboutie**

#### Projet Hollande (`2014-2015`)
- **Disparition** des départements à horizon `2020`
- **Renoncement** rapide
- **Loi NOTRe** se contente d''affaiblir le département

#### Métropole de Lyon (`2015`)
- **Seul** cas de suppression effective
- **Remplacement** du département par la métropole

### C. Les défenseurs du département

#### Proximité
- **Échelle** humaine
- **Maillage** local

#### Solidarité
- **Action sociale** au plus près
- **Lutte** contre les inégalités territoriales

#### Ruralité
- **Soutien** aux territoires ruraux
- **Petites communes**

### D. Aujourd''hui
- **Maintien** consacré par les réformes récentes
- **Recentrage** sur la solidarité (NOTRe `2015`)
- **Mais** débats récurrents

## VII. Les évolutions récentes

### A. La loi NOTRe (`2015`)

#### Apports
- **Suppression** de la clause de compétence générale
- **Recentrage** sur la solidarité
- **Transfert** des transports scolaires à la région
- **Transfert** des routes nationales d''intérêt local à la région

### B. La loi 3DS (`2022`)
- **Différenciation**, décentralisation, déconcentration, simplification
- **Adaptations** locales possibles

### C. Les expérimentations
- **Article 72 al. 4 C.** : possibilité d''expérimenter

## À retenir

**Création** : **loi du 22 décembre 1789** (créés en `1790`). **83 départements** à l''origine, **101 aujourd''hui**.

**Évolution** :
- **Loi du 10 août 1871** : conseil général élu, préfet exécutif
- **Loi du 2 mars 1982** : décentralisation, président du conseil général exécutif
- **Loi du 17 mai 2013** : renommage en « conseil départemental »
- **Loi NOTRe (`7 août 2015`)** : recentrage sur la solidarité, suppression clause générale

**Organisation** :
- **Conseil départemental** élu par binôme paritaire homme-femme par canton
- **Président du conseil départemental** : exécutif
- **Commission permanente**, vice-présidents

**Compétences principales** :
- **Aide sociale** (RSA, APA, PCH, ASE) — compétence majeure
- **Collèges** (construction, entretien)
- **Voirie départementale**
- **SDIS** (cofinancé)
- **Solidarité territoriale**

**Cas particuliers** :
- **Paris** : collectivité à statut particulier (depuis `2019`)
- **Métropole de Lyon** : remplace le département du Rhône (depuis `2015`)
- **Corse, outre-mer** : statuts spéciaux

**Difficultés** : effet ciseaux financier (dépenses sociales croissantes, recettes contraintes).

**Débat sur la suppression** : récurrent depuis le comité Balladur (`2009`). Maintien acquis pour l''instant.'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 6 - LA RÉGION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La région', 'Chapitre 6 - La région',
       'Histoire, organes, compétences (économie, formation, lycées, transports), évolution (loi NOTRe, fusion des régions).',
       array['Région', 'Conseil régional', 'Président du conseil régional', 'Loi du 2 mars 1982', 'Loi NOTRe', 'Loi du 16 janvier 2015', 'Développement économique', 'Lycées', 'TER', 'Formation professionnelle', 'Apprentissage'],
       22, 6,
'# La région

## Introduction

La **région** est la **plus jeune** des collectivités territoriales françaises. Née comme simple circonscription administrative dans les années 1950, elle est devenue **collectivité territoriale** seulement avec la **loi Defferre du 2 mars 1982**. Sa première élection au suffrage universel direct date de `1986`. Aujourd''hui, après le **redécoupage régional de 2015** (passage de 22 à 13 régions métropolitaines), la région est devenue l''**échelon stratégique** des politiques territoriales : développement économique, formation professionnelle, transports régionaux, lycées, aménagement du territoire. Cette fiche présente l''histoire de la région, ses organes, ses compétences et son rôle dans l''architecture territoriale française.

## I. Histoire de la région

### A. Origines administratives

#### Décret de 1956
- **Création** des **régions de programme**
- **Cadre** de planification économique
- **22 régions** (puis modifications)

#### Décret du 14 mars 1964
- **Création** des **circonscriptions d''action régionale**
- **Préfet de région**
- **Cadre** de l''administration de l''État

#### Évolution
- **Renforcement** progressif
- **Loi Frey** (`1972`) : établissements publics régionaux

### B. La régionalisation par étapes

#### Loi du 5 juillet 1972
- **Création** des **régions** comme **établissements publics**
- **Pas encore** des collectivités territoriales
- **Compétences** réduites

#### Loi du 2 mars 1982 (Defferre)
- **Transformation** des régions en **collectivités territoriales**
- **Élection** au suffrage universel direct (prévue mais retardée)

#### Premières élections régionales : `1986`
- **Suffrage universel direct**
- **Liste** proportionnelle

### C. Les transferts de compétences

#### Lois de décentralisation (depuis `1982`)
- **Compétences** progressivement transférées
- **Lycées** depuis `1983`
- **Formation professionnelle**, apprentissage
- **TER** (depuis `2002`)

#### Constitutionnalisation
- **Révision du 28 mars 2003** : régions inscrites dans la Constitution (`art. 72 C.`)

### D. Le redécoupage de 2015

#### Loi du 16 janvier 2015
- **Réduction** : 22 → 13 régions métropolitaines
- **Fusion** controversée
- **Discussion** des noms des nouvelles régions

#### Nouvelle carte
- **Nouvelle-Aquitaine** (Aquitaine + Limousin + Poitou-Charentes)
- **Auvergne-Rhône-Alpes** (Auvergne + Rhône-Alpes)
- **Bourgogne-Franche-Comté**
- **Grand Est** (Alsace + Champagne-Ardenne + Lorraine)
- **Hauts-de-France** (Nord-Pas-de-Calais + Picardie)
- **Normandie** (Haute-Normandie + Basse-Normandie)
- **Occitanie** (Languedoc-Roussillon + Midi-Pyrénées)
- **Bretagne** (inchangée)
- **Pays de la Loire** (inchangée)
- **Centre-Val de Loire** (inchangée)
- **Île-de-France** (inchangée)
- **Provence-Alpes-Côte d''Azur** (inchangée)
- **Corse** (devenue collectivité de Corse, `2018`)

#### Critiques
- **Taille** énorme de certaines régions
- **Perte** d''identité
- **Économies** annoncées non réalisées

## II. Données chiffrées

### A. Le nombre de régions
- **`13 régions` métropolitaines** + **`5 régions` d''outre-mer**
- **`18 régions`** au total
- **Collectivité de Corse** (statut particulier, depuis `2018`)

### B. La répartition

#### Population
- **Île-de-France** : plus de 12 millions d''habitants
- **Auvergne-Rhône-Alpes**, **Nouvelle-Aquitaine** : ~ 8 millions
- **Petites** : Centre-Val de Loire (~ 2,5 millions)

#### Surface
- **Nouvelle-Aquitaine** : la plus grande (`84 000 km²`)
- **Auvergne-Rhône-Alpes** : `70 000 km²`
- **Île-de-France** : la plus petite (`12 000 km²`)

## III. Les organes de la région

### A. Le conseil régional

#### Élection
- **Tous les 6 ans**
- **Renouvellement** intégral
- **Suffrage universel direct**

#### Mode de scrutin
- **Scrutin de liste proportionnel** à deux tours
- **Prime majoritaire** : 25% des sièges au gagnant
- **Sections** départementales (chaque département a un nombre de sièges)

#### Composition
- **Variable** selon la population régionale
- **De 41 à 209** conseillers selon la région

#### Compétences
- **Délibérations** sur les affaires régionales
- **Vote du budget**
- **Schémas** stratégiques

### B. Le président du conseil régional

#### Élection
- **Par le conseil régional**
- **Mandat** : 6 ans

#### Compétences
- **Exécute** les délibérations
- **Prépare** le budget
- **Dirige** l''administration régionale
- **Représente** la région

### C. La commission permanente
- **Délégations** du conseil
- **Décide** entre les sessions

### D. Les vice-présidents
- **Délégations** thématiques par le président

### E. Les sessions
- **Au moins `1 fois par trimestre`**
- **Hôtel de région** : siège

## IV. Les compétences de la région

### A. Suppression de la clause de compétence générale

#### Loi NOTRe (`7 août 2015`)
- **Suppression** pour la région (comme pour le département)
- **Maintien** uniquement pour la commune

### B. Le développement économique

#### Chef de file
**Loi NOTRe** : la région est **« chef de file »** du développement économique.

#### Compétences
- **Aides** aux entreprises
- **Politique** d''attractivité
- **Schéma régional de développement économique** (SRDEII)
- **Articulation** avec les métropoles

### C. La formation professionnelle et l''apprentissage

#### Compétence forte
- **Formation professionnelle** des adultes
- **Apprentissage** (transféré progressivement)
- **PRDF** (plan régional de développement des formations)

#### Acteurs
- **Régions** payent une partie des centres de formation
- **France compétences** au niveau national (depuis `2018`)

### D. Les lycées

#### Construction et entretien
- **Depuis 1983** : transferts de l''État
- **Investissement** majeur

#### Personnel non enseignant
- **TOS** (techniques, ouvriers, de service) : depuis `2004`

#### Pas la pédagogie
- **Reste à l''État** : programmes, enseignants

### E. Les transports

#### TER (trains express régionaux)
- **Depuis 2002**
- **Achat** de matériel roulant
- **Conventions** avec SNCF

#### Transports interurbains
- **Cars régionaux**
- **Suppression** du transport scolaire des départements depuis `2017`

#### Infrastructures
- **Cofinancement** des grands projets

### F. L''aménagement du territoire

#### SRADDET
- **Schéma régional d''aménagement, de développement durable et d''égalité des territoires**
- **Document** stratégique

#### Politique régionale
- **Soutien** aux territoires
- **Politiques** d''attractivité

### G. Les autres compétences

#### Environnement
- **Parcs naturels régionaux**
- **Schémas** environnementaux

#### Tourisme
- **Compétence partagée**

#### Culture
- **Compétence partagée**
- **Soutien** aux institutions culturelles régionales

#### Sport
- **Soutien**

#### Enseignement supérieur et recherche
- **Soutien** (compétence partagée avec l''État)
- **CPER** (contrats de plan État-région)

### H. La gestion des fonds européens
- **Depuis `2014`** : autorité de gestion des fonds européens (FEDER, FSE pour partie, FEADER)
- **Compétence majeure**

## V. Les finances régionales

### A. Recettes

#### Fiscalité
- **CVAE** (cotisation sur la valeur ajoutée des entreprises) — partielle
- **TICPE** (taxe sur les carburants) — partielle
- **Cartes grises**
- **Réformes** ayant réduit l''autonomie fiscale

#### Dotations de l''État
- **DGF**, fractions de fiscalité partagée

#### Fonds européens
- **Géré** par la région

### B. Budgets
- **Variables** énormément selon la région
- **Île-de-France** : `~7 milliards €`
- **Petites régions** : `~2 milliards €`

## VI. Les évolutions

### A. La fusion des régions (`2015`)

#### Loi du 16 janvier 2015
- **Carte** redessinée
- **Première** application : élections de décembre `2015`

#### Bilan contesté
- **Économies** annoncées non atteintes
- **Identités** régionales perturbées
- **Efficacité** débattue

### B. La loi NOTRe (`7 août 2015`)

#### Compétences renforcées
- **Chef de file** du développement économique
- **Transferts** depuis le département (transports scolaires)

### C. La loi 3DS (`2022`)
- **Différenciation** territoriale
- **Adaptations** régionales

### D. Les expérimentations

#### Alsace
- **Collectivité européenne d''Alsace** (`2021`) : fusion des deux départements alsaciens
- **Pas** disparition de la région Grand Est

#### Mayotte, Guyane, Martinique
- **Collectivités** uniques (depuis `2011-2015`)

## VII. La place de la région

### A. L''échelon stratégique
- **Vision** territoriale
- **Politique** de long terme
- **Articulation** européenne

### B. Les défis

#### Capacité à agir
- **Compétences** importantes mais financements contraints
- **Tensions** avec l''État

#### Démocratie
- **Visibilité** des conseils régionaux limitée
- **Abstention** aux élections régionales

#### Articulation avec les métropoles
- **Tensions** : métropoles fortes vs régions
- **Concurrence** sur le développement économique

#### Identité
- **Régions** fusionnées : recherche d''identité

## À retenir

**Histoire** :
- **Décret de 1956** : régions de programme (circonscriptions)
- **Loi du 5 juillet 1972** : régions comme établissements publics
- **Loi du 2 mars 1982** : régions collectivités territoriales
- **1986** : premières élections au SUD
- **Loi du 16 janvier 2015** : redécoupage (22 → 13 régions)
- **Loi NOTRe (`7 août 2015`)** : renforcement des compétences

**Données** : **13 régions** métropolitaines + **5 régions** d''outre-mer + Corse.

**Organes** :
- **Conseil régional** élu pour 6 ans (proportionnel avec prime majoritaire)
- **Président du conseil régional** : exécutif
- **Commission permanente**
- **Sessions** : 1 par trimestre minimum

**Compétences** :
- **Développement économique** (chef de file)
- **Formation professionnelle et apprentissage**
- **Lycées** (construction, entretien, TOS)
- **Transports** : TER, cars interurbains
- **Aménagement** du territoire (SRADDET)
- **Gestion des fonds européens** (depuis `2014`)
- **Environnement**, tourisme, culture, sport (partagées)

**Pas de clause de compétence générale** depuis la loi NOTRe (`2015`).

**Finances** : CVAE, TICPE, cartes grises, dotations État. Autonomie fiscale réduite.

**Défis** : taille des régions fusionnées, articulation avec métropoles, visibilité démocratique.'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 7 - L''INTERCOMMUNALITÉ ET LES MÉTROPOLES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''intercommunalité et les métropoles', 'Chapitre 7 - L''intercommunalité',
       'EPCI à fiscalité propre (communautés de communes, agglomération, urbaine), métropoles, syndicats intercommunaux.',
       array['EPCI', 'Intercommunalité', 'Communauté de communes', 'Communauté d''agglomération', 'Communauté urbaine', 'Métropole', 'Métropole de Lyon', 'SIVU', 'SIVOM', 'Syndicat mixte', 'Loi Chevènement', 'Loi MAPTAM', 'Loi NOTRe', 'Transferts de compétences'],
       22, 7,
'# L''intercommunalité et les métropoles

## Introduction

La **multiplicité des communes** en France (`~35 000`) a, dès le XIXe siècle, posé un problème d''**efficacité** : comment gérer des services publics modernes avec des communes parfois minuscules ? La **réponse** a été l''**intercommunalité** : des regroupements de communes pour exercer ensemble certaines compétences. D''abord limitée (syndicats), elle s''est progressivement renforcée avec des **EPCI à fiscalité propre** (les communautés). La **loi Chevènement de 1999**, puis les **lois MAPTAM (2014)** et **NOTRe (2015)** ont accéléré le mouvement. Aujourd''hui, **toutes les communes françaises** appartiennent à un EPCI à fiscalité propre, et les **métropoles** se sont imposées comme des acteurs majeurs des grandes aires urbaines. Cette fiche présente l''écosystème intercommunal français.

> **Définition** : L''**intercommunalité** désigne les différentes formes de coopération entre communes, qui peuvent prendre la forme d''**EPCI** (établissements publics de coopération intercommunale) dotés ou non d''une fiscalité propre.

## I. Histoire de l''intercommunalité

### A. Les premières formes

#### Loi du 22 mars 1890
- **Création** des **SIVU** (syndicats intercommunaux à vocation unique)
- **Coopération** sur un objet particulier

#### Loi du 5 janvier 1959
- **SIVOM** (syndicats intercommunaux à vocation multiple)
- **Coopération** sur plusieurs objets
- **Districts** urbains

### B. Les premières communautés

#### Loi du 31 décembre 1966
- **Communautés urbaines** créées
- **Lille, Lyon, Bordeaux, Strasbourg** : créées d''office
- **Coopération** renforcée

#### Loi du 6 février 1992 (ATR)
- **Communautés de communes**
- **Communautés de villes**

### C. La grande réforme : loi Chevènement

#### Loi du 12 juillet 1999
- **Simplification** : 3 types d''EPCI à fiscalité propre
  - Communauté de communes (CC)
  - Communauté d''agglomération (CA)
  - Communauté urbaine (CU)
- **Incitations** financières fortes
- **Transferts** de compétences obligatoires
- **DGF** bonifiée pour les EPCI à fiscalité propre

#### Résultats
- **Multiplication** des EPCI
- **Couverture** progressive du territoire

### D. La couverture totale

#### Loi du 16 décembre 2010 (RCT)
- **Réforme** des collectivités territoriales
- **Couverture intégrale** des communes par un EPCI à fiscalité propre (au 1er juin `2013`)
- **Schémas départementaux** de coopération intercommunale

### E. Loi MAPTAM (`27 janvier 2014`)

#### Création des métropoles
- **Métropole** : nouvel EPCI à statut renforcé
- **Métropole de Lyon** : collectivité à statut particulier (`1er janvier 2015`)
- **Métropole** du Grand Paris (`2016`)
- **Métropole** d''Aix-Marseille-Provence (`2016`)

### F. Loi NOTRe (`7 août 2015`)

#### Renforcement
- **Élargissement** des compétences
- **Seuils** plus élevés (15 000 hab. minimum pour une CC, sauf exception)
- **Transferts** obligatoires accélérés
- **PLUi** (PLU intercommunal) renforcé

## II. Données chiffrées

### A. Les EPCI à fiscalité propre

#### Au 1er janvier 2024
- **`1 257 EPCI à fiscalité propre`** environ
- **Communautés de communes** : ~`1 000`
- **Communautés d''agglomération** : ~`230`
- **Communautés urbaines** : `15`
- **Métropoles** : `22`

### B. Les habitants
- **Toutes les communes** françaises font partie d''un EPCI
- **`100%`** de couverture

## III. Les types d''EPCI à fiscalité propre

### A. La communauté de communes (CC)

#### Caractères
- **Plus petite** structure
- **`15 000 hab. minimum`** (seuil de droit commun)
- **Exceptions** : `5 000 hab.` en montagne, zone faiblement peuplée, etc.

#### Compétences obligatoires
- **Aménagement de l''espace** (SCOT, PLUi)
- **Développement économique** (ZAC, soutien aux entreprises)
- **GEMAPI** (gestion des milieux aquatiques) depuis `2018`
- **Aire d''accueil** des gens du voyage
- **Collecte** et traitement des déchets ménagers
- **Eau** (depuis `2020`)
- **Assainissement** (depuis `2020`)

#### Compétences optionnelles
- **Action sociale**
- **Logement**
- **Voirie**
- **Etc.**

### B. La communauté d''agglomération (CA)

#### Caractères
- **Plus grande** structure
- **`50 000 hab. minimum`** dont une commune-centre de `15 000 hab.` minimum

#### Compétences obligatoires
- **Toutes les compétences** de la CC
- **Politique de la ville**
- **Transports urbains**
- **Politique** de l''habitat

#### Caractère
- **Urbaine** marquée

### C. La communauté urbaine (CU)

#### Caractères
- **`250 000 hab. minimum`** (depuis la loi MAPTAM)
- **Anciennes** villes-centres importantes

#### Compétences
- **Très étendues** :
  - Toutes les compétences de la CA
  - **Voirie**
  - **Énergie**
  - **Cimetières**
  - **Plans locaux** d''urbanisme

#### Liste
**15 CU** au 1er janvier 2024 :
- Caen la Mer
- Clermont Auvergne Métropole
- Communauté urbaine d''Alençon
- Communauté urbaine d''Arras
- Communauté urbaine de Dunkerque
- CU de Limoges Métropole
- CU du Creusot Montceau
- CU du Grand Reims
- ...

### D. La métropole

#### Caractères (depuis la loi MAPTAM, `2014`)
- **`400 000 hab. minimum`** dans une aire urbaine de **`650 000 hab.` minimum**
- **Compétences** maximales

#### Compétences (très étendues)
- **Toutes les compétences** des CU
- **Compétences** transférées par le département (action sociale, collèges, voirie...) — possibilité
- **Compétences** transférées par la région (économie...) — possibilité

#### Liste
**22 métropoles** au 1er janvier 2024.

### E. La Métropole de Lyon

#### Statut particulier
- **Créée le 1er janvier 2015** par la loi MAPTAM
- **Collectivité territoriale à statut particulier** (pas un EPCI)
- **Remplace** :
  - L''ancienne communauté urbaine du Grand Lyon
  - Le département du Rhône sur son territoire
- **Compétences** : tous les domaines (commune partielle + intercommunalité + département)

#### Spécificité
- **Seul cas** en France d''une métropole-collectivité
- **Élections** spécifiques (depuis `2020`)

### F. La Métropole du Grand Paris (MGP)
- **Créée au 1er janvier 2016**
- **EPCI** (pas collectivité à statut particulier)
- **131 communes** : Paris + 130 communes franciliennes
- **Compétences** : limitées (en raison du poids de l''Île-de-France et de la Ville de Paris)

### G. Aix-Marseille-Provence
- **Créée au 1er janvier 2016**
- **EPCI** à statut métropolitain
- **Fusion** complexe

### H. Les autres métropoles
- **Bordeaux Métropole**
- **Toulouse Métropole**
- **Nantes Métropole**
- **Strasbourg**, **Lille**, **Rennes**, **Nice**, **Rouen**, **Montpellier**, **Grenoble**...

## IV. Les organes des EPCI

### A. Le conseil communautaire / métropolitain

#### Composition
- **Conseillers communautaires** désignés par les communes membres
- **Représentation** proportionnelle à la population (avec correctifs)
- **Élection** au suffrage universel direct depuis `2014` (fléchage sur les listes municipales)

#### Compétences
- **Délibérations** sur les affaires intercommunales
- **Vote** du budget
- **Schémas** stratégiques

### B. Le président
- **Élu** par le conseil
- **Exécutif** de l''EPCI

### C. Le bureau
- **Vice-présidents**

## V. Les autres formes de coopération

### A. Les syndicats intercommunaux (sans fiscalité propre)

#### SIVU (syndicat intercommunal à vocation unique)
- **Une seule compétence**
- **Exemple** : eau, scolaire

#### SIVOM (syndicat intercommunal à vocation multiple)
- **Plusieurs compétences**

#### Syndicats mixtes
- **Peuvent** associer collectivités et EPCI
- **Cadre** souple

### B. Les pôles métropolitains
- **Coopération** entre métropoles ou EPCI proches
- **Pas** une nouvelle entité distincte

### C. Les contrats territoriaux
- **Conventions** entre collectivités
- **Projets** partagés

## VI. Les compétences transférées

### A. Le mécanisme

#### Transfert obligatoire ou optionnel
- **Selon le type d''EPCI**
- **Loi NOTRe** : forte vague de transferts obligatoires

#### Conséquence
- **Les communes** ne peuvent plus exercer la compétence transférée
- **Mise en commun** des moyens

### B. Domaines majeurs transférés

#### Eau et assainissement
- **Depuis 2020** (loi NOTRe `2015`)
- **Obligatoire** pour les CC
- **Exception** : possible report par certaines communes (CC)

#### GEMAPI
- **Gestion** des milieux aquatiques et prévention des inondations
- **Compétence obligatoire** depuis `2018`

#### Déchets
- **Collecte** et traitement

#### Aménagement du territoire
- **SCOT**, **PLUi**, **politique** d''habitat

#### Développement économique
- **ZAC**, **soutien** aux entreprises

#### Transports urbains
- **CA et CU**

### C. Le PLUi (PLU intercommunal)

#### Caractère
- **Obligatoire** depuis `2017` (sauf opposition à la majorité qualifiée)
- **Document** d''urbanisme à l''échelle intercommunale
- **Remplace** les PLU communaux

#### Bénéfices
- **Cohérence** territoriale
- **Économies** d''ingénierie

## VII. Les finances des EPCI

### A. Fiscalité propre

#### Différents types
- **Fiscalité additionnelle** : taxes additionnelles aux 4 taxes locales
- **Fiscalité professionnelle unique** (FPU) : la plupart des EPCI à fiscalité propre

#### CVAE et CFE
- **Cotisations** des entreprises
- **Recettes** majeures

### B. Dotation globale de fonctionnement (DGF)
- **Versée** aux EPCI
- **Bonifiée** pour ceux à fiscalité propre

### C. Transferts financiers entre communes et EPCI
- **Attribution de compensation** (AC)
- **Dotation de solidarité** communautaire (DSC)

## VIII. Les défis

### A. Démocratie intercommunale

#### Critique
- **Élections indirectes** pour le président
- **Visibilité** faible
- **Démocratie** participative limitée

#### Évolutions
- **Fléchage** depuis `2014`
- **Débat** sur l''élection directe des présidents d''EPCI

### B. Articulation avec les communes
- **Tensions** sur les compétences transférées
- **Identité** communale préservée
- **Mais** services centralisés

### C. Articulation avec les métropoles et régions
- **Concurrence** dans certains domaines
- **Coordination** difficile

### D. Hétérogénéité
- **Énorme disparité** : petites CC rurales vs métropoles
- **Adaptation** aux contextes

## À retenir

**Histoire** :
- **Loi du 22 mars 1890** : SIVU
- **Loi du 5 janvier 1959** : SIVOM
- **Loi du 31 décembre 1966** : communautés urbaines
- **Loi du 12 juillet 1999 (Chevènement)** : simplification, EPCI à fiscalité propre
- **Loi du 16 décembre 2010** : couverture totale
- **Loi MAPTAM (`27 janvier 2014`)** : métropoles
- **Loi NOTRe (`7 août 2015`)** : renforcement, seuils relevés

**EPCI à fiscalité propre** :

| Type | Seuil habitants | Caractère |
|---|---|---|
| **Communauté de communes (CC)** | 15 000 (sauf except.) | Rurales et petites |
| **Communauté d''agglomération (CA)** | 50 000 + commune-centre 15 000 | Urbaines |
| **Communauté urbaine (CU)** | 250 000 | Grandes villes |
| **Métropole** | 400 000 dans aire 650 000 | Grandes aires métropolitaines |

**Cas particuliers** :
- **Métropole de Lyon** : collectivité à statut particulier (`2015`)
- **Métropole du Grand Paris** : EPCI à pouvoirs limités (`2016`)
- **Aix-Marseille-Provence** : métropole de fusion (`2016`)

**Compétences obligatoires** (variables selon le type) :
- Aménagement de l''espace, PLUi
- Développement économique
- Déchets
- Eau et assainissement (depuis `2020`)
- GEMAPI (depuis `2018`)
- Transports urbains (CA et CU)

**Organes** :
- **Conseil communautaire** : élus communautaires fléchés depuis `2014`
- **Président** : élu par le conseil
- **Bureau**

**Finances** : fiscalité propre (FPU souvent), DGF, transferts.

**`1 257 EPCI`** à fiscalité propre couvrent **100%** des communes françaises.'
from public.subjects where name = 'Institutions administratives';

-- =====================================================================
-- FICHE 8 - LES ÉTABLISSEMENTS PUBLICS ET LES AAI
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les établissements publics et les autorités administratives indépendantes', 'Chapitre 8 - Les autres acteurs',
       'Établissements publics (administratifs, industriels et commerciaux), AAI (CNIL, ARCOM, AMF...), GIP.',
       array['Établissement public', 'EPA', 'EPIC', 'Service public', 'Spécialité', 'AAI', 'Loi du 20 janvier 2017', 'CNIL', 'ARCOM', 'AMF', 'Autorité de la concurrence', 'GIP'],
       22, 8,
'# Les établissements publics et les autorités administratives indépendantes

## Introduction

Au-delà de l''**administration d''État** (centrale + déconcentrée) et des **collectivités territoriales**, l''administration française comprend une **multitude d''autres acteurs** au statut particulier : **établissements publics** (universités, hôpitaux publics, etc.), **autorités administratives indépendantes** (AAI) comme la CNIL ou l''ARCOM, **groupements d''intérêt public** (GIP), **autorités publiques indépendantes** (API). Ces structures, parfois qualifiées de **« démembrement »** de l''État, sont apparues progressivement pour répondre à des besoins de **spécialisation**, d''**indépendance** ou d''**autonomie de gestion**. Cette fiche présente le panorama de ces acteurs : leurs statuts, leurs missions, et leur place dans l''architecture administrative française.

## I. Les établissements publics

### A. Définition et caractères

#### Définition
**Personne morale de droit public** chargée d''exercer une **mission de service public**, dotée de la **personnalité juridique** et d''une **autonomie financière**, créée par décision d''une autorité publique (loi ou règlement).

#### Caractères fondamentaux

##### Personnalité juridique
- **Distincte** de l''État ou de la collectivité de rattachement
- **Capacité** à agir en justice, à contracter, à posséder un patrimoine

##### Autonomie de gestion
- **Budget** propre
- **Personnel** propre
- **Direction** spécifique

##### Spécialité
- **Mission** déterminée par les textes
- **Pas** de compétence générale (différence avec les collectivités)
- **Hors** de la mission : incompétence

##### Rattachement
- **À une personne publique** (État, collectivité, autre EP)
- **Tutelle** administrative

### B. La distinction EPA / EPIC

#### Établissements publics administratifs (EPA)

##### Caractères
- **Mission** principalement administrative
- **Application** principalement du droit public
- **Compétence** du juge administratif

##### Exemples
- **Universités**
- **Hôpitaux publics**
- **Pôle emploi** / France Travail
- **CNRS**, **INSERM**, **INRA**
- **CROUS**

#### Établissements publics industriels et commerciaux (EPIC)

##### Caractères
- **Mission** principalement industrielle et commerciale
- **Application** principalement du droit privé
- **Compétence** souvent du juge judiciaire (sauf pour les relations avec l''administration)

##### Exemples
- **SNCF** (auparavant)
- **RATP** (encore en partie)
- **EDF** (jusqu''à privatisation)
- **Office national des forêts** (ONF)
- **Aéroports de Paris** (auparavant)

##### Évolution
- **Beaucoup d''EPIC** ont été transformés en sociétés (privatisation, ouverture à la concurrence)

### C. La classification fonctionnelle

#### Établissements de gestion
- **Activités** courantes administratives
- **Préfectures spéciales** (ex. Banque de France, à statut particulier)

#### Établissements d''enseignement et de recherche
- **Universités** (autonomes depuis la loi LRU, `2007`)
- **Grandes écoles**
- **Organismes** de recherche

#### Établissements à caractère scientifique et culturel
- **Musées**
- **Bibliothèques**

#### Établissements sanitaires et médico-sociaux
- **Hôpitaux** (depuis la **loi HPST**, `2009`)
- **EHPAD** publics

### D. La distinction selon la collectivité de rattachement

#### Établissements publics nationaux
- **Rattachés** à l''État
- **Tutelle** d''un ministre
- **Exemples** : universités, INSEE, INPI, CNRS, Pôle emploi

#### Établissements publics locaux
- **Rattachés** à une commune, département, région
- **Exemples** : OPHLM (offices d''HLM), bibliothèques municipales (parfois), centres communaux d''action sociale (CCAS, rattachés à la commune mais EPA)

#### Établissements publics interlocaux
- **EPCI** : intercommunalité (vue précédemment)

### E. Les organes des établissements publics

#### Direction
- **Directeur** ou **président**
- **Nommé** par l''autorité de tutelle (ou élu)

#### Conseil d''administration
- **Représentants** de la tutelle
- **Personnalités qualifiées**
- **Représentants** des personnels
- **Représentants** des usagers (parfois)

#### Délibérations
- **Soumises** à approbation parfois

### F. La tutelle administrative

#### Caractère
- **Plus ou moins forte** selon le type d''EP
- **Pas** une hiérarchie classique

#### Modalités
- **Approbation** d''actes
- **Nomination** des dirigeants
- **Contrôle** budgétaire

## II. Les autorités administratives indépendantes (AAI)

### A. Notion

#### Origines
- **Apparues** dans les années 1970
- **Inspiration** anglo-saxonne (US regulatory agencies)

#### Définition
**Personnes morales** (ou simples organes) chargées de la **régulation** d''un secteur, dotées d''une **indépendance** vis-à-vis du pouvoir politique et de l''administration classique.

#### Caractères
- **Autorité administrative** : prend des décisions exécutoires
- **Indépendance** : protégée par la loi
- **Spécialisation** : sur un secteur particulier
- **Pouvoirs** variés (réglementaire, sanction, enquête, avis)

### B. La consécration par la loi du 20 janvier 2017

#### Contexte
- **Multiplication** des AAI (~30 à l''époque)
- **Nécessité** de cadre commun

#### Apports
- **Liste fermée** des AAI et API
- **Statut commun** :
  - Mandat des dirigeants
  - Incompatibilités
  - Obligations déontologiques
  - Contrôle parlementaire annuel

#### Distinction AAI / API
- **AAI** : pas de personnalité juridique (organe de l''État)
- **API** (autorité publique indépendante) : personnalité juridique propre

#### Liste (au 1er janvier 2024)
- **`16 AAI`** (sans personnalité juridique)
- **`9 API`** (avec personnalité juridique)
- Évolution : certaines transformations

### C. Les principales AAI / API

#### Régulation économique

##### Autorité de la concurrence
- **Statut** : AAI (devenue API en `2017` est en débat)
- **Pouvoirs** : sanction des ententes, abus de position dominante, contrôle des concentrations

##### Autorité des marchés financiers (AMF)
- **Statut** : API
- **Régulation** des marchés financiers
- **Sanctions**

##### Autorité de régulation des transports (ART)
- **Régulation** ferroviaire, routière

##### Commission de régulation de l''énergie (CRE)
- **Électricité, gaz**

##### Autorité de régulation des communications électroniques, des postes et de la distribution de la presse (ARCEP)
- **Télécoms, poste**

#### Audiovisuel et numérique

##### ARCOM (Autorité de régulation de la communication audiovisuelle et numérique)
- **Statut** : API
- **Créée** au 1er janvier 2022
- **Fusion** : CSA + Hadopi
- **Régulation** : radio, TV, plateformes en ligne, piratage

#### Libertés et droits

##### CNIL (Commission nationale de l''informatique et des libertés)
- **Statut** : AAI
- **Créée** par la **loi du 6 janvier 1978**
- **Protection** des données personnelles
- **Mise** en œuvre du RGPD
- **Sanctions** importantes (Google, Amazon...)

##### Défenseur des droits
- **Statut** : autorité constitutionnelle indépendante (`art. 71-1 C.`)
- **Fusion** : Médiateur de la République + HALDE + Défenseur des enfants + CNDS
- **Recours** des particuliers

##### Contrôleur général des lieux de privation de liberté (CGLPL)
- **Statut** : AAI
- **Visite** des lieux de détention

#### Vie politique et publique

##### Commission nationale des comptes de campagne et des financements politiques (CNCCFP)

##### Haute Autorité pour la transparence de la vie publique (HATVP)
- **Statut** : AAI
- **Créée** en `2013` (après l''affaire Cahuzac)
- **Contrôle** des élus

#### Sécurité

##### Commission nationale de contrôle des techniques de renseignement (CNCTR)
- **Statut** : AAI
- **Contrôle** des activités de renseignement

##### Commission nationale de l''informatique et des libertés (CNIL) — voir supra

### D. Les pouvoirs des AAI

#### Pouvoirs réglementaires
- **Édiction** de règles dans leur domaine
- **Encadré** par la loi
- **Recours** devant le Conseil d''État

#### Pouvoirs de sanction
- **Amendes**
- **Avertissements**
- **Procédure** contradictoire obligatoire
- **Recours** devant la juridiction administrative

#### Pouvoirs d''enquête
- **Auditions, accès** aux documents, perquisitions
- **Encadrement** strict

#### Avis et recommandations
- **Avis** sur projets de loi, règlements
- **Recommandations** générales

#### Information du public
- **Rapport annuel**
- **Publications**

### E. Le contrôle des AAI

#### Contrôle parlementaire
- **Auditions** annuelles
- **Rapports** parlementaires

#### Contrôle juridictionnel
- **Conseil d''État** : compétent en premier et dernier ressort sur les décisions des AAI
- **Cour de cassation** pour certaines

#### Pas de tutelle ministérielle
- **Indépendance** garantie

### F. Le débat sur les AAI

#### Avantages
- **Expertise** spécialisée
- **Indépendance** du politique
- **Réactivité**

#### Critiques
- **Démocratie** : décisions importantes prises par des autorités non élues
- **Coordination** : multiplication d''acteurs
- **Coût**

## III. Les groupements d''intérêt public (GIP)

### A. Notion

#### Création
- **Loi du 17 mai 2011** : statut commun
- **Auparavant** : multiples textes sectoriels

#### Définition
**Personne morale de droit public** créée par convention entre personnes publiques et privées, pour mener à bien des **activités d''intérêt général** dans un domaine particulier.

#### Caractères
- **Personnalité juridique** propre
- **Pluralité** d''acteurs
- **Mission** précise
- **Durée** déterminée ou indéterminée

### B. Exemples
- **Agence française d''expertise technique internationale** (AFETI)
- **GIP** de coopération entre universités
- **GIP** Santé (anciens groupements pour la santé)

## IV. Les autres entités

### A. Les autorités publiques indépendantes (API)

#### Distinction avec les AAI
- **Personnalité juridique** propre (différence essentielle)

#### Exemples
- **AMF**, **ARCOM**, **HCFP** (Haut conseil des finances publiques)

### B. Les associations de droit privé reconnues d''utilité publique

#### Caractères
- **Personnes privées**
- **Mais** mission d''intérêt général
- **Statut** privilégié

#### Exemples
- **Croix-Rouge française**
- **Restos du Cœur**
- **Etc.**

### C. Les ordres professionnels

#### Caractères
- **Personnes privées** mais investies d''une mission de service public
- **Disciplinaire**

#### Exemples
- **Ordre** des avocats
- **Ordre** des médecins
- **Ordre** des architectes

### D. Les entreprises publiques

#### Caractères
- **Statut** d''entreprise (souvent SA ou SARL)
- **État** actionnaire (majoritaire ou non)

#### Exemples
- **EDF** (depuis la libéralisation)
- **SNCF** (depuis `2020` : nouveau statut)
- **La Poste** (SA depuis `2010`)
- **Renault** (État actionnaire)

## V. La fonction publique

### A. Les trois fonctions publiques

#### Fonction publique d''État (FPE)
- **2,4 millions** d''agents
- **Ministères**, services déconcentrés, EPA nationaux

#### Fonction publique territoriale (FPT)
- **1,9 million** d''agents
- **Collectivités** territoriales, EPCI

#### Fonction publique hospitalière (FPH)
- **1,2 million** d''agents
- **Hôpitaux**, EHPAD publics

#### Total
**~5,5 millions** d''agents publics.

### B. Statut

#### Statut général
- **Code général de la fonction publique** (CGFP, depuis `2022`)
- **Unifie** les statuts précédents (loi de `1983` et lois subséquentes)

#### Principes
- **Égal** accès aux emplois publics (`art. 6 DDHC`)
- **Concours**
- **Statut** de carrière (et non pas contrat dans son ensemble)
- **Garanties** d''indépendance

### C. Catégories

#### Catégories hiérarchiques
- **A** : encadrement (cadres supérieurs)
- **B** : application
- **C** : exécution

#### Modes de recrutement
- **Concours externe**
- **Concours interne**
- **Concours de la 3e voie**

### D. La modernisation

#### Loi de transformation de la fonction publique (`6 août 2019`)
- **Augmentation** des contractuels
- **Modernisation** du dialogue social
- **Réformes** indemnitaires

## À retenir

**Établissements publics** :
- **Personne morale** de droit public
- **Personnalité juridique** distincte
- **Spécialité** : mission limitée

**Distinction EPA / EPIC** :
- **EPA** : activité administrative, droit public, juge administratif (universités, hôpitaux)
- **EPIC** : activité industrielle et commerciale, droit privé largement (SNCF historique, RATP)

**Établissements publics nationaux** vs **locaux**.

**Tutelle** : approbation d''actes, nomination de dirigeants, contrôle budgétaire.

**Autorités administratives indépendantes (AAI)** :
- **Régulation** indépendante d''un secteur
- **Loi du 20 janvier 2017** : statut commun, liste fermée
- **Distinction** AAI (sans personnalité) vs **API** (avec personnalité)

**Principales AAI / API** :
- **Régulation économique** : Autorité de la concurrence, AMF, ART, CRE, ARCEP
- **Audiovisuel/numérique** : ARCOM (depuis `2022`, fusion CSA + Hadopi)
- **Libertés** : CNIL (`1978`), Défenseur des droits (constitutionnel), CGLPL
- **Vie politique** : HATVP (`2013`), CNCCFP
- **Sécurité** : CNCTR

**Pouvoirs des AAI** : réglementaire, sanction, enquête, avis, information.

**Contrôle** : parlementaire (auditions), juridictionnel (Conseil d''État principalement). Pas de tutelle ministérielle.

**GIP** : groupement d''intérêt public, statut commun depuis la **loi du 17 mai 2011**.

**Fonction publique** : 3 versants (FPE, FPT, FPH), **~5,5 millions** d''agents. **CGFP** depuis `2022`. **Loi du 6 août 2019** de modernisation.'
from public.subjects where name = 'Institutions administratives';
