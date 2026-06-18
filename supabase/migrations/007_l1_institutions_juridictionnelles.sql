-- =====================================================================
-- JurisPrép - Cours complet : Institutions juridictionnelles (L1 S1)
-- 8 fiches de révision approfondies avec code couleur
-- =====================================================================

-- Nettoyage des anciennes fiches superficielles
delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Institutions juridictionnelles');

-- =====================================================================
-- FICHE 1 - NOTION ET PRINCIPES FONDAMENTAUX DE LA JUSTICE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La justice : notion, fonctions et principes fondamentaux', 'Chapitre 1 - Introduction à la justice',
       'Définition de la justice, fonctions, distinctions clés, et présentation des grands principes du service public de la justice.',
       array['Justice', 'Service public', 'Égalité', 'Gratuité', 'Indépendance', 'Impartialité', 'Procès équitable', 'Article 6 CESDH', 'Continuité', 'Hiérarchie'],
       18, 1,
'# La justice : notion, fonctions et principes fondamentaux

## Introduction

La **justice** est une institution aussi ancienne que la société humaine. Dans tout groupe organisé, il existe des mécanismes pour **trancher les conflits** et **sanctionner les violations** des règles. En France, la justice est un **service public** régi par des principes constitutionnels et conventionnels, et organisée en deux grands **ordres juridictionnels** distincts. Comprendre la justice, c''est saisir l''un des trois pouvoirs de l''État, mais aussi un service quotidien pour les citoyens.

> **Définition** : La justice est à la fois une **valeur morale** (rendre à chacun ce qui lui revient), une **institution** (les juridictions étatiques) et une **fonction sociale** (trancher les litiges et sanctionner les comportements illicites).

## I. La notion de justice

### A. Les sens du mot « justice »

#### Justice comme **valeur**
Idéal moral consistant à *« rendre à chacun le sien »* (*suum cuique tribuere*). **Aristote** distingue dans *L''Éthique à Nicomaque* :
- **Justice distributive** : répartition des biens en fonction du mérite
- **Justice commutative** : équivalence dans les échanges
- **Justice corrective** : réparation des dommages

#### Justice comme **fonction**
Activité consistant à **dire le droit** (*juris dictio*) : trancher les conflits par application des règles juridiques.

#### Justice comme **institution**
Ensemble des **organes** chargés de cette fonction : tribunaux, magistrats, auxiliaires de justice.

### B. Les fonctions de la justice

#### Fonction de pacification
La justice substitue la **procédure légale à la vengeance privée**. Le justiciable saisit le juge plutôt que de se faire justice lui-même. Adage : *« Nul ne peut se faire justice à soi-même »*.

#### Fonction normative
En appliquant la loi, le juge **précise son sens** et parfois **comble ses lacunes** (interprétation, principes généraux).

#### Fonction de contrôle
Le juge contrôle :
- La **légalité** des actes (administratifs notamment)
- La **constitutionnalité** des lois (Conseil constitutionnel)
- Le **respect** des droits fondamentaux

#### Fonction sociale
La justice joue un rôle **dans la cohésion sociale** : sanction des comportements transgressifs, reconnaissance des victimes, protection des plus vulnérables.

## II. Les fondements juridiques

### A. Les sources constitutionnelles

#### Article 64 C.
> *« Le Président de la République est garant de l''indépendance de l''autorité judiciaire. »*

#### Article 66 C.
> *« Nul ne peut être arbitrairement détenu. L''autorité judiciaire, gardienne de la liberté individuelle, assure le respect de ce principe dans les conditions prévues par la loi. »*

#### Principes fondamentaux reconnus par les lois de la République (PFRLR)
- **Droits de la défense** (`Cons. const., 2 décembre 1976`)
- **Indépendance de la juridiction administrative** (`Cons. const., 22 juillet 1980`)

### B. Les sources conventionnelles

#### Article 6 CESDH : le procès équitable
> *« Toute personne a droit à ce que sa cause soit entendue équitablement, publiquement et dans un délai raisonnable, par un tribunal indépendant et impartial, établi par la loi… »*

C''est le **texte fondamental** du droit processuel européen. Il garantit :
- **Accès au juge**
- **Tribunal indépendant et impartial**
- **Délai raisonnable**
- **Publicité** des débats
- **Présomption d''innocence** (matière pénale)
- **Droits de la défense**

#### Article 13 CESDH : recours effectif
Toute personne dont les droits sont violés doit avoir droit à un **recours effectif** devant une instance nationale.

### C. Les sources législatives
- **Code de l''organisation judiciaire** (COJ)
- **Code de justice administrative** (CJA)
- **Codes de procédure** (CPC, CPP)

## III. Les principes fondamentaux du service public de la justice

### A. La continuité

#### Principe
La justice fonctionne **sans interruption**. Le service public ne peut être suspendu.

#### Conséquences
- **Permanences** judiciaires (parquet, juge des libertés et de la détention)
- **Droit de grève** des magistrats **limité** (statut spécifique)
- **Cours d''appel** et de cassation toujours opérationnelles

### B. L''égalité

#### Principe
> *« La loi est la même pour tous, soit qu''elle protège, soit qu''elle punisse »* (article 6 DDHC)

Tous les justiciables sont égaux devant la justice :
- **Mêmes règles** applicables
- **Même accès** aux juridictions
- **Mêmes recours** ouverts

#### Garanties
- **Aide juridictionnelle** pour les justiciables modestes (loi du `10 juillet 1991`)
- **Composition** non discriminatoire des juridictions

### C. La gratuité

#### Principe
La justice **étatique est gratuite**. Le justiciable ne paie pas le juge.

#### Limites
- **Frais d''avocat** (sauf aide juridictionnelle)
- **Droits de plaidoirie**
- **Frais d''expertise**
- Anciens **droits de greffe** (supprimés en `1977` puis rétablis pour la procédure d''appel en `2011`, puis supprimés en `2014`)
- **Contribution pour l''aide juridique** de `35 €` (`2011-2014`, supprimée)

### D. L''indépendance

#### Principe
Les **juges doivent être indépendants** des autres pouvoirs (exécutif, législatif) et des parties.

#### Garanties statutaires
- **Inamovibilité** des magistrats du siège (art. `64 C.` et art. 4 ordonnance du `22 décembre 1958`)
- **Recrutement** par l''École nationale de la magistrature (ENM)
- **Pouvoir disciplinaire** confié au **Conseil supérieur de la magistrature** (CSM)

#### Distinction siège / parquet
- **Magistrats du siège** : pleinement indépendants, jugent
- **Magistrats du parquet** : représentent l''État, **soumis au garde des Sceaux** (mais plus pour les instructions individuelles depuis la loi du `25 juillet 2013`)

### E. L''impartialité

#### Définition
Le juge ne doit avoir **aucun préjugé** ni intérêt dans l''affaire.

#### Deux aspects
- **Subjective** : le juge concrètement ne doit pas être partial
- **Objective** : les apparences doivent garantir l''impartialité (*« Justice must not only be done, it must be seen to be done »*)

#### Garanties procédurales
- **Récusation** : possibilité d''écarter un juge suspect
- **Renvoi pour cause de suspicion légitime**
- **Abstention** : le juge se déporte spontanément

### F. La collégialité

#### Principe
Plusieurs juges décident ensemble. Garantit :
- Une **délibération**
- Une **diversité** de points de vue
- Une **modération** des décisions

#### Évolution récente
**Mouvement vers le juge unique** pour les affaires simples (économies, rapidité). Critique : risque pour l''indépendance.

### G. La publicité

#### Principe
Les **audiences** et les **décisions** sont en principe **publiques**.

#### Article 6 § 1 CESDH
> *« Toute personne a droit à ce que sa cause soit entendue […] publiquement […]. Le jugement doit être rendu publiquement. »*

#### Exceptions
- **Huis clos** : protection de la vie privée, des mineurs, ordre public, secret professionnel
- **Chambre du conseil** : certaines matières (divorce, adoption)

### H. La motivation

#### Principe
Les jugements **doivent être motivés**.

#### Fondement
- **Article 455 CPC**
- Article `6 § 1 CESDH` (procès équitable)
- Permet le **contrôle** par les juridictions supérieures

### I. Le double degré de juridiction

#### Principe
Une décision peut être **réexaminée** par une juridiction supérieure.

#### Fondement
- En matière pénale : `art. 2 du Protocole n° 7 CESDH`
- En matière civile : pas absolu, mais quasi-général

#### Limites
- Pas devant la **Cour de cassation** ou le **Conseil d''État** (pourvoi, pas appel)
- Pas pour certaines décisions de moindre importance

## IV. Les distinctions essentielles

### A. Juridictions civiles / juridictions pénales

#### Juridictions civiles
- Litiges entre particuliers
- But : **réparation**, **exécution**, reconnaissance de droits

#### Juridictions pénales
- Infractions et leur sanction
- But : **punir**, **protéger la société**, **dissuader**

### B. Juridictions de droit commun / juridictions spécialisées

#### Droit commun
**Compétence générale** : ce qui n''est pas attribué à une autre juridiction.
- Civil : tribunal judiciaire
- Pénal : tribunal correctionnel

#### Spécialisées
Compétence **attribuée par la loi** pour une matière.
- Conseil de prud''hommes (travail)
- Tribunal de commerce
- Tribunal des affaires de sécurité sociale (ancien, intégré au TJ)

### C. Juridictions du premier degré / d''appel / suprêmes

#### Premier degré
**Première saisine** de l''affaire.

#### Appel
**Réexamen** complet (en fait et en droit) par une juridiction supérieure.

#### Cour suprême (Cassation, Conseil d''État)
**Pourvoi** : contrôle limité au droit, ne juge pas le fait.

### D. Juridictions de fond / juridictions du droit

- **Juge du fond** : juge le fait + le droit (1er degré et appel)
- **Juge du droit** : juge uniquement le droit (Cassation, Conseil d''État)

## À retenir

**Définition** : la justice est valeur, fonction et institution. Elle pacifie, contrôle, dit le droit.

**Sources** :
- Article `64 C.` (Président garant de l''indépendance)
- Article `66 C.` (autorité judiciaire gardienne de la liberté)
- Article `6 CESDH` (procès équitable) — texte fondamental

**Grands principes** :
- **Continuité** (jamais d''interruption)
- **Égalité** (article 6 DDHC)
- **Gratuité** (du juge, pas des frais)
- **Indépendance** (inamovibilité, CSM)
- **Impartialité** (subjective + objective)
- **Collégialité** (en recul)
- **Publicité** (audiences + décisions)
- **Motivation**
- **Double degré** de juridiction

**Distinctions clés** :
- Civil/pénal
- Droit commun/spécialisé
- Fond/droit
- Degrés (1er, appel, cassation)'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 2 - LA DUALITÉ JURIDICTIONNELLE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La dualité des ordres juridictionnels', 'Chapitre 2 - Organisation générale',
       'Pourquoi deux ordres ? Histoire, fondements, et résolution des conflits par le Tribunal des conflits.',
       array['Ordre judiciaire', 'Ordre administratif', 'Loi des 16-24 août 1790', 'Arrêt Blanco', 'Tribunal des conflits', 'Conflit positif', 'Conflit négatif', 'Bloc Cons. const. 1987'],
       16, 2,
