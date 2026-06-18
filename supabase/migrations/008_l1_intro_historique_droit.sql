-- =====================================================================
-- JurisPrép - Cours complet : Introduction historique au droit (L1 S1)
-- 8 fiches de révision approfondies avec code couleur
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Introduction historique au droit');

-- =====================================================================
-- FICHE 1 - LE DROIT ROMAIN
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le droit romain : naissance d''une science juridique', 'Chapitre 1 - L''Antiquité',
       'De la Royauté à Justinien : douze siècles de droit romain et leur influence durable.',
       array['Droit romain', 'Loi des XII Tables', 'Préteur', 'Jurisconsultes', 'Justinien', 'Corpus juris civilis', 'Ius civile', 'Ius gentium'],
       18, 1,
'# Le droit romain : naissance d''une science juridique

## Introduction

Le **droit romain** est le **fondement** des systèmes juridiques continentaux. Né au VIII^e^ siècle avant notre ère, il s''est développé pendant **plus de mille ans** pour atteindre une sophistication jamais égalée dans l''Antiquité. Sa redécouverte au Moyen Âge a façonné le **droit commun européen**, et son influence se ressent encore dans le **Code civil français de 1804**.

> **Définition** : Le droit romain est l''ensemble des règles juridiques élaborées à Rome, depuis la fondation de la cité (`-753`) jusqu''à la chute de l''Empire romain d''Occident (`476`) et la compilation de Justinien (`533`).

## I. La périodisation du droit romain

### A. La Royauté (`-753 / -509`)

#### Caractères du droit primitif
- **Droit religieux** (*fas*) et coutumier
- Les **pontifes** sont les dépositaires du savoir juridique
- Confusion entre droit, religion et morale

#### Les sources
- **Coutumes ancestrales** (*mores maiorum*)
- **Volonté des rois**
- **Décisions des pontifes**

### B. La République (`-509 / -27`)

#### La Loi des XII Tables (`-451 / -450`)
Premier grand **code écrit** romain. Adoptée à l''issue de luttes entre patriciens et plébéiens.

**Caractères** :
- **Affichée** sur le Forum romain
- **Laïcisation** du droit (sortie de la confusion avec le sacré)
- **Égalité** formelle des citoyens devant la loi

**Contenu** : procédure, famille, propriété, obligations, droit pénal.

#### La distinction *ius civile* / *ius gentium*
- ***Ius civile*** : droit des **citoyens romains** uniquement (*cives*)
- ***Ius gentium*** : droit applicable aux **étrangers** (*peregrini*) — plus souple, plus universel

#### Le rôle du préteur
**Magistrat** à compétence juridictionnelle. À chaque entrée en fonction, il publie son **édit** annuel énonçant les actions qu''il accordera.

#### Les jurisconsultes
**Juristes** (privés) qui développent la doctrine. Leurs **responsa prudentium** (réponses des juristes) ont autorité.

### C. Le Haut-Empire (`-27 / 284`)

#### L''âge d''or de la jurisprudence
Quatre grands jurisconsultes :
- **Gaius** (~`110-180`) : *Institutes* (manuel pédagogique)
- **Papinien** (`-150 / -212`)
- **Ulpien** (~`170-228`)
- **Paul** (II^e^-III^e^ siècle)

Leurs œuvres seront massivement reprises dans le *Digeste*.

#### L''édit perpétuel
**Vers 130** sous l''empereur Hadrien, le jurisconsulte **Salvius Julianus** fige le contenu de l''édit prétorien. Plus de modification annuelle.

#### Les constitutions impériales
L''empereur devient **source principale** du droit. Ses décisions s''imposent :
- **Édits**
- **Rescrits**
- **Décrets**
- **Mandats**

### D. Le Bas-Empire (`284 / 476`)

#### Multiplication des textes
Inflation normative impériale.

#### Codifications privées
- **Code grégorien** (~`291`)
- **Code hermogénien** (~`295`)

#### Code Théodosien (`438`)
Première codification officielle.

### E. Justinien et le Corpus juris civilis

#### Justinien (`527-565`)
Empereur d''Orient. Décide de **compiler** l''ensemble du droit romain.

#### Le *Corpus juris civilis*
Réalisé sous la direction de **Tribonien**. Comprend :

##### Le **Code Justinien** (`529`, révisé `534`)
12 livres rassemblant les **constitutions impériales** en vigueur.

##### Le **Digeste** (`533`)
**50 livres** reprenant les écrits des grands jurisconsultes.

##### Les **Institutes** (`533`)
4 livres de **manuel d''enseignement**.

##### Les **Novelles**
Constitutions postérieures à `534` de Justinien lui-même.

#### Importance
Le *Corpus juris civilis* est la **source principale** par laquelle le droit romain sera redécouvert au Moyen Âge.

## II. Les grandes notions du droit romain

### A. La distinction droit public / droit privé

#### Ulpien (*Digeste* 1.1.1)
> *« Le droit public est celui qui regarde l''état de la chose publique romaine ; le droit privé celui qui regarde l''utilité des particuliers. »*

Cette distinction structure encore le droit contemporain.

### B. La trilogie « personnes, biens, actions »

**Gaius** (*Institutes*) :
> *« Tout le droit que nous appliquons concerne soit les personnes, soit les choses, soit les actions. »*

Plan repris par le **Code civil français de 1804** :
- **Livre I** : Des personnes
- **Livre II** : Des biens
- **Livre III** : Des manières d''acquérir la propriété (obligations)

### C. La théorie de la propriété

#### *Dominium ex iure quiritium*
Propriété privée romaine, **caractérisée par** :
- **Usus** (droit d''user)
- **Fructus** (droit de jouir des fruits)
- **Abusus** (droit de disposer)

Repris par le Code civil (`art. 544`).

### D. La théorie des obligations

#### Définition (*Institutes* 3.13)
> *« L''obligation est un lien de droit en vertu duquel nous sommes obligés, par la nécessité, de payer quelque chose à un autre. »*

#### Sources des obligations
- **Contrat** (*ex contractu*)
- **Délit** (*ex delicto*)
- **Quasi-contrat**
- **Quasi-délit**

#### Les contrats romains
- **Contrats réels** : prêt, dépôt, gage
- **Contrats verbaux** : stipulation
- **Contrats littéraux**
- **Contrats consensuels** : vente, louage, société, mandat

## III. L''héritage du droit romain

### A. Persistance en Orient

L''Empire byzantin conserve le droit romain **jusqu''à la chute de Constantinople en 1453**.

### B. Survie en Occident

Après `476`, le droit romain :
- **Survit** dans les compilations (Bréviaire d''Alaric, `506`)
- **Influence** les royaumes barbares
- **Reste vivant** dans le Sud de la France

### C. La redécouverte au XII^e^ siècle

**École de Bologne** : **Irnerius** (~`1055-1130`) lit publiquement le *Digeste*. Naissance des **glossateurs**.

## IV. Pourquoi étudier le droit romain ?

### A. Une science juridique exceptionnelle
- **Sophistication** technique
- **Vocabulaire** précis
- **Méthode** casuistique rigoureuse

### B. Le fondement du droit continental
- Vocabulaire juridique français : `90%` viennent du latin
- Plan et concepts du **Code civil**
- Méthode de raisonnement juridique

### C. Une référence dans le monde
- Pays de droit civil (France, Allemagne, Italie, Espagne)
- Amérique latine
- Louisiane, Québec
- Japon (Code civil de `1898`)

## À retenir

**Périodisation** : Royauté (`-753`) → République → Empire → Justinien (`527-565`).

**Loi des XII Tables** (`-451/-450`) : premier code écrit, **laïcisation** du droit.

**Préteur** : magistrat à édit. **Édit perpétuel** figé en `130`.

**Jurisconsultes** : Gaius, Papinien, Ulpien, Paul. *Responsa prudentium*.

**Corpus juris civilis** (`529-534`) de **Justinien** :
- **Code** : constitutions impériales
- **Digeste** : doctrine (50 livres)
- **Institutes** : manuel
- **Novelles** : constitutions de Justinien

**Apport** : distinction droit public/privé (Ulpien), trilogie personnes/biens/actions (Gaius), théorie de la propriété et des obligations.

**Redécouverte** au XII^e^ siècle (Bologne, Irnerius) → ius commune européen → Code civil 1804.'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 2 - LE HAUT MOYEN ÂGE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Haut Moyen Âge : invasions et personnalité des lois', 'Chapitre 2 - Haut Moyen Âge (V^e^-X^e^ s.)',
       'La survie du droit romain face aux invasions, les lois barbares, la personnalité des lois, l''empire carolingien.',
       array['Invasions barbares', 'Lois barbares', 'Personnalité des lois', 'Bréviaire d''Alaric', 'Loi salique', 'Capitulaires', 'Charlemagne', 'Féodalité naissante'],
       15, 2,
