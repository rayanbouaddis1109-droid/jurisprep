-- =====================================================================
-- JurisPrép - Cours complet : Droit de l'Union européenne (L2 S2)
-- 8 fiches très approfondies basées sur le plan du cours
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-ue-1');

-- =====================================================================
-- FICHE 1 - ORIGINES ET ÉVOLUTION DE LA CONSTRUCTION EUROPÉENNE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'Origines et évolution de la construction européenne',
       'Chapitre 1 - Section 1 et 2 : Histoire de l''idée européenne et évolution des traités',
       'Des projets d''union européenne aux XVIIe-XIXe siècles jusqu''à la déclaration Schuman (1950), en passant par la CECA, les traités de Rome, Maastricht, Amsterdam, Nice et Lisbonne.',
       array['Déclaration Schuman 9 mai 1950', 'CECA 1951', 'Traités de Rome 1957', 'CEE', 'Euratom', 'Acte unique européen 1986', 'Traité de Maastricht 1992', 'Traité d''Amsterdam 1997', 'Traité de Nice 2001', 'Traité de Lisbonne 2009', 'TUE', 'TFUE', 'Trois piliers', 'Brexit'],
       28, 1,
$$
# Origines et évolution de la construction européenne

## I. L'idée européenne avant 1950

La construction européenne s'inscrit dans une longue histoire intellectuelle. Des philosophes et théoriciens politiques ont esquissé des projets d'union bien avant les institutions actuelles.

### A. Les projets des XVIIe-XIXe siècles

- **Emeric Crucé** (XVIIe s.) : paix assurée par une assemblée permanente à Venise, accent sur le commerce
- **Abbé de Saint-Pierre** (1712) : *Projet de paix perpétuelle* en 5 points — alliance perpétuelle, Sénat européen de 40 membres, contributions des États, intervention collective, révision à la majorité
- **Saint-Simon** (XIXe s.) : union fondée sur l'entente franco-britannique, parlement bicaméral représentant les « corporations » économiques
- **Victor Hugo** (1849-1855) : prophétise les « États-Unis d'Europe » et une monnaie commune

### B. L'entre-deux-guerres et 1945

- **Aristide Briand** (1929) : projet de lien fédéral entre États européens
- Après la Seconde Guerre mondiale : l'Europe est exsangue. **Churchill**, dans son **discours de Zurich** (1946), relance l'idée européenne
- **Congrès de La Haye** (1948) : deux conceptions s'affrontent — coopération intergouvernementale (unanimité) vs intégration supranationale (logique majoritaire)
- Création du **Conseil de l'Europe** (1949) — 46 membres, siège à Strasbourg, abrite la CEDH — ce n'est *pas* une institution de l'UE

## II. Les traités fondateurs et l'Acte unique (1951-1986)

### A. La CECA et les Traités de Rome

| Traité | Date | Objet |
|--------|------|-------|
| **Traité de Paris** (CECA) | 18 avril 1951 | Charbon et acier franco-allemands sous haute autorité commune ; durée 50 ans |
| **Traité CEE** | 25 mars 1957 | Marché commun généralisé, objectifs économiques et politiques |
| **Traité Euratom** | 25 mars 1957 | Développement des industries nucléaires |

Le **Traité de fusion** du 8 avril 1965 (en vigueur 1967) unifie les exécutifs des trois communautés.

> La **méthode Schuman** : construction par les « petits pas » économiques — là où la politique divise, l'économie rapproche. L'imbrication des économies rend la guerre impossible.

### B. L'Acte unique européen (1986)

Signé les 17 et 28 février 1986 à Luxembourg et La Haye, il crée le **marché unique**, réforme les institutions (création du Tribunal de première instance), élargit les compétences et ouvre à la coopération politique.

## III. Du Traité de Maastricht au Traité de Lisbonne

### A. Le Traité de Maastricht (TUE, 7 février 1992)

Il crée l'**Union européenne** reposant sur **trois piliers** :

| Pilier | Contenu | Méthode |
|--------|---------|---------|
| **Communautaire** (1er) | CEE → CE, UEM, citoyenneté | Méthode communautaire, majorité |
| **PESC** (2e) | Politique étrangère et de sécurité commune | Intergouvernemental |
| **JAI** (3e) | Justice et affaires intérieures | Intergouvernemental |

Il instaure la **citoyenneté européenne** (libre circulation, droit de vote municipal et européen) et prépare l'UEM (euro). Ratification difficile : référendum danois négatif (juin 1992), second référendum positif (1993) ; en France, 51 % de oui (septembre 1992).

### B. Amsterdam (1997) et Nice (2001)

- **Amsterdam** : droits des citoyens, emploi, communautarisation partielle du JAI, renforcement de la PESC
- **Nice** : réforme institutionnelle avant l'élargissement de 2004 — pondération des voix, extension de la majorité qualifiée, coopérations renforcées. Vote irlandais négatif (2001), second référendum positif (2002).

### C. L'échec de la Constitution pour l'Europe (2004-2005)

La **Convention présidée par VGE** (105 membres) rédige un Traité établissant une Constitution pour l'Europe (4 parties). Rejeté par référendum en **France (29 mai 2005, 55 % non)** et aux **Pays-Bas**. Période de réflexion.

### D. Le Traité de Lisbonne (13 décembre 2007 ; en vigueur 1er décembre 2009)

Inspiré par Sarkozy (« traité simplifié »), il fusionne les piliers en une **UE unique** (art. 1 TUE). Se compose de :
- **TUE** : préambule + 55 articles (dispositions générales, principes démocratiques, institutions, action extérieure)
- **TFUE** : 358 articles + 37 protocoles + 65 déclarations + 2 annexes