'# La dualité des ordres juridictionnels

## Introduction

La France a la particularité d''organiser sa justice en **deux ordres juridictionnels séparés** :
- **L''ordre judiciaire** : litiges privés et infractions pénales
- **L''ordre administratif** : litiges impliquant l''administration

Cette **dualité** n''existe pas dans tous les pays (les pays de *common law* ont un ordre unique). Elle plonge ses racines dans l''histoire révolutionnaire française et soulève des questions complexes de répartition des compétences, arbitrées par une juridiction spéciale : le **Tribunal des conflits**.

## I. Les fondements historiques

### A. La méfiance révolutionnaire envers les Parlements

#### Le contexte de 1790
Sous l''Ancien Régime, les **Parlements** (cours souveraines) étaient des **opposants** récurrents à l''absolutisme royal. Ils enregistraient les édits, faisaient des **remontrances**, et empiétaient souvent sur l''administration.

#### Les révolutionnaires
Convaincus que les juges ne doivent **jamais** s''immiscer dans l''administration, ils adoptent la **loi des `16-24 août 1790`** :

> *« Les fonctions judiciaires sont distinctes et demeureront toujours séparées des fonctions administratives. Les juges ne pourront, à peine de forfaiture, troubler de quelque manière que ce soit les opérations des corps administratifs, ni citer devant eux les administrateurs pour raison de leurs fonctions. »*

#### Le décret du 16 fructidor an III (`1795`)
> *« Défenses itératives sont faites aux tribunaux de connaître des actes d''administration. »*

### B. La théorie du « ministre-juge »

#### Avant 1872
L''**administration se jugeait elle-même** : le ministre statuait sur les recours contre ses propres décisions. Critique : le ministre n''est pas un juge impartial.

#### La loi du `24 mai 1872`
Le **Conseil d''État** obtient le pouvoir de juger directement (justice **déléguée** et non plus **retenue**). C''est la naissance de la véritable juridiction administrative.

### C. La consécration jurisprudentielle : l''arrêt Blanco

#### *Tribunal des conflits, 8 février 1873, Blanco*

##### Les faits
La fille Agnès Blanco est blessée par un wagonnet de la **manufacture des tabacs** de Bordeaux. Le père agit en responsabilité.

##### La question
Quel juge est compétent pour connaître de la responsabilité de l''État ?

##### La solution
> *« La responsabilité, qui peut incomber à l''État pour les dommages causés aux particuliers par le fait des personnes qu''il emploie dans le service public, ne peut être régie par les principes qui sont établis dans le Code civil pour les rapports de particulier à particulier ; […] cette responsabilité […] a ses règles spéciales qui varient suivant les besoins du service et la nécessité de concilier les droits de l''État avec les droits privés. »*

##### La portée
- L''**autonomie** du droit administratif
- La **compétence du juge administratif** pour les litiges relatifs aux services publics
- L''affirmation de **règles spéciales** distinctes du Code civil

L''*arrêt Blanco* est considéré comme la **pierre angulaire** du droit administratif moderne.

## II. La consécration contemporaine

### A. La valeur constitutionnelle de la dualité

#### Décision Conseil de la concurrence
*Cons. const., 23 janvier 1987, Conseil de la concurrence* :

> *« Conformément à la conception française de la séparation des pouvoirs, figure au nombre des principes fondamentaux reconnus par les lois de la République celui selon lequel, à l''exception des matières réservées par nature à l''autorité judiciaire, relève en dernier ressort de la compétence de la juridiction administrative l''annulation ou la réformation des décisions prises, dans l''exercice des prérogatives de puissance publique, par les autorités exerçant le pouvoir exécutif. »*

#### Conséquences
- L''**existence** de la juridiction administrative est **constitutionnellement protégée**
- Le législateur ne peut pas **transférer** ses compétences essentielles au juge judiciaire (sauf matières réservées)

### B. L''indépendance constitutionnellement garantie

*Cons. const., 22 juillet 1980* : l''**indépendance des juridictions administratives** est un PFRLR.

## III. Les critères de répartition des compétences

### A. Le critère organique

#### Présence d''une **personne publique**
Le juge administratif est compétent quand un litige implique l''**État, une collectivité, un établissement public**.

#### Limite
- Une **personne privée** peut être chargée d''une mission de service public (compétence administrative pour ses actes)
- Une **personne publique** peut agir comme un particulier (compétence judiciaire)

### B. Le critère matériel : le service public

#### *TC, 8 février 1873, Blanco*
Le critère du **service public** : si un litige porte sur l''organisation ou le fonctionnement d''un service public, le juge administratif est compétent.

#### Évolution
La théorie a été nuancée. Distinction :
- **Service public administratif** (SPA) : droit administratif
- **Service public industriel et commercial** (SPIC) : droit privé pour ses rapports avec les usagers

*TC, 22 janvier 1921, Société commerciale de l''Ouest africain* (« Bac d''Eloka ») : naissance de la notion de SPIC.

### C. Le critère matériel : les prérogatives de puissance publique

#### Définition
L''administration utilise des **moyens exorbitants** du droit commun :
- Pouvoir d''**expropriation**
- Pouvoir de **police**
- Pouvoir de **décision unilatérale**

#### Conséquence
Quand l''administration agit avec ces prérogatives, le **juge administratif** est compétent.

### D. La gestion privée

Quand l''administration agit comme un **particulier** (achats courants, contrats de droit privé) : compétence **judiciaire**.

### E. Les matières réservées au juge judiciaire

#### Article 66 C.
*« L''autorité judiciaire [est] gardienne de la liberté individuelle. »*

Les **atteintes à la liberté individuelle** relèvent du juge judiciaire :
- Détention provisoire
- Rétention administrative des étrangers
- Hospitalisation d''office

#### L''état des personnes et le droit privé
- État civil
- Nationalité (contestation)
- Propriété privée

## IV. Le Tribunal des conflits

### A. Naissance et rôle

#### Création
**Loi du 24 mai 1872** (article 25). Réorganisé par la loi du `16 février 2015`.

#### Mission
Résoudre les **conflits de compétence** entre juge judiciaire et juge administratif.

### B. Composition

Avant `2015` :
- 8 membres : 4 magistrats Cour de cassation + 4 conseillers d''État
- Présidence : ministre de la Justice (voix prépondérante en cas d''égalité)

Depuis la loi du `16 février 2015` :
- **8 membres** : 4 + 4
- **Pas de présidence ministérielle**, présidence alternée (Cour cass. / CE)
- En cas d''égalité : renvoi à une formation élargie

### C. Les compétences

#### Conflit positif
**Les deux juges se déclarent compétents**. Le préfet élève le conflit par **arrêté de conflit** devant le tribunal judiciaire qui se déclare compétent.

#### Conflit négatif
**Les deux juges se déclarent incompétents**. Une partie saisit alors le Tribunal des conflits pour qu''il désigne le juge compétent.

#### Conflit sur le fond
Quand deux décisions définitives (l''une administrative, l''autre judiciaire) sont **contradictoires** sur le fond.

#### Question préjudicielle
Un juge peut renvoyer au Tribunal des conflits une **question difficile** de répartition des compétences. Innovation `2015`.

### D. Arrêts marquants
- *TC, 8 février 1873, Blanco* : naissance du droit administratif
- *TC, 1er février 1908, Société des Granits porphyroïdes des Vosges* : contrats administratifs
- *TC, 17 décembre 2001, M. et Mme Carrère* : conditions de répartition

## V. Les conséquences pratiques de la dualité

### A. Les avantages
- **Spécialisation** des juges
- **Droit spécifique** adapté à l''administration
- **Protection** des particuliers contre l''arbitraire administratif

### B. Les inconvénients
- **Complexité** pour le justiciable (parfois difficile de savoir quel juge saisir)
- **Délais** doublés en cas d''erreur de saisine
- **Lourdeur** institutionnelle

### C. La simplification
- **Loi du 17 mai 2011** : suppression de la mention de la juridiction de renvoi dans certains cas
- **Loi du 16 février 2015** : modernisation du Tribunal des conflits

## VI. La diversité au sein de chaque ordre

### A. Ordre judiciaire
- **Juridictions civiles** : TJ, cours d''appel, Cour de cassation
- **Juridictions pénales** : tribunal de police, tribunal correctionnel, cour d''assises, cour criminelle
- **Juridictions spécialisées** : conseil de prud''hommes, tribunal de commerce

### B. Ordre administratif
- **Juridictions générales** : TA, CAA, Conseil d''État
- **Juridictions spécialisées** : Cour des comptes, CDBF, CNDA, CCSP…

## À retenir

**Loi des `16-24 août 1790`** : séparation des autorités administratives et judiciaires. Fondement historique.

**Arrêt Blanco** (`TC, 8 février 1873`) : naissance du droit administratif moderne. Compétence du juge administratif pour les services publics.

**Loi du 24 mai 1872** : Conseil d''État obtient la « justice déléguée ». Création du Tribunal des conflits.

**Décision Conseil de la concurrence** (`Cons. const., 23 janvier 1987`) : valeur **constitutionnelle** de la dualité juridictionnelle.

**Critères de compétence administrative** :
- Présence d''une personne publique
- Mission de service public
- Prérogatives de puissance publique

**Matières réservées au judiciaire** :
- Liberté individuelle (art. `66 C.`)
- État des personnes
- Propriété privée

**Tribunal des conflits** : résout conflit positif, négatif, sur le fond, question préjudicielle. Réformé en `2015`.'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 3 - L''ORDRE JUDICIAIRE : JURIDICTIONS DU PREMIER DEGRÉ
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''ordre judiciaire : juridictions civiles du premier degré', 'Chapitre 3 - Juridictions civiles 1er degré',
       'Tribunal judiciaire, juge des contentieux de la protection, tribunal de commerce, conseil de prud''hommes.',
       array['Tribunal judiciaire', 'TJ', 'Chambre de proximité', 'Juge des contentieux de la protection', 'Tribunal de commerce', 'Conseil de prud''hommes', 'Bureau de conciliation', 'Juge des libertés et de la détention'],
       19, 3,
'# L''ordre judiciaire : juridictions civiles du premier degré

## Introduction

Les **juridictions civiles du premier degré** sont la porte d''entrée du justiciable dans l''ordre judiciaire. Elles ont été profondément **réorganisées** par la **loi du 23 mars 2019** de programmation et de réforme pour la justice, qui a notamment fusionné le tribunal de grande instance (TGI) et le tribunal d''instance (TI) en un seul **Tribunal judiciaire** (`TJ`), entré en vigueur le `1er janvier 2020`.

> **Définition** : Les juridictions du premier degré sont celles qui examinent **pour la première fois** un litige. Leurs décisions peuvent en principe être attaquées par voie d''**appel** devant une juridiction supérieure.

## I. Le Tribunal judiciaire (TJ)

### A. Création et organisation