'# Le Haut Moyen Âge : invasions et personnalité des lois

## Introduction

La chute de l''**Empire romain d''Occident** en `476` n''est pas la fin du droit romain : il **survit** sous diverses formes, **mêlé** aux coutumes des peuples germaniques qui s''installent en Europe. Cette période voit la coexistence de plusieurs systèmes juridiques selon les peuples et l''émergence progressive de la **féodalité**.

> **Définition** : Le **Haut Moyen Âge** désigne la période allant de la chute de l''Empire romain d''Occident (`476`) à l''an mil environ. Période de **transition** entre Antiquité et Moyen Âge classique.

## I. Les invasions barbares et leurs conséquences

### A. Le contexte

#### La chute de Rome
- `410` : sac de Rome par Alaric (Wisigoths)
- `455` : sac par les Vandales
- `476` : déposition de Romulus Augustule par Odoacre

#### L''installation des peuples germaniques
- **Wisigoths** : Espagne et Sud de la Gaule
- **Burgondes** : Sud-Est de la France
- **Francs** : Nord de la Gaule (peuple le plus important pour la France)
- **Ostrogoths** : Italie
- **Anglo-Saxons** : Angleterre

### B. La cohabitation juridique

#### Une situation paradoxale
- Les **Romains** continuent à vivre selon leur droit
- Les **Germains** apportent leurs coutumes

#### Le principe de **personnalité des lois**
**Chaque individu** est soumis à la loi de son peuple, **où qu''il se trouve**.

Ainsi :
- Un **Franc** est jugé selon la **loi salique**
- Un **Romain** selon le droit romain
- Un **Burgonde** selon la loi Gombette

Concept opposé à la **territorialité des lois** (qui dominera ensuite).

## II. Les compilations juridiques

### A. La conservation du droit romain

#### Le Bréviaire d''Alaric (`506`)
Aussi appelé **Lex Romana Visigothorum**. Compilation du droit romain destinée aux **Romains** vivant dans le royaume wisigoth.

**Sources** :
- Extraits du **Code théodosien**
- Constitutions postérieures
- *Institutes* de Gaius (résumées)
- Extraits de Paul

**Influence** : reste la **source principale** du droit romain en Occident jusqu''à la redécouverte du *Corpus juris civilis*.

#### La Lex Romana Burgundionum (`vers 500`)
Compilation pour les Romains du royaume burgonde.

### B. Les lois barbares

#### La loi salique (Pactus Legis Salicae)
**Promulguée** par **Clovis** (~`507-511`).

**Caractères** :
- **Codification** des coutumes franques
- **Procédure** et droit pénal essentiellement
- Système de **compositions** (réparation pécuniaire des dommages)
- Plus tard, une disposition sur les femmes sera invoquée pour exclure les femmes de la succession au trône

#### Autres lois barbares
- **Lex Burgundionum** (~`500`) : Burgondes
- **Lex Wisigothorum** (`654`) : Wisigoths
- **Lex Ribuaria** : Francs ripuaires
- **Lex Saxonum** : Saxons
- **Lex Bajuvariorum** : Bavarois

#### Caractères généraux
- **Casuistique** : énumération de cas
- **Pénal** dominant
- **Procédure** très formaliste
- **Composition** financière pour réparer les crimes

## III. L''Empire carolingien

### A. Le retour à l''unité

#### Charlemagne (`768-814`)
- Couronné **empereur** par le pape Léon III à Rome le `25 décembre 800`
- **Renaissance** carolingienne (intellectuelle et juridique)

#### Le retour à l''écrit
Restauration de l''**administration écrite**.

### B. Les capitulaires

#### Définition
**Actes législatifs** des rois carolingiens, divisés en **capitula** (chapitres).

#### Caractères
- **Émanent du roi**
- Compétence **territoriale** plutôt que personnelle (préfiguration)
- Précisent ou complètent les lois existantes

#### Typologie
- ***Capitula legibus addenda*** : modifient les lois barbares
- ***Capitula per se scribenda*** : autonomes
- ***Capitula missorum*** : instructions aux envoyés royaux (*missi dominici*)

### C. La théorie politique carolingienne

#### Le roi est *« vicaire de Dieu »*
Conception **théocratique** du pouvoir royal.

#### Le **sacre**
Cérémonie religieuse qui confère une légitimité divine au roi.

## IV. La désagrégation carolingienne

### A. Le déclin

#### Le partage de Verdun (`843`)
Division de l''Empire entre les trois petits-fils de Charlemagne :
- **Charles le Chauve** : Francie occidentale (futur royaume de France)
- **Louis le Germanique** : Francie orientale (futur Saint-Empire)
- **Lothaire** : Francie médiane

#### Les invasions
- **Vikings** au Nord et à l''Ouest
- **Sarrasins** au Sud
- **Hongrois** à l''Est

### B. La naissance de la féodalité

#### Le contexte
**Affaiblissement** du pouvoir royal central. Les **comtes** et **ducs** s''autonomisent.

#### Le **lien féodo-vassalique**
- **Suzerain** : seigneur supérieur
- **Vassal** : seigneur inférieur
- **Hommage** et **fidélité** réciproques
- **Fief** : terre donnée par le suzerain au vassal

#### Le capitulaire de Quierzy-sur-Oise (`877`)
**Charles le Chauve** rend les **fiefs héréditaires**. Étape majeure dans la cristallisation de la féodalité.

### C. La fin de la dynastie carolingienne

`987` : **Hugues Capet** est élu roi. Début de la **dynastie capétienne**.

## V. La transition vers le droit médiéval

### A. La pluralité des sources
Au début du second millénaire :
- **Droit romain** survivant
- **Droits coutumiers** germaniques
- **Capitulaires** carolingiens (en déclin)
- **Droit canonique** (Église en expansion)
- **Coutumes locales** émergentes
- **Coutumes féodales**

### B. La territorialisation progressive
Le **principe de personnalité** des lois s''efface peu à peu au profit d''une **territorialisation** : chaque seigneurie a son droit.

## À retenir

**Période** : V^e^-X^e^ siècle. Transition entre Antiquité et Moyen Âge classique.

**Principe de personnalité des lois** : chacun est jugé selon la loi de son peuple.

**Compilations romaines** : **Bréviaire d''Alaric** (`506`) — source principale du droit romain conservé en Occident.

**Lois barbares** :
- **Loi salique** (Clovis, ~`507-511`) — Francs
- Lex Burgundionum, Lex Wisigothorum, etc.

**Empire carolingien** : Charlemagne empereur (`25 décembre 800`). **Capitulaires** : actes législatifs.

**Partage de Verdun** (`843`) : division de l''Empire. Émergence de la **féodalité**.

**Capitulaire de Quierzy** (`877`) : fiefs héréditaires.

**987** : avènement d''**Hugues Capet**, début de la dynastie capétienne.'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 3 - LA RENAISSANCE JURIDIQUE DU XII^e^ SIÈCLE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Renaissance juridique du XII^e^ siècle', 'Chapitre 3 - La redécouverte du droit romain',
       'École de Bologne, glossateurs, post-glossateurs, naissance du ius commune européen et du droit canonique.',
       array['Irnerius', 'Glossateurs', 'Post-glossateurs', 'Bartole', 'Accurse', 'Ius commune', 'Décret de Gratien', 'Décrétales', 'Droit canonique'],
       15, 3,
'# La Renaissance juridique du XII^e^ siècle

## Introduction

Le **XII^e^ siècle** est un tournant majeur de l''histoire du droit européen. La redécouverte du *Corpus juris civilis* de Justinien à **Bologne** déclenche un mouvement intellectuel sans précédent. Parallèlement, l''Église catholique élabore le **droit canonique**. Ensemble, ces deux droits forment le ***ius commune*** européen qui structurera la pensée juridique jusqu''à la Révolution française.

## I. La redécouverte du droit romain

### A. Le contexte

#### Renaissance du XII^e^ siècle
- Renouveau intellectuel et économique
- Essor des villes
- Croissance démographique
- Émergence des universités

#### La découverte du *Digeste*
**Vers 1050-1100**, le manuscrit du *Digeste* est redécouvert à Pise.

### B. L''École de Bologne

#### Irnerius (~`1055-1130`)
Considéré comme le **père** de l''école de Bologne. Premier à enseigner publiquement le *Corpus juris civilis*.

#### Méthode
- **Lecture publique** des textes (*lectio*)
- **Discussion** des passages obscurs (*disputatio*)
- **Annotation** des manuscrits

#### Le succès
Étudiants affluent de toute l''Europe à Bologne. Émergence d''une véritable **université**.

### C. Les glossateurs (XII^e^-XIII^e^ siècles)