**Apports majeurs** : personnalité juridique de l'UE, **Charte des droits fondamentaux** ayant valeur de traité (art. 6 TUE), président du Conseil européen élu, Haut représentant pour les affaires étrangères, procédure législative ordinaire (codécision) généralisée. Ratifié par voie parlementaire dans tous les États sauf l'Irlande (référendum positif en 2009).
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 2 - NATURE JURIDIQUE DE L'UE ET PRINCIPES STRUCTURANTS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'Nature juridique de l''UE et principes structurants',
       'Chapitre 1 - Section 3 : Principes structurants de la gouvernance européenne',
       'L''UE comme objet politique non-identifié, principe de primauté (Costa c. ENEL 1964), identité constitutionnelle des États (art. 4 §2 TUE), subsidiarité, proportionnalité, valeurs de l''article 2 TUE.',
       array['Principe de primauté', 'Costa c. ENEL 1964', 'Simmenthal 1978', 'Internationale Handelsgesellschaft 1970', 'Art. 2 TUE', 'Art. 4 §2 TUE', 'Identité constitutionnelle', 'Subsidiarité', 'Proportionnalité', 'Fédération d''États-nations', 'Art. 88-1 Constitution', 'CE Sarran 1998', 'CE French data network 2021', 'CC Société Air France 2021'],
       30, 2,
$$
# Nature juridique de l''UE et principes structurants

## I. La nature juridique de l''UE : un objet politique non-identifié

L''UE **n''est ni un État classique ni une organisation internationale ordinaire**. Elle n''est pas un État fédéral (les États peuvent en sortir librement — Brexit 2016). Elle présente un **haut degré d''intégration supranationale** (Pierre Pescatore : logique d''intégration) qui lui confère une originalité incontestable.

On peut la qualifier de **fédération d''États-nations** : elle superpose deux niveaux d''entités politiques et certaines marques de souveraineté s''exercent en commun.

> **Art. 1 al. 3 TUE** : « L''Union se substitue et succède à la Communauté européenne. »

### L''UE a-t-elle une Constitution ?

La **CJCE** (arrêt *Les Verts*, 22 avril 1986) qualifie les traités de « **charte constitutionnelle de base** ». L''UE est une communauté de droit, organisée et limitée par le droit. Mais le terme « constitution » reste politiquement sensible après l''échec de 2005.

## II. Le principe de primauté

### A. L''affirmation jurisprudentielle

Le principe de primauté **n''est pas inscrit dans les traités fondateurs** (volontairement, pour éviter les réactions nationalistes). Il ne figure que dans une **déclaration n° 17** annexée au TUE.

C''est la **CJCE** qui l''a posé dans l''arrêt fondateur :

> **CJCE, 15 juillet 1964, *Costa c. ENEL*** :
> « En instituant une Communauté de durée illimitée, dotée d''institutions propres, de la personnalité, de la capacité juridique, et plus particulièrement de pouvoirs réels issus d''une limitation de compétences ou d''un transfert d''attributions des États à la Communauté, ceux-ci ont limité leur droit souverain et créé un corps de droit applicable à leurs ressortissants et à eux-mêmes. »

**Conséquence** : la norme nationale contraire au droit de l''UE n''est pas abrogée mais **écartée** par le juge.

Confirmé par :
- **CJCE, 17 décembre 1970, *Internationale Handelsgesellschaft*** : la primauté vaut même sur les droits fondamentaux constitutionnels nationaux
- **CJCE, 9 mars 1978, *Simmenthal*** : le juge national doit écarter immédiatement toute disposition nationale contraire, sans attendre son abrogation

### B. Les limites au principe de primauté

**Art. 4 §2 TUE** : « L''Union respecte l''identité nationale des États membres, inhérente à leurs structures fondamentales politiques et constitutionnelles. »

| Juridiction | Arrêt | Apport |
|-------------|-------|--------|
| **Conseil d''État** | *Sarran*, 30 oct. 1998 | Protection de l''identité constitutionnelle française |
| **Conseil d''État** | *Arcelor*, 8 fév. 2007 | Contrôle de constitutionnalité médiatisé |
| **Conseil d''État** | *French data network*, 21 avr. 2021 | Confirmation des réserves constitutionnelles |
| **Conseil constitutionnel** | *Société Air France*, 15 oct. 2021 | 1re illustration d''un « principe inhérent à l''identité constitutionnelle de la France » |
| **CJUE** | *Las*, 16 avr. 2013 | L''UE respecte la/les langue(s) officielle(s) des États |
| **CJUE** | *RS*, 22 fév. 2022 | Interdiction roumaine de renvoi préjudiciel contraire au droit de l''UE |

> **Art. 88-1 Constitution française** : fondement constitutionnel de la participation de la France à l''UE et de la primauté (et non l''art. 55 C)

## III. Subsidiarité et proportionnalité (art. 5 TUE)

- **Subsidiarité** : chaque compétence doit être exercée au niveau le mieux adapté. L''UE n''intervient que si l''objectif ne peut pas être atteint de manière suffisante par les États membres.
- **Proportionnalité** : le contenu et la forme de l''action de l''UE n''excèdent pas ce qui est nécessaire pour atteindre les objectifs des traités.

Les **parlements nationaux** contrôlent le respect du principe de subsidiarité (art. 12 TUE + protocole n° 2). Le CER peut saisir la CJUE pour violation de la subsidiarité (art. 8 du protocole n° 2).

## IV. Les valeurs fondamentales (art. 2 TUE)

> « L''Union est fondée sur les valeurs de respect de la dignité humaine, de liberté, de démocratie, d''égalité, de l''État de droit, ainsi que de respect des droits de l''homme, y compris des droits des personnes appartenant à des minorités. »