#### Histoire
- Avant `2020` : coexistence du **Tribunal de grande instance** (TGI) et du **Tribunal d''instance** (TI)
- **Loi du 23 mars 2019** : fusion en un seul **Tribunal judiciaire**

#### Implantation
**164 tribunaux judiciaires** en France métropolitaine et d''outre-mer.

#### Organisation interne
- **Chambres civiles**
- **Chambres correctionnelles** (compétence pénale)
- **Chambres de la famille** (JAF)
- **Chambres spécialisées** dans les grandes juridictions
- **Chambre de proximité** (ancien TI)

### B. La compétence du TJ

#### Compétence générale
> *« Le tribunal judiciaire connaît des matières dont la connaissance n''est pas attribuée à une autre juridiction »* (`art. L. 211-3 COJ`)

C''est le **juge de droit commun** civil.

#### Compétences exclusives (par exemple)
- **État des personnes** : nom, nationalité, mariage, divorce, filiation
- **Successions** et libéralités
- **Propriété immobilière**
- **Saisies immobilières**
- **Brevets** et marques
- **Litiges relatifs aux baux commerciaux**
- **Réparation des accidents de la circulation**

#### Compétence selon le montant
- Litiges **> 10 000 €** ou non chiffrables : TJ (formation collégiale ou juge unique)
- Litiges **≤ 10 000 €** : **chambre de proximité** (juge unique, ancien TI)

### C. La composition

#### Formation collégiale
**3 magistrats** : un président + 2 assesseurs.

#### Juge unique
Pour certaines affaires (juge de la mise en état, juge aux affaires familiales, juge des contentieux de la protection, etc.).

#### Magistrats spécialisés
- **JAF** : juge aux affaires familiales (divorce, autorité parentale)
- **JEX** : juge de l''exécution (saisies, expulsions)
- **JCP** : juge des contentieux de la protection
- **JLD** : juge des libertés et de la détention (essentiellement pénal)

### D. La compétence pénale du TJ

Les chambres correctionnelles du TJ ont compétence en matière pénale :
- **Tribunal correctionnel** : délits (jusqu''à 10 ans de prison)
- **Tribunal de police** : contraventions de 5^e^ classe (depuis `2020`, anciens TPI)

## II. Le juge des contentieux de la protection (JCP)

### A. Création
**Loi du 23 mars 2019**. Remplace le juge d''instance et le juge des tutelles.

### B. Compétences
- **Surendettement** des particuliers
- **Mesures de protection** des majeurs (tutelle, curatelle, sauvegarde de justice)
- **Litiges relatifs aux baux d''habitation** (résiliation, expulsion)
- **Crédit à la consommation**

### C. Statut
**Juge spécialisé** au sein du TJ.

## III. Le tribunal de commerce

### A. Une juridiction consulaire

#### Particularité
**Composé de juges non professionnels** : les **juges consulaires**.

#### Recrutement
- **Élus** par leurs pairs (chambres de commerce, électeurs commerçants)
- Mandat de `4 ans`, renouvelable

#### Profil
**Commerçants** en activité ou retraités, dirigeants d''entreprises. Bénévoles.

### B. Histoire
**Création** par édit royal de `1563` (Charles IX). Plus ancienne juridiction consulaire d''Europe.

### C. Composition et organisation

#### Formation
**3 juges consulaires** : un président + 2 assesseurs.

#### Implantation
**`134 tribunaux de commerce`** en France.

### D. Compétences

#### Compétence ratione personae
- Litiges entre **commerçants**
- Litiges entre **sociétés commerciales**

#### Compétence ratione materiae
- **Actes de commerce** (vente commerciale, transport, opérations bancaires…)
- **Effets de commerce** (lettre de change, billet à ordre)

#### Compétence exclusive
- **Procédures collectives** :
  - Sauvegarde
  - Redressement judiciaire
  - Liquidation judiciaire

### E. Critique et réformes

#### Critiques
- **Risque de partialité** (juges issus du même milieu)
- **Manque de formation juridique** des juges consulaires
- Bénévolat → disponibilité limitée

#### Réformes
- **Formation obligatoire** depuis `2018`
- **Tribunaux de commerce spécialisés** pour les grandes affaires
- Débat sur une **éventuelle échevinage** (juge professionnel + juges consulaires)

## IV. Le conseil de prud''hommes (CPH)

### A. Spécificité

#### Juridiction paritaire
**Composé à parité de salariés et d''employeurs élus**.

#### Pas de juge professionnel
Sauf en cas d''**égalité des voix** : recours au **juge départiteur** (magistrat du TJ).

### B. Histoire
- **Création** : loi du `18 mars 1806` (Lyon, pour les conflits dans la soierie)
- Élargissement progressif des compétences

### C. Composition et organisation

#### Formation
- **Bureau de conciliation et d''orientation** : 2 conseillers (1 salarié + 1 employeur)
- **Bureau de jugement** : 4 conseillers (2 salariés + 2 employeurs)
- **Référé** : formation collégiale rapide

#### Sections
- **Encadrement**
- **Industrie**
- **Commerce et services commerciaux**
- **Agriculture**
- **Activités diverses**

### D. Élection des conseillers

#### Avant `2017`
Élection directe par les salariés et employeurs.

#### Depuis `2017`
**Désignation** par les organisations syndicales (suite à la loi du `15 octobre 2014`). Mandat de `4 ans`.

### E. Compétences

#### Litiges individuels du travail
- **Conflits salariés/employeurs** liés au contrat de travail
- Salaires, primes, congés payés
- **Licenciement** : rupture, indemnités, motif réel et sérieux
- **Discrimination**, harcèlement
- Rupture conventionnelle individuelle

#### Exclusion
- **Conflits collectifs** (TJ)
- **Sécurité sociale** (pôle social du TJ)
- **Élections professionnelles**

### F. La procédure

#### Phase de conciliation
**Obligatoire**. Tentative d''accord entre les parties devant le bureau de conciliation.

#### Phase de jugement
Si la conciliation échoue, jugement par le bureau de jugement.

#### Le référé prud''homal
**Procédure d''urgence** pour ordonner des mesures conservatoires.

### G. Critiques
- **Lenteur** : 14 mois en moyenne pour une décision
- **Forte taux d''appel** (~60%)
- **Forte taux d''infirmation** en appel

## V. Le pôle social du tribunal judiciaire

### A. Création
**Loi du 18 novembre 2016** de modernisation de la justice du XXI^e^ siècle. Intégration au TJ depuis le `1er janvier 2019`.

### B. Compétences
Anciennement **TASS** (tribunal des affaires de sécurité sociale) et **TCI** (tribunal du contentieux de l''incapacité) :
- Affiliation, cotisations
- Prestations (maladie, retraite, famille)
- **Accidents du travail** et maladies professionnelles
- Incapacité, invalidité

### C. Composition
- **1 magistrat** professionnel
- **2 assesseurs** (1 salarié + 1 employeur)

## VI. Les juridictions pénales du premier degré

### A. Le tribunal de police

#### Création
**Anciens tribunaux de police**, intégrés au TJ depuis `2020`.

#### Compétence
- **Contraventions** de 5^e^ classe
- Et certaines contraventions des 4 premières classes par décret

#### Composition
**Juge unique**.

### B. Le tribunal correctionnel

#### Compétence
- **Délits** (peines jusqu''à `10 ans` de prison)

#### Composition
- **Formation collégiale** : 3 magistrats
- **Juge unique** pour certains délits

### C. La cour d''assises

#### Compétence
- **Crimes** (peines de réclusion criminelle, perpétuité possible)

#### Composition
- **3 magistrats professionnels** + **6 jurés** (1^er^ degré, depuis la loi du `15 août 2011`)

#### Vote
**Majorité de 7 voix sur 9** pour une condamnation.

#### Caractéristiques
- **Décision motivée** depuis la loi du `10 août 2011`
- **Appel possible** depuis `2000` (avant : seul pourvoi en cassation)

### D. La cour criminelle départementale

#### Création
**Loi du 22 décembre 2021** : généralisation à compter du `1er janvier 2023`.

#### Compétence
**Crimes** punis de `15 à 20 ans` de réclusion, commis par des majeurs primodélinquants.

#### Composition
**5 magistrats professionnels** (pas de jurés).

#### Objectif
- Désengorger les cours d''assises
- Réduire les délais

#### Controverse
**Critique** : recul de la justice citoyenne (jurys).

## À retenir

**Réforme majeure du 23 mars 2019** (en vigueur `1er janvier 2020`) :
- Fusion TGI + TI = **Tribunal judiciaire** (TJ)
- Création du **juge des contentieux de la protection** (JCP)
- Pôle social intégré au TJ

**TJ** = juge de droit commun. Compétence générale. Litiges **> 10 000 €** ou non chiffrables, et matières exclusives (famille, succession, immobilier).

**Chambre de proximité** (ancien TI) : litiges **≤ 10 000 €**.

**Tribunal de commerce** : juges consulaires élus, procédures collectives, actes de commerce.

**Conseil de prud''hommes** : juridiction **paritaire** (salariés + employeurs élus), conflits individuels du travail. Phase de conciliation obligatoire.

**Pôle social du TJ** : ancien TASS, contentieux sécurité sociale et AT/MP.

**Juridictions pénales** :
- **Tribunal de police** : contraventions
- **Tribunal correctionnel** : délits
- **Cour d''assises** : crimes (6 jurés + 3 magistrats)
- **Cour criminelle départementale** : crimes 15-20 ans, sans jury (depuis `2023`)'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 4 - L''ORDRE JUDICIAIRE : APPEL ET CASSATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''ordre judiciaire : cour d''appel et Cour de cassation', 'Chapitre 4 - Voies de recours',
       'Le double degré de juridiction par la Cour d''appel ; le rôle régulateur de la Cour de cassation, juge du droit.',
       array['Cour d''appel', 'Double degré', 'Effet dévolutif', 'Cour de cassation', 'Pourvoi', 'Cassation', 'Renvoi', 'Assemblée plénière', 'Chambre mixte', 'Avis de la Cour'],
       17, 4,
'# L''ordre judiciaire : cour d''appel et Cour de cassation

## Introduction

Après le premier degré, l''ordre judiciaire prévoit deux niveaux supérieurs :
- La **Cour d''appel**, qui **réexamine intégralement** l''affaire (en fait et en droit)
- La **Cour de cassation**, qui ne juge **que le droit** et veille à la **bonne application** uniforme de la loi

Ces deux juridictions ont des **rôles très différents** : l''une est un véritable second degré, l''autre est une cour régulatrice.

## I. La Cour d''appel

### A. Le principe du double degré de juridiction

#### Définition
Possibilité pour une partie **mécontente** d''une décision de demander un **nouvel examen** par une juridiction supérieure.

#### Fondements
- **Article 543 CPC** : *« La voie de l''appel […] est ouverte »*
- **Article 2 du protocole n° 7 CESDH** (matière pénale) : *« Toute personne déclarée coupable d''une infraction pénale par un tribunal a le droit de faire examiner par une juridiction supérieure la déclaration de culpabilité ou la condamnation. »*

#### Portée
- Principe **général** en matière civile (sauf petits litiges)
- **Garanti** en matière pénale