#### Définition
**Juristes** qui annotent le *Corpus juris civilis* par des **gloses** (notes en marge).

#### Méthode
- **Explication littérale** des textes
- **Distinctions** terminologiques
- **Concordances** entre passages
- **Brocards** (formules courtes mémorisables)

#### Les **« Quatre Docteurs »**
Disciples d''Irnerius : **Bulgarus**, **Martinus**, **Hugo**, **Jacobus**.

#### La Grande Glose (`vers 1250`)
**Accurse** synthétise toutes les gloses antérieures en une **Glossa ordinaria** qui devient la **référence** pour tout l''Occident.

### D. Les post-glossateurs (XIV^e^ siècle)

#### Définition
Aussi appelés **commentateurs**. Vont **au-delà** de la simple explication des textes.

#### Méthode
- **Adaptation** du droit romain aux besoins contemporains
- **Création** de théories nouvelles
- **Application pratique**

#### Les grands noms
- **Cynus de Pistoie** (`1270-1336`)
- **Bartole de Sassoferrato** (`1313-1357`) — le plus important
- **Balde Ubaldi** (`1327-1400`)

#### Bartole
> *« Nemo bonus jurista nisi sit bartolista »* (*« Nul n''est bon juriste s''il n''est pas bartoliste. »*)

**Apports** :
- Théorie de la souveraineté
- Conflits de lois (premier théoricien)

## II. La diffusion du droit romain

### A. Les universités

#### Multiplication
Au XIII^e^ siècle, des facultés de droit se créent dans toute l''Europe :
- **Bologne** (référence)
- **Padoue**
- **Paris** (mais limitée par le pape Honorius III qui interdit l''enseignement du droit romain à Paris en `1219`)
- **Orléans, Toulouse, Montpellier**
- **Oxford, Cambridge**
- **Salamanque**

### B. La résistance au droit romain en France

#### Le Sud romaniste
Le **Midi de la France** reste **« pays de droit écrit »** : application directe du droit romain.

#### Le Nord coutumier
Le **Nord** est **« pays de coutumes »** : droit romain seulement comme « raison écrite ».

## III. Le droit canonique

### A. Naissance du droit canonique

#### Définition
Droit de l''**Église catholique** romaine, régissant :
- L''**organisation** de l''Église
- Les **clercs**
- Certains aspects de la **vie des laïcs** (mariage, succession, serment)

#### Sources primitives
- **Bible** et **Évangiles**
- **Conciles** (assemblées d''évêques)
- **Décisions** des papes (décrétales)
- **Pères de l''Église** (Augustin, Jérôme…)

### B. Le Décret de Gratien (`vers 1140`)

#### Auteur
**Gratien**, moine bolognais (probablement vers `1090-1145`).

#### Titre complet
*Concordia discordantium canonum* (*« Concordance des canons discordants »*).

#### Contenu
**3 921 chapitres** classés en 3 parties.

#### Importance
Le Décret de Gratien devient la **base** de l''enseignement du droit canonique. Étudié à Bologne dans la **« Faculté de l''Un et l''Autre Droit »** (utrumque jus : droit civil + droit canonique).

### C. Les décrétales

#### Compilations
- **Décrétales de Grégoire IX** (`1234`) : 5 livres
- **Sexte de Boniface VIII** (`1298`)
- **Clémentines** (`1317`)
- **Extravagantes**

### D. Le Corpus juris canonici

**Compilation** finale officiellement reconnue en `1582`.

### E. Le tribunal ecclésiastique

#### Compétences
L''**Église** dispose de juridictions propres :
- **Officialités** (tribunaux ecclésiastiques)
- Pour les **clercs**
- Pour les **matières spirituelles** (mariage, succession, serment)

## IV. Le ius commune européen

### A. Définition
**Droit commun européen** combinant :
- **Droit romain** (sous la forme du *Corpus juris civilis* glossé)
- **Droit canonique**
- Doctrine universitaire

### B. Le rayonnement

#### Espace
Concerne toute l''**Europe occidentale** continentale (sauf l''Angleterre, qui développe sa *common law*).

### C. Méthode et formation

#### Langue
**Latin** : langue commune de tous les juristes européens.

## À retenir

**Renaissance juridique du XII^e^ siècle** : redécouverte du *Corpus juris civilis* (Pise, vers `1050-1100`).

**École de Bologne** : **Irnerius** (~`1055-1130`) enseigne publiquement le droit romain.

**Glossateurs** (XII^e^-XIII^e^ s.) : annotent les textes. **Accurse** synthétise dans la **Glossa ordinaria** (~`1250`).

**Post-glossateurs** (XIV^e^ s.) : adaptent le droit romain. **Bartole de Sassoferrato** (`1313-1357`) — le plus influent.

**Droit canonique** : **Décret de Gratien** (~`1140`). Corpus juris canonici (reconnu en `1582`).

**Ius commune** : droit commun européen (droit romain + canonique + doctrine).

**Distinction française** : pays de **droit écrit** (Sud, romain) vs pays de **coutumes** (Nord).'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 4 - LES COUTUMES DE L''ANCIEN RÉGIME
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les coutumes de l''Ancien Régime', 'Chapitre 4 - Le droit coutumier français',
       'Pays de coutumes vs pays de droit écrit, rédaction des coutumes, Beaumanoir, coutume de Paris.',
       array['Pays de coutumes', 'Pays de droit écrit', 'Beaumanoir', 'Coutume de Paris', 'Coutume de Normandie', 'Ordonnance de Montils-lès-Tours', 'Rédaction des coutumes', 'Pothier'],
       15, 4,
'# Les coutumes de l''Ancien Régime

## Introduction

Pendant tout l''**Ancien Régime**, la France juridique est marquée par une **dualité fondamentale** : le **Nord** vit selon les **coutumes**, le **Sud** selon le **droit écrit** (romain). Cette division, qui s''estompe progressivement, est l''un des principaux obstacles à l''**unification du droit français** réalisée par la Révolution et la codification napoléonienne.

> **Définition** : Les **coutumes** sont des règles juridiques nées de l''usage répété, vécues comme obligatoires par la population. Elles constituent la source principale du droit dans le Nord de la France médiévale et de l''Ancien Régime.

## I. La géographie juridique française

### A. La ligne de partage

#### Le tracé
Une ligne approximative allant de **La Rochelle** à **Genève** sépare :
- **Pays de coutumes** : Nord
- **Pays de droit écrit** : Sud

#### L''origine
- **Sud** : influence romaine plus forte, présence du droit écrit
- **Nord** : domination germanique post-invasions

### B. Pays de droit écrit (Midi)

#### Caractères
- Le **droit romain** est appliqué directement comme droit positif
- Les coutumes locales existent mais sont **secondaires**
- Influence de l''**université** de Toulouse, Montpellier

#### Régions concernées
- Provence
- Languedoc
- Roussillon
- Dauphiné
- Béarn
- Toulousain

### C. Pays de coutumes (Nord)

#### Caractères
- Les **coutumes locales** sont la source principale
- Le **droit romain** sert seulement de **« raison écrite »** subsidiaire
- **Particularisme** géographique extrême

#### Régions concernées
- Île-de-France
- Normandie
- Bretagne
- Champagne
- Bourgogne
- Picardie
- Flandre

### D. La situation chiffrée

#### Au Moyen Âge
**Plus de 300 coutumes locales** différentes.

## II. La nature des coutumes

### A. Les éléments constitutifs

#### Élément matériel
**Pratique répétée** dans le temps. **Longa consuetudo** des juristes.

#### Élément psychologique
**Opinio juris** : sentiment, parmi les utilisateurs, que la pratique est **obligatoire**.

### B. Les caractéristiques

#### Diversité
**Extrême variété** : règles différentes d''un village à l''autre. Selon Voltaire : *« Vous changez de loi en changeant de cheval de poste. »*

#### Oralité initiale
Au début, les coutumes sont **non écrites**, transmises oralement.

#### Conservatisme
Elles évoluent **lentement**.

## III. La connaissance des coutumes

### A. Les premiers ouvrages doctrinaux

#### *Le Très ancien coutumier de Normandie* (XII^e^-XIII^e^ s.)
Premier ouvrage **écrit** présentant une coutume française.

#### *Le Grand coutumier de Normandie* (~`1255`)
Synthèse de la coutume normande.

#### Beaumanoir : *Coutumes de Beauvaisis* (`1283`)

##### L''auteur
**Philippe de Rémi, sire de Beaumanoir** (`1247-1296`) — bailli de Clermont en Beauvaisis.

##### L''œuvre
Considérée comme le **chef-d''œuvre** de la littérature coutumière médiévale.
- **70 chapitres**
- Couvre **tous les aspects** du droit
- Recherche d''une **systématisation** (rare à l''époque)
- Recours subsidiaire au **droit romain** et au **droit canonique**