L''**art. 7 TUE** prévoit une procédure de sanction en cas de violation grave et persistante de ces valeurs par un État membre — concernant notamment les **démocraties illibérales** (Hongrie, Pologne).

La **Charte des droits fondamentaux** (art. 6 §1 TUE) a la même valeur juridique que les traités depuis Lisbonne. L''UE est également tenue d''adhérer à la **CEDH** (art. 6 §2 TUE), mais cette adhésion est bloquée depuis l''avis négatif de la CJUE en 2013.
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 3 - LE CONSEIL EUROPÉEN ET LE CONSEIL DE L'UE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'Le Conseil européen et le Conseil de l''Union européenne',
       'Chapitre 2 - Sections 1 et 2 : Les institutions décisionnelles intergouvernementales',
       'Rôle d''impulsion du Conseil européen (art. 15 TUE), composition et formations du Conseil de l''UE (art. 16 TUE), majorité qualifiée (double majorité 55 %/65 %), COREPER.',
       array['Conseil européen', 'Art. 15 TUE', 'Président du Conseil européen', 'Conseil de l''UE', 'Art. 16 TUE', 'Majorité qualifiée', 'Double majorité 55/65', 'COREPER', 'Unanimité', 'Clause passerelle art. 48-7 TUE', 'Art. 238 TFUE', 'Formations du Conseil', 'ECOFIN', 'Trio de présidences'],
       28, 3,
$$
# Le Conseil européen et le Conseil de l''Union européenne

> **Terminologie à maîtriser** :
> - **Conseil de l''Europe** : organisation internationale de 46 membres, Strasbourg, CEDH — ce n''est PAS une institution de l''UE
> - **Conseil européen** : réunion des chefs d''État ou de gouvernement de l''UE
> - **Conseil de l''UE** (= Conseil des ministres) : réunion des ministres sectoriels

## I. Le Conseil européen (art. 15 TUE)

### A. Composition et organisation

> « Le Conseil européen **donne à l''Union les impulsions** nécessaires à son développement et en définit les orientations et les priorités politiques générales. **Il n''exerce pas de fonction législative.** »

Composé des **chefs d''État ou de gouvernement** des États membres + président du Conseil européen + président de la Commission. Le Haut représentant participe aux travaux.

- Se réunit **2 fois par semestre** sur convocation de son président + réunions extraordinaires
- Se prononce par **consensus** (sauf cas prévus par les traités)
- Élit son **président** à la majorité qualifiée pour **2 ans et demi renouvelable une fois**

### B. Histoire institutionnelle

Instauré comme sommet informel lors du **Sommet de Paris** (décembre 1974) ; 1re réunion à Dublin (mars 1975). Reçoit un statut officiel avec le **Traité de Maastricht** (art. D). Devient institution à part entière avec le **Traité de Lisbonne**.

## II. Le Conseil de l''Union européenne (art. 16 TUE)

### A. Composition

> « Le Conseil est composé d''un représentant de chaque État membre **au niveau ministériel**, habilité à engager le gouvernement de l''État membre qu''il représente et à exercer le droit de vote. » (art. 16-2)

Le représentant doit impérativement avoir le rang de **ministre** (Vedel : « les experts éclairent, les politiques décident »).

### B. Les formations du Conseil

Présidées à tour de rôle par chaque État pour **6 mois** (rotation tous les 1er janvier et 1er juillet). Depuis 2007 : **trio de présidences** (État en cours + prédécesseur + successeur = coopération sur 18 mois).

Les deux formations principales (art. 16-6 TUE) :
- **Conseil des affaires générales** : cohérence des travaux, préparation du Conseil européen
- **Conseil des affaires étrangères** : action extérieure, présidé par le **Haut représentant**

Autres formations (décision du Conseil européen, art. 236 TFUE) : **ECOFIN**, Justice et affaires intérieures, Emploi, Compétitivité, Environnement, Agriculture, Éducation, etc.

### C. Le mode de vote (art. 16 §4 TUE + art. 238 TFUE)

**Règle de principe** : **majorité qualifiée** (sauf cas contraire prévu par les traités).

> **Majorité qualifiée** = au moins **55 % des membres** du Conseil représentant au moins **65 % de la population** → règle de la **double majorité**

| Cas | Règle |
|-----|-------|
| Règle générale | Majorité qualifiée |
| Décisions majeures (adhésion, révision des traités) | Unanimité |
| Abstentions | Ne font pas obstacle à l''unanimité (art. 238 §4 TFUE) |
| **Clause passerelle** (art. 48-7 TUE) | Le Conseil européen peut passer de l''unanimité à la MQ (sauf domaine militaire) |

À partir du **1er avril 2017** : si une minorité de blocage est constituée (65 % de la population ou 55 % des États), le Conseil doit chercher un compromis.

### D. Le COREPER

Le **Comité des représentants permanents** est composé de **27 ambassadeurs** des États membres à Bruxelles. Il assure la **continuité institutionnelle** entre les réunions des formations du Conseil, coordonne les travaux et les administrations nationales. Convoqué par le président (art. 237 TFUE).

### E. Les pouvoirs du Conseil

> **Art. 16 §1 TUE** : « Le Conseil exerce, conjointement avec le Parlement européen, les **fonctions législative et budgétaire**. »

Le Conseil est **colégislateur** avec le Parlement, sur proposition de la Commission. Il siège **en public** lorsqu''il délibère sur des actes législatifs.
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 4 - LE PARLEMENT EUROPÉEN
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'Le Parlement européen',
       'Chapitre 2 - Section 3 : Le Parlement européen',
       'Composition (750 députés, SUD tous les 5 ans), compétences budgétaires (art. 314 TFUE), contrôle politique de la Commission (motion de censure, art. 17 §8 TUE), compétences normatives : consultation, approbation, procédure législative ordinaire (art. 294 TFUE).',
       array['Art. 14 TUE', 'Suffrage universel direct', 'Mandat représentatif', 'Groupes politiques transnationaux', 'Compétences budgétaires', 'Art. 314 TFUE', 'Décharge', 'Art. 319 TFUE', 'Motion de censure', 'Art. 17 §8 TUE', 'Procédure législative ordinaire', 'Art. 294 TFUE', 'Codécision', 'Approbation', 'Consultation simple', 'Commission Santer 1999'],
       30, 4,