### B. L''organisation

#### Implantation
**36 cours d''appel** en France métropolitaine et d''outre-mer.

#### Compétence territoriale
Chaque cour couvre **plusieurs départements**.

#### Composition interne

##### Chambres spécialisées
- **Chambres civiles**
- **Chambre commerciale**
- **Chambre sociale** (appels CPH)
- **Chambre des appels correctionnels**
- **Chambre de l''instruction**
- **Chambre des mineurs**

##### Formation
**Trois magistrats professionnels** : un président + 2 conseillers.

### C. Les pouvoirs de la Cour d''appel

#### Effet dévolutif
> *« L''appel remet la chose jugée en question devant la juridiction d''appel pour qu''il soit à nouveau statué en fait et en droit »* (`art. 561 CPC`)

La Cour d''appel **rejuge** entièrement, **en fait et en droit**.

#### Décisions possibles
- **Confirmer** : la décision du premier degré est maintenue
- **Infirmer** : la décision est annulée et remplacée
- **Réformer** : modification partielle
- **Évoquer** : statuer sur des points non jugés au premier degré

### D. La procédure d''appel

#### Délais
- **Civil** : `1 mois` en principe (art. 538 CPC)
- **Pénal** : `10 jours`

#### Représentation
- **Avocat obligatoire** en matière civile (sauf exceptions)
- **Procédure écrite**

#### La mise en état
**Conseiller de la mise en état** : prépare l''affaire (échange des conclusions, communication des pièces).

### E. La cour d''assises d''appel

#### Composition spéciale
**3 magistrats professionnels + 9 jurés** (vs 6 en premier ressort).

#### Vote
**Majorité de 8 voix sur 12** pour une condamnation.

## II. La Cour de cassation

### A. Nature et rôle

#### Une cour suprême atypique
La Cour de cassation est **au sommet** de l''ordre judiciaire, mais **n''est pas un troisième degré** de juridiction.

#### Mission
- **Veiller à l''application uniforme** de la loi sur tout le territoire
- **Contrôler la conformité au droit** des décisions des juges du fond
- **Unifier** la jurisprudence

#### Citation
> *« La Cour de cassation ne juge pas les affaires, mais les jugements. »*

### B. Origines historiques

#### Création
**Loi des `27 novembre - 1er décembre 1790`** : création du *« Tribunal de cassation »*.

#### Évolution
- `1804` : Cour de cassation
- Stabilité depuis le Premier Empire

### C. La composition

#### Magistrats
**Hauts magistrats** :
- **Premier président** (à la tête de la Cour)
- **Six présidents de chambre**
- **Conseillers**
- **Conseillers référendaires**

#### Le ministère public
Représenté par le **Procureur général** près la Cour de cassation et ses avocats généraux.

### D. Les six chambres

#### Trois chambres civiles
- **1ère chambre civile** : état des personnes, famille, contrats, propriété intellectuelle
- **2e chambre civile** : responsabilité, procédure, sécurité sociale
- **3e chambre civile** : immobilier, construction, urbanisme

#### Une chambre commerciale, financière et économique
Litiges commerciaux, sociétés, procédures collectives.

#### Une chambre sociale
Litiges du travail (appels des CPH).

#### Une chambre criminelle
Toutes les décisions pénales.

### E. Les formations spéciales

#### Chambre mixte (`art. L. 431-5 COJ`)
Réunie quand une affaire **relève plusieurs chambres** ou qu''une affaire soulève une question commune.

**Composition** : Premier président + présidents des chambres concernées + conseillers.

#### Assemblée plénière (`art. L. 431-6 COJ`)
La **formation la plus solennelle**. Composition : **19 magistrats**.

**Cas de saisine** :
- **Résistance** d''une cour d''appel après un premier renvoi (la cour de renvoi doit alors se conformer à la décision)
- **Divergences** de jurisprudence
- **Question de principe**

### F. Le pourvoi en cassation

#### Qui peut former un pourvoi ?
- Une **partie** au procès
- Le **ministère public**
- L''avocat aux Conseils (avocat spécialisé)

#### Délais
- **2 mois** en matière civile (`art. 612 CPC`)
- **5 jours** en matière pénale (à compter de la signification de la décision attaquée)

#### Représentation obligatoire
Par un **avocat aux Conseils** (60 avocats en France), spécialement formé.

### G. Les cas d''ouverture du pourvoi

#### En matière civile
- **Violation de la loi**
- **Excès de pouvoir**
- **Incompétence**
- **Inobservation des formes**
- **Défaut de base légale** (motivation insuffisante)
- **Dénaturation** des pièces
- **Contrariété de jugements**

#### En matière pénale
Similaire : violation de la loi, vice de forme, etc.

### H. Les solutions possibles

#### Le rejet du pourvoi
La décision attaquée est **maintenue**.

#### La cassation
La décision est **annulée** :
- **Cassation totale** : la décision disparaît entièrement
- **Cassation partielle** : seuls certains points sont annulés
- **Cassation sans renvoi** : la Cour peut statuer définitivement (rare)
- **Cassation avec renvoi** (cas général) : l''affaire est renvoyée devant **une autre juridiction de même degré** que celle dont la décision a été cassée

#### Cassation avec renvoi : la procédure
1. La Cour casse la décision
2. **Renvoi** devant une cour d''appel autrement composée (ou une autre)
3. La cour de renvoi rejuge l''affaire **librement** en principe
4. Si elle **résiste** à la solution de la Cour de cassation et est cassée à nouveau, **l''Assemblée plénière** est saisie
5. La cour de **second renvoi doit se conformer** à la décision de l''Assemblée plénière (loi du `3 juillet 1967`)

### I. L''avis sur question de droit nouvelle

#### Création
**Loi du 15 mai 1991**.

#### Procédure (`art. L. 441-1 COJ`)
Un juge du fond peut interroger la Cour sur une question :
- **Nouvelle**
- **De principe**
- Présentant une **difficulté sérieuse**
- Se posant dans de nombreuses affaires

#### Effet
**Avis** rendu, non contraignant juridiquement mais d''**autorité morale considérable**.

#### Statistiques
Quelques dizaines d''avis par an.

## III. Les rapports entre les juges

### A. La hiérarchie

#### Hiérarchie organique
- **Cour de cassation**
- **Cours d''appel**
- **Tribunaux du premier degré**

#### Pas de hiérarchie procédurale stricte
Chaque juge est **indépendant** dans son jugement. La Cour de cassation ne donne pas d''instructions.

### B. L''autorité de la chose jugée

#### Article 1355 C. civ.
> *« L''autorité de la chose jugée n''a lieu qu''à l''égard de ce qui a fait l''objet du jugement. »*

#### Effet
Une fois la décision **définitive**, elle s''impose entre les parties.

### C. L''autorité du précédent

#### Pas de règle de précédent obligatoire (*stare decisis*)
À la différence du droit anglo-saxon, les juges français ne sont pas **strictement liés** par les décisions antérieures de la Cour de cassation.

#### Mais une **autorité morale forte**
En pratique, les juges du fond suivent largement la jurisprudence de la Cour de cassation pour :
- Éviter une cassation
- Garantir la cohérence
- Faciliter la prévisibilité

### D. La création prétorienne

Malgré l''interdiction des **arrêts de règlement** (`art. 5 C. civ.`), la Cour de cassation **crée du droit** :
- Théorie de la **responsabilité du fait des choses** (*Jand''heur*, `Cass. ch. réunies, 13 février 1930`)
- **Abus de droit** (*Clément-Bayard*, `Cass. req., 3 août 1915`)
- **Responsabilité du fait d''autrui** (élargie par *Bertrand*, `Cass. 2e civ., 19 février 1997`)

## IV. La modernisation de la Cour de cassation

### A. Le « tournant » de la motivation enrichie

#### Avant 2019
Décisions très brèves, parfois quelques lignes (style « attendu que… »).

#### Depuis 2019
**Décisions plus motivées**, structurées en sections, expliquant le raisonnement.

#### Objectif
- **Transparence**
- **Pédagogie** pour les justiciables
- Dialogue avec les juridictions européennes

### B. Le filtrage des pourvois

#### Débat
Faut-il **filtrer les pourvois** comme la Cour suprême américaine (*certiorari*) ?

#### Réforme `2023`
Mécanisme limité : possibilité de **non-admission** des pourvois manifestement irrecevables ou non fondés (formation restreinte).

## À retenir

**Cour d''appel** : **36 cours**, second degré de juridiction. **Effet dévolutif** (`art. 561 CPC`) : rejuge en fait et en droit.

**Cour de cassation** : juge du droit, pas du fait. **6 chambres** (3 civiles + commerciale + sociale + criminelle). Formations spéciales : **chambre mixte**, **Assemblée plénière** (19 magistrats).

**Cas d''ouverture du pourvoi** : violation de la loi, excès de pouvoir, incompétence, dénaturation, défaut de base légale.

**Cassation avec renvoi** : la cour de renvoi peut **résister**. Sur second pourvoi avec Assemblée plénière, elle **doit se conformer** (loi du `3 juillet 1967`).

**Pas de règle du précédent strict** (différence avec *common law*), mais autorité morale forte de la jurisprudence de la Cour de cassation.

**Avis sur question nouvelle** (loi du `15 mai 1991`) : interrogation par le juge du fond.

**Modernisation** : motivation enrichie depuis `2019`, filtrage limité depuis `2023`.'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 5 - L''ORDRE ADMINISTRATIF
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''ordre administratif', 'Chapitre 5 - Juridictions administratives',
       'Du tribunal administratif au Conseil d''État : organisation, compétences et recours.',
       array['Tribunal administratif', 'Cour administrative d''appel', 'Conseil d''État', 'REP', 'Plein contentieux', 'Référé-liberté', 'Référé-suspension', 'Arrêt Nicolo', 'Dame Lamotte'],
       19, 5,
'# L''ordre administratif

## Introduction

L''**ordre administratif** est l''ensemble des juridictions chargées de trancher les **litiges impliquant l''administration**. Il s''est constitué progressivement depuis la Révolution, autour du **Conseil d''État** créé en `1799`. Aujourd''hui, il comprend **trois degrés** : tribunaux administratifs, cours administratives d''appel et Conseil d''État, et présente des spécificités notables (recours pour excès de pouvoir, référés…).

> **Définition** : L''ordre administratif est l''ensemble des juridictions chargées de juger les litiges relatifs à l''**activité administrative**, distinct de l''ordre judiciaire. Au sommet : le **Conseil d''État**.

## I. Les origines historiques

### A. La période révolutionnaire

#### La méfiance envers les juges
La **loi des `16-24 août 1790`** interdit aux juges de connaître des actes administratifs.

#### Le décret du `16 fructidor an III` (`1795`)
Réitère cette interdiction.

### B. Le Consulat

#### La Constitution de l''an VIII (`13 décembre 1799`)
Crée le **Conseil d''État** par l''article 52 :

> *« Sous la direction des consuls, un Conseil d''État est chargé de rédiger les projets de lois et les règlements d''administration publique, et de résoudre les difficultés qui s''élèvent en matière administrative. »*