### B. La rédaction des coutumes

#### L''Ordonnance de Montils-lès-Tours (`1454`)
**Charles VII** ordonne la **rédaction écrite** de toutes les coutumes du royaume.

##### Objectifs
- **Sécurité juridique**
- **Connaissance** par les justiciables
- **Uniformisation** progressive

##### Procédure
- **Commissaires royaux** désignés
- **Assemblée des trois ordres** locale
- **Vote** et **promulgation**
- **Procès-verbal** des coutumes

#### Les principales rédactions

##### Coutume de Paris (`1510`, refondue `1580`)
- **La plus influente**
- Sert de **modèle**
- Souvent appliquée subsidiairement dans les autres pays de coutumes

##### Coutume de Normandie (`1583`)
**Réformée**, l''une des plus complètes.

##### Coutume de Bretagne (`1539`)
Suite à l''union au royaume (`1532`).

##### Autres
Coutume de Bourgogne (`1459`), Champagne, Picardie, Anjou…

### C. L''interprétation des coutumes

#### Les commentateurs
**Doctrine** qui interprète les coutumes :
- **Charles Loyseau** (`1564-1627`) : *Traité des seigneuries*
- **Jean Domat** (`1625-1696`) : *Les lois civiles dans leur ordre naturel*
- **Robert-Joseph Pothier** (`1699-1772`)

## IV. Le mouvement vers l''unification

### A. Le rapprochement des coutumes

#### Influence de la coutume de Paris
La **coutume de Paris** sert de **droit commun coutumier**.

#### L''influence du droit romain
Les coutumes se **romanisent** progressivement (intégration de notions et solutions romaines).

### B. La pensée unificatrice

#### Du Moulin (`1500-1566`)
*Charles Dumoulin* propose l''**unification** des coutumes françaises.

#### Loysel (`1536-1617`)
*« Coutume passe titre. »* — *Institutes coutumières* (`1607`) : premier essai de **synthèse** des coutumes.

#### Maximes de Loysel
Présentation des principes communs aux coutumes sous forme de **maximes** courtes et mémorisables :
- *« Boire, manger, coucher ensemble, c''est mariage, ce me semble. »*
- *« Donner et retenir ne vaut. »*
- *« En fait de meubles, possession vaut titre. »*

### C. La doctrine unificatrice de la fin de l''Ancien Régime

#### Pothier (`1699-1772`)
Magistrat à Orléans, professeur. Ses **Traités** sur diverses matières (vente, obligations, communauté, mariage…) sont une **synthèse** du droit français.

**Son influence sur le Code civil de 1804** sera **considérable**. Portalis le considère comme son **« maître »**.

## V. Vers la disparition

### A. La Révolution
**Décret du 17 juin 1790** : abolition des coutumes.

### B. Le Code civil (`1804`)
**Unification** définitive du droit français.

### C. Une influence persistante
Les solutions coutumières se retrouvent en partie dans le Code civil (régime matrimonial de communauté, par exemple).

## À retenir

**Géographie juridique** : ligne La Rochelle - Genève sépare **pays de droit écrit** (Sud, romain) et **pays de coutumes** (Nord, coutumier).

**Plus de 300 coutumes** locales : extrême particularisme.

**Beaumanoir**, *Coutumes de Beauvaisis* (`1283`) : chef-d''œuvre de la littérature coutumière.

**Ordonnance de Montils-lès-Tours** (`1454`) : **rédaction** des coutumes ordonnée par Charles VII.

**Coutume de Paris** (`1510`, refondue `1580`) : la plus influente.

**Pothier** (`1699-1772`) : doctrine unificatrice, source majeure du Code civil de `1804`.

**Maximes coutumières** : *« En fait de meubles, possession vaut titre »*, *« Donner et retenir ne vaut »*…

**Abolition** : décret du `17 juin 1790`. **Unification** par le Code civil de `1804`.'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 5 - L''ÉTAT ROYAL ET LES ORDONNANCES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''État royal et les ordonnances', 'Chapitre 5 - L''affirmation du pouvoir royal',
       'Émergence de la monarchie absolue, ordonnances royales, parlements, lois fondamentales du royaume.',
       array['Monarchie absolue', 'Ordonnances royales', 'Villers-Cotterêts', 'Colbert', 'Daguesseau', 'Parlements', 'Lois fondamentales', 'Loi salique', 'Bodin'],
       16, 5,
'# L''État royal et les ordonnances

## Introduction

À partir du XIII^e^ siècle, le **roi de France** affirme progressivement sa **suprématie** sur les seigneurs féodaux. Cette montée en puissance se traduit par une **législation royale** de plus en plus dense : les **ordonnances**. Parallèlement, l''idéologie de la **monarchie absolue** s''élabore, encadrée toutefois par des **lois fondamentales** intangibles et un contrôle parlementaire.

> **Définition** : L''**ordonnance royale** est un acte législatif émanant du roi, par lequel il édicte des règles générales applicables à tout ou partie du royaume. Source majeure du droit de l''Ancien Régime.

## I. La construction de la monarchie

### A. Les Capétiens

#### Hugues Capet (`987`)
Élu roi de France. Début de la dynastie capétienne.

#### Croissance progressive du domaine royal
Les premiers Capétiens ne contrôlent que l''**Île-de-France**. Leur autorité s''étend progressivement.

#### Philippe Auguste (`1180-1223`)
- **Centralisation** administrative
- Création des **baillis** (Nord) et **sénéchaux** (Sud)
- **Victoire de Bouvines** (`1214`)

#### Saint Louis (`1226-1270`)
- **Réforme** de la justice
- **Ordonnances** réglementant la procédure
- **Présidé** lui-même les jugements

### B. L''affirmation de la souveraineté

#### Le pouvoir royal
**Le roi est source** :
- De **justice** : justice royale
- De **législation** : ordonnances
- De **finances** : aides et impôts

#### Le **rex superiorem non recognoscens**
Le roi de France ne reconnaît **personne au-dessus de lui** : ni l''empereur, ni le pape (en temporel).

### C. La théorie de l''absolutisme

#### Jean Bodin
*Les Six Livres de la République* (`1576`) : théorisation de l''absolutisme.

#### Louis XIV (`1643-1715`)
- Apogée de l''absolutisme
- *« L''État, c''est moi »* (attribué)
- *« Une foi, un roi, une loi »*

#### Bossuet
*Politique tirée des propres paroles de l''Écriture sainte* (`1709`, posthume). Théorise le **droit divin** des rois.

## II. Les ordonnances royales

### A. Définition et caractères

#### Définition
**Acte législatif** du roi, émanant directement de sa volonté souveraine.

#### Caractères
- **Généralité** : s''applique à un ensemble de personnes
- **Permanence** : a vocation à durer
- **Souveraineté** : émane du roi seul

### B. Les grandes ordonnances

#### Ordonnance de Villers-Cotterêts (`août 1539`)
**François I^er^**. Innovations majeures :
- **Article 110** : *« nous voulons doresenavant que tous arrests, ensemble toutes autres procedures […] soient prononcez, enregistrez et delivrez aux parties en langage maternel francois et non autrement »*
- **Français** obligatoire dans les actes officiels (remplace le latin)
- **Tenue des registres** d''état civil par les curés (baptême, mariage, sépulture)
- **Premier acte d''état civil** moderne

#### Ordonnance d''Orléans (`1561`)
**Charles IX**. Mesures contre les abus de l''administration de la justice.

#### Ordonnances de **Colbert** (`Louis XIV`)
Réforme massive de la législation :
- **Ordonnance civile** (`1667`) : procédure civile
- **Ordonnance criminelle** (`1670`) : procédure pénale
- **Ordonnance du commerce** (`1673`) : droit commercial
- **Ordonnance sur la marine** (`1681`) : commerce maritime
- **Code noir** (`1685`) : statut des esclaves dans les colonies — texte qui restera dans l''histoire pour sa cruauté

#### Ordonnances de **Daguesseau** (`Louis XV`)
**Henri-François d''Aguesseau** (`1668-1751`), chancelier de France. Préparation à la codification :
- **Ordonnance sur les donations** (`1731`)
- **Ordonnance sur les testaments** (`1735`)
- **Ordonnance sur les substitutions fideicommissaires** (`1747`)

## III. Les parlements

### A. Définition et origine

#### Origines
À l''origine, le **Parlement** est une **session de la Curia regis** (Conseil du roi). Au XIII^e^ siècle, il devient une **institution permanente**.

#### Distinction avec le Parlement actuel
Le Parlement d''Ancien Régime est une **cour de justice**, non un organe législatif.

### B. Les parlements