$$
# Le Parlement européen

## I. Composition et désignation

Le Parlement européen incarne la **légitimité démocratique** de l''UE. Régi par l''art. 14 TUE et les art. 223-235 TFUE.

- **750 membres** (+ le président) ; minimum **6** par État, maximum **96** (Allemagne)
- Élus au **suffrage universel direct** tous les **5 ans**
- En France : scrutin de liste proportionnel, seuil de **5 %** au niveau national (circonscription nationale unique depuis 2019)
- Les eurodéputés siègent par **groupes politiques transnationaux**, pas par État (PPE, S&D, Renew Europe, etc.)

**Statut** : mandat représentatif (vote individuel, sans instruction), incompatibilité avec un mandat national. Immunité de juridiction pour les opinions émises dans l''exercice des fonctions. Droit à 3 assistants parlementaires.

## II. Compétences budgétaires

> Le Parlement **contrôle les dépenses** mais **ne vote pas les recettes** — différence fondamentale avec les parlements nationaux.

**Processus budgétaire** (art. 314 TFUE) :
1. **Commission** prépare le projet de budget
2. **Conseil** adopte une position et la transmet au Parlement
3. **Parlement** approuve, amende ou rejette
4. En cas de désaccord : **comité de conciliation** (21 représentants du PE + 21 du Conseil, 21 jours)
5. **Troisième lecture** possible si désaccord persiste
6. Le président du Parlement **constate l''adoption définitive** (art. 314 §9 TFUE)

Le Parlement contrôle l''exécution budgétaire (art. 318 TFUE) et donne **décharge** à la Commission (art. 319 TFUE).

## III. Compétences de contrôle politique

### A. Désignation de la Commission

> **Art. 17 §7 TUE** : Le Conseil européen propose un candidat « en tenant compte des élections au Parlement européen ». Le Parlement **l''élit à la majorité de ses membres**.

Le Parlement approuve ensuite la **Commission en tant que collège** (auditions individuelles de 3h, questionnaire écrit, déclaration d''intérêts). Processus plus exigeant que la composition d''un gouvernement national.

### B. Motion de censure

> **Art. 17 §8 TUE** : « La Commission, en tant que collège, est **responsable devant le Parlement européen**. »

Majorité des 2/3 des voix exprimées pour renverser la Commission. Aucune motion de censure n''a encore été votée, mais le contrôle a conduit à la **démission de la Commission Santer** en 1999 (affaires de fraude et de mauvaise gestion détectées par une commission d''enquête parlementaire).

**Paradoxe** : c''est la Commission qui propose et exécute, et non le Conseil (qui codécide) qui est soumis au contrôle politique du Parlement.

### C. Autres pouvoirs de contrôle

- Questions orales et écrites à la Commission (art. 230 TFUE)
- Commissions temporaires d''**enquête**
- **Pétitions** des citoyens (art. 22 TFUE)
- Élection du **médiateur européen** après chaque élection pour 5 ans

## IV. Compétences normatives

| Procédure | Description | Portée |
|-----------|-------------|--------|
| **Consultation simple** | Avis obligatoire du PE, non contraignant pour le Conseil | Formalité substantielle : défaut = annulation (CJCE *Roquette*, 29 oct. 1980) |
| **Approbation** | Droit de veto absolu du PE | Ex. : désignation des commissaires, adhésion d''un État |
| **Procédure législative ordinaire** (codécision) | PE colégislateur à égalité avec le Conseil | Généralisée par Lisbonne (41 nouveaux domaines) |

### Procédure législative ordinaire (art. 294 TFUE) en détail

1. **Initiative** de la Commission → transmission simultanée au PE et au Conseil
2. **1re lecture** : le PE adopte une position ; si le Conseil est d''accord, l''acte est adopté
3. **2e lecture** (3 mois) : si désaccord, le Conseil communique ses raisons ; le PE peut approuver, rejeter ou amender à la majorité absolue
4. **Conciliation** (6 semaines) : comité paritaire PE/Conseil si désaccord persistant ; la Commission participe et facilite le rapprochement
5. **3e lecture** (6 semaines) : adoption du projet commun — PE à la majorité des suffrages exprimés, Conseil à la MQ
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 5 - LA COMMISSION EUROPÉENNE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'La Commission européenne',
       'Chapitre 2 - Section 4 : La Commission européenne',
       'Composition du collège (27 commissaires, indépendance stricte), Haut représentant (art. 18 TUE), trois missions fondamentales : initiative (quasi-monopole, art. 17 §1), contrôle / gardienne des traités (recours en manquement art. 258), exécution (comitologie). Structure administrative (43 DG).',
       array['Art. 17 TUE', 'Collège des commissaires', 'Indépendance', 'Art. 245 TFUE', 'Quasi-monopole d''initiative', 'Gardienne des traités', 'Recours en manquement', 'Art. 258 TFUE', 'Art. 260 TFUE', 'Comitologie', 'Art. 290-291 TFUE', 'Haut représentant', 'Art. 18 TUE', 'SEAE', 'Initiative citoyenne européenne', 'Art. 11-4 TUE', 'EPSO'],
       30, 5,
$$
# La Commission européenne

## I. Composition et désignation