#### Rôle initial
Le Conseil d''État conseille le gouvernement et **propose** des solutions aux litiges, que le ministre signe. C''est le système de la **justice retenue**.

### C. La justice retenue

#### Principe
L''administration **se juge elle-même**. Le ministre signe les décisions sur avis du Conseil d''État.

#### Critique
- **Pas d''indépendance** réelle
- Confusion entre justice et administration

### D. La loi du `24 mai 1872`

#### La justice déléguée
Le Conseil d''État obtient le pouvoir de **juger directement** au nom du peuple français. Fin du système du ministre-juge.

#### Arrêt fondateur : *Cadot* (`CE, 13 décembre 1889`)
Le Conseil d''État se déclare compétent pour connaître **directement** des recours contre les actes administratifs (abandon de la théorie du ministre-juge).

### E. L''arrêt Blanco

#### *TC, 8 février 1873, Blanco*
Voir fiche précédente. Consacre l''**autonomie** du droit administratif et la compétence du juge administratif pour les services publics.

## II. Le tribunal administratif (TA)

### A. Création
**Décret-loi du 30 septembre 1953**. Remplace les conseils de préfecture.

### B. Implantation
**`42 tribunaux administratifs`** en France métropolitaine et d''outre-mer (`2024`).

### C. Compétence

#### Juge de droit commun du contentieux administratif
> *« Les tribunaux administratifs sont, en premier ressort, juges de droit commun du contentieux administratif »* (`art. L. 211-1 CJA`)

#### Compétence territoriale
**Lieu de l''autorité** qui a pris la décision (en principe).

### D. Composition

#### Magistrats
**Magistrats administratifs** professionnels (issus de l''**ENA**/INSP, concours direct, ou intégration).

#### Formation
**3 magistrats** : un président + 2 conseillers.

#### Juge unique
Pour certaines affaires (refus de visa, contentieux de la fonction publique relatif à des décisions individuelles, etc.).

### E. La procédure
- **Procédure essentiellement écrite**
- **Communication électronique** via *Télérecours*
- **Procédure inquisitoire** : le juge dirige l''instruction
- **Rapporteur public** : magistrat qui présente une analyse indépendante avant le délibéré

## III. La cour administrative d''appel (CAA)

### A. Création
**Loi du 31 décembre 1987**.

#### Objectif
**Désengorger** le Conseil d''État, alors juge d''appel de droit commun.

### B. Implantation
**`9 cours administratives d''appel`** : Paris, Versailles, Nantes, Bordeaux, Toulouse, Marseille, Lyon, Douai, Nancy.

### C. Compétence

#### Appel des jugements des TA
Compétence générale d''appel.

#### Exceptions
- **Élections municipales et cantonales** : appel directement au Conseil d''État
- **Référés**

### D. Composition
Formation de **3 magistrats** : un président + 2 conseillers.

## IV. Le Conseil d''État

### A. Une institution unique

#### Double fonction
- **Fonction consultative** : conseille le gouvernement
- **Fonction juridictionnelle** : juge les litiges

#### Composition
- **Vice-président** (chef effectif)
- **6 sections administratives** + **1 section du contentieux**

### B. La fonction consultative

#### Avis obligatoires
- **Projets de loi** : examen par les sections administratives, avis transmis au Gouvernement
- **Projets d''ordonnances**
- **Décrets en Conseil d''État**

#### Avis facultatifs
Le gouvernement peut consulter le CE sur toute question de droit.

#### Les sections administratives
- **Section de l''intérieur**
- **Section des finances**
- **Section des travaux publics**
- **Section sociale**
- **Section de l''administration**
- **Section du rapport et des études**

### C. La fonction juridictionnelle

#### La section du contentieux
**`10 chambres`** spécialisées.

#### Formations de jugement
- **Chambre** simple (formation courante)
- **Chambres réunies** (deux chambres)
- **Section du contentieux**
- **Assemblée du contentieux** (la formation la plus solennelle, 17 membres)

#### Compétences contentieuses

##### Juge de cassation (le plus fréquent)
**Cassation** des arrêts des CAA et des juridictions administratives spécialisées.

##### Juge d''appel (résiduel)
- Élections municipales, cantonales
- Apprécié pour quelques contentieux

##### Juge en premier et dernier ressort
- Recours contre les **décrets**
- Recours contre les **actes réglementaires** des ministres
- Litiges relatifs à la **situation individuelle des fonctionnaires** nommés par décret
- Recours contre les décisions des **AAI** dans certains cas
- **Élections** européennes et régionales

### D. Procédure devant le Conseil d''État
- **Procédure essentiellement écrite**
- **Avocat aux Conseils** obligatoire dans la plupart des cas
- **Rapporteur public** : présente des conclusions (souvent suivies)

## V. Les recours devant le juge administratif

### A. Le recours pour excès de pouvoir (REP)

#### Définition
Recours par lequel un requérant demande au juge l''**annulation d''un acte administratif illégal**.

#### Origine jurisprudentielle
Ouvert sans texte, par jurisprudence.

#### Arrêt *Dame Lamotte* (`CE, Ass., 17 février 1950`)
> *« Le recours pour excès de pouvoir est ouvert même sans texte contre tout acte administratif. »*

C''est un **principe général du droit** (PGD).

#### Caractéristiques
- **Recours d''ordre public**
- **Objectif** : examiner l''acte (non pas trancher un litige subjectif)
- **Effet erga omnes** de l''annulation (sauf décisions individuelles)

#### Les cas d''ouverture

##### Légalité externe
- **Incompétence** de l''auteur de l''acte
- **Vice de forme** : motivation, signature
- **Vice de procédure** : consultation obligatoire, contradictoire

##### Légalité interne
- **Violation de la loi** (acte non conforme à une norme supérieure)
- **Erreur de droit**
- **Erreur de qualification juridique** des faits
- **Détournement de pouvoir** (utilisation de l''acte à des fins autres que celles prévues)

### B. Le recours de plein contentieux

#### Caractéristique
Le juge a des **pouvoirs étendus** :
- **Annuler**
- **Réformer**
- **Substituer** sa décision à celle de l''administration
- **Condamner à indemnisation**
- **Apprécier** la situation au jour de sa décision (et non au jour de l''acte attaqué)

#### Domaines
- **Responsabilité administrative**
- **Contrats administratifs**
- **Contraventions de grande voirie**
- **Contentieux fiscal**

### C. Les autres recours
- **Recours en interprétation** : précise le sens d''un acte obscur
- **Recours en appréciation de légalité** : sur question préjudicielle d''un juge judiciaire
- **Recours en déclaration d''inexistence** d''un acte (rare)

## VI. Les référés administratifs

### A. La grande réforme du `30 juin 2000`

**Loi du 30 juin 2000** sur les procédures d''urgence. Modernisation majeure.

### B. Les principaux référés

#### Le référé-suspension (`art. L. 521-1 CJA`)
**Suspendre** l''exécution d''un acte administratif en cas d''**urgence** + **doute sérieux** sur sa légalité.

#### Le référé-liberté (`art. L. 521-2 CJA`)
**Protéger une liberté fondamentale** menacée par l''administration.
- **Urgence**
- **Atteinte grave et manifestement illégale** à une liberté fondamentale
- Décision en **`48 heures`**

#### Le référé conservatoire (`art. L. 521-3 CJA`)
**Mesures utiles** ou conservatoires sans préjudice du fond.

#### Les référés spéciaux
- **Référé précontractuel** (passation des contrats)
- **Référé contractuel**
- **Référé fiscal**

### C. Les libertés fondamentales protégées par le référé-liberté
Exemples :
- Liberté individuelle, d''aller et venir
- Liberté de manifester
- Liberté d''entreprendre
- Droit au respect de la vie privée
- Droit d''asile
- Droit à un logement décent (depuis `2002`)

## VII. Les juridictions administratives spécialisées

### A. La Cour des comptes

#### Compétence
**Contrôle des comptes** publics. Juge les **gestionnaires publics** (comptables publics, ordonnateurs depuis la réforme de `2022`).

#### Composition
**Magistrats financiers**.

### B. Les chambres régionales et territoriales des comptes
**Contrôle des comptes** des collectivités territoriales.

### C. La Cour nationale du droit d''asile (CNDA)
**Recours** contre les décisions de l''OFPRA en matière d''asile.

### D. La Commission du contentieux du stationnement payant (CCSP)
**Litiges** relatifs aux forfaits post-stationnement (depuis `2018`).

### E. Le Conseil supérieur de la magistrature (en formation juridictionnelle)
**Discipline** des magistrats.

## VIII. Les grands arrêts à retenir

### A. Compétence et procédure
- *Blanco* (`TC, 8 février 1873`) : autonomie du droit administratif
- *Cadot* (`CE, 13 décembre 1889`) : justice déléguée
- *Dame Lamotte* (`CE, Ass., 17 février 1950`) : REP comme PGD

### B. Contrôle de conventionnalité
- *Nicolo* (`CE, Ass., 20 octobre 1989`) : contrôle de conventionnalité des lois

### C. Droits fondamentaux
- *Trompier-Gravier* (`CE, 5 mai 1944`) : droits de la défense
- *Société Le Profit* (`CE, 1922`) : principe d''égalité

## À retenir

**Trois degrés** : `TA` → `CAA` → `Conseil d''État`.

**Tribunal administratif** : juge de **droit commun** du contentieux administratif. 42 TA. Décret de `1953`.

**Cour administrative d''appel** : créée en `1987`. 9 CAA. Désengorgement du CE.

**Conseil d''État** : double fonction (consultative + juridictionnelle). Sommet de l''ordre administratif. *Cadot* (`1889`).

**REP** : recours d''ordre public, ouvert sans texte (*Dame Lamotte*, `1950`). Cas d''ouverture : incompétence, vice de forme, violation de la loi, détournement de pouvoir.

**Plein contentieux** : pouvoirs étendus (réformer, indemniser).

**Référés** (loi du `30 juin 2000`) :
- **Suspension** : urgence + doute sérieux
- **Liberté** : urgence + atteinte grave + délai 48h
- **Conservatoire** : mesures utiles

**Arrêts fondamentaux** : *Blanco* (`1873`), *Cadot* (`1889`), *Dame Lamotte* (`1950`), *Nicolo* (`1989`).'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 6 - LE CONSEIL CONSTITUTIONNEL
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Conseil constitutionnel', 'Chapitre 6 - Justice constitutionnelle',
       'Organisation, compétences, évolution du rôle. Le contrôle a priori et la QPC.',
       array['Conseil constitutionnel', 'Article 56', 'Article 61', 'Article 61-1', 'QPC', 'Bloc de constitutionnalité', 'Décision 71-44 DC', 'Liberté d''association', 'Cour de cassation', 'Conseil d''État'],
       18, 6,
'# Le Conseil constitutionnel

## Introduction

Le **Conseil constitutionnel** est une création **majeure de la V^e^ République**. Conçu initialement comme un simple **régulateur des pouvoirs publics**, il s''est progressivement transformé en **véritable cour constitutionnelle**, comparable à ses homologues européens. Sa **décision *Liberté d''association*** (`16 juillet 1971`) et la création de la **QPC** (`2008`) constituent les deux tournants majeurs de son histoire.