#### Le Parlement de Paris
**Le plus important**. Compétence sur la moitié nord du royaume.

#### Les autres parlements
- **Toulouse** (`1443`)
- **Grenoble** (`1453`)
- **Bordeaux** (`1462`)
- **Dijon** (`1477`)
- **Rouen** (`1499`)
- **Aix** (`1501`)
- **Rennes** (`1554`)

### C. Compétences

#### Compétence juridictionnelle
- **Cours souveraines** (jugement en dernier ressort)
- **Appel** des juridictions inférieures
- **Compétence directe** pour certains litiges (les *cas royaux*)

#### Compétences administratives et politiques

##### L''enregistrement des édits
**Les édits et ordonnances royaux** doivent être **enregistrés** par les parlements pour être applicables.

##### Le droit de **remontrances**
Si le parlement estime un édit **contraire** :
- Aux **lois fondamentales** du royaume
- Aux **intérêts** du royaume
- Aux **anciennes coutumes**

Il peut formuler des **remontrances** au roi, qui peuvent être **itératives** (renouvelées) et suspensives de l''enregistrement.

##### Les **lits de justice**
Cérémonie où le roi se rend en personne au parlement pour **imposer** l''enregistrement.

### D. Le conflit roi/parlement

#### Tensions récurrentes
Au XVIII^e^ siècle, les parlements deviennent des **opposants** à la monarchie absolue.

#### La Fronde parlementaire (`1648-1653`)
Première grande crise.

#### La réforme **Maupeou** (`1771`)
Tentative de **suppression** des parlements. **Rétablis** sous Louis XVI en `1774`.

### E. La nature de la noblesse parlementaire

#### La **noblesse de robe**
Les magistrats des parlements forment une **noblesse particulière**, par opposition à la noblesse **d''épée** (militaire).

#### La vénalité
Les **offices** (charges) sont **achetables** et **transmissibles** (depuis Henri IV : la **paulette**, `1604`).

## IV. Les lois fondamentales du royaume

### A. Définition
Règles **intangibles** qui s''imposent au roi lui-même, encadrant son pouvoir.

### B. Les principales lois fondamentales

#### La loi salique
**Exclut** les femmes de la succession à la couronne. Invoquée notamment lors de la **succession** de `1316` (Jean I^er^ posthume) et `1328` (avènement de Philippe VI au détriment d''Édouard III d''Angleterre — origine de la **guerre de Cent Ans**).

#### L''inaliénabilité du domaine royal
Le roi **ne peut aliéner** les terres de la couronne. Posée par l''**Édit de Moulins** (`1566`).

#### La catholicité du roi
Le roi de France doit être **catholique** (résultat des Guerres de religion).

#### La règle de **continuité** monarchique
*« Le roi est mort, vive le roi ! »* : pas d''interrègne, le successeur prend immédiatement la couronne.

### C. Une « Constitution » avant la lettre ?
Certains auteurs parlent de **« Constitution coutumière »** de l''Ancien Régime.

## À retenir

**Construction de l''État royal** : depuis Hugues Capet (`987`), montée en puissance jusqu''à Louis XIV (apogée de l''absolutisme).

**Théorie de l''absolutisme** : **Jean Bodin**, *Les Six Livres de la République* (`1576`).

**Grandes ordonnances** :
- **Villers-Cotterêts** (`1539`, François I^er^) : français obligatoire, état civil
- **Ordonnances de Colbert** (`1667-1685`) : codifications thématiques
- **Ordonnances de Daguesseau** (`1731-1747`) : préparation de la codification

**Parlements** : cours souveraines. Compétences : justice + enregistrement des édits + remontrances + lits de justice. **Opposants** récurrents à la monarchie au XVIII^e^ s.

**Lois fondamentales** : loi salique, inaliénabilité du domaine, catholicité du roi, continuité.

**Noblesse de robe** + **vénalité des offices** (paulette, `1604`).'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 6 - LES LUMIÈRES ET LE DROIT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les Lumières et la pensée juridique', 'Chapitre 6 - Les Lumières (XVIII^e^ s.)',
       'Critique de l''Ancien Régime, droits naturels, contrat social, idées de Montesquieu, Rousseau, Voltaire, Beccaria.',
       array['Lumières', 'Droit naturel', 'Contrat social', 'Montesquieu', 'Rousseau', 'Voltaire', 'Beccaria', 'Diderot', 'Encyclopédie', 'Séparation des pouvoirs'],
       17, 6,
'# Les Lumières et la pensée juridique

## Introduction

Le **siècle des Lumières** (XVIII^e^ siècle) constitue un **moment intellectuel majeur** de l''histoire occidentale. Les **philosophes** des Lumières remettent radicalement en cause l''ordre établi : la **monarchie absolue**, les **privilèges**, les **inégalités**, la **religion d''État**. Leurs idées préparent et inspirent la **Révolution française** et la **Déclaration des droits de l''homme et du citoyen** de `1789`.

## I. Le mouvement des Lumières

### A. Définition

#### Le mot
**« Lumières »** désigne l''idée que la **raison humaine** doit éclairer les ténèbres de l''ignorance et de la superstition.

#### Une devise (Kant)
> *« Sapere aude ! »* (*« Aie le courage de te servir de ton propre entendement ! »*)
>
> — Kant, *Qu''est-ce que les Lumières ?* (`1784`)

### B. Caractéristiques

#### Foi en la raison
La **raison** est l''**outil** privilégié de la connaissance et du progrès.

#### Optimisme historique
**Croyance** dans le **progrès** indéfini de l''humanité.

#### Universalisme
Les **droits** sont **universels**, valables pour tous les hommes.

#### Critique des autorités traditionnelles
- **Religion** (cléricalisme, dogmes)
- **Pouvoir royal** absolu
- **Privilèges** héréditaires
- **Inégalités**

### C. La diffusion

#### Les salons
Lieux de **discussion** entre philosophes et aristocrates éclairés.

#### Les cafés
Espaces publics de débat.

#### Les loges maçonniques
Diffusion des idées éclairées.

#### Les journaux et brochures
Multiplication des **gazettes**, **pamphlets**, **libelles**.

#### *L''Encyclopédie* (`1751-1772`)
Œuvre monumentale dirigée par **Diderot** et **D''Alembert**. **17 volumes** de textes + **11 volumes** de planches.

## II. Les grands penseurs et leurs idées juridiques

### A. Montesquieu (`1689-1755`)

#### Œuvre principale
*De l''Esprit des lois* (`1748`). Voir aussi *Lettres persanes* (`1721`).

#### Méthode
**Comparative** : étudie les **lois** dans leur contexte (géographie, climat, mœurs).

#### La théorie des trois pouvoirs
> *« Pour qu''on ne puisse abuser du pouvoir, il faut que par la disposition des choses, le pouvoir arrête le pouvoir. »*

- **Législatif**
- **Exécutif**
- **Judiciaire**

#### La typologie des gouvernements
- **République** (vertu)
- **Monarchie** (honneur)
- **Despotisme** (crainte)

#### L''influence
**Considérable** sur la Constitution américaine (`1787`), la DDHC (`1789`), et le constitutionnalisme moderne.

### B. Rousseau (`1712-1778`)

#### Œuvres principales
- *Discours sur l''origine et les fondements de l''inégalité parmi les hommes* (`1755`)
- *Du Contrat social* (`1762`)
- *Émile, ou De l''éducation* (`1762`)

#### Le contrat social
> *« L''homme est né libre, et partout il est dans les fers. »*

#### Les idées centrales
- **État de nature** : liberté originelle
- **Société** : sortie de l''état de nature par un **contrat**
- **Volonté générale** : expression du peuple souverain
- **Souveraineté populaire**
- **Démocratie directe** comme idéal

### C. Voltaire (`1694-1778`)

#### Combat principal
**Tolérance religieuse** et lutte contre le **fanatisme**.

#### Affaires célèbres
- **Affaire Calas** (`1762-1765`) : protestant accusé à tort de meurtre, supplicié. Voltaire obtient sa **réhabilitation posthume**.
- **Affaire Sirven** (`1764-1772`)
- **Affaire La Barre** (`1766`) : jeune noble torturé pour avoir omis de saluer une procession

#### Œuvres juridiques
- *Traité sur la tolérance* (`1763`)
- *Dictionnaire philosophique* (`1764`)
- *Commentaire sur le livre Des délits et des peines* (`1766`)

### D. Beccaria (`1738-1794`)

#### Œuvre fondatrice
*Dei delitti e delle pene* (*Des délits et des peines*, `1764`).

#### Les principes
- **Légalité des délits et des peines** : *nullum crimen, nulla poena sine lege*
- **Égalité** devant la loi pénale
- **Proportionnalité** des peines
- **Publicité** des poursuites
- **Abolition** de la **torture judiciaire**
- **Abolition** (ou très grande limitation) de la **peine de mort**