La Commission désigne **deux réalités** :
- Le **collège des 27 commissaires** (instance politique, 1 par État membre)
- L''ensemble de l''**administration** (~40 000 fonctionnaires, 43 directions générales à Bruxelles)

**Mandat** : 5 ans, renouvelable (ex. Jacques Delors). Nommée par le Conseil européen sur la base du candidat à la présidence élu par le Parlement (art. 17 §7 TUE).

### Indépendance (art. 245 TFUE)

> « Les membres de la Commission ne peuvent, pendant la durée de leurs fonctions, exercer aucune autre activité professionnelle, rémunérée ou non. »

- Interdiction de recevoir des instructions de leur État national ou d''un autre État
- Obligation d''honnêteté et de délicatesse **pendant** et **après** les fonctions : **2 ans** pour les commissaires, **3 ans** pour le président
- Fonctionnement **collégial** : décisions prises collectivement ; réunions non publiques (art. 9 du règlement intérieur)

## II. Le Haut représentant de l''Union (art. 18 TUE)

Créé par le Traité de Lisbonne. Expression du **visage international de l''UE** (terme volontairement non-étatique, contrairement au « ministre des affaires étrangères » proposé par le TCE).

**Triple fonction** :
1. Impulsion et proposition en matière de PESC
2. Exécution des décisions du Conseil européen et du Conseil ; il préside le **Conseil des affaires étrangères**
3. Vice-président de la Commission, cohérence de l''action extérieure

Nommé par le Conseil européen à la MQ avec l''accord du président de la Commission. S''appuie sur le **SEAE** (Service européen pour l''action extérieure, créé en 2010, gère les délégations dans les pays tiers).

## III. Les trois missions fondamentales (art. 17 §1 TUE)

### A. Le pouvoir d''initiative (quasi-monopole)

> **Formule clé** : « La Commission propose, le Conseil dispose »

La Commission dispose d''un **quasi-monopole du pouvoir d''initiative législative**. Elle peut aussi être invitée à agir :
- Par le **Conseil** (art. 241 TFUE) ou le **Parlement** (art. 225 TFUE) — mais elle conserve un pouvoir discrétionnaire (CJCE *FDSA*, 13 janv. 1990)
- Par l''**initiative citoyenne européenne** (art. 11-4 TUE) : au moins **1 million de signatures** dans un nombre significatif d''États. Opérationnel depuis le 1er avril 2012 (ex. *L''eau, un droit humain*, 2013). Réformée par règlement du 17 avril 2019 (procédure allégée, possibilité de signer en ligne).

### B. Le pouvoir de contrôle : gardienne des traités

La Commission **surveille l''application** du droit de l''UE. Ce pouvoir implique un droit d''enquête et un pouvoir de sanction (ex. : amendes aux entreprises violant les règles de concurrence, art. 101-102 TFUE).

**Recours en manquement** (art. 258-260 TFUE) :

| Étape | Description |
|-------|-------------|
| 1. Phase précontentieuse informelle | Échanges avec l''État, incitation à se mettre en conformité |
| 2. Mise en demeure (art. 258) | L''État présente ses observations dans un délai raisonnable |
| 3. Avis motivé | Délai imposé à l''État pour se mettre en conformité |
| 4. Saisine de la CJUE | Si l''État ne s''exécute pas ; la Commission a la charge de la preuve |
| 5. Arrêt en manquement (art. 260 §1) | L''État est tenu de prendre les mesures d''exécution |
| 6. Sanction pécuniaire (art. 260 §2) | Si l''État n''exécute pas l''arrêt : **astreinte** ou **somme forfaitaire** |

Un État peut aussi agir contre un autre État (art. 259 TFUE), après saisine préalable de la Commission.

### C. Le pouvoir d''exécution et la comitologie

**Art. 290-291 TFUE** :
- **Actes délégués** (art. 290) : la Commission complète les éléments non essentiels d''un acte législatif (contrôlable par le PE ou le Conseil)
- **Actes d''exécution** (art. 291) : conditions uniformes d''application dans les États membres

La **comitologie** (règlement du 16 février 2011) : la Commission est assistée de **comités d''experts interétatiques** pour exécuter les décisions du Conseil et du Parlement. Justifiée par la complexité technique et la nécessité d''une application cohérente dans 27 États.

## IV. Structure administrative

**43 directions générales** organisées en directions puis en unités. Fonctionnaires recrutés sur concours par l''**EPSO** (concours à dominante pratique : mise en situation, logique) — deux groupes de fonctions : administrateurs (grades 7-14) et assistants (grades 1-11). La représentation de toutes les nationalités est assurée.
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 6 - LA COUR DE JUSTICE DE L'UNION EUROPÉENNE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'La Cour de justice de l''Union européenne',
       'Chapitre 3 - Section 1 : Les institutions juridictionnelles',
       'Organisation de la CJUE (CJ + Tribunal, réforme 2015), quatre contentieux : annulation (art. 263 TFUE), renvoi préjudiciel (art. 267 TFUE), recours en manquement (art. 258-260 TFUE), carence (art. 265 TFUE). Van Gend en Loos (effet direct, 1963), Costa c. ENEL (primauté, 1964).',
       array['Art. 19 TUE', 'Cour de justice', 'Tribunal de l''UE', 'Avocat général', 'Art. 252 TFUE', 'Contentieux de l''annulation', 'Art. 263 TFUE', 'Concerné directement et individuellement', 'Renvoi préjudiciel', 'Art. 267 TFUE', 'Effet direct', 'Van Gend en Loos 1963', 'Recours en manquement', 'Art. 258 TFUE', 'Recours en carence', 'Art. 265 TFUE', 'Communauté de droit'],
       32, 6,
$$
# La Cour de justice de l''Union européenne

## I. Organisation