> **Définition** : Le Conseil constitutionnel est l''institution chargée de veiller à la conformité des lois et de certains actes à la **Constitution**, ainsi que de contrôler la régularité des élections nationales.

## I. Origines et création

### A. Une nouveauté de 1958

#### Contexte
La IV^e^ République, marquée par l''**hégémonie parlementaire**, n''avait pas de contrôle de constitutionnalité effectif (seul un comité constitutionnel, peu utilisé).

#### Volonté des constituants de 1958
- **Encadrer le Parlement** dans son domaine (`art. 34`)
- **Protéger le pouvoir réglementaire** autonome (`art. 37`)
- Garantir la **suprématie** de la Constitution

### B. Une institution originale

#### Pas de modèle européen direct
- Différent de la **Cour suprême** américaine (qui n''est pas spécialisée)
- Différent de la **Cour constitutionnelle** allemande (saisine plus large)

#### Caractères français
- **Saisine restreinte** à l''origine
- **Contrôle a priori** dominant
- **Composition mixte** (juristes et politiques)

## II. La composition

### A. Les neuf membres nommés (`art. 56 C.`)

#### Nominations
**9 membres**, mandat de **`9 ans`**, **non renouvelable**.

Nominations :
- **3 par le Président de la République**
- **3 par le Président de l''Assemblée nationale**
- **3 par le Président du Sénat**

#### Renouvellement par tiers
**Tous les 3 ans**, 3 membres sont renouvelés. Garantit la continuité.

#### Profil
**Pas de condition d''âge ni de compétence juridique** (à la différence de l''Allemagne). En pratique, mélange de :
- Anciens magistrats
- Hauts fonctionnaires
- Politiques
- Universitaires

### B. Le président

#### Désignation
**Par le Président de la République**, parmi les membres.

#### Voix prépondérante
En cas d''**égalité** des voix dans une décision (rare).

### C. Les membres de droit

#### Anciens Présidents de la République (`art. 56 al. 2 C.`)
Les anciens Présidents sont **membres de droit à vie**.

#### Pratique
- **Valéry Giscard d''Estaing** : a siégé jusqu''à son décès (`2020`)
- **Nicolas Sarkozy, François Hollande** : ne siègent plus en pratique
- **Jacques Chirac** : a très peu siégé

#### Débat
Souvent critiqué : conflits d''intérêts potentiels, juridicité douteuse. Plusieurs projets de réforme.

### D. Le statut

#### Incompatibilités
- Avec tout **mandat électif**
- Avec une **fonction ministérielle**
- Avec une fonction de **direction** d''un parti politique

#### Indépendance
- **Inamovibilité** (sauf démission ou cas exceptionnels)
- **Serment** prêté à la prise de fonction

#### Anciens présidents
**Lionel Jospin**, **Pierre Mazeaud**, **Jean-Louis Debré**, **Laurent Fabius**…

## III. Les compétences

### A. Le contrôle de constitutionnalité des lois

#### Article 61 C. : contrôle a priori
**Saisine avant promulgation** par :
- **Président de la République**
- **Premier ministre**
- **Présidents de l''Assemblée nationale et du Sénat**
- **60 députés ou 60 sénateurs** (depuis la révision du `29 octobre 1974`)

#### Saisine obligatoire
- **Lois organiques** (`art. 61 al. 1 C.`)
- **Règlements des assemblées parlementaires**

#### Saisine facultative
- **Lois ordinaires**
- **Engagements internationaux** (`art. 54 C.`)

#### Délai
**1 mois** entre la saisine et la décision (ou 8 jours si le gouvernement déclare l''urgence).

#### Effet
- Si **conformité** : promulgation
- Si **non-conformité** : impossibilité de promulguer (la disposition tombe)

### B. La QPC (`art. 61-1 C.`)

#### Création
**Révision constitutionnelle du 23 juillet 2008**. Entrée en vigueur : `1er mars 2010`.

#### Innovation majeure
Pour la première fois en France, un **justiciable** peut faire contrôler une **loi déjà en vigueur**.

#### Procédure

##### Étape 1 : devant la juridiction du fond
Le justiciable soulève une QPC à l''occasion d''un litige. Conditions :
- **Disposition applicable au litige**
- **Pas déjà déclarée conforme** (sauf changement de circonstances)
- **Caractère sérieux**

##### Étape 2 : filtrage par les cours suprêmes
- **Cour de cassation** ou **Conseil d''État** filtre
- Examine les mêmes conditions + **nouveauté** ou **sérieux**
- Transmet ou non au Conseil constitutionnel

##### Étape 3 : décision du Conseil constitutionnel
- **`3 mois`** maximum pour statuer
- Si **inconstitutionnel** : **abrogation** de la disposition (`art. 62 al. 2 C.`)
- Effet **erga omnes** : la disposition disparaît pour tous

#### Modulation des effets
Le Conseil peut **différer** l''abrogation pour permettre au législateur d''intervenir.

#### Bilan
- Plusieurs centaines de QPC par an
- Beaucoup de **non-conformités** prononcées
- Démocratisation du contrôle de constitutionnalité

### C. Le contentieux électoral

#### Élection présidentielle
- **Régularité** de l''élection
- **Contestations**
- **Proclamation** des résultats

#### Élections législatives et sénatoriales
- **Contentieux** des résultats individuels
- **Compétence** depuis la Constitution de `1958` (avant : juge unique pour les législatives)

#### Référendums
- **Contrôle** de la régularité (`art. 60 C.`)
- **Proclamation** des résultats

### D. Le contrôle des engagements internationaux (`art. 54 C.`)

#### Saisine
Avant ratification, par les autorités habilitées.

#### Effet
Si **inconstitutionnel** : la ratification suppose une **révision** préalable de la Constitution.

#### Cas célèbres
- **Maastricht I** (`9 avril 1992`) : nécessité de réviser → titre XV ajouté
- **Constitution européenne** (`19 novembre 2004`) : nécessité de réviser → article 88-1 modifié

### E. Les compétences consultatives

#### Article 16 C. (pouvoirs exceptionnels)
- **Constatation** des conditions de l''article 16
- **Consultation** sur les mesures prises

#### Vacance et empêchement présidentiel (`art. 7 C.`)
- **Constatation** de la vacance ou de l''empêchement

## IV. La construction du bloc de constitutionnalité

### A. La décision fondatrice

#### *Cons. const., 71-44 DC, 16 juillet 1971, Liberté d''association*

#### Le contexte
Le gouvernement voulait soumettre la création d''associations à un contrôle préalable. Saisine par le **Président du Sénat** (Alain Poher).

#### La décision
Le Conseil **censure** la loi en se fondant sur le **Préambule de 1946** (qui se réfère aux *« principes politiques, économiques et sociaux particulièrement nécessaires à notre temps »*) et sur les **PFRLR** dont il dégage la **liberté d''association**.

#### La portée
- **Naissance** d''un véritable contrôle de constitutionnalité matériel
- Intégration du **Préambule de 1946** et de la **DDHC** dans le bloc de constitutionnalité
- Le Conseil **devient** un protecteur des droits fondamentaux

### B. La composition actuelle du bloc

#### Norme suprême
- **Constitution du 4 octobre 1958**

#### Textes référencés par le Préambule de 1958
- **Préambule de 1946** : droits économiques et sociaux
- **DDHC de 1789** : droits civils et politiques
- **Charte de l''environnement de 2004** (intégrée par la révision de `2005`)

#### Principes dégagés par la jurisprudence
- **PFRLR** : voir liste ci-dessous
- **Objectifs de valeur constitutionnelle** (OVC)

### C. Les PFRLR identifiés
1. **Liberté d''association** (`Cons. const., 16 juillet 1971`)
2. **Droits de la défense** (`Cons. const., 2 décembre 1976`)
3. **Liberté individuelle** (`Cons. const., 12 janvier 1977`)
4. **Liberté de l''enseignement** (`Cons. const., 23 novembre 1977`)
5. **Indépendance des juridictions administratives** (`Cons. const., 22 juillet 1980`)
6. **Indépendance des professeurs d''université** (`Cons. const., 20 janvier 1984`)
7. **Compétence du juge judiciaire en matière de propriété immobilière** (`Cons. const., 25 juillet 1989`)
8. **Réserve de compétence législative en matière de droit local d''Alsace-Moselle** (`Cons. const., 5 août 2011`)
9. **Atténuation de la responsabilité pénale des mineurs** (`Cons. const., 29 août 2002`)

### D. Les OVC
- **Sauvegarde de l''ordre public**
- **Recherche des auteurs d''infractions**
- **Droit à un logement décent**
- **Pluralisme dans les médias**
- **Accessibilité et intelligibilité** de la loi

## V. La place du Conseil constitutionnel aujourd''hui

### A. Une véritable cour constitutionnelle

#### Reconnaissance progressive
- **1971** : protection des droits fondamentaux
- **1974** : élargissement de la saisine (60 parlementaires)
- **2008** : création de la QPC
- **2010** : entrée en vigueur

### B. Les limites persistantes

#### Pas de contrôle de conventionnalité
Position constante depuis *IVG* (`Cons. const., 75-54 DC, 15 janvier 1975`) : il n''appartient pas au Conseil constitutionnel de contrôler la conformité d''une loi aux traités.

#### Pas d''autosaisine
Il faut une saisine externe.

#### Délais courts
- 1 mois en a priori
- 3 mois en QPC

### C. Les évolutions souhaitées
- **Indépendance** renforcée (suppression des membres de droit ?)
- **Délais** allongés pour mieux instruire
- **Motivation** plus développée (déjà nette amélioration)
- **Opinions dissidentes** (modèle américain/allemand) — refusé jusqu''ici

## VI. Le dialogue avec les autres juges

### A. Avec la Cour de cassation et le Conseil d''État
- **Filtrage des QPC**
- **Coopération** sur des thématiques communes

### B. Avec la CEDH
- **Convergence** sur les standards de protection
- Le Conseil cite parfois la **CEDH**

### C. Avec la CJUE
- **Question préjudicielle** : le Conseil constitutionnel ne peut pas en poser (sauf dans le cadre QPC, depuis `2013`)
- Réserve de **l''identité constitutionnelle de la France**

## À retenir

**Création** : Constitution du `4 octobre 1958`.

**Composition** : **9 membres** nommés (3+3+3), mandat de **9 ans non renouvelable**, renouvelé par tiers tous les 3 ans. + **Anciens Présidents de la République membres de droit**.

**Compétences principales** :
- **Article 61** : contrôle de constitutionnalité **a priori**
- **Article 61-1** : **QPC** (depuis `2010`)
- **Article 54** : contrôle des engagements internationaux
- **Contentieux électoral** : présidentielles, législatives, sénatoriales, référendums

**Décision *Liberté d''association*** (`71-44 DC, 16 juillet 1971`) : naissance du contrôle matériel + intégration du Préambule de 1946 et de la DDHC.