#### Influence
**Considérable** sur la procédure pénale moderne. Inspire la DDHC, le Code pénal français de `1791`, puis celui de `1810`.

### E. Diderot (`1713-1784`)

#### Activités
- Direction de l''*Encyclopédie*
- *Le Neveu de Rameau*
- *Jacques le fataliste*

### F. Condorcet (`1743-1794`)

#### Œuvre
*Esquisse d''un tableau historique des progrès de l''esprit humain* (`1795`, posthume).

#### Idées
- **Progrès** comme loi de l''histoire
- **Instruction publique**
- **Droits politiques** des femmes (très en avance)
- **Abolition** de l''esclavage

## III. Les principales idées juridiques

### A. Le droit naturel

#### Définition
Idée d''un droit **supérieur**, fondé sur la **nature humaine** et la **raison**, antérieur à toute loi positive.

#### Sources
- **École moderne du droit naturel** : Grotius, Pufendorf, Locke
- **Pensée scolastique** revisitée

#### Conséquences
- **Limites** au pouvoir politique
- **Droits inaliénables** (vie, liberté, propriété)
- Critique des **lois injustes**

### B. Le contrat social

#### Idée centrale
La société repose sur un **accord** (réel ou fictif) entre les membres.

#### Variantes
- **Hobbes** : contrat de soumission (Léviathan)
- **Locke** : contrat de gouvernement avec droits réservés
- **Rousseau** : pacte d''association entre tous

### C. La souveraineté populaire

#### Origine
**Rousseau** principalement.

### D. La séparation des pouvoirs

#### Origine
**Locke** puis **Montesquieu**.

### E. Les droits naturels imprescriptibles

#### DDHC `1789`, article 2
> *« Le but de toute association politique est la conservation des droits naturels et imprescriptibles de l''Homme. Ces droits sont la **liberté**, la **propriété**, la **sûreté**, et la **résistance à l''oppression**. »*

### F. L''égalité

#### Égalité civile
**Tous les hommes** sont égaux **en droits**, quelle que soit leur naissance.

### G. La codification

#### Idée
**Rassembler** le droit dans des **codes** clairs et accessibles.

#### Influence
**Préparation** intellectuelle de la codification napoléonienne.

## IV. La diffusion des idées en France

### A. La critique des institutions

#### Le réquisitoire des Lumières
- **Justice** : trop sévère, inégale, vénale
- **Fiscalité** : injuste (privilèges)
- **Société** : ordres et inégalités
- **Religion d''État**

### B. Les cahiers de doléances de `1789`

#### Préparation des États généraux
Compilation des **plaintes** et **demandes** des trois ordres.

#### Demandes communes
- **Suppression** des privilèges
- **Unification** du droit
- **Réforme** judiciaire
- **Constitution** écrite

### C. L''influence pratique

#### Sur la DDHC
Les idées des Lumières (droits naturels, égalité, séparation des pouvoirs) sont directement reprises dans la **DDHC du 26 août 1789**.

#### Sur les Constitutions révolutionnaires
- `1791`, `1793`, `1795`

#### Sur le Code civil
Plan tripartite, **égalité** civile, **liberté** contractuelle, **propriété** comme droit fondamental.

## V. Limites des Lumières

### A. Le statut des femmes
**Ambivalence** : Olympe de Gouges (*Déclaration des droits de la femme et de la citoyenne*, `1791`) reste isolée.

### B. L''esclavage
**Condamné en théorie** mais maintenu en pratique aux colonies (abolition seulement en `1794`, rétablie en `1802`, à nouveau aboli en `1848`).

### C. Le suffrage
Beaucoup de penseurs (même Rousseau) admettent un **suffrage limité** ou **censitaire**.

## À retenir

**Lumières** : mouvement intellectuel du XVIII^e^ siècle. Foi en la **raison**, **universalisme**, **critique** des autorités.

**Grands penseurs juridiques** :
- **Montesquieu** : *De l''Esprit des lois* (`1748`) — séparation des pouvoirs
- **Rousseau** : *Du Contrat social* (`1762`) — souveraineté populaire
- **Voltaire** : tolérance, lutte contre l''arbitraire judiciaire
- **Beccaria** : *Des délits et des peines* (`1764`) — réforme pénale
- **Diderot et D''Alembert** : *Encyclopédie* (`1751-1772`)

**Principes juridiques** : droit naturel, contrat social, séparation des pouvoirs, droits naturels imprescriptibles, égalité civile, liberté individuelle.

**Influence pratique** : DDHC (`1789`), Constitutions révolutionnaires, Code civil (`1804`).

**Limites** : femmes, esclavage, suffrage limité.'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 7 - LA RÉVOLUTION FRANÇAISE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Révolution française et le droit', 'Chapitre 7 - La rupture révolutionnaire',
       'Abolition des privilèges, DDHC, Constitutions, abolition des coutumes, transformation du droit civil.',
       array['Révolution française', 'Nuit du 4 août 1789', 'DDHC', 'Abolition des privilèges', 'Cambacérès', 'Mariage civil', 'Divorce', 'Égalité successorale'],
       17, 7,
'# La Révolution française et le droit

## Introduction

La **Révolution française** (`1789-1799`) est l''un des plus grands **bouleversements juridiques** de l''histoire occidentale. En quelques années, elle abolit les **institutions de l''Ancien Régime**, proclame des **droits universels**, transforme profondément le **droit civil** et tente plusieurs **codifications**. Bien qu''ayant subi des reculs, elle laisse un **héritage durable**, repris et consolidé par le **Code civil de 1804**.

## I. Les grandes ruptures de `1789`

### A. La convocation des États généraux

#### Le contexte
- **Crise financière** de l''État
- **Réformes** bloquées par les parlements
- **Cahiers de doléances** rédigés dans tout le royaume

#### Ouverture
**5 mai 1789** : ouverture des **États généraux** à Versailles.

### B. Le Serment du Jeu de Paume

#### `20 juin 1789`
Les députés du **Tiers État**, réunis dans la **salle du Jeu de Paume**, jurent de **« ne jamais se séparer »** jusqu''à l''adoption d''une **Constitution** pour la France.

#### Conséquence
Naissance de l''**Assemblée nationale constituante** (`9 juillet 1789`).

### C. La prise de la Bastille

#### `14 juillet 1789`
Symbolique du soulèvement populaire parisien. **Symbole** de l''abolition de l''arbitraire royal.

### D. La nuit du `4 août 1789`

#### L''événement
Dans une **séance nocturne** mouvementée, l''Assemblée constituante **abolit** :
- Les **privilèges** féodaux
- La **dîme** ecclésiastique
- La **vénalité** des offices
- Les **privilèges** des provinces et des villes
- Les **distinctions** d''ordre

#### La portée
Fin juridique de la **société d''ordres**. *« La nuit du 4 août, c''est la naissance de la France contemporaine. »*

#### La date officielle
**`11 août 1789`** : décrets formalisant l''abolition.

## II. La Déclaration des droits de l''homme et du citoyen

### A. L''adoption

#### `26 août 1789`
Vote par l''Assemblée constituante.

#### Inspirations
- **DDHC** des États américains
- **Pensée des Lumières**
- **Droit naturel**

### B. Le contenu

#### Articles essentiels

##### Article 1
> *« Les hommes naissent et demeurent libres et égaux en droits. »*

##### Article 2
> *« Le but de toute association politique est la conservation des droits naturels et imprescriptibles de l''Homme. Ces droits sont la liberté, la propriété, la sûreté, et la résistance à l''oppression. »*

##### Article 3
> *« Le principe de toute Souveraineté réside essentiellement dans la Nation. »*

##### Article 4
> *« La liberté consiste à pouvoir faire tout ce qui ne nuit pas à autrui. »*

##### Article 6
> *« La Loi est l''expression de la volonté générale. […] La Loi est la même pour tous. »*

##### Article 8
> *« Nul ne peut être puni qu''en vertu d''une Loi établie et promulguée antérieurement au délit, et légalement appliquée. »*

(Principe de **légalité** des délits et des peines + **non-rétroactivité** pénale.)

##### Article 9
> *« Tout homme étant présumé innocent jusqu''à ce qu''il ait été déclaré coupable… »*

##### Article 16
> *« Toute société dans laquelle la garantie des droits n''est pas assurée, ni la séparation des pouvoirs déterminée, n''a point de Constitution. »*

##### Article 17
> *« La propriété étant un droit inviolable et sacré, nul ne peut en être privé… »*

### C. La portée

#### Postérité
La DDHC est aujourd''hui intégrée au **bloc de constitutionnalité** français (depuis la décision *Liberté d''association* du Conseil constitutionnel, `1971`).