> **Art. 19-1 TUE** : « La Cour de justice de l''Union européenne comprend la Cour de justice, le Tribunal et des tribunaux spécialisés. Elle **assure le respect du droit** dans l''interprétation et l''application des traités. »

| Instance | Composition | Rôle |
|----------|-------------|------|
| **Cour de justice (CJ)** | 27 juges + 11 avocats généraux | Contentieux majeurs, renvois préjudiciels |
| **Tribunal de l''UE** | 54 juges (2 par État depuis 2019) | Recours directs en 1re instance |

**Réforme 2015** (règlement du 16 décembre 2015) : doublement du nombre de juges du Tribunal en trois étapes (40 → 47 → 54 juges) pour résorber l''accumulation des contentieux.

**Nomination** : d''un commun accord par les gouvernements des États pour **6 ans renouvelables**, après consultation du comité de l''art. 255 TFUE. Critères : hauts magistrats ou juristes de compétence notoire.

**Avocat général** (art. 252-2 TFUE) : présente des conclusions motivées en toute indépendance et impartialité — comparable au rapporteur public du Conseil d''État.

> La CJUE est souvent qualifiée de moteur de la « **communauté de droit** » (Hallstein). Par une jurisprudence dynamique, audacieuse et uniformisatrice, elle a construit l''Union de droit.

> Note : **le premier juge du droit de l''UE est le juge national** ; la CJUE ne détient pas le monopole du contentieux européen.

## II. Les quatre contentieux principaux

### A. Le contentieux de l''annulation (art. 263 TFUE)

Inspiré du recours pour excès de pouvoir français. La CJ contrôle la **légalité des actes** du PE, du Conseil, de la Commission, de la BCE et du Conseil européen produisant des effets de droit (CJCE, 31 mars 1971 : conception large).

**Moyens** : incompétence, violation des formes substantielles, violation des traités, détournement de pouvoir, proportionnalité.

**Délai** : **2 mois** à compter de la publication au JOUE ou de la notification.

**Requérants** :
- **Privilégiés** (art. 263 §2) : État membre, PE, Conseil, Commission — sans conditions de recevabilité supplémentaires
- **Personnes physiques ou morales** (art. 263 §4) : acte dont elles sont destinataires ou qui les concerne **directement et individuellement** — condition difficile à réunir pour les actes de portée générale

**Effets** : l''acte annulé est nul et non avenu (art. 264 §1). La CJ peut **moduler les effets dans le temps** (art. 264 §2 — parallèle avec la JP *AC !* du Conseil d''État).

**Recours en carence** (art. 265 TFUE) : sanctionne l''abstention d''une institution de statuer en violation des traités. Précédé d''une mise en demeure de 2 mois (parallèle avec la requête préalable en DA français).

> **Distinction fondamentale** : recours en carence (art. 265 — institution de l''UE qui n''agit pas) ≠ recours en manquement (art. 258 — État membre qui ne respecte pas ses obligations).

### B. Le contentieux de l''interprétation — renvoi préjudiciel (art. 267 TFUE)

> La CJ statue à titre préjudiciel sur l''**interprétation des traités** et la **validité** des actes des institutions.

**Mécanisme** :
- Juge national confronté à une question de droit de l''UE : **peut** saisir (juridiction non-souveraine) ou **doit** saisir (juridiction de dernier ressort)
- La CJ détermine le **sens de la norme européenne** ; elle ne tranche pas la compatibilité du droit national
- Le juge national est **lié** par la réponse → **dialogue entre juge national et CJUE**

Exemple : **CE, 21 avr. 2021, *French data network*** — première partie entièrement consacrée au renvoi préjudiciel.

**Monopole de la CJ** sur le renvoi préjudiciel (règlement 2019 : le Tribunal ne peut pas statuer sur les renvois, risque de divergence de JP).

> **CJCE, 5 février 1963, *Van Gend en Loos*** : les dispositions du droit communautaire **claires, précises et inconditionnelles** créent des droits que les particuliers peuvent invoquer **directement** devant le juge national (**effet direct**). Les individus sont sujets de droit de l''UE, pas seulement les États.

### C. Le contentieux de pleine juridiction — recours en manquement (art. 258-260 TFUE)

Le juge retrouve la **plénitude de ses pouvoirs** (peut allouer des dommages-intérêts). Objectif : obtenir que l''État se **conforme** au droit de l''UE (pas d''annulation d''un acte).

| Article | Auteur | Objet |
|---------|--------|-------|
| **Art. 258** | Commission contre État | Recours de droit commun |
| **Art. 259** | État contre autre État | Après saisine préalable de la Commission (3 mois) |
| **Art. 260** | Commission contre État | Non-exécution d''un arrêt en manquement → **astreinte ou somme forfaitaire** |
| **Art. 260 §3** | Commission (trans. directive) | Peut demander des sanctions dès la première saisine pour non-transposition |

### D. Contentieux spécifiques

- **Avis sur les accords internationaux** (art. 218-11 TFUE) : un État, le PE, le Conseil ou la Commission peut consulter la CJ sur la compatibilité d''un accord avec les traités. Avis négatif → l''accord ne peut pas entrer en vigueur
- **Art. 271 TFUE** : litiges relatifs à la BEI et aux banques centrales nationales
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 7 - LES ORGANES CONSULTATIFS ET DE CONTRÔLE FINANCIER
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'Les organes consultatifs et de contrôle financier',
       'Chapitre 3 - Section 2 : Organes consultatifs, Cour des comptes, médiateur',
       'Comité économique et social européen (CESE), Comité européen des régions (CER), Cour des comptes européenne (art. 287 TFUE), médiateur européen (art. 228 TFUE) — rôles, composition et limites.',
       array['CESE', 'Art. 300 TFUE', 'Comité des régions', 'CER', 'Subsidiarité', 'Cour des comptes européenne', 'Art. 287 TFUE', 'Contrôle financier', 'Bonne gestion financière', 'Médiateur européen', 'Art. 228 TFUE', 'Mauvaise administration', 'Ombudsman', 'BEI', 'Art. 309 TFUE'],
       25, 7,