**Bloc de constitutionnalité** :
- Constitution 1958
- Préambule 1946
- DDHC 1789
- Charte de l''environnement 2004
- PFRLR + OVC

**Saisine de la QPC** :
1. Devant le juge du fond (sérieux, applicable, pas déjà conforme)
2. Filtrage par Cour de cassation/CE
3. Décision du Conseil constitutionnel (3 mois)

**Limites** :
- Pas de contrôle de conventionnalité (*IVG*, `1975`)
- Pas d''autosaisine'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 7 - LES JURIDICTIONS EUROPÉENNES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les juridictions européennes', 'Chapitre 7 - Justice européenne',
       'La Cour européenne des droits de l''homme (Strasbourg) et la Cour de justice de l''Union européenne (Luxembourg).',
       array['CEDH', 'Strasbourg', 'Conseil de l''Europe', 'CJUE', 'Luxembourg', 'Union européenne', 'Recours individuel', 'Question préjudicielle', 'Costa c/ ENEL', 'Van Gend en Loos'],
       16, 7,
'# Les juridictions européennes

## Introduction

Le justiciable français bénéficie aujourd''hui de **deux niveaux supranationaux** de protection :
- La **Cour européenne des droits de l''homme** (Strasbourg), gardienne de la **Convention européenne des droits de l''homme** (`1950`)
- La **Cour de justice de l''Union européenne** (Luxembourg), gardienne du **droit de l''Union européenne**

Ces deux cours, malgré leurs différences, ont profondément transformé le droit français et la condition du justiciable. Ne pas les confondre est essentiel : elles relèvent d''ordres juridiques **distincts**.

## I. Les deux ordres : à ne pas confondre

### A. Le Conseil de l''Europe et la CEDH

#### Le Conseil de l''Europe
- **Organisation internationale** distincte de l''UE
- **`46 États membres`** (avant l''exclusion de la Russie en `2022`)
- Siège à **Strasbourg**
- Vocation : **droits de l''homme**, démocratie, État de droit

#### La Convention européenne des droits de l''homme
- Signée à **Rome** le `4 novembre 1950`
- Entrée en vigueur le `3 septembre 1953`
- **Ratifiée par la France** en `1974`
- Recours individuel ouvert depuis `1981`

#### La Cour européenne des droits de l''homme
- Créée en `1959`
- Siège à **Strasbourg**
- Garde de la CESDH

### B. L''Union européenne et la CJUE

#### L''Union européenne
- **Union économique et politique**
- **`27 États membres`** (après le Brexit, `31 janvier 2020`)
- Origines : **Traité de Rome** (`25 mars 1957`)
- Devenue **UE** depuis le **Traité de Maastricht** (`7 février 1992`)

#### La Cour de justice de l''Union européenne
- Créée en `1952` (CECA)
- Siège à **Luxembourg**
- Garde du droit de l''UE

## II. La Cour européenne des droits de l''homme (CEDH)

### A. Composition

#### Juges
**Un juge par État membre** (`46 juges` aujourd''hui). Élus pour **9 ans non renouvelables** par l''Assemblée parlementaire du Conseil de l''Europe.

#### Formations
- **Juge unique** : recevabilité
- **Comité de 3 juges** : affaires simples
- **Chambre de 7 juges** : la plupart des affaires
- **Grande Chambre de 17 juges** : affaires importantes ou révisions

#### Le président
Élu pour **3 ans** parmi les juges.

### B. La compétence

#### Recours individuel (`art. 34 CESDH`)
**Toute personne** (physique, morale, ONG) peut saisir directement la Cour pour violation de la Convention par un État membre.

#### Recours interétatique (`art. 33`)
**Un État** peut saisir contre un autre. Rare (ex. : Géorgie c/ Russie, `2022`).

### C. Les conditions de recevabilité

#### Épuisement des voies de recours internes
Avoir tenté tous les recours nationaux **utiles**.

#### Délai
**`6 mois`** (réduit à `4 mois` par le protocole n° 15, en vigueur depuis `1er février 2022`) après la décision interne définitive.

#### Préjudice important
Sauf cas d''importance pour les droits de l''homme.

### D. La procédure

#### Examen de recevabilité
Plusieurs filtres pour éliminer les requêtes manifestement infondées (`90%` des requêtes sont déclarées **irrecevables**).

#### Examen au fond
- **Échange écrit** des observations
- **Audience publique** parfois
- **Délibération** secrète
- **Arrêt** motivé

### E. Les arrêts

#### Effet déclaratoire
La Cour **constate** une violation. Elle **n''annule** pas les décisions nationales.

#### Indemnité (`art. 41`)
Allocation d''une **« satisfaction équitable »** : indemnisation pécuniaire.

#### Force obligatoire (`art. 46`)
Les arrêts sont **obligatoires** pour les États. Exécution surveillée par le **Comité des ministres** du Conseil de l''Europe.

#### Mesures individuelles
- Indemnisation
- Réouverture des procédures (`art. L. 452-1 CJA`, art. 626-1 CPP en cas de violation grave)

#### Mesures générales
- **Modification de la législation**
- **Changement de pratique**

### F. Les droits protégés

#### Droits substantiels
- **Article 2** : droit à la vie
- **Article 3** : interdiction de la torture
- **Article 4** : interdiction de l''esclavage
- **Article 5** : liberté et sûreté
- **Article 6** : procès équitable
- **Article 7** : pas de peine sans loi
- **Article 8** : vie privée et familiale
- **Article 9** : liberté de pensée, religion
- **Article 10** : liberté d''expression
- **Article 11** : liberté de réunion et d''association
- **Article 14** : interdiction de la discrimination

#### Protocoles additionnels
- **Protocole n° 1** : propriété (art. 1), éducation (art. 2)
- **Protocole n° 4** : liberté de circulation
- **Protocole n° 6** et **13** : abolition de la peine de mort
- **Protocole n° 7** : droits procéduraux

### G. Le rôle politique
- Influence majeure sur les législations nationales
- Standards européens
- Tension avec certains États (Royaume-Uni, Russie avant exclusion)

## III. La Cour de justice de l''Union européenne (CJUE)

### A. L''organisation

#### Composition
- **Une Cour de justice** : 27 juges (1 par État membre) + 11 avocats généraux
- **Un Tribunal** (créé en `1989`) : 54 juges (2 par État)
- **Anciens** : tribunaux spécialisés (supprimés en `2016`)

#### Le siège
**Luxembourg-Kirchberg**.

#### Nominations
**Par les États** d''un commun accord, mandat de **6 ans renouvelables**.

### B. Les compétences

#### Recours en manquement (`art. 258 TFUE`)
**Commission ou État** poursuit un **État** qui a manqué à ses obligations européennes.

#### Recours en annulation (`art. 263 TFUE`)
**Contrôle de la légalité** des actes des institutions de l''UE.

#### Recours en carence (`art. 265 TFUE`)
**Contre l''inaction** d''une institution.

#### Recours en responsabilité (`art. 268 TFUE`)
**Responsabilité non contractuelle** de l''UE.

#### La question préjudicielle (`art. 267 TFUE`) : la plus importante !
**Un juge national** peut (ou doit, s''il est statuant en dernier ressort) saisir la CJUE quand l''application du droit de l''UE soulève une **question d''interprétation** ou de **validité** d''un acte de l''UE.

**Procédure** :
1. Le juge national **sursoit à statuer**
2. La CJUE répond
3. Le juge national applique la réponse

### C. Les grands principes posés par la CJUE

#### *CJCE, 5 février 1963, Van Gend en Loos*
**Principe de l''effet direct** : un particulier peut invoquer une norme européenne devant son juge national, si elle est **claire, précise et inconditionnelle**.

#### *CJCE, 15 juillet 1964, Costa c/ ENEL*
**Principe de primauté** du droit européen :
> *« Le droit né du traité, issu d''une source autonome, ne pourrait, en raison de sa nature spécifique originale, se voir judiciairement opposer un texte interne quel qu''il soit, sans perdre son caractère communautaire et sans que soit mise en cause la base juridique de la Communauté elle-même. »*

#### *CJCE, 9 mars 1978, Simmenthal*
Le juge national **doit écarter** lui-même la norme nationale contraire au droit européen, sans attendre une révision législative.

#### *CJCE, 19 novembre 1991, Francovich*
**Responsabilité** des États membres pour violation du droit communautaire.

#### *CJUE, 17 décembre 2020, K.O. et autres*
Confirmation de la primauté en matière de droit de l''asile.

### D. La Charte des droits fondamentaux de l''UE

#### Adoption
**7 décembre 2000** à Nice.

#### Force juridique
**Valeur de traité** depuis le **Traité de Lisbonne** (`1er décembre 2009`).

#### Contenu
6 chapitres :
- Dignité
- Libertés
- Égalité
- Solidarité
- Citoyenneté
- Justice

#### Champ d''application
Lorsque les États mettent en œuvre le droit de l''UE.

## IV. Le dialogue des juges

### A. Articulation CEDH et CJUE

#### Adhésion à la CESDH
Prévue par le Traité de Lisbonne. En cours, mais bloquée par l''avis 2/13 de la CJUE (`18 décembre 2014`).

#### Convergence
Les deux cours s''**inspirent mutuellement** sur les standards des droits fondamentaux.

### B. Avec les juges nationaux

#### Le Conseil constitutionnel
Position : **pas de contrôle de conventionnalité**, délégué aux juges ordinaires. Mais référence à l''**identité constitutionnelle**.

#### Le Conseil d''État
- *Nicolo* (`CE, 20 octobre 1989`) : contrôle de conventionnalité
- *Arcelor* (`CE, 8 février 2007`) : articulation droit UE / Constitution

#### La Cour de cassation
- *Jacques Vabre* (`Cass. ch. mixte, 24 mai 1975`) : contrôle de conventionnalité

### C. Les questions préjudicielles

#### Volume
Plusieurs centaines par an. France parmi les plus pourvoyeurs.

#### Effet
Construction collective du droit européen.

## V. L''accès du justiciable français

### A. Saisir la CEDH
- **Recours individuel direct** (art. 34)
- **Conditions** : épuisement, délai, préjudice
- **Sans avocat obligatoire** (mais conseillé)

### B. Bénéficier du droit de l''UE
- **Indirectement** par le juge national
- **Question préjudicielle** posée par le juge

### C. Statistiques
- **France** : environ 8 000 requêtes par an devant la CEDH
- **Beaucoup** d''irrecevabilités
- **Quelques dizaines** d''arrêts de violation par an

## À retenir

**Deux ordres distincts** :

| | **CEDH** | **CJUE** |
|---|---|---|
| Siège | Strasbourg | Luxembourg |
| Organisation | Conseil de l''Europe (46) | Union européenne (27) |
| Texte | CESDH (`1950`) | Traités UE |
| Recours | Individuel direct | Préjudiciel (via juge national) |
| Effet | Déclaratoire | Primauté + effet direct |

**CEDH** : recours individuel après **épuisement** des voies internes, dans un délai de `4 mois`. Arrêts à effet déclaratoire + satisfaction équitable.