## III. La transformation du droit civil

### A. La laïcisation de l''état civil

#### Loi du `20 septembre 1792`
**Transfert** de l''état civil des curés aux **officiers municipaux**.

#### Naissance, mariage, décès
Désormais enregistrés par les **mairies**.

### B. La sécularisation et la liberté du mariage

#### Le mariage civil
**Loi du 20 septembre 1792**. Le mariage devient un **contrat civil**, distinct du sacrement religieux.

#### Le divorce
**Loi du 20 septembre 1792**. Le divorce est introduit pour la première fois en France :
- **Consentement mutuel**
- **Incompatibilité d''humeur**
- **Faute** (adultère, sévices…)

(Le Code civil de `1804` maintiendra le divorce, qui sera **aboli** par la Restauration en `1816`, puis **rétabli** par la loi Naquet en `1884`.)

### C. La famille révolutionnaire

#### L''autorité paternelle limitée
- **Émancipation** des enfants à 21 ans
- **Conseil de famille** institué

#### L''égalité successorale
**Loi du 17 nivôse an II** (`6 janvier 1794`) :
- **Égalité absolue** entre enfants (filles et garçons)
- **Suppression** du droit d''aînesse et du privilège masculin
- **Application rétroactive** aux successions ouvertes depuis `1789`

#### La filiation
- **Reconnaissance** des enfants naturels
- **Égalité** des droits successoraux (controversée)

### D. La propriété

#### Affirmation du droit de propriété
- Article `17 DDHC`
- **Inviolabilité** (sauf nécessité publique légalement constatée et indemnisation)

#### Abolition de la propriété féodale
**Nuit du 4 août** : suppression des **droits seigneuriaux** (banalités, corvées, etc.).

#### La vente des biens nationaux
- **Décret du 2 novembre 1789** : confiscation des biens du clergé
- **Vente** progressive pour **rembourser** la dette publique
- **Transfert** massif de propriété

### E. L''abolition des contraintes corporatives

#### Loi Le Chapelier (`14 juin 1791`)
**Interdiction** des coalitions et corporations. **Liberté du travail**, mais aussi prohibition de l''**organisation ouvrière** (qui sera maintenue jusqu''en `1884`).

## IV. Les Constitutions révolutionnaires

### A. La Constitution du `3 septembre 1791`

#### Caractéristiques
- **Monarchie constitutionnelle**
- **Souveraineté nationale**
- **Suffrage censitaire** (citoyens actifs et passifs)
- **Séparation stricte** des pouvoirs

#### Échec
Fuite à Varennes (`20-21 juin 1791`), prise des Tuileries (`10 août 1792`).

### B. La Constitution du `24 juin 1793` (Montagnarde)

#### Caractères radicaux
- **Souveraineté populaire** (Rousseau)
- **Suffrage universel masculin**
- **Droit à l''insurrection**
- **Droits sociaux** (travail, instruction, secours publics)

#### Non appliquée
Suspendue par la Convention. La **Terreur** s''installe.

### C. La Constitution du `5 fructidor an III` (`22 août 1795`)

#### Le Directoire
- **Suffrage censitaire** rétabli
- **Pouvoir exécutif** : 5 **Directeurs**
- **Pouvoir législatif** : Conseil des Anciens + Conseil des Cinq-Cents

#### Instabilité
Coups d''État. **18 brumaire an VIII** (`9 novembre 1799`) : prise de pouvoir par Bonaparte.

## V. Les tentatives de codification révolutionnaire

### A. Le contexte

#### Demandes des cahiers de doléances
*« Une seule loi pour la France entière »*.

#### L''abolition des coutumes
**Décret du 17 juin 1790**.

### B. Les projets de Cambacérès

**Jean-Jacques-Régis de Cambacérès** présente **trois projets de Code civil** à la Convention :
- **Premier projet** (`9 août 1793`) : très révolutionnaire, repoussé
- **Deuxième projet** (`23 fructidor an II / 9 septembre 1794`) : également repoussé
- **Troisième projet** (`24 prairial an IV / 12 juin 1796`) : plus modéré, repoussé

#### Causes d''échec
- **Contexte politique** tumultueux
- **Manque de temps** pour discuter
- **Désaccords** politiques

### C. La codification reportée

L''idée du Code civil **subsistera**. Cambacérès, devenu **deuxième consul** sous Bonaparte, jouera un rôle clé dans le **Code civil de 1804**.

## VI. La réorganisation de la justice

### A. La loi des `16-24 août 1790`

#### Principes
- **Suppression** des parlements
- **Séparation** des fonctions judiciaires et administratives
- **Élection** des juges
- **Gratuité** de la justice
- **Codification** annoncée

### B. La création de juridictions

#### Tribunaux de district
- **Premier degré**
- Juges élus

#### Tribunal de cassation
- Créé par les lois des `27 novembre - 1^er^ décembre 1790`
- Veille à l''application uniforme de la loi

### C. La justice criminelle

#### Loi du `16 septembre 1791`
**Premier Code pénal révolutionnaire** :
- **Légalité** des délits et des peines
- **Échelle** des peines
- **Jury** populaire (anglo-saxon)
- **Limitation** de la peine de mort

## VII. La fin de la période révolutionnaire

### A. Le 18 brumaire (`9 novembre 1799`)

#### Coup d''État
**Bonaparte** prend le pouvoir.

### B. Le Consulat
Bonaparte, **Premier consul**, va **stabiliser** la société post-révolutionnaire.

### C. La synthèse à venir
Le **Code civil de 1804** sera une **synthèse** entre tradition (coutumes, droit romain) et **innovations révolutionnaires** (égalité civile, propriété, liberté contractuelle).

## À retenir

**Tournants de 1789** :
- États généraux (`5 mai`) → Jeu de Paume (`20 juin`) → Bastille (`14 juillet`)
- **Nuit du 4 août** : abolition des privilèges
- **DDHC** (`26 août`)

**DDHC** : articles clés (1, 2, 3, 4, 6, 8, 9, 16, 17). Bloc de constitutionnalité depuis `1971`.

**Transformations du droit civil** :
- Laïcisation de l''**état civil** (`20 septembre 1792`)
- **Mariage civil** et **divorce** (`20 septembre 1792`)
- **Égalité successorale** (`17 nivôse an II / 6 janvier 1794`)
- **Abolition des biens féodaux**
- **Loi Le Chapelier** (`14 juin 1791`) : liberté du travail

**Constitutions** : `1791` (monarchie const.), `1793` (montagnarde, non appliquée), `1795` (Directoire).

**Projets de Code civil de Cambacérès** (`1793`, `1794`, `1796`) : tous échoués.

**Loi des 16-24 août 1790** : réorganisation de la justice, **séparation** des autorités administratives et judiciaires.

**Héritage** : repris et consolidé par le **Code civil de 1804**.'
from public.subjects where name = 'Introduction historique au droit';

-- =====================================================================
-- FICHE 8 - LE CODE CIVIL DE 1804
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Code civil de 1804', 'Chapitre 8 - La grande œuvre napoléonienne',
       'Élaboration, plan, contenu et rayonnement du Code civil. La codification napoléonienne et son influence mondiale.',
       array['Code civil', 'Code Napoléon', 'Portalis', 'Tronchet', 'Bigot de Préameneu', 'Maleville', 'Cambacérès', 'Codes napoléoniens', 'Discours préliminaire'],
       18, 8,
'# Le Code civil de 1804

## Introduction

Le **Code civil de 1804** est l''un des plus grands monuments juridiques de l''histoire. Œuvre de **Napoléon Bonaparte** et de ses juristes, il **synthétise** le droit romain, les coutumes françaises et les acquis révolutionnaires en un texte clair, accessible et **universellement** influent. Pendant deux siècles, il a structuré le droit français et inspiré des dizaines de codes étrangers.

> **Définition** : Le **Code civil** est l''ensemble des règles applicables aux relations entre personnes privées en matière civile (personnes, famille, biens, obligations, successions).

## I. Le contexte d''élaboration

### A. La nécessité d''un code

#### L''héritage révolutionnaire
- **Abolition** des coutumes (`17 juin 1790`)
- **Demande** des cahiers de doléances : *« une seule loi pour la France entière »*
- **Trois projets** de Cambacérès **échoués**

#### Le besoin de stabilisation
**Bonaparte**, Premier consul, veut **consolider** la société post-révolutionnaire et asseoir son pouvoir.

### B. La commission de rédaction

#### Constitution
**Arrêté consulaire du 24 thermidor an VIII** (`12 août 1800`) : nomination d''une **commission de 4 juristes** :