$$
# Les organes consultatifs et de contrôle financier

## I. Le Comité économique et social européen (CESE)

> **Art. 300 al. 2 TFUE** : « Le CESE est composé de représentants des organisations d''employeurs, de salariés et d''**autres acteurs représentatifs de la société civile**. »

**Composition** : **329 membres** (plafond 350 ; Allemagne, France, Italie : 24 membres ; Malte : 5)
- Nommés par le **Conseil des ministres** à l''unanimité pour **5 ans renouvelables** (sur proposition de la Commission et consultation des organisations représentatives)
- Mandat représentatif : membres indépendants de leur État

**6 sections spécialisées** : agriculture/environnement, économie/cohésion, emploi/affaires sociales, relations extérieures, marché intérieur, transports/énergie.

**Compétences** : rend des avis **obligatoires** (cas prévus par le traité) et **facultatifs** (à la demande du PE, du Conseil ou de la Commission). Délai minimum d''1 mois. Environ **5 000 avis** en 2022.

## II. Le Comité européen des régions (CER)

> **Art. 300 al. 3 TFUE** : composé de représentants des collectivités régionales et locales **titulaires d''un mandat électoral** ou politiquement responsables devant une assemblée élue.

**329 membres** (mêmes chiffres que le CESE). Institué à l''initiative de l''Allemagne (État fédéral) pour représenter les collectivités territoriales au niveau de l''UE.

**Compétences** : consulté sur l''éducation, la culture, la santé, les réseaux trans-européens, l''environnement, les coopérations transfrontalières. Adopte aussi des **résolutions**. Siège en **groupes politiques** transnationaux.

**Pouvoir de recours** : l''art. 8 du protocole n° 2 permet au CER de saisir la **CJUE pour violation du principe de subsidiarité** (dans les domaines où sa consultation est obligatoire).

## III. La Cour des comptes européenne (CDC)

Créée par le **Traité de Bruxelles** du 22 juillet 1975. Institution à part entière, siège à **Luxembourg**.

**Composition** : un ressortissant par État, nommé par le Conseil (après consultation du PE) pour **6 ans renouvelables**. Membres issus des institutions de contrôle externe nationales.

> **Art. 287 TFUE** : la CDC examine la **totalité des recettes et dépenses** de l''UE, contrôle la légalité, la régularité et la **bonne gestion financière**.

**Pouvoirs** :
- Contrôle sur pièces et **sur place** (institutions, États membres, bénéficiaires de fonds)
- **Rapport annuel** publié au JOUE (accompagné des réponses des institutions)
- **Déclaration d''assurance** sur la fiabilité des comptes
- Rapports spéciaux sur des questions particulières ; avis à la demande des institutions

**Limite essentielle** : **pas de pouvoirs juridictionnels** — la CDC ne peut pas poursuivre les infractions constatées. Elle assiste le Parlement et le Conseil dans le contrôle de l''exécution budgétaire et permet la décharge.

Depuis 2012 : les propres comptes de la CDC sont contrôlés par un contrôleur externe indépendant.

## IV. La Banque européenne d''investissement (BEI)

Créée par le **Traité de Rome** (1957). Définie par l''art. 309 TFUE : œuvre au « développement équilibré et sans heurt du marché commun ». Accorde des prêts et garanties pour :
- La mise en valeur des **régions moins développées**
- La **modernisation** ou conversion d''entreprises
- Les projets d''intérêt commun à plusieurs États membres (ex. financement de l''Eurotunnel)
- Les **programmes environnementaux**

## V. Le médiateur européen (art. 228 TFUE)

Institution introduite par le **Traité de Maastricht**, inspirée du modèle de l''**ombudsman suédois**.

**Désignation** : élu par le **Parlement européen** après chaque élection, pour **5 ans renouvelables**. Siège à Strasbourg (~80 agents).

**Compétences** : reçoit les plaintes de tout **citoyen de l''UE ou personne physique/morale** résidant dans un État membre, sur des cas de **mauvaise administration** des institutions, organes ou organismes de l''UE.

**Exclut** : activités juridictionnelles de la CJUE ; autorités nationales, régionales ou locales.

**Procédure** :
1. Plainte dans un délai de **2 ans** après connaissance des faits (et après démarches préalables)
2. Le médiateur ouvre une enquête, cherche une solution amiable
3. En cas de mauvaise administration constatée : **recommandations** à l''institution (délai de réponse 3 mois)
4. Rapport transmis au **Parlement européen** (qui peut intervenir politiquement)

**Pouvoirs d''enquête** : large droit de communication, accès aux documents, obligation d''information des institutions. Seule limite : secret justifié.

En 2018 : 2 181 plaintes traitées, plus de 400 enquêtes ouvertes.

> Mme Emily Oreilly (médiatrice depuis 2013) : « Le plus gros problème est la **culture institutionnelle**. Être médiateur est plus un art qu''une science. »
$$
from public.subjects where slug = 'l2-droit-ue-1';