**CJUE** : grands arrêts fondateurs :
- *Van Gend en Loos* (`1963`) : effet direct
- *Costa c/ ENEL* (`1964`) : primauté
- *Simmenthal* (`1978`) : éviction immédiate
- *Francovich* (`1991`) : responsabilité de l''État

**Question préjudicielle** : mécanisme essentiel du dialogue des juges.

**Charte des droits fondamentaux** : valeur de traité depuis Lisbonne (`1er décembre 2009`).'
from public.subjects where name = 'Institutions juridictionnelles';

-- =====================================================================
-- FICHE 8 - LES ACTEURS DE LA JUSTICE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les acteurs de la justice', 'Chapitre 8 - Magistrats et auxiliaires',
       'Magistrats du siège et du parquet, avocats, huissiers, notaires, greffiers : qui fait fonctionner la justice ?',
       array['Magistrat du siège', 'Magistrat du parquet', 'École nationale de la magistrature', 'CSM', 'Avocat', 'Huissier de justice', 'Notaire', 'Greffier'],
       15, 8,
'# Les acteurs de la justice

## Introduction

La justice n''existe que par les **personnes** qui la font vivre. Magistrats, avocats, greffiers, huissiers, notaires forment un écosystème complexe, aux statuts variés et aux fonctions complémentaires. Comprendre leurs rôles est essentiel pour saisir le fonctionnement effectif de la justice.

## I. Les magistrats

### A. La distinction siège/parquet

#### Magistrats du siège
- **Jugent** les affaires
- **Indépendants**, statutairement protégés
- **Inamovibles** (art. `64 C.`)

#### Magistrats du parquet (ministère public)
- **Représentent l''État** dans le procès pénal
- **Hiérarchisés** : soumis au garde des Sceaux
- **Promotionnels** : nomination par décret

### B. Le recrutement

#### Concours d''accès à l''ENM
**École nationale de la magistrature** (Bordeaux).

- **Concours étudiant** : pour les masters de droit
- **Concours interne** : pour les fonctionnaires
- **Concours de troisième voie** : expérience professionnelle

#### Formation
- **31 mois** à l''ENM
- **Stages** en juridiction
- **Spécialisations** progressives

### C. Le statut

#### Inamovibilité
Les magistrats du siège ne peuvent être :
- **Mutés** sans leur consentement
- **Révoqués** sans procédure disciplinaire

#### Le Conseil supérieur de la magistrature (CSM)
- **Présidé** par le Président de la République (formation plénière), le Premier président de la Cour de cassation (siège) ou le Procureur général (parquet)
- Composé de **22 membres**
- **Compétences** :
  - **Nominations** des magistrats du siège (avis conforme)
  - **Avis** sur les nominations du parquet
  - **Discipline** des magistrats

### D. Les magistrats du parquet (Ministère public)

#### Organisation hiérarchique
- **Garde des Sceaux** (ministre de la Justice)
- **Procureur général** près la Cour de cassation
- **Procureur général** près chaque cour d''appel
- **Procureur de la République** près chaque TJ
- **Substituts, vice-procureurs**

#### Indépendance limitée
Évolutions :
- **Loi du 25 juillet 2013** : suppression des instructions individuelles du garde des Sceaux
- **Décisions CEDH** : le parquet n''est pas un « tribunal indépendant » au sens de l''art. 5 CESDH
- **Projets de réforme** récurrents : suppression du lien hiérarchique ?

#### Rôle pénal
- **Conduite** de l''action publique
- **Décisions** d''opportunité des poursuites
- **Soutien** de l''accusation aux audiences
- **Voies de recours**

#### Rôle civil
- **Avis** dans certaines matières (état des personnes, faillite)
- Partie principale dans certains contentieux (protection des incapables)

## II. Les avocats

### A. La profession

#### Profession libérale réglementée
**Loi du 31 décembre 1971** (loi fondatrice) puis **loi du 31 décembre 1990** (fusion avec les conseils juridiques).

#### Conditions d''accès
- **Master 1 en droit** au minimum
- **CRFPA** (examen d''entrée au Centre régional de formation professionnelle des avocats)
- **18 mois** de formation à l''école d''avocats
- **CAPA** (certificat d''aptitude à la profession d''avocat)
- **Prestation de serment**

#### Le serment
> *« Je jure, comme avocat, d''exercer mes fonctions avec dignité, conscience, indépendance, probité et humanité. »*

### B. Les fonctions de l''avocat

#### Conseil
- **Renseigner** les clients
- **Rédiger** des actes juridiques (consultations, contrats)
- **Négocier**

#### Assistance et représentation
- **Assister** son client lors des actes (gardes à vue, audiences)
- **Représenter** son client en justice
- **Plaider** à l''audience

#### Postulation
**Représenter** une partie devant les juridictions où l''avocat est inscrit (devant le TJ et la cour d''appel notamment).

### C. L''organisation

#### Le **barreau**
Ensemble des avocats inscrits à un même tribunal judiciaire. **165 barreaux** en France.

#### Le **bâtonnier**
Élu par ses pairs pour 2 ans. Représente le barreau, exerce un pouvoir disciplinaire.

#### Le **Conseil de l''Ordre**
Organe collégial gestionnaire du barreau.

#### Le **Conseil national des barreaux** (CNB)
**Représentation nationale** de la profession.

### D. Les obligations déontologiques

#### Indépendance
Envers tous, y compris ses clients.

#### Secret professionnel
**Inviolable** (sauf cas exceptionnels limitativement énumérés).

#### Loyauté
Envers les confrères, les magistrats, les clients.

#### Conflits d''intérêts
**Interdits**.

### E. Spécialisations

#### Mentions de spécialisation
Avocats reconnus dans un domaine (droit du travail, droit pénal, etc.).

#### Les avocats aux Conseils
Spécialement formés et titulaires d''**offices ministériels**. Seuls habilités à plaider devant la **Cour de cassation** et le **Conseil d''État**. **60** au total en France.

### F. Les chiffres
- **`75 000 avocats`** environ en France (`2024`)
- **Forte croissance** ces dernières décennies
- **Féminisation** : plus de femmes que d''hommes

## III. Les officiers ministériels

### A. Les notaires

#### Statut
**Officiers publics et ministériels** :
- **Publics** : confèrent l''authenticité aux actes
- **Ministériels** : titulaires d''un office

#### Fonctions
- **Rédaction d''actes authentiques** : vente immobilière, contrat de mariage, testament, donation
- **Conseil juridique**
- **Conservation** des actes (minutes)

#### Recrutement
- **Master 2 en droit** + **examen** d''accès au CFPN
- **2 ans** de formation
- **Diplôme** de notaire
- **Achat** d''un office (libéralisé par la loi Macron, `2015`)

#### Organisation
- **Notaires** : ~17 000 en France
- **Conseil supérieur du notariat**
- **Chambres** régionales et départementales

### B. Les huissiers de justice (devenus commissaires de justice depuis 2022)

#### Évolution
**Réforme du 1er juillet 2022** : fusion des **huissiers de justice** et des **commissaires-priseurs judiciaires** en une nouvelle profession : **commissaires de justice**.

#### Fonctions
- **Signification** des actes (jugements, assignations)
- **Exécution forcée** des décisions de justice (saisies, expulsions)
- **Constats** : faits matériels
- **Ventes aux enchères** judiciaires

#### Pourquoi un « officier ministériel » ?
Comme les notaires, ils sont titulaires d''offices.

### C. Les avocats aux Conseils
Voir supra.

### D. Les commissaires-priseurs (non judiciaires)
Activités de **vente volontaire** aux enchères. Plus officiers ministériels.

## IV. Les greffiers

### A. Statut
**Fonctionnaires de catégorie B** (greffiers) ou **A** (greffiers en chef, directeurs des services de greffe).

### B. Recrutement
- **Concours** national
- Formation à l''**École nationale des greffes** (Dijon)

### C. Fonctions

#### Authentification
**Assistance** au juge à l''audience, **rédaction** des minutes des jugements.

#### Gestion administrative
- Tenue des **registres**
- **Notification** des décisions
- Délivrance d''**expéditions** (copies certifiées)

#### Information du public
**Accueil** des justiciables, renseignements.

### D. Les chiffres
~`9 000 greffiers` en France.

## V. Les autres acteurs

### A. Le procureur général financier (PNF)
Créé par la loi du `6 décembre 2013`. Compétence nationale pour les **infractions économiques et financières complexes**.

### B. Les juges non professionnels

#### Jurés d''assises
**Tirés au sort** sur les listes électorales.

#### Juges consulaires
Tribunaux de commerce.

#### Conseillers prud''homaux
Conseils de prud''hommes.

#### Assesseurs (pôle social, mineurs)
Représentants des employeurs/salariés ou d''associations.

### C. Les experts judiciaires

#### Statut
**Inscrits** sur des listes établies par les cours d''appel et la Cour de cassation.

#### Mission
**Apporter des éléments techniques** au juge (médecine, balistique, comptabilité, etc.).

### D. Les médiateurs et conciliateurs

#### Conciliateur de justice
**Bénévole** intervenant pour résoudre des litiges du quotidien.

#### Médiateur
**Professionnel** missionné par le juge ou les parties.

## VI. La défense des justiciables

### A. L''aide juridictionnelle

#### Création
**Loi du 10 juillet 1991**.

#### Conditions
- **Ressources** limitées
- **Recevabilité** de l''action

#### Avantages
- **Prise en charge** totale ou partielle des frais d''avocat
- **Dispense** des frais d''huissier

### B. L''aide juridique
- **Consultations gratuites** dans les Maisons de Justice et du Droit
- **Bureaux d''aide aux victimes**

### C. Les associations
Rôle croissant : France Victimes, La Cimade, etc.

## VII. La déontologie

### A. Les principes communs
- **Indépendance**
- **Impartialité** (pour les magistrats)
- **Secret professionnel**
- **Probité**
- **Dignité**

### B. Les sanctions disciplinaires
- **Avertissement, blâme, mutation, révocation** (magistrats : par le CSM)
- **Avertissement, blâme, suspension, radiation** (avocats : par le conseil de discipline)

## À retenir

**Magistrats** :
- **Siège** (jugent) vs **parquet** (poursuivent)
- Recrutement par **ENM** (Bordeaux)
- Inamovibilité du siège (art. `64 C.`)
- Discipline par le **CSM**

**Parquet** : soumis au garde des Sceaux, mais sans instructions individuelles depuis la **loi du 25 juillet 2013**.

**Avocats** : ~75 000 en France. Loi du `31 décembre 1971` (et `1990`). **CRFPA → 18 mois → CAPA**. Serment. **Avocats aux Conseils** (60) : Cour de cassation et CE.

**Officiers ministériels** :
- **Notaires** : actes authentiques
- **Commissaires de justice** (depuis `2022`, ex-huissiers + commissaires-priseurs judiciaires)

**Greffiers** : fonctionnaires, authentification + administration.

**Aide juridictionnelle** : loi du `10 juillet 1991`, ressources limitées.

**CSM** : nominations + discipline des magistrats. 22 membres.'
from public.subjects where name = 'Institutions juridictionnelles';