#### Les membres
- **François-Denis Tronchet** (`1726-1806`) — Président, ancien avocat, ancien défenseur de Louis XVI. Droit coutumier.
- **Félix-Julien-Jean Bigot de Préameneu** (`1747-1825`) — Droit coutumier (Bretagne).
- **Jean-Étienne-Marie Portalis** (`1746-1807`) — Droit écrit (Provence). **Principal artisan** du Code.
- **Jacques de Maleville** (`1741-1824`) — Droit écrit (Périgord).

#### Équilibre
Deux juristes du **Nord** (pays de coutumes) + deux juristes du **Sud** (pays de droit écrit). **Synthèse** voulue.

### C. La préparation

#### Rythme accéléré
**Projet** rédigé en **4 mois** (août-décembre 1800).

#### Méthode
- Travail à partir des **traités** de Pothier (essentiellement)
- Reprise des **coutumes** rédigées
- Intégration des acquis **révolutionnaires**
- Recours au **droit romain**

## II. L''élaboration

### A. La discussion au Conseil d''État

#### Importance
**102 séances** du Conseil d''État.

#### Présidence de Bonaparte
**Bonaparte** préside **57 séances** sur 102. Il participe activement.

#### Citation
Bonaparte sur le Code :
> *« Ma vraie gloire, ce n''est pas d''avoir gagné quarante batailles ; Waterloo effacera le souvenir de tant de victoires. Mais ce que rien n''effacera, ce qui vivra éternellement, c''est mon Code civil. »*

### B. Les difficultés

#### Le rejet initial par le Tribunat
Le **Tribunat**, hostile au projet, en rejette les premiers titres. Bonaparte fait **épurer** le Tribunat (`1802`).

#### L''adoption titre par titre
**36 lois** adoptées entre `1803` et `1804`, chacune correspondant à un titre du Code.

### C. La promulgation

#### Loi du `30 ventôse an XII` (`21 mars 1804`)
**Réunion** des 36 lois en un seul code : le **Code civil des Français**.

#### Renommé en 1807
**Décret du 3 septembre 1807** : le Code prend le nom de **Code Napoléon**.

## III. Le Discours préliminaire de Portalis

### A. Un manifeste de la codification

#### Auteur
**Portalis**, principal rédacteur.

#### Date
Prononcé le `1^er^ pluviôse an IX` (`21 janvier 1801`) devant le Conseil d''État.

### B. Les grandes idées

#### Le rôle modeste du législateur
> *« Les lois ne sont pas de purs actes de puissance ; ce sont des actes de sagesse, de justice et de raison. Le législateur exerce moins une autorité qu''un sacerdoce. »*

#### Le compromis entre tradition et révolution
**Portalis** veut un Code qui ne **rompe pas** avec le passé tout en intégrant les acquis révolutionnaires.

#### Le rôle du juge
> *« Le juge doit suppléer à l''insuffisance du code par les principes généraux du droit, l''équité et l''usage. »*

## IV. Le plan du Code civil

### A. Inspiration de Gaius
Plan **tripartite** :
- **Livre I** : Des personnes
- **Livre II** : Des biens et des différentes modifications de la propriété
- **Livre III** : Des différentes manières dont on acquiert la propriété

#### Avant : un livre préliminaire
- **Titre préliminaire** : De la publication, des effets et de l''application des lois en général (articles 1 à 6).

### B. Le contenu détaillé

#### Livre I : Des personnes (`art. 7 à 515`)
- Jouissance des droits civils
- Actes de l''état civil
- Domicile
- Absents
- Mariage
- Divorce
- Paternité et filiation
- Adoption
- Puissance paternelle
- Minorité, tutelle, émancipation

#### Livre II : Des biens (`art. 516 à 710`)
- Distinction des biens
- Propriété
- Usufruit, usage, habitation
- Servitudes ou services fonciers

#### Livre III : Des manières d''acquérir la propriété (`art. 711 à 2281`)
- Successions
- Donations entre vifs et testaments
- Contrats et obligations conventionnelles en général
- Engagements qui se forment sans convention
- Régimes matrimoniaux
- Vente, échange
- Contrats divers
- Privilèges et hypothèques
- Prescription

### C. Caractères généraux

#### Langage clair
- **Articles courts** (en moyenne, quelques lignes)
- **Vocabulaire** précis mais accessible
- **Style direct**

#### Brièveté
**2 281 articles** seulement.

#### Compromis idéologique
- **Tradition** : autorité du père, propriété privée, indissolubilité tendancielle du mariage
- **Révolution** : égalité civile, liberté contractuelle, abolition des privilèges

## V. Les principales innovations

### A. L''égalité civile

#### Article 8
> *« Tout Français jouira des droits civils. »*

**Égalité** de tous les Français devant le droit civil. Fin des privilèges.

### B. La liberté contractuelle

#### Principe
La **convention** est la **loi des parties** (`art. 1134` ancien, devenu `1103` après la réforme de 2016) :
> *« Les conventions légalement formées tiennent lieu de loi à ceux qui les ont faites. »*

### C. La propriété quasi-sacrée

#### Article 544
> *« La propriété est le droit de jouir et disposer des choses de la manière la plus absolue, pourvu qu''on n''en fasse pas un usage prohibé par les lois ou par les règlements. »*

### D. Le mariage civil
- **Mariage civil** seul reconnu (sécularisation)
- **Indissolubilité tempérée** : divorce maintenu mais restrictivement

### E. L''autorité paternelle (puissance paternelle)
**Forte** : reflet de la **vision patriarcale** de l''époque. Sera **modernisée** progressivement (égalité parents en `1970`, autorité parentale conjointe).

## VI. Le rayonnement du Code civil

### A. En France

#### Une remarquable longévité
- **Toujours en vigueur** après 220 ans
- **Plus de 2 200 articles** maintenus ou modifiés
- **Réformes** continues sans rupture

#### Les grandes réformes du XX^e^ et XXI^e^ siècles
- `1965` : régimes matrimoniaux
- `1970` : autorité parentale
- `1972` : filiation
- `1975` : divorce
- `2002` : autorité parentale (égalité)
- `2013` : mariage pour tous
- **2016** : grande réforme du droit des contrats (ordonnance du `10 février 2016`)

### B. À l''étranger

#### En Europe
- **Belgique**, **Pays-Bas** (par occupation napoléonienne)
- **Luxembourg**, **Italie**
- **Espagne** (Code de `1889`), **Portugal**

#### En Amérique
- **Louisiane** (USA), **Québec**
- **Amérique latine** : Bolívar admire le Code Napoléon. Codes du Chili (`1855`, Bello), de l''Argentine, du Mexique, etc.

#### En Asie
- **Japon** : Code civil de `1898`, fortement inspiré.
- **Égypte**, **Turquie** (initiale).

### C. Le système romano-germanique
Le Code civil est l''**emblème** de la **famille juridique romano-germanique** (par opposition à la *common law* anglo-saxonne).

## VII. Les autres codes napoléoniens

### A. Code de procédure civile (`1806`)
Régit la **procédure** civile.

### B. Code de commerce (`1807`)
Codifie les règles du **commerce** et des **commerçants**.

### C. Code d''instruction criminelle (`1808`)
Procédure pénale (remplacé par le **Code de procédure pénale** en `1958`).

### D. Code pénal (`1810`)
**Infractions** et **peines**. Remplacé par le **Nouveau Code pénal** de `1992` (entré en vigueur en `1994`).

### E. L''ensemble : les Codes napoléoniens
Forment une **œuvre cohérente** restructurant l''ensemble du droit français.

## À retenir

**Code civil de 1804** : œuvre de Napoléon et de **Portalis, Tronchet, Bigot de Préameneu, Maleville**.

**Commission équilibrée** : 2 juristes du Nord (coutumes) + 2 du Sud (droit écrit).

**Discussion au Conseil d''État** : 102 séances, dont 57 présidées par Bonaparte.

**Loi du 21 mars 1804** (`30 ventôse an XII`) : réunion des 36 titres en un Code.

**Discours préliminaire de Portalis** : manifeste de la codification.

**Plan** : titre préliminaire + 3 livres (personnes / biens / acquisition de la propriété).

**Caractères** : 2 281 articles, **brièveté**, **clarté**, **synthèse** tradition-révolution.

**Innovations** : égalité civile, liberté contractuelle, propriété absolue, mariage civil.

**Rayonnement** :
- **Europe** (Belgique, Pays-Bas, Italie, Allemagne, Espagne…)
- **Amérique latine**, **Louisiane**, **Québec**
- **Japon** (`1898`), Égypte

**Longévité** : toujours en vigueur après `220 ans`. Plus de 2 200 articles maintenus ou réformés.

**Codes napoléoniens** : procédure civile (`1806`), commerce (`1807`), instruction criminelle (`1808`), pénal (`1810`).'
from public.subjects where name = 'Introduction historique au droit';