-- =====================================================================
-- FICHE 8 - ÉQUILIBRE INSTITUTIONNEL, SOURCES DU DROIT ET COMPÉTENCES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id,
       'Équilibre institutionnel, sources du droit et répartition des compétences',
       'Chapitre 2 - Introduction + Synthèse : Triangle institutionnel et sources du droit de l''UE',
       'Triangle institutionnel (trois légitimités), art. 13 TUE, hiérarchie des normes (droit primaire, dérivé), règlement, directive, décision, effet direct (Van Gend en Loos 1963), répartition des compétences (art. 3-5 TFUE), attributions exclusives, partagées, complémentaires.',
       array['Triangle institutionnel', 'Trois légitimités', 'Art. 13 TUE', 'Coopération loyale', 'Droit primaire', 'Charte des droits fondamentaux', 'Art. 6 TUE', 'Droit dérivé', 'Règlement', 'Directive', 'Décision', 'Recommandation', 'Art. 288 TFUE', 'Van Gend en Loos 1963', 'Effet direct', 'Compétences exclusives', 'Art. 3 TFUE', 'Compétences partagées', 'Art. 4 TFUE', 'Principe d''attribution', 'Art. 5 TUE'],
       28, 8,
$$
# Équilibre institutionnel, sources du droit et répartition des compétences

## I. L''équilibre institutionnel : le triangle des légitimités

Le fonctionnement de l''UE repose sur la **conciliation de trois sources de légitimité** qui forment le triangle institutionnel :

| Légitimité | Institution | Rôle dans le processus normatif |
|------------|-------------|----------------------------------|
| **Interétatique** | Conseil européen + Conseil de l''UE | Représente les gouvernements nationaux ; codécide |
| **Démocratique** | Parlement européen (élu au SUD) | Représente les citoyens ; colégislateur |
| **Européenne** | Commission | Défend l''intérêt général de l''UE ; propose |

> **Art. 13 TUE** liste les **7 institutions** : Parlement européen, Conseil européen, Conseil, Commission, Cour de justice, Banque centrale européenne, Cour des comptes.

**Art. 13 §2** : « Chaque institution agit dans les limites des attributions qui lui sont conférées dans les traités […]. Les institutions pratiquent entre elles une **coopération loyale**. »

> Formule synthétique du fonctionnement institutionnel : **« La Commission propose, le Conseil dispose »** — le Parlement codécide dans la procédure législative ordinaire.

## II. La hiérarchie des normes européennes

### A. Le droit primaire — sommet de la hiérarchie

- **TUE + TFUE** et leurs protocoles annexes
- **Charte des droits fondamentaux** : « la même valeur juridique que les traités » (art. 6 §1 TUE)
- Principes généraux du droit européen (dégagés par la CJUE)

Toute norme de droit dérivé doit être conforme au droit primaire sous peine d''annulation (recours en annulation, art. 263 TFUE).

### B. Le droit dérivé (art. 288 TFUE)

| Acte | Caractère obligatoire | Applicabilité |
|------|----------------------|---------------|
| **Règlement** | Obligatoire dans **tous ses éléments** | **Directement applicable** dans tout État membre sans transposition |
| **Directive** | Lie les États quant au **résultat** à atteindre | Les États choisissent la forme et les moyens de transposition |
| **Décision** | Obligatoire dans **tous ses éléments** | Lie uniquement ses **destinataires** (États ou particuliers) |
| **Recommandation** | **Non contraignante** | Invite à adopter une conduite |
| **Avis** | **Non contraignant** | Expression d''une opinion |

## III. L''effet direct — arrêt fondateur

> **CJCE, 5 février 1963, *Van Gend en Loos*** :
> Les dispositions du droit communautaire **claires, précises et inconditionnelles** créent des droits que les **particuliers peuvent invoquer directement** devant le juge national.

Ce principe transforme les ressortissants des États membres en **sujets de droit de l''UE** à part entière (et pas seulement les États). Il est le complément indispensable de la **primauté** (Costa c. ENEL, 1964) :
- Primauté : en cas de conflit, la norme de l''UE prévaut
- Effet direct : la norme de l''UE est invocable par les particuliers devant le juge national

**Effet direct vertical** (particulier contre État) vs **effet direct horizontal** (particulier contre particulier — reconnu pour les règlements, plus discuté pour les directives).

## IV. La répartition des compétences

### Principe d''attribution (art. 5 TUE)

> L''UE n''agit que dans les limites des compétences que les États membres lui ont conférées dans les traités pour atteindre les objectifs communs. Toute compétence non conférée à l''Union appartient aux États membres.

### Trois catégories de compétences

| Type | Définition | Exemples (art. 3-4 TFUE) |
|------|------------|--------------------------|
| **Exclusives** (art. 3 TFUE) | Seule l''UE peut légiférer ; les États n''interviennent que si habilités par l''UE | Union douanière, politique monétaire (zone euro), politique commerciale commune, conservation des ressources biologiques de la mer |
| **Partagées** (art. 4 TFUE) | UE et États peuvent légiférer, mais primauté de l''UE si elle a agi | Marché intérieur, environnement, transports, politique sociale, énergie, espace de liberté/sécurité/justice |
| **Complémentaires / d''appui** | L''UE appuie et coordonne sans remplacer les États | Éducation, culture, tourisme, sport, protection civile |

Les principes de **subsidiarité** et de **proportionnalité** (art. 5 TUE) encadrent l''exercice des compétences non exclusives pour éviter la centralisation excessive.

## V. Enjeux contemporains

- **Légitimité démocratique** : le « déficit démocratique » reste un reproche récurrent ; la production normative est perçue comme opaque et complexe
- **Brexit** (référendum 23 juin 2016) : confirme la nature d''association volontaire de l''UE
- **Élargissements** en cours : Balkans occidentaux, Ukraine, Moldavie
- **Démocraties illibérales** (Hongrie, Pologne) : tensions sur les valeurs de l''art. 2 TUE et l''art. 7 TUE
- **Discours de la Sorbonne** (Macron, 2024) : vision d''une Europe plus souveraine — autonomie géopolitique, industrielle et de défense ; nécessité de consolider le couple franco-allemand
$$
from public.subjects where slug = 'l2-droit-ue-1';
