-- =====================================================================
-- JurisPrép - Cours complet : Droit pénal général (L2 S1)
-- 8 fiches très approfondies basées sur le cours magistral
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-penal-general');

-- =====================================================================
-- FICHE 1 - INTRODUCTION AU DROIT PÉNAL
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Introduction au droit pénal', 'Introduction',
       'Notion de droit pénal, infraction et peine, classification tripartite, fonctions (répressive, expressive, protectrice), écoles doctrinales, sources et code pénal de 1992.',
       array['Droit pénal', 'Infraction', 'Peine', 'Article 130-1 CP', 'Classification tripartite', 'Crime', 'Délit', 'Contravention', 'École classique', 'Beccaria', 'École positiviste', 'Défense sociale nouvelle', 'CESDH Engel 1976', 'Code pénal 1992'],
       28, 1,
'# Introduction au droit pénal

## Introduction

> *« La vie en société exige des règles ; la liberté de l''homme implique la possibilité de leur transgression. »*

Le droit pénal est une matière **très étatique**, monopolisée par les appareils gouvernementaux, qui détermine la **frontière entre le licite et l''illicite**. Cette frontière n''est pas nécessairement de l''ordre de la **moralité** (exemple : l''alcool cause 70 000 morts/an, l''héroïne 72 morts/an, mais l''alcool est licite).

## I. La notion de droit pénal

### A. Définition

#### Merle et Vitu
> *« Le droit pénal est l''ensemble des règles ayant pour but de déterminer les actes anti-sociaux, de désigner les personnes pouvant en être déclarées responsables et de fixer les peines qui sont applicables. »*

#### Principe fondamental
**On ne peut pas punir sans texte** : pour qu''on puisse condamner quelqu''un, il faut un texte (principe de légalité).

### B. Distinction droit pénal général / droit pénal spécial

#### Droit pénal général
**Conditions générales** d''engagement de la responsabilité pénale.

> **Formule** : Responsabilité pénale = **Infraction + Imputation**

#### Droit pénal spécial
**Définit** les diverses infractions :
- **Éléments constitutifs**
- **Sanctions** applicables
- Incriminations répertoriées dans le Code pénal (et d''autres codes ou textes non codifiés)

## II. L''objet du droit pénal

### A. L''infraction

#### Composition
- **Incrimination** : détermination des éléments constitutifs
- **Peine** : véritable **critère** de l''infraction

### B. La peine

#### Trois définitions

##### Définition formelle
**Sanction prononcée** par une juridiction pénale.
- **Limite** : les juridictions pénales prononcent aussi des sanctions civiles, douanières, fiscales

##### Critère fonctionnel
> **Toute sanction infligée au nom de la société**, dans un but rétributif, éliminateur ou intimidateur, en réaction à un trouble causé à l''ordre social.
- **Limite** : englobe les sanctions administratives

##### Critère normatif (retenu)
> **Constitue une peine toute sanction ainsi définie par le législateur**.
- Si la sanction apparaît dans la liste du Code pénal et est prononcée par une juridiction répressive, c''est une peine.

### C. Les trois types de peines

#### Peines criminelles - Article 131-1 CP
- Réclusion ou détention criminelle à **perpétuité**
- À temps : **30, 20, 15 ans au plus**
- Minimum : **10 ans** pour la réclusion à temps

#### Peines délictuelles (correctionnelles) - Article 131-3 CP
- **Emprisonnement** (avec sursis, sursis probatoire, aménagement)
- **Détention à domicile** sous surveillance électronique
- **Travail d''intérêt général** (TIG)
- **Amende** et **jour-amende**
- **Peines de stage**
- **Peines privatives ou restrictives de droits**
- **Sanction-réparation**

#### Peines contraventionnelles - Article 131-12 CP
- **Amende**
- **Peines privatives ou restrictives de droits**
- **Sanction-réparation**

### D. Critères européens : CEDH, Engel c/ Pays-Bas, 8 juin 1976

#### Trois critères alternatifs (pas cumulatifs) pour déterminer si une procédure relève de la matière pénale (art. 6 CESDH)
1. **Qualification** en droit interne (critère relatif)
2. **Nature** de l''infraction
3. **Sévérité** de la peine encourue

## III. Les fonctions du droit pénal

### A. Fonction répressive

#### Notion
**Châtier l''auteur** d''une infraction.

#### Évolution doctrinale

##### École classique
###### Principes
- **Binôme liberté/responsabilité**
- *« La société ne peut punir ni plus qu''il n''est juste, ni plus qu''il n''est utile. »*
- **Beccaria**, **Bentham** : classiques
- **Guizot**, **Ortolan**, **Rossi** : néoclassiques

###### Beccaria
Prône les fondations du droit pénal moderne :
- **Abolition** de la peine de mort
- **Principe de légalité**
- **Présomption d''innocence**
- En 1795, Code des délits et des peines (en hommage à Beccaria)

##### École positiviste (seconde moitié du XIXe)
###### Auteurs
- **Lombroso**, **Ferri**, **Garofalo** (Italiens)

###### Théorie
- **Exclusion** de la morale
- **Lombroso** : les délinquants porteraient des **caractéristiques physiques** favorisant certains comportements

##### Défense sociale nouvelle (post-1945)
###### Auteur principal
- **Marc Ancel**

###### Principes
- **Rejet** des théories positivistes
- Inspiration **humaniste**
- **Restaurer** le libre arbitre du délinquant
- La peine peut être **punitive** ou **préventive**

### B. Article 130-1 CP
> *« Afin d''assurer la protection de la société, d''éviter la commission de nouvelles infractions et de restaurer l''équilibre social, dans le respect des intérêts de la victime, la peine a pour fonctions :
1° De sanctionner l''auteur de l''infraction ;
2° De favoriser son amendement, son insertion ou sa réinsertion. »*

### C. Fonction expressive

#### Notion
Le droit pénal **exprime les valeurs essentielles** de la société.

#### Lien avec la morale

##### Durkheim
> *« Le droit pénal, tout au contraire, n''édicte que des sanctions, mais il ne dit rien des obligations auxquelles elles se rapportent. Il ne commande pas de respecter la vie d''autrui, mais de frapper de mort l''assassin. »*

### D. Fonction protectrice

#### Double protection
> *« En même temps qu''il permet la répression, le droit pénal la régule. »* (Desportes et Le Gunehec)

- **Protection** de la société contre la délinquance
- **Protection** des citoyens contre les **abus de la répression**

#### Garantie : le principe de légalité
- **Article 8 DDHC**
- **Article 7 CESDH**
- **Article 111-3 CP**

> *« Nul ne peut être condamné pour un fait qui au moment où il a été commis n''était susceptible d''aucune qualification pénale. »*

## IV. L''évolution du droit pénal

### A. Le caractère cyclique
Le droit pénal connaît des **cycles** : périodes de **sévérité** et de **clémence** alternées.

### B. L''avènement des droits de l''Homme

#### La CESDH
- **Élaborée** par le Conseil de l''Europe
- **Signée** à Rome le 4 novembre 1950
- **Entrée en vigueur** en France le 3 mai 1974
- **CEDH** à Strasbourg : juridiction de contrôle

#### Le bloc de constitutionnalité
- **CC, 16 juillet 1971, Liberté d''association**
- **Intégration** de la DDHC de 1789
- **Consécration** des droits et libertés fondamentaux

### C. La double inflation pénale

#### Deux phénomènes
- **Augmentation** plus ou moins avérée de la délinquance (statistiquement contestée)
- **Augmentation** constante du nombre de lois pénales

#### Conséquences
- **Population carcérale** en hausse
- **Difficultés** à trouver un système répressif efficace
- **Forte récidive**

## V. Le code pénal de 1992

### A. Adoption
- **Voté** en 1992
- **Entrée en vigueur** en 1994

### B. Caractéristiques

#### Œuvre de continuité et de rupture

##### Concepts nouveaux
- **Responsabilité pénale des personnes morales**
- **Erreur sur le droit**
- **Faute délibérée**

##### Concepts conservés
- **Classification tripartite** des infractions
- **Reprise** de la jurisprudence sous l''empire du code de 1810

#### Fruit d''un consensus politique
- **AN socialiste**, **Sénat à droite**
- **CC pas saisi**
- **Influences doctrinales** difficiles à retrouver

### C. Plan du Code pénal

#### Sept livres
1. **Dispositions générales** (3 titres : loi pénale, responsabilité pénale, peines)
2. **Crimes et délits contre les personnes**
3. **Crimes et délits contre les biens**
4. **Délits contre la nation**
5. **Autres crimes et délits**
6. **Contraventions**
7. **Dispositions applicables dans les TOM et à Mayotte**

#### Innovation
**Logique** plus claire que le code de 1810 (qui commençait par les peines).

## Conclusion

Le **droit pénal** est une matière **essentielle** du droit français qui détermine la frontière entre **licite** et **illicite** et organise la **sanction** des comportements anti-sociaux.

Sa **structure** s''articule autour de :
- L''**infraction** (élément matériel + élément moral)
- L''**imputation** (qui est responsable)
- La **peine** (sanction applicable)

Ses **fonctions** sont multiples :
- **Répressive** : châtier
- **Expressive** : exprimer les valeurs sociales
- **Protectrice** : protéger la société ET les citoyens

Le **Code pénal de 1992** constitue le cadre actuel, en évolution permanente sous l''influence des **droits de l''Homme**, du **droit européen** et de la **jurisprudence**.

La maîtrise du droit pénal général suppose la connaissance des **trois piliers** : le **principe de légalité**, l''**infraction** et la **responsabilité pénale**.'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 2 - LE PRINCIPE DE LÉGALITÉ CRIMINELLE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le principe de légalité criminelle', 'Partie 1 - Chapitre 1 : Légalité',
       'Nullum crimen nulla poena sine lege, sources du principe (DDHC, CESDH, CP), monopole législatif, qualité de la loi pénale (clarté, précision, accessibilité).',
       array['Nullum crimen', 'Article 111-3 CP', 'Article 8 DDHC', 'Article 7 CESDH', 'Principe de légalité', 'Beccaria', 'Montesquieu', 'CEDH Sunday Times 1979', 'CEDH Kruslin 1990', 'Qualité de la loi', 'Précision', 'Accessibilité'],
       28, 2,
'# Le principe de légalité criminelle

## Introduction

> **Adage** : *« Nullum crimen, nulla poena sine lege »* — Pas de crime, pas de peine sans loi.

Le **principe de légalité** est la **pierre angulaire** du droit pénal moderne. Né au **XVIIIe siècle** sous la plume de **Beccaria** et **Montesquieu**, il garantit que **personne ne peut être condamné** pour un fait qui n''était pas incriminé au moment où il a été commis.

## I. Les sources du principe de légalité

### A. La Déclaration des droits de l''homme et du citoyen (DDHC, 1789)

#### Article 8 DDHC
> *« La loi ne doit établir que des peines strictement et évidemment nécessaires, et nul ne peut être puni qu''en vertu d''une loi établie et promulguée antérieurement au délit, et légalement appliquée. »*

#### Apports
- **Nécessité** de la peine
- **Légalité** des incriminations
- **Non-rétroactivité** de la loi pénale plus sévère

### B. La Convention européenne des droits de l''homme

#### Article 7 CESDH
> *« Nul ne peut être condamné pour une action ou une omission qui, au moment où elle a été commise, ne constituait pas une infraction d''après le droit national ou international. »*

#### Apports
- **Garantie** européenne du principe
- **Contrôle** par la CEDH
- **Application** par le juge interne

### C. Le Code pénal

#### Article 111-3 CP
> *« Nul ne peut être puni pour un crime ou pour un délit dont les éléments ne sont pas définis par la loi, ou pour une contravention dont les éléments ne sont pas définis par le règlement. Nul ne peut être puni d''une peine qui n''est pas prévue par la loi, si l''infraction est un crime ou un délit, ou par le règlement, si l''infraction est une contravention. »*

#### Article 111-4 CP
> *« La loi pénale est d''interprétation stricte. »*

## II. Les fondements philosophiques

### A. Beccaria - *Des délits et des peines* (1764)

#### Apports majeurs
- **Légalité** des délits et des peines
- **Nécessité** et **proportionnalité** des peines
- **Abolition** de la peine de mort (préconisée)
- **Présomption d''innocence**

### B. Montesquieu - *De l''esprit des lois* (1748)

#### Idées clés
- **Séparation des pouvoirs**
- **Modération** dans la répression
- *« La liberté politique ne consiste point à faire ce que l''on veut »*

### C. La Révolution française

#### Code des délits et des peines (1795)
- En **hommage à Beccaria**
- **Mise en application** des principes

#### Code pénal de 1810
- **Codification** napoléonienne
- **Influence** durable

## III. La portée du principe de légalité

### A. Le monopole législatif (pour les crimes et délits)

#### Articles 34 C. et 111-3 CP
- **Seul le législateur** peut créer un **crime** ou un **délit**
- **Seule la loi** peut prévoir leur peine

#### Articles 37 C. et 111-3 CP
- Le **règlement** peut créer des **contraventions**
- **Compétence** du pouvoir exécutif

### B. Le contrôle du juge

#### Contrôle de constitutionnalité
- **QPC** (depuis 2010) : contrôle a posteriori
- **CC** : juge de la conformité à la Constitution

#### Contrôle de conventionnalité
- **Juge ordinaire** : conformité à la CESDH et au droit de l''UE
- **CEDH** : recours individuel

## IV. La qualité de la loi pénale

### A. L''exigence de précision

#### Principe
La loi pénale doit être **suffisamment précise** pour permettre au citoyen de **prévoir** les conséquences pénales de ses actes.

#### CEDH, 26 avril 1979, Sunday Times c/ Royaume-Uni
- **Principe de prévisibilité**
- **Citoyen** doit pouvoir adapter son comportement

#### CEDH, 24 avril 1990, Kruslin c/ France
- **Loi accessible** et **prévisible**
- **Sécurité juridique**

### B. L''exigence d''accessibilité

#### Principe
La loi doit être **publiée** et **accessible** aux citoyens.

#### Application
- **Publication** au Journal Officiel
- **Information** des citoyens

### C. L''exigence de clarté

#### Principe
La loi doit être **claire** dans sa rédaction.

#### Sanction
- **Inconventionnalité** si trop floue
- **QPC** possible

## V. Les corollaires du principe de légalité

### A. L''interprétation stricte de la loi pénale

#### Article 111-4 CP
> *« La loi pénale est d''interprétation stricte. »*

#### Conséquences
- **Pas d''analogie** (sauf en faveur de l''accusé)
- **Pas d''interprétation extensive** au détriment du prévenu
- **Doute profite à l''accusé**

#### Limites
- **Interprétation téléologique** (recherche du sens)
- **Évolution** technologique acceptée

### B. La non-rétroactivité de la loi pénale plus sévère

#### Principe
La loi pénale **plus sévère** ne s''applique pas aux faits **antérieurs** à son entrée en vigueur.

#### Fondement
- **Article 8 DDHC**
- **Article 112-1 CP**
- **Sécurité juridique**

### C. La rétroactivité in mitius

#### Principe
La loi pénale **plus douce** s''applique **rétroactivement** aux faits non encore définitivement jugés.

#### Fondement
- **CC**, 19 janvier 1981
- **CC**, valeur constitutionnelle

#### Application
- **Suppression** d''une infraction
- **Adoucissement** d''une peine
- **Modification** d''un élément de l''infraction

## VI. Les évolutions du principe de légalité

### A. L''influence européenne

#### CESDH
- **Renforcement** des exigences de qualité
- **Sanction** des lois trop floues

#### Droit de l''UE
- **Directives** en matière pénale (terrorisme, trafic de drogue)
- **Décisions-cadres** (anciennes)
- **Influence** croissante

### B. Le développement des lois pénales accessoires

#### Phénomène
- **Multiplication** des incriminations hors Code pénal
- **Codes spécialisés** : douanier, monétaire et financier, etc.

#### Difficultés
- **Accessibilité** réduite
- **Complexité** croissante

### C. La constitutionnalisation

#### QPC
- **Renouveau** du contrôle constitutionnel
- **Sanctions** des dispositions floues

#### Exemple
- **Décisions** sur la garde à vue
- **Définitions** d''infractions trop imprécises

## VII. Les limites du principe de légalité

### A. Le principe d''opportunité des poursuites

#### Principe
Le **procureur** dispose d''une **opportunité** des poursuites :
- **Engager** ou non l''action publique
- **Choisir** la voie procédurale

#### Tempérament
- **Plainte avec constitution de partie civile** : oblige le parquet
- **Citation directe**

### B. Les pouvoirs du juge

#### Pouvoir d''individualisation
- **Choix de la peine** dans les limites légales
- **Modulations** possibles

#### Pouvoir d''interprétation
- **Précision** de la loi
- **Évolution** prétorienne contrôlée

### C. La codification

#### Importance
- **Accessibilité**
- **Clarté**
- **Cohérence**

#### Limites
- **Recodifications** fréquentes
- **Difficulté** d''actualisation

## VIII. Cas pratiques

### A. La distinction infraction politique / infraction de droit commun

#### Texte spécifique
Pour qu''il y ait infraction **politique**, il faut que l''infraction soit **visée par le texte** comme telle.

#### Conséquences
- **Régime** différent (extradition, amnistie, prescription)
- **Tribunal** parfois différent

### B. L''application de la peine

#### Principe de la **personnalité** de la peine
- **Article 132-19 CP**
- Peine individualisée

#### Limites
- **Substitution** possible (TIG, jour-amende)
- **Aménagements**

## Conclusion

Le **principe de légalité criminelle** est **fondamental** en droit pénal français. Il garantit :
- La **sécurité juridique** des citoyens
- La **prévisibilité** du droit
- La **séparation** des pouvoirs (le législateur définit, le juge applique)

Ses **sources** sont multiples (Constitution, CESDH, Code pénal) et son **contrôle** est assuré par diverses voies (QPC, conventionnalité, CEDH).

Ses **corollaires** structurent la matière :
- **Interprétation stricte** (art. 111-4 CP)
- **Non-rétroactivité** de la loi plus sévère
- **Rétroactivité in mitius** de la loi plus douce

L''**évolution contemporaine** voit un **renforcement** des exigences de qualité de la loi (CEDH, *Sunday Times*, *Kruslin*) mais aussi des **tensions** avec la **multiplication** des lois pénales accessoires.

La maîtrise du principe de légalité est **indispensable** pour comprendre l''ensemble du droit pénal général : il **conditionne** toutes les analyses ultérieures (infraction, responsabilité, peine).'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 3 - L'APPLICATION DE LA LOI PÉNALE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''application de la loi pénale', 'Partie 1 - Chapitre 2 : Application',
       'Application dans le temps (non-rétroactivité, rétroactivité in mitius), dans l''espace (territorialité, personnalité, universalité), interprétation stricte.',
       array['Article 112-1 CP', 'Non-rétroactivité', 'Rétroactivité in mitius', 'Article 113-2 CP', 'Territorialité', 'Personnalité active', 'Personnalité passive', 'Compétence universelle', 'Article 111-4 CP', 'Interprétation stricte'],
       28, 3,
'# L''application de la loi pénale

## Introduction

L''**application de la loi pénale** soulève trois questions essentielles :
- **Dans le temps** : à quelle date la loi s''applique-t-elle ?
- **Dans l''espace** : à quelles infractions et personnes ?
- **Par le juge** : comment interpréter ?

Ces questions sont **régies** par les articles **111-1 à 113-13 du Code pénal**.

## I. L''application de la loi pénale dans le temps

### A. Le principe de non-rétroactivité de la loi pénale plus sévère

#### Fondements
- **Article 8 DDHC**
- **Article 112-1 al. 1 CP**

#### Article 112-1 CP
> *« Sont seuls punissables les faits constitutifs d''une infraction à la date à laquelle ils ont été commis. Peuvent seules être prononcées les peines légalement applicables à la même date. »*

#### Conséquences
- **Loi pénale plus sévère** : ne s''applique pas aux faits **antérieurs**
- **Sécurité juridique** : le citoyen connaît la loi en vigueur

### B. La rétroactivité in mitius (loi pénale plus douce)

#### Principe
La **loi pénale plus douce** s''applique **rétroactivement** aux infractions **non définitivement jugées**.

#### Article 112-1 al. 3 CP
> *« Toutefois, les dispositions nouvelles s''appliquent aux infractions commises avant leur entrée en vigueur et n''ayant pas donné lieu à une condamnation passée en force de chose jugée lorsqu''elles sont moins sévères que les dispositions anciennes. »*

#### Fondement constitutionnel
- **CC, 19 janvier 1981, Sécurité et liberté**
- **Valeur constitutionnelle**

#### Applications
##### Loi adoucissant une peine
- **Application** immédiate aux faits antérieurs

##### Loi supprimant une infraction
- **Abrogation** de l''incrimination
- **Plus de poursuites** possibles

##### Loi modifiant un élément constitutif
- **Si plus favorable** : applicable

### C. Les exceptions

#### Lois interprétatives
- **Application** immédiate
- **Pas de rétroactivité** au sens propre

#### Lois de procédure
- **Application immédiate** en principe
- **Sauf** atteinte aux droits acquis

#### Lois sur l''exécution des peines
- **Application immédiate**

### D. La résolution des conflits

#### Question
Quelle loi appliquer si plusieurs lois se succèdent ?

#### Solution
- **Comparer** les régimes globaux
- Si la **nouvelle loi est plus douce** : application
- Si **plus sévère** : application de l''ancienne

## II. L''application de la loi pénale dans l''espace

### A. Le principe de territorialité - Articles 113-2 à 113-5 CP

#### Article 113-2 CP
> *« La loi pénale française est applicable aux infractions commises sur le territoire de la République. L''infraction est réputée commise sur le territoire de la République dès lors qu''un de ses faits constitutifs a eu lieu sur ce territoire. »*

#### Notion de territoire
- **Territoire** au sens strict (terrestre, maritime, aérien)
- **Eaux territoriales** (12 milles)
- **Espace aérien** au-dessus du territoire

#### Notion de fait constitutif
- **Un seul** fait constitutif suffit
- Application **extensive**

#### Article 113-3 CP
- **Navires** battant pavillon français
- Quel que soit le lieu où ils se trouvent

#### Article 113-4 CP
- **Aéronefs** immatriculés en France
- Quel que soit le lieu où ils se trouvent

#### Article 113-5 CP
- **Complicité** en France d''infractions commises à l''étranger
- **Application** de la loi française

### B. Le principe de personnalité - Articles 113-6 et 113-7 CP

#### 1. Personnalité active - Article 113-6 CP

##### Principe
La loi française s''applique aux **crimes** et **délits** commis **par un Français à l''étranger**.

##### Conditions
- **Crime** : application directe
- **Délit** : conditions cumulatives :
  - L''**incrimination** doit exister dans le pays où l''infraction a été commise
  - **Plainte** de la victime ou dénonciation officielle

#### 2. Personnalité passive - Article 113-7 CP

##### Principe
La loi française s''applique aux **crimes et délits** commis à l''étranger contre **un Français** (victime).

##### Conditions
- **Victime** française au moment de l''infraction
- **Délit** : peine d''emprisonnement encourue

### C. La compétence universelle - Articles 689 à 689-13 CPP

#### Principe
La loi française s''applique à certaines infractions **graves** commises à l''étranger par des étrangers contre des étrangers.

#### Infractions concernées
- **Crimes contre l''humanité**
- **Crimes de guerre**
- **Torture**
- **Terrorisme** (sous conditions)

#### Conditions
- L''auteur **présent** sur le territoire français
- **Convention internationale** prévoyant cette compétence

### D. La compétence réelle - Article 113-10 CP

#### Principe
La loi française s''applique aux infractions commises à l''étranger **contre les intérêts fondamentaux** de la Nation.

#### Exemples
- **Atteintes** à la sûreté de l''État
- **Falsification** de monnaies
- **Crimes** contre les agents diplomatiques français

## III. L''interprétation de la loi pénale

### A. Le principe d''interprétation stricte

#### Article 111-4 CP
> *« La loi pénale est d''interprétation stricte. »*

#### Justification
- **Conséquence** du principe de légalité
- **Sécurité juridique**
- **Protection** de l''accusé

### B. Les méthodes d''interprétation

#### Interprétation littérale
- **Texte** strict
- **Pas d''ajout**

#### Interprétation téléologique
- **Recherche** du **sens** voulu par le législateur
- **Adaptation** aux évolutions

#### Interprétation analogique
- **Interdite** en principe (sauf en faveur de l''accusé)
- **Pas d''extension** à des cas non prévus

### C. Le doute en faveur de l''accusé

#### Adage
> *« In dubio pro reo »* — Dans le doute, en faveur de l''accusé.

#### Application
- **Doute** sur la preuve : favorable à l''accusé
- **Doute** sur le sens de la loi : interprétation favorable

### D. L''évolution jurisprudentielle

#### Adaptation aux évolutions
- **Techniques** (informatique, numérique)
- **Sociétales** (mariage, filiation)
- **Économiques** (cryptomonnaies)

#### Limites
- **Pas de création** d''infractions par le juge
- **Pas d''interprétation** extensive au détriment de l''accusé

## IV. Cas particuliers

### A. Les infractions complexes / continues

#### Infractions complexes
- **Plusieurs faits** matériels
- **Loi du dernier** acte

#### Infractions continues
- **Prolongation** dans le temps
- **Loi en vigueur** durant l''infraction

### B. Les infractions en bande organisée

#### Critères spécifiques
- **Préméditation**
- **Organisation** structurée

### C. Les nouveaux délits

#### Cybercriminalité
- **Article 323-1 et s. CP**
- **Adaptation** territoriale

#### Délits environnementaux
- **Écocide** (depuis 2021)
- **Compétence** extensive

## V. L''harmonisation européenne

### A. Décisions-cadres et directives

#### Influence
- **Harmonisation** des incriminations
- **Coopération** judiciaire

#### Exemples
- **Mandat d''arrêt européen** (depuis 2002)
- **Décision européenne d''enquête**

### B. Le Parquet européen

#### Création
- **Règlement 2017/1939**
- **Compétence** sur les atteintes aux intérêts financiers de l''UE

#### Apport
- **Coopération** renforcée
- **Application** uniforme

## Conclusion

L''**application de la loi pénale** repose sur trois piliers :

### Dans le temps
- **Non-rétroactivité** de la loi plus sévère (art. 112-1 al. 1)
- **Rétroactivité in mitius** de la loi plus douce (art. 112-1 al. 3)

### Dans l''espace
- **Territorialité** : principe (art. 113-2 et s.)
- **Personnalité** active et passive (art. 113-6, 113-7)
- **Universalité** (cas graves)
- **Compétence réelle** (intérêts de la Nation)

### Par le juge
- **Interprétation stricte** (art. 111-4)
- **Doute** en faveur de l''accusé
- **Adaptation** aux évolutions sans création prétorienne

L''**européanisation** influence de plus en plus l''application de la loi pénale (mandat d''arrêt européen, Parquet européen, directives). La **mondialisation** des infractions (cybercriminalité, environnement) pose de **nouveaux défis** à l''application territoriale de la loi pénale française.

La maîtrise de ces principes est **indispensable** : un acte peut être incriminé en France mais non poursuivable si les **conditions d''application** ne sont pas remplies. La **question préalable** à toute analyse pénale est : *quelle loi s''applique et est-elle compétente ?*'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 4 - L'ÉLÉMENT MATÉRIEL DE L'INFRACTION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''élément matériel de l''infraction', 'Partie 2 - Chapitre 1 : Élément matériel',
       'Classifications des infractions selon la matérialité : commission/omission, simple/complexe/habitude, instantanée/permanente/continue, matérielle/formelle/obstacle.',
       array['Élément matériel', 'Article 111-1 CP', 'Infraction de commission', 'Infraction d''omission', 'Infraction simple', 'Infraction complexe', 'Infraction d''habitude', 'Infraction instantanée', 'Infraction continue', 'Infraction matérielle', 'Infraction formelle', 'Infraction obstacle'],
       28, 4,
'# L''élément matériel de l''infraction

## Introduction

L''**infraction** est composée de **trois éléments** :
- L''**élément légal** : la **loi** qui incrimine (principe de légalité)
- L''**élément matériel** : le **comportement** réprimé
- L''**élément moral** : l''**état d''esprit** du délinquant

> **Article 111-1 CP** : *« Les infractions pénales sont classées, suivant leur gravité, en crimes, délits et contraventions. »*

Cette **classification tripartite** est essentielle car elle entraîne des **conséquences** importantes en termes de :
- **Juridiction** compétente
- **Peines** encourues
- **Procédure** applicable
- **Prescription**

## I. La classification tripartite des infractions

### A. Les crimes

#### Caractéristiques
- **Infractions** les plus graves
- **Peine** : réclusion ou détention criminelle (perpétuité ou à temps)
- **Juridiction** : cour d''assises ou cour criminelle départementale

#### Exemples
- **Meurtre** (art. 221-1)
- **Assassinat** (art. 221-3)
- **Empoisonnement** (art. 221-5)
- **Viol** (art. 222-23)
- **Vol à main armée**

### B. Les délits

#### Caractéristiques
- **Infractions** intermédiaires
- **Peine** : emprisonnement ≤ 10 ans, amende, peines alternatives
- **Juridiction** : tribunal correctionnel

#### Exemples
- **Vol** (art. 311-1)
- **Escroquerie** (art. 313-1)
- **Abus de confiance** (art. 314-1)
- **Coups et blessures volontaires**
- **Délits routiers**

### C. Les contraventions

#### Caractéristiques
- **Infractions** les moins graves
- **Peine** : amende (5 classes)
- **Juridiction** : tribunal de police

#### Exemples
- **Contraventions** routières
- **Violation** de certains arrêtés municipaux
- **Tapage** nocturne

### D. La distinction infraction politique / infraction de droit commun

#### Infraction politique
Pour qu''il y ait infraction **politique**, il faut que l''infraction soit **visée par le texte** comme telle.

#### Conséquences
- **Régime** différent (extradition, amnistie, prescription)
- **Tribunal** parfois différent

## II. Les classifications selon la matérialité

### A. Infractions de commission et d''omission

#### 1. Infractions de commission
##### Définition
**On fait** quelque chose qu''on n''aurait pas dû faire.

##### Caractéristique
**Majorité** des incriminations : comportements **actifs**.

#### 2. Infractions d''omission
##### Définition
On **incrimine le fait de ne pas avoir agi**.

##### Principe
- **Exception** : nécessitent une **incrimination expresse**
- Si l''omission n''est pas expressément incriminée → pas de poursuite

##### Exemples
- **Refus de porter secours** (art. 223-6 CP)
- **Non-dénonciation** de crimes (art. 434-1 CP)
- **Omission** de témoigner (art. 434-11 CP)

#### 3. Les infractions contingentes
##### Notion
Peuvent être commises par **action** ou par **omission**.

##### Exemples
- **Homicide involontaire**
- **Blessures involontaires**
- **Mise en danger** d''autrui

### B. Infractions simples, complexes et d''habitude

#### 1. Infraction simple
##### Définition
**Un seul** élément matériel.

##### Exemple
- **Vol** : il faut juste **soustraire** la chose d''autrui

#### 2. Infraction complexe
##### Définition
L''auteur accomplit **plusieurs agissements**, donc **plusieurs éléments matériels**.

##### Exemples
- **Escroquerie** : manœuvres frauduleuses + remise
- **Entreprise individuelle terroriste**

#### 3. Infraction d''habitude
##### Définition
**Réalisation de plusieurs actes identiques** qui, **isolément**, ne sont pas punissables.

##### Principe
La JP considère que **dès la réitération**, l''infraction est constituée.

##### Exemples
- **Exercice illégal** de la médecine
- **Célébration** d''un mariage religieux avant le mariage civil
- **Appels téléphoniques** malveillants
- **Menaces de mort**

### C. Infractions instantanées, permanentes et continues

#### 1. Infraction instantanée
##### Définition
L''acte matériel se réalise en **un trait de temps**.

##### Exemples
- **Meurtre**
- **Vol**
- **Violences**

##### Conséquences
- **Prescription** : court à compter de l''acte
- **Loi applicable** : celle du jour de l''acte

#### 2. Infraction permanente
##### Définition
S''exécute en un trait de temps mais ses **effets se prolongent** dans le temps sans intervention de l''auteur des faits initiaux.

##### Exemple
**Construction d''un immeuble sans permis de construire**.

##### Conséquences
- **Prescription** : court à compter de l''acte initial
- **Effets** durables sans nouvelle intervention

#### 3. Infraction continue
##### Définition
Constituée d''un élément matériel qui, en raison de la **définition** de l''infraction, se prolonge pendant une certaine durée du fait de la **volonté réitérée** du délinquant.

##### Exemples
- **Recel d''une chose**
- **Port illégal** de décoration
- **Séquestration**
- **Bigamie**

##### Conséquences
- **Prescription** : court à compter de la **cessation** de l''infraction
- **Loi applicable** : la dernière en vigueur durant l''infraction

### D. Infractions matérielles, formelles et obstacles

#### 1. Infraction matérielle
##### Définition
Le **résultat** fait partie de la matérialité du délit.

##### Exemple
- **Meurtre** : il faut **causer la mort** d''autrui

#### 2. Infraction formelle
##### Définition
Le **résultat redouté ne fait pas partie** de l''infraction.

##### Exemples
- **Empoisonnement** : que cela entraîne la mort ou pas ne change pas la qualification
- **Faux et usage de faux**

#### 3. Infraction obstacle
##### Définition
**Incrimine des comportements** qui n''engendrent pas en eux-mêmes de trouble pour l''ordre social, mais qui sont **érigés en infraction** dans un but de **prophylaxie sociale** parce qu''ils sont **dangereux** et constituent les **signes avant-coureurs** d''une criminalité.

##### Exemples
- **Port d''arme** sans autorisation
- **Association de malfaiteurs**
- **Détention** de matériel terroriste
- **Conduite** sous l''empire d''un état alcoolique

##### Justification
- **Anticiper** la commission d''infractions plus graves
- **Protéger** la société en amont

## III. Tableau récapitulatif

### Critère matérialité

| Type | Caractéristique | Exemple |
|------|----------------|---------|
| **Commission** | Action positive | Vol |
| **Omission** | Inaction (rare, sur texte) | Non-assistance |
| **Contingente** | Les deux possibles | Homicide involontaire |

### Critère nombre d''actes

| Type | Caractéristique | Exemple |
|------|----------------|---------|
| **Simple** | 1 acte | Vol |
| **Complexe** | Plusieurs actes | Escroquerie |
| **Habitude** | Réitération | Exercice illégal de la médecine |

### Critère durée

| Type | Caractéristique | Exemple |
|------|----------------|---------|
| **Instantanée** | 1 trait de temps | Meurtre |
| **Permanente** | Effets durables sans acte nouveau | Construction sans permis |
| **Continue** | Volonté réitérée du délinquant | Séquestration, recel |

### Critère résultat

| Type | Caractéristique | Exemple |
|------|----------------|---------|
| **Matérielle** | Résultat = élément constitutif | Meurtre |
| **Formelle** | Résultat = indifférent | Empoisonnement |
| **Obstacle** | Anticiper un futur trouble | Association de malfaiteurs |

## IV. Conséquences pratiques de ces classifications

### A. Sur la prescription

#### Instantanée
- **Délai** court depuis l''acte

#### Continue
- **Délai** court depuis la **cessation**
- **Allongement** de la possibilité de poursuites

#### Habitude
- **Délai** court depuis le dernier acte

### B. Sur la loi applicable

#### Loi nouvelle pendant l''infraction continue
- **Application** au régime de l''infraction
- Plus complexe pour les infractions instantanées

### C. Sur la complicité

#### Infraction continue
- **Possibilité** d''être complice à tout moment
- **Aide** apportée pendant la durée

#### Infraction d''habitude
- **Difficulté** à caractériser la complicité (sur quel acte ?)

### D. Sur la qualification

#### Concours d''infractions
- **Plusieurs qualifications** possibles
- **Choix** de la plus grave (en principe)

#### Conflit de qualification
- **Spécialité** prime
- **Loi pénale** stricte

## V. Quelques arrêts importants

### A. Sur l''omission
##### Crim. 18 mai 2011
Confirmation : pas de poursuite pour omission sauf incrimination expresse.

### B. Sur l''infraction d''habitude
##### Crim. 26 mai 2009
**Dès la réitération**, l''infraction est constituée.

### C. Sur l''infraction continue
##### Crim. 21 mars 1995
**Prescription** ne commence à courir que lors de la **cessation**.

### D. Sur l''infraction obstacle
##### Crim. 1er février 2017
**Association de malfaiteurs** : pas besoin de réalisation effective d''une infraction.

## Conclusion

L''**élément matériel** est l''**aspect objectif** de l''infraction : ce qui est **observable** et **prouvable** matériellement.

Les **classifications** sont multiples mais essentielles :
- **Commission / omission** : nature du comportement
- **Simple / complexe / habitude** : nombre d''actes
- **Instantanée / permanente / continue** : durée
- **Matérielle / formelle / obstacle** : place du résultat

Ces classifications ont des **conséquences pratiques** importantes :
- **Prescription**
- **Loi applicable**
- **Complicité**
- **Qualification**

La **maîtrise** de ces classifications est **indispensable** pour analyser une situation pénale et déterminer la qualification appropriée.

L''**élément matériel** doit être **complété** par l''**élément moral** (intention ou faute) pour caractériser l''infraction. C''est l''objet de la fiche suivante après l''étude de la **tentative**.'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 5 - LA TENTATIVE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La tentative', 'Partie 2 - Chapitre 2 : Tentative',
       'Tentative suspendue (commencement d''exécution, désistement involontaire), tentative manquée, infraction impossible, répression de la tentative.',
       array['Article 121-4 CP', 'Article 121-5 CP', 'Iter criminis', 'Commencement d''exécution', 'Conception subjective', 'Conception objective', 'Désistement volontaire', 'Désistement involontaire', 'Repentir actif', 'Repenti', 'Tentative manquée', 'Infraction impossible', 'Affaire Perdereau'],
       28, 5,
'# La tentative

## Introduction

La **tentative** est un **aménagement** à l''exigence d''un élément matériel. Le législateur peut **incriminer** un comportement qui n''a **pas abouti** à la consommation de l''infraction.

> **Article 121-4 CP** : *« Est auteur de l''infraction la personne qui : 1° Commet les faits incriminés ; 2° Tente de commettre un crime ou, dans les cas prévus par la loi, un délit. »*

> **Article 121-5 CP** : *« La tentative est constituée dès lors que, manifestée par un commencement d''exécution, elle n''a été suspendue ou n''a manqué son effet qu''en raison de circonstances indépendantes de la volonté de son auteur. »*

## I. L''*iter criminis* et la place de la tentative

### A. Le chemin criminel

#### Notion d''iter criminis
**Chemin** qui mène du **projet** à la **consommation** de l''infraction.

#### Schéma

| Étape | Zone | Répression |
|-------|------|-----------|
| **Pensée criminelle** | Verte (impunité) | Non |
| **Actes préparatoires** | Verte (impunité) | Non (sauf infractions obstacles) |
| **Commencement d''exécution** | Orange (tentative) | Oui si désistement involontaire |
| **Consommation** | Rouge (infraction) | Oui |

### B. Le principe d''impunité de la phase préparatoire

#### Liberté individuelle
- **Pensées** : impunies (*nemo cogitatione punitur*)
- **Actes préparatoires** : impunis en principe

#### Exceptions : les infractions obstacles
- **Port d''arme** sans autorisation
- **Association** de malfaiteurs
- **Détention** de matériel destiné à commettre une infraction

#### Justification
Le législateur **anticipe** la commission d''infractions plus graves.

## II. La tentative suspendue

### A. Le commencement d''exécution

#### Notion
**Pivot** de la tentative, **pas défini par la loi** → définition jurisprudentielle.

#### Deux conceptions

##### Conception subjective (majoritaire)
> Le commencement d''exécution est constitué des **actes qui tendent au crime ou au délit avec intention de le commettre**.

###### Référence à l''**intention**
- **Volonté** de l''auteur
- **État d''esprit** déterminant

##### Conception objective
> Le commencement d''exécution est composé de **tous les actes qui tendent, directement et immédiatement, à la consommation de l''infraction**.

###### Critère
- **Proximité temporelle** entre l''acte et sa pleine réalisation

### B. Application : l''escroquerie à l''assurance

#### Faits-types
**Auto-destruction** d''un bien pour toucher la police d''assurance.

#### Position de la Cour de cassation
- **Détruire son bien** = acte **préparatoire** (zone verte)
- **Pas encore** une tentative
- **Tentative** = au moment de la **déclaration de sinistre**

#### Conclusion
- **Avant** la déclaration : pas d''escroquerie
- **Avec** la déclaration : tentative d''escroquerie

### C. Le désistement involontaire

#### Exigence légale
**Article 121-5 CP** : la suspension doit être due à des **circonstances indépendantes de la volonté** de l''auteur.

#### Causes acceptées comme involontaires

##### Opposition d''une personne
- **Intervention** des forces de police
- **Résistance** de la victime

##### Résistance d''une chose
- **Inviolabilité** du coffre-fort
- **Verrou** trop solide

### D. Le désistement volontaire (exonératoire)

#### Notion
**Renoncement** délibéré de l''auteur **avant** la consommation.

#### Effet
- **Pas de tentative punissable**
- **Impunité** de l''auteur

#### Exemples
- **Arrivée** de passants → renoncement
- **Manque** de coordination des complices
- **Surveillance** des employés d''un magasin

#### Justification
- **Politique pénale** : encourager le renoncement
- **Absence** de danger persistant

### E. Le repentir actif

#### Distinction avec le désistement
- **Désistement** : avant la consommation
- **Repentir actif** : après la consommation

#### Effet
- **Pas exonératoire** : la responsabilité est acquise
- **Tente seulement** à réparer les conséquences
- Peut être **circonstance atténuante**

### F. Le statut du « repenti »

#### Notion
**Celui qui** a tenté de commettre un crime/délit et **averti** les autorités administratives ou judiciaires.

#### Effet
**Exempt de peine** (s''il a permis d''éviter la réalisation).

## III. La tentative manquée

### A. Définition

#### Article 121-5 CP
La tentative est constituée si elle « **n''a manqué son effet** qu''en raison de circonstances indépendantes de la volonté de son auteur ».

#### Notion
L''agent a **manqué son but** alors qu''il a **pleinement exécuté** l''acte qu''il désirait commettre.

### B. Exemple type
**Meurtrier** qui manque sa victime parce que :
- Il a **mal visé**
- Elle a **bougé**

### C. Distinction avec l''infraction impossible
- **Manquée** : l''infraction **aurait pu** réussir
- **Impossible** : l''infraction **ne pouvait pas** réussir

## IV. L''infraction impossible

### A. Définition

#### Notion
L''auteur **ne pouvait pas** la réaliser en raison d''une **circonstance dont il ignorait l''existence** au moment de son action.

### B. Exemples
- **Voler** un appartement vide
- **Tirer** sur un mort (croyant qu''il vivait)

### C. L''affaire Perdereau

#### Faits
Un individu se rend sur les lieux d''une rixe pour **achever** l''une des victimes dont il **ignorait** qu''elle était **déjà morte**.

#### Solution (Chambre criminelle)
**Condamnation** de l''individu pour **tentative** de meurtre.

#### Portée
- **Confirmation** : l''infraction impossible est **punissable** comme tentative
- **Indifférence** de l''ignorance de l''auteur sur les circonstances réelles

### D. Justification de la répression
- **Intention** criminelle caractérisée
- **Dangerosité** sociale de l''auteur
- **Politique pénale**

## V. La répression de la tentative

### A. Le principe : répression identique

#### Article 121-4 CP
> *« Est auteur de l''infraction la personne qui : (...) 2° Tente de commettre un crime ou, dans les cas prévus par la loi, un délit. »*

#### Conséquence
- **Répression unitaire**
- **Même peine** que l''auteur de l''infraction consommée

### B. Modalités selon la nature de l''infraction

#### Tentative de crime
- **Toujours punissable**
- **Article 121-4 CP**

#### Tentative de délit
- **Punissable seulement** dans les cas **prévus par la loi**
- **Mention** expresse

#### Tentative de contravention
- **Jamais punissable**

### C. Application

#### Tentative générale
- **Crimes** : tous
- **Délits** : selon le texte

#### Exemples de délits dont la tentative est punissable
- **Vol** (art. 311-13)
- **Escroquerie** (art. 313-3)
- **Abus de confiance** (art. 314-1)
- **Coups et blessures volontaires** (cas particuliers)

## VI. Le calcul de la peine pour la tentative

### A. Principe
**Même quantum** que l''infraction consommée.

### B. Individualisation
- **Possibilité** de prononcer une peine inférieure
- **Pouvoir** du juge
- **Circonstances** atténuantes

## VII. Tableau récapitulatif

### Distinction entre les notions voisines

| Notion | Définition | Effet |
|--------|-----------|-------|
| **Tentative suspendue** | Commencement d''exécution + désistement involontaire | Punissable |
| **Désistement volontaire** | Renoncement avant la consommation | Impunité |
| **Tentative manquée** | Acte exécuté qui n''a pas atteint son but | Punissable |
| **Infraction impossible** | Ne pouvait pas aboutir | Punissable (*Perdereau*) |
| **Repentir actif** | Tentative de réparation après consommation | Pas exonératoire |
| **Repenti** | Dénonciation aux autorités | Exempt de peine |

## VIII. Quelques arrêts importants

### A. Sur le commencement d''exécution
##### Crim. 25 octobre 1962, Lacour
**Affaire** de l''attentat manqué : la **conception subjective** est privilégiée.

### B. Sur l''infraction impossible
##### Crim. 16 janvier 1986, Perdereau
**Confirmation** de la condamnation d''un homme ayant frappé un mort.

### C. Sur le désistement
##### Crim. 20 mars 1974
**Désistement volontaire** caractérisé par l''arrivée de passants.

##### Crim. 10 janvier 1996
**Pas de désistement volontaire** quand causé par l''intervention de la police.

## Conclusion

La **tentative** est un **concept essentiel** du droit pénal qui permet de **réprimer** des comportements dangereux **avant** la consommation de l''infraction.

Sa **caractérisation** suppose :
- Un **commencement d''exécution** (notion jurisprudentielle, conception subjective majoritaire)
- Un **désistement involontaire**

Ses **variantes** (tentative manquée, infraction impossible) sont toutes **punissables** depuis l''arrêt **Perdereau** (1986).

Sa **répression** est **identique** à celle de l''infraction consommée (sauf individualisation), ce qui marque la **gravité** que le législateur attribue à la **volonté criminelle**.

La **distinction** avec :
- Les **actes préparatoires** (impunis sauf infraction obstacle)
- Le **désistement volontaire** (impunité)
- Le **repentir actif** (pas exonératoire)

est **fondamentale** pour la qualification.

La **tentative** illustre la **tension** entre :
- **Protection** de la société (anticipation)
- **Liberté individuelle** (impunité des pensées et préparatifs)
- **Politique pénale** (encourager le désistement volontaire)'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 6 - L'ÉLÉMENT MORAL DE L'INFRACTION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''élément moral de l''infraction', 'Partie 2 - Chapitre 3 : Élément moral',
       'Faute pénale intentionnelle (dol général, dol spécial, dol éventuel), faute pénale non-intentionnelle (loi du 10 juillet 2000), faute simple, caractérisée, délibérée, causalité directe et indirecte.',
       array['Article 121-3 CP', 'Dol général', 'Dol spécial', 'Animus necandi', 'Loi 10 juillet 2000', 'Faute simple', 'Imprudence', 'Négligence', 'Faute caractérisée', 'Faute délibérée', 'Causalité directe', 'Causalité indirecte', 'Paramètre déterminant'],
       28, 6,
'# L''élément moral de l''infraction

## Introduction

L''**élément moral** est l''**aspect subjectif** de l''infraction : ce qu''il se passe **dans la tête** de l''auteur.

> **Article 121-3 CP** : *« Il n''y a point de crime ou de délit sans intention de le commettre. Toutefois, lorsque la loi le prévoit, il y a délit en cas de mise en danger délibérée de la personne d''autrui. Il y a également délit, lorsque la loi le prévoit, en cas de faute d''imprudence, de négligence ou de manquement à une obligation de prudence ou de sécurité prévue par la loi ou le règlement (...). »*

#### Décision du Conseil constitutionnel
Il y a **nécessairement** un élément moral pour les **crimes** et les **délits**.

## I. Le principe : la faute pénale intentionnelle

### A. Article 121-3 al. 1 CP

> *« Il n''y a point de crime ou de délit sans intention de le commettre. »*

### B. Le principe intentionnel

#### Application
##### Crimes
- **Toujours intentionnels**, sans exception

##### Délits (jusqu''à 10 ans d''emprisonnement)
- **Intentionnels par principe**
- **Sauf** si la rédaction de l''incrimination prévoit une faute d''imprudence ou de mise en danger

##### Contraventions
- La **faute contraventionnelle** est **matérielle** (pas d''élément moral exigé)

#### Exemple
**Meurtre** : l''intention est l'' **animus necandi** (volonté de tuer).

### C. Un principe pluriel

#### Notion non définie par la loi
La **jurisprudence** définit au cas par cas.

#### Doctrine
L''**intention** est au **minimum** un **dol général**.

#### L''intention = double volonté
- **Volonté** de l''acte incriminé
- **Volonté** du résultat

### D. Les variantes du dol

#### 1. Le dol général
##### Définition
**Conscience** de commettre un acte interdit + **volonté** de le commettre.

##### Application
- **Présent dans toutes** les infractions intentionnelles
- **Suffit** en principe

#### 2. Le dol spécial
##### Définition
**Intention** spécifique exigée par certains textes.

##### Exemple
- **Meurtre** : **animus necandi** (intention de tuer)
- **Escroquerie** : **intention frauduleuse**
- **Faux** : **intention** de causer un préjudice

#### 3. Le dol éventuel
##### Définition
L''auteur **prévoit** le résultat **comme possible** et **l''accepte**.

##### En droit français
- **Refus traditionnel** d''assimiler au dol direct
- **Plus proche** de la mise en danger délibérée

#### 4. Le dol indéterminé
##### Définition
**Intention** de causer un dommage **sans précision**.

##### Application
- **Violences** : qualification selon le résultat (ITT)

#### 5. Le dol dépassé
##### Définition
Le résultat **dépasse** l''intention initiale.

##### Exemple
- **Coup** qui entraîne la mort
- **Qualification** : violences ayant entraîné la mort sans intention de la donner (art. 222-7 CP)

### E. La preuve de l''intention

#### Charge
**Ministère public**.

#### Modes de preuve
- **Tous moyens** (faits juridiques)
- **Déductions** des circonstances
- **Comportements** antérieurs et postérieurs

#### Présomption
**Pas de présomption d''intention** en droit pénal français.

## II. L''exception : la faute pénale non-intentionnelle

### A. Article 121-3 alinéas 2 à 5

#### Texte
> *« Toutefois, lorsque la loi le prévoit, il y a délit en cas de mise en danger délibérée de la personne d''autrui. Il y a également délit, lorsque la loi le prévoit, en cas de faute d''imprudence, de négligence ou de manquement à une obligation de prudence ou de sécurité (...). »*

#### Domaine
- **Délits** non-intentionnels uniquement
- **Sur prévision** expresse de la loi

#### Caractéristique
- Le législateur **sanctionne** ce qui relève de l''**accident** plus ou moins prévisible

### B. La loi du 10 juillet 2000 (Loi Fauchon)

#### Contexte
- **Multiplication** des poursuites contre les **décideurs publics** (élus, fonctionnaires)
- **Surresponsabilisation** dénoncée
- **Réforme** nécessaire

#### Objectifs
- **Rendre plus difficile** l''engagement de la responsabilité pénale des décideurs
- **Permettre** l''engagement de la responsabilité civile

#### Innovation principale
**Distinction** causalité directe / indirecte avec **régimes différents**.

### C. Les types de fautes pénales non-intentionnelles

#### 1. La faute d''imprudence et de négligence
##### Définition
**Manque de prudence ou de diligence** dans une situation.

##### Domaine
- **Tous régimes** de responsabilité pénale non-intentionnelle

#### 2. Le manquement à une obligation de prudence ou de sécurité
##### Définition
**Violation** d''une obligation prévue par la **loi ou le règlement**.

##### Conditions
- **Existence** d''une obligation textuelle
- **Manquement** caractérisé

#### 3. La faute caractérisée - Article 121-3 al. 4 CP
##### Texte
> *« Une faute caractérisée et qui exposait autrui à un risque d''une particulière gravité qu''elles ne pouvaient ignorer. »*

##### Double approche jurisprudentielle
- **Faute professionnelle d''une particulière gravité**
- **Succession** de fautes simples d''imprudence ou de négligence

##### Exemple
Vendeur d''un volet roulant de garage qui n''informe pas des règles élémentaires de sécurité → mort d''un enfant (faute caractérisée).

#### 4. La faute délibérée - Article 121-3 al. 4 CP
##### Texte
> *« Violer de façon manifestement délibérée une obligation particulière de prudence ou de sécurité prévue par la loi ou le règlement. »*

##### Conditions
- **Obligation particulière** (et non générale)
- **Violation manifestement délibérée**
- **Source** : loi ou règlement

##### Sources
- **Loi** : normes françaises
- **Règlement** : actes des autorités administratives

## III. La causalité

### A. L''exigence de causalité

#### Principe
La faute doit entretenir une **relation causale certaine** avec le **dommage** survenu.

#### Référence
**Article 121-3 CP** : seule référence à la causalité (et **uniquement** la causalité indirecte).

#### Confirmation jurisprudentielle
**Crim., 2008** : la causalité doit être **établie** en matière d''homicide involontaire.

### B. La causalité directe

#### Notion
La faute est **directement** à l''origine du dommage.

#### Circulaire d''application (loi 10 juillet 2000)
Réservait à :
- **Contact** entre l''auteur de l''infraction et la victime
- **Contact** entre un objet contrôlé par l''auteur et la victime

#### Évolution jurisprudentielle
##### Concept du « paramètre déterminant »
**Crim. 25 septembre 2001** : un automobiliste en excès de vitesse heurte un sanglier qui tue une autre conductrice. **Causalité directe** retenue car l''excès de vitesse est un **paramètre déterminant**.

#### Régime
- **Faute simple** suffit
- **Responsabilité** pénale facilement engagée

### C. La causalité indirecte

#### Définition - Article 121-3 al. 4 CP
> *« Les personnes physiques qui n''ont pas causé directement le dommage mais qui ont créé ou contribué à créer la situation qui a permis la réalisation du dommage ou qui n''ont pas pris les mesures permettant de l''éviter. »*

#### Conditions cumulatives
- Le dommage est un **élément constitutif** de l''infraction
- L''auteur est une **personne physique**

#### Régime
- **Faute simple insuffisante**
- Il faut une **faute caractérisée** OU une **faute délibérée**

### D. Le tableau de la causalité

| Type | Personne | Faute requise |
|------|----------|---------------|
| **Directe** | Physique ou morale | Faute simple |
| **Indirecte** | Personne morale | Faute simple |
| **Indirecte** | Personne physique | Faute caractérisée ou délibérée |

### E. La distinction causalité directe/indirecte n''est utile que si

1. La personne mise en cause est une **personne physique**
2. L''infraction reprochée **comporte un résultat préjudiciable**

## IV. L''appréciation in concreto de la faute

### A. Article 121-3 al. 3 CP

> *« S''il est établi que l''auteur des faits n''a pas accompli les diligences normales compte tenu, le cas échéant, de la nature de ses missions ou de ses fonctions, de ses compétences ainsi que du pouvoir et des moyens dont il disposait. »*

### B. Critères d''appréciation
- **Nature** des missions/fonctions
- **Compétences** personnelles
- **Pouvoir** et **moyens** disponibles

### C. Application
- **Cour de cassation** : appréciation in concreto applicable aussi en cas de causalité indirecte
- **Crim. 11 janvier 2011** : confirmation

### D. Exemple de faute simple
**Employeur** ne délivrant pas à un salarié une **formation à la sécurité** correspondant au type de matériel utilisé.

## V. La mise en danger délibérée d''autrui

### A. Article 121-3 al. 2 CP

> *« Il y a délit en cas de mise en danger délibérée de la personne d''autrui. »*

### B. Notion
**Comportement** délibéré exposant autrui à un **risque** de mort ou de blessures graves.

### C. Domaine
- **Délits spécifiques** (art. 223-1 CP : risques causés à autrui)
- **Aggravation** des homicides et blessures involontaires

### D. Distinction avec la faute délibérée
- **Faute délibérée** : élément constitutif (présent ici de manière implicite)
- **Mise en danger délibérée** : violation d''une obligation particulière

## VI. Cas particuliers

### A. Les infractions non-intentionnelles fréquentes

#### Liste
- **Homicide involontaire** (art. 221-6)
- **Blessures involontaires** (art. 222-19, 222-20)
- **Dégradation involontaire** par incendie/explosion
- **Délit de risques causés à autrui** (art. 223-1)
- **Détournement** non intentionnel de biens

### B. La complicité d''infraction non-intentionnelle

#### Particularité
**Possibilité** acceptée par la jurisprudence (rare).

#### Exemple
**Dirigeant** qui ne donne pas d''instructions et expose son personnel à un risque (complicité par omission).

### C. La responsabilité du chef d''entreprise

#### Présomption de faute
- **Présomption simple**
- **Peut se renverser** par la preuve contraire

#### Délégation de pouvoirs
- **Transfère** la responsabilité au délégataire
- **Conditions** : compétence, autorité, moyens

## VII. Quelques arrêts importants

### A. Sur l''intention
##### Crim. 11 octobre 2011
**Intention** peut se déduire des comportements ultérieurs (escroquerie).

### B. Sur la faute caractérisée
##### Crim. 12 décembre 2000
**Premier arrêt** appliquant la loi du 10 juillet 2000.

### C. Sur le paramètre déterminant
##### Crim. 25 septembre 2001
**Causalité directe** par paramètre déterminant.

### D. Sur la faute du dirigeant
##### Crim. 18 mars 2003
**Présomption** de faute du dirigeant (sécurité au travail).

## Conclusion

L''**élément moral** est **indispensable** pour caractériser une infraction (sauf contraventions).

### Le principe intentionnel
- **Crimes** : toujours intentionnels
- **Délits** : intentionnels par principe
- **Plusieurs variantes** du dol (général, spécial, éventuel, indéterminé, dépassé)

### L''exception non-intentionnelle
- **Réforme** majeure : loi du 10 juillet 2000
- **Distinction** causalité directe / indirecte
- **Faute simple / caractérisée / délibérée** selon les cas

### La causalité
- **Concept** central depuis 2000
- **Paramètre déterminant** dans la jurisprudence
- **Adaptation** au cas par cas

L''**individualisation** est centrale : l''appréciation **in concreto** (art. 121-3 al. 3) permet une **justice adaptée** à chaque situation.

La **maîtrise** de l''élément moral est **fondamentale** car elle conditionne la **qualification** de l''infraction et donc la **responsabilité** pénale.

La **fiche suivante** sur les **personnes responsables** complète cette analyse : qui peut être **auteur**, **complice**, ou voir sa **responsabilité** engagée ?'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 7 - LES CONDITIONS POSITIVES DE LA RESPONSABILITÉ
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les conditions positives de la responsabilité', 'Partie 3 - Chapitre 1 : Responsabilité',
       'Auteur, complice (aide/assistance, instigation), responsabilité pénale des personnes morales (art. 121-2), responsabilité du dirigeant, délégation de pouvoirs.',
       array['Article 121-4 CP', 'Auteur', 'Article 121-6 CP', 'Article 121-7 CP', 'Complice', 'Aide ou assistance', 'Instigation', 'Article 121-2 CP', 'Personne morale', 'Organe', 'Représentant', 'Délégation de pouvoirs', 'Affaire Rochefort'],
       28, 7,
'# Les conditions positives de la responsabilité

## Introduction

Pour engager la **responsabilité pénale**, une **infraction** doit être **imputée** : attribuée et reprochée à une personne. On ne peut être pénalement responsable qu''à **deux titres** : **auteur** ou **complice**.

> **Adage** : Responsabilité pénale = **Infraction** + **Imputation**

> **CC** (sur les articles 8 et 9 DDHC) : *« Nul n''est punissable que de son propre fait. »*

## I. Comment être responsable ?

### A. L''auteur de l''infraction

#### Article 121-4 CP
> *« Est auteur de l''infraction la personne qui : 1° Commet les faits incriminés ; 2° Tente de commettre un crime ou, dans les cas prévus par la loi, un délit. »*

#### Définition
**Auteur** : celui qui **réunit** les éléments **matériel** ET **moral** de l''infraction.

#### Cas particuliers

##### Co-auteur
- **Chacun** réalise tous les éléments
- **Responsabilité** propre

##### Auteur médiat
- **Utilisation** d''un tiers innocent
- **Responsabilité** de l''auteur médiat

#### Le principe de personnalité de la responsabilité

##### Personnalité de la responsabilité
- **Principe quasi-absolu**
- **Interdit** de déclarer coupable un tiers à l''infraction
- **Fondement** : articles 8 et 9 DDHC

##### Personnalité de la peine
- **Principe relatif**
- **Interdit** en principe de faire subir une peine à un tiers
- **Exceptions** prévues par la loi

##### Exemple d''exception
**Code du travail** : possibilité pour le tribunal de mettre à la charge du chef d''entreprise les amendes prononcées contre un employé qui s''est rendu coupable d''une atteinte à la vie ou à l''intégrité d''autrui en violant la législation du travail.

### B. Le complice

#### Article 121-6 CP
> *« Sera puni comme auteur, le complice de l''infraction au sens de l''article 121-7. »*

#### Article 121-7 CP
> *« Est complice d''un crime ou d''un délit la personne qui sciemment, par aide ou assistance, en a facilité la préparation ou la consommation. Est également complice la personne qui par don, promesse, menace, ordre, abus d''autorité ou de pouvoir aura provoqué à une infraction ou donné des instructions pour la commettre. »*

#### Définition
**Complice** : personne qui **participe** à la commission d''une infraction selon les modes prévus.

## II. Les conditions générales de la complicité

### A. Un fait principal punissable

#### Exigence
**Existence** d''un fait principal punissable.

#### Tempérament : l''affaire du vol acquitté
**Exemple** : Lorsque l''auteur principal d''un vol est acquitté pour **défaut d''intention frauduleuse**, il n''existe pas de fait principal délictueux → pas de complicité par recel.

#### Précisions

##### Pas besoin de poursuite de l''auteur principal
**L''existence** du fait principal est **suffisante** ; pas besoin de poursuivre l''auteur principal.

##### Tentative et complicité
- **Auteur d''une tentative** = légalement assimilé à l''auteur
- **Complicité de tentative** = punissable

##### Complicité indirecte
**Cour de cassation** : **complicité du complice** est punissable.

### B. Un fait positif

#### Principe
Le complice doit avoir commis un **fait positif** (un acte).

#### Acte antérieur ou concomitant au fait principal punissable
**Principe** : l''acte de complicité doit être antérieur ou concomitant.

#### Exception : acte postérieur
La Cour de cassation estime qu''un **acte postérieur** justifierait la répression s''il résulte d''un **accord antérieur** au fait principal.

#### Pas de complicité par abstention
**Sauf** s''il y avait une **obligation légale** d''empêcher l''infraction.

#### Exemple
**Agent de police** condamné pour complicité de vol pour n''avoir pas empêché un de ses collègues de commettre un vol de choses dont ils avaient la garde.

### C. La volonté coupable

#### Notion
- **Caractère volontaire** de l''acte de participation
- **Conscience** de concourir à l''infraction principale

#### Preuve
**Cour de cassation** : la preuve de l''intention frauduleuse peut se déduire de **comportements ultérieurs**.

#### Pas de complicité involontaire
**Mais** la complicité volontaire peut être retenue en cas de commission d''une infraction principale **non-intentionnelle**.

### D. Le dépassement par l''auteur principal

#### Principe
Le complice peut être retenu si l''infraction commise est **plus grave** que prévu, **dans la mesure** où il existe un **rapport** entre l''infraction réalisée et celle projetée.

#### Affaire Rochefort
Les comparses s''étaient entendus pour étrangler la victime, qui a été **électrocutée** → **complicité retenue** car rapport entre les deux modes opératoires.

#### Limite
Si l''auteur principal **dépasse** ce qui était escompté → **impunité** du complice.

#### Exemple
Le **créancier** qui remet une arme à un tiers pour impressionner son débiteur n''est **pas complice du meurtre** commis par ce tiers sur une autre personne avec laquelle il a eu une altercation.

## III. Les conditions spécifiques de la complicité

### A. La complicité par aide ou assistance (art. 121-7 al. 1)

#### Texte
> *« Est complice d''un crime ou d''un délit la personne qui sciemment, par aide ou assistance, en a facilité la préparation ou la consommation. »*

#### Domaine
- **Crimes** et **délits** uniquement
- **Pas les contraventions** sauf disposition contraire

#### Formes
- **Aide** : fournir les moyens (arme, plan, vélo, etc.)
- **Assistance** : présence pour soutenir, surveiller, faciliter

### B. La complicité par instigation (art. 121-7 al. 2)

#### Texte
> *« Est également complice la personne qui par don, promesse, menace, ordre, abus d''autorité ou de pouvoir aura provoqué à une infraction ou donné des instructions pour la commettre. »*

#### Domaine
- **Tous types** d''infractions (crimes, délits, et certaines contraventions)

#### Formes

##### 1. La provocation
###### Conditions
- **Adminicules précis** : don, promesse, menace, ordre, abus d''autorité ou de pouvoir
- **Liste limitative**

###### Exemples
- **Don** : remettre de l''argent
- **Promesse** : promettre un avantage
- **Menace** : menacer de représailles
- **Ordre** : donner un ordre (relation d''autorité)
- **Abus d''autorité** : exploiter un pouvoir
- **Abus de pouvoir** : utiliser ses fonctions

##### 2. Les instructions
###### Conditions
- **Précises** et **individualisées**
- **Permettre** la commission concrète

###### Exemples
- **Plan** détaillé d''un cambriolage
- **Adresse** et habitudes de la victime
- **Méthode** précise pour réaliser l''infraction

## IV. La sanction de la complicité

### A. Article 121-6 CP
> *« Sera puni comme auteur, le complice de l''infraction au sens de l''article 121-7. »*

### B. Principe
**Le complice est puni comme si lui-même avait commis l''infraction**.

#### Conséquences
- **Même quantum** de peine
- **Mêmes circonstances** aggravantes ou atténuantes
- **Individualisation** par le juge

### C. Particularités

#### Circonstances personnelles
- **Aggravantes** : seulement pour celui qui les présente
- **Réelles** : appliquées à tous

#### Exemple
**Récidive** : aggrave uniquement la peine du récidiviste.

## V. Qui est responsable ?

### A. La responsabilité pénale des personnes morales

#### Article 121-2 CP
> *« Les personnes morales, à l''exclusion de l''État, sont responsables pénalement (...) des infractions commises, pour leur compte, par leurs organes ou représentants. Toutefois, les collectivités territoriales et leurs groupements ne sont responsables pénalement que des infractions commises dans l''exercice d''activités susceptibles de faire l''objet de conventions de délégation de service public. »*

#### Apport
**Principale innovation** du CP de 1992.

### B. Les conditions

#### 1. Existence d''une personne morale
- La personne morale doit **exister** pour que sa responsabilité soit engagée
- **Exclus** : groupements **sans personnalité juridique**

#### 2. Hors État
- **L''État** ne peut pas être pénalement responsable

#### 3. Cas des collectivités territoriales
**Limitation** : ne sont responsables que des infractions commises dans des **activités susceptibles de délégation de service public**.

#### 4. Infraction commise par un organe ou un représentant

##### Organe
- **Personne** chargée par la **loi ou les statuts** de l''administration ou de la direction
- Exemple : membre du **conseil d''administration**

##### Représentant
- **Personne** apte à représenter la personne morale auprès des tiers
- Exemple : **directeur général**

##### Identification
La Cour exige l''**identification** des organes ou représentants.

#### 5. Pour le compte de la personne morale
- **Agissements** commis dans l''**intérêt** de la personne morale
- **Activité** professionnelle

### C. La sanction

#### Règle du quintuple - Article 131-88 CP
La sanction applicable est une **amende** calculée à partir du **montant prévu pour les personnes physiques**, **multiplié par 5**.

#### Peines complémentaires
- **Placement** sous surveillance judiciaire
- **Exclusion** des marchés publics
- **Interdiction** d''exercer
- **Dissolution** (pour les infractions graves)

### D. Évolution
- **Avant 2004** : principe de **spécialité** (seulement certaines infractions)
- **Loi du 9 mars 2004** : généralisation
- **Aujourd''hui** : responsabilité pour **toutes** les infractions

## VI. La responsabilité pénale des dirigeants

### A. Notion

#### Définition
**Mécanisme légal et prétorien** d''imputation au **dirigeant** d''une entreprise des infractions commises au sein de son établissement.

#### Statut du dirigeant
**Auteur indirect / médiat** de l''infraction.

### B. La présomption de faute

#### Notion
**Faute** du dirigeant quant à la **surveillance** et à l''**organisation** de son entreprise est **présumée**.

#### Caractère
- **Présomption simple**
- **Peut se renverser** par la preuve contraire

### C. La délégation de pouvoirs

#### Effet
**Transfère** la responsabilité pénale du dirigeant au **délégataire**.

#### Évolution jurisprudentielle
##### À partir de 1993 (Chambre criminelle)
**Acceptation** de la délégation pour :
- **Publicité mensongère**
- **Contrefaçon**
- **Revente à perte**

#### Conditions de la délégation

##### Entreprise de taille suffisante
**Empêche** le dirigeant d''assurer une surveillance effective.

##### Délégué qualifié
- **Compétence**
- **Autorité** nécessaire
- **Moyens financiers et techniques**

##### Délégation expresse
- **Preuve** par tous moyens
- **Doit être expresse**

### D. En l''absence de délégation
Le **chef d''entreprise** conserve **seul** la responsabilité pénale.

## VII. Cas pratiques

### A. La complicité du complice
**Punissable** selon la Cour de cassation.

### B. La complicité par silence
**Sauf** obligation légale d''empêcher l''infraction, **non punissable**.

### C. La responsabilité morale et physique cumulée
- **Cumul** possible
- **Personne morale** + **dirigeant** peuvent être responsables

### D. L''auteur intellectuel
Celui qui **conçoit** l''infraction sans la commettre matériellement → **complice par instigation**.

## VIII. Tableau récapitulatif

### Modes de responsabilité

| Mode | Article | Conditions |
|------|---------|-----------|
| **Auteur** | 121-4 | Réunit éléments matériel + moral |
| **Co-auteur** | 121-4 | Chacun réunit tous les éléments |
| **Auteur médiat** | Jurisprudence | Utilisation d''un tiers innocent |
| **Complice par aide** | 121-7 al. 1 | Aide, assistance, fait positif |
| **Complice par instigation** | 121-7 al. 2 | Provocation ou instructions |

### Personnes responsables

| Personne | Conditions | Sanction |
|----------|-----------|----------|
| **Physique** | Article 121-4 | Peine prévue |
| **Morale** | Article 121-2 (organe/représentant) | Quintuple |
| **Dirigeant** | Présomption de faute + délégation | Selon infraction |

## Conclusion

Les **conditions positives** de la responsabilité pénale s''articulent autour de deux questions :

### Comment être responsable ?
- **Auteur** ou **complice** (deux modes)
- **Co-auteur**, **auteur médiat** : variations sur le mode auteur
- **Complicité** : par aide/assistance ou par instigation

### Qui est responsable ?
- **Personnes physiques** : règle générale
- **Personnes morales** : depuis 1992 (art. 121-2)
- **Dirigeants** : présomption + délégation

Le **principe de personnalité de la responsabilité** (DDHC, art. 8 et 9) reste **quasi-absolu** : on ne peut être responsable que de **son propre fait**.

La **complicité** est punie **comme** l''infraction principale (art. 121-6), avec quelques nuances sur les circonstances personnelles/réelles.

La **responsabilité pénale des personnes morales** est une **innovation majeure** du CP de 1992, généralisée en 2004. Elle suppose une infraction **commise par un organe ou représentant** **pour le compte** de la personne morale.

Reste à examiner les **conditions négatives** : les **causes d''irresponsabilité** qui peuvent **exonérer** l''auteur ou le complice de toute responsabilité pénale, objet de la **fiche suivante**.'
from public.subjects where slug = 'l2-droit-penal-general';

-- =====================================================================
-- FICHE 8 - LES CAUSES D'IRRESPONSABILITÉ PÉNALE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les causes d''irresponsabilité pénale', 'Partie 3 - Chapitre 2 : Irresponsabilité',
       'Causes subjectives (minorité, trouble psychique, contrainte), causes objectives (autorité de la loi, légitime défense, état de nécessité), causes mixtes (erreur sur le droit, alerte).',
       array['Article 122-1 CP', 'Trouble psychique', 'Article 122-2 CP', 'Contrainte', 'Article 122-3 CP', 'Erreur sur le droit', 'Article 122-4 CP', 'Article 122-5 CP', 'Légitime défense', 'Article 122-7 CP', 'État de nécessité', 'CJPM', 'Lanceur d''alerte'],
       30, 8,
'# Les causes d''irresponsabilité pénale

## Introduction

Les **causes d''irresponsabilité pénale** sont prévues aux **articles 122-1 et suivants du Code pénal**. Elles font **disparaître la responsabilité** de l''auteur d''une infraction.

#### Classification doctrinale
- **Causes subjectives** : minorité, aliénation, contrainte
- **Causes objectives** : commandement de l''autorité légitime, légitime défense, état de nécessité
- **Causes mixtes** : erreur sur le droit, alerte

## I. Les causes subjectives d''irresponsabilité

### A. L''absence de discernement

#### 1. Le droit pénal des mineurs

##### Cadre légal
- **Code de la justice pénale des mineurs (CJPM)** : adopté par ordonnance de 2019, entré en vigueur en **septembre 2021**
- **CC, 2002** : autonomie du droit pénal des mineurs

##### Notion de mineur
**Avoir un âge inférieur** au seuil légal de responsabilité pleine et entière.

##### Critère du discernement
Selon le CJPM :
> *« Est capable de discernement le mineur qui a compris et voulu son acte et qui est apte à comprendre le sens de la procédure pénale dont il fait l''objet. »*

Traditionnellement défini comme **« l''aptitude à distinguer le bien du mal »**.

##### Présomptions selon l''âge
- **Mineur < 13 ans** : présumé **non capable** de discernement
- **Mineur ≥ 13 ans** : présumé **capable** de discernement
- **Présomptions simples** : renversables par la preuve contraire

##### Conséquences

###### Capable de discernement
**Pénalement responsable**.

###### Réponses pénales

**Mineurs capables de discernement**
- Peuvent faire l''objet de **mesures éducatives** et de **peines**
- **Primat** de l''éducatif sur le répressif

**Mineurs < 13 ans**
- **Aucune peine** ne peut être prononcée
- **Exemption** de peine

**Tous mineurs**
- **Peines diminuées**
- **Atténuation** des sanctions

##### Mesures éducatives (CJPM)
- **Avertissement judiciaire**
- **Mesure éducative judiciaire** (peut se cumuler avec les peines) :
  - **Accompagnement** individualisé
  - **Interdiction** d''entrer en contact
  - **Interdiction** d''aller et venir
  - **Module** d''insertion

#### 2. Le trouble psychique

##### Article 122-1 CP
> *« N''est pas pénalement responsable la personne qui était atteinte, au moment des faits, d''un trouble psychique ou neuropsychique ayant aboli son discernement ou le contrôle de ses actes. »*

##### Distinction : abolition vs altération du discernement

###### Abolition du discernement (al. 1)
**Notion**
- **Aliénation mentale** : déchéance progressive et irréversible de la vie psychique
- **Causes** : maladie mentale → personne ne sait pas ce qu''elle fait

**Effet**
- **Irresponsabilité pénale** complète
- **Attachée à la personne** : n''est pas étendue aux complices/coauteurs

**Mesures de sûreté possibles**
- **Hospitalisation d''office**
- **Interdiction** d''entrer en relation avec la victime
- **Interdiction** de détenir/porter une arme

###### Altération du discernement (al. 2)
**Notion**
- **Trouble** sans abolition complète
- Exemple : troubles de l''intelligence

**Effet**
- Depuis la **loi du 15 août 2014** :
  - **Peine réduite d''un tiers**
  - **Juge peut décider** de ne pas appliquer cette réduction

##### Article 122-1-1 CP - Loi du 24 janvier 2022
> *« Le premier alinéa de l''article 122-1 n''est pas applicable si l''abolition temporaire du discernement de la personne ou du contrôle de ses actes au moment de la commission d''un crime ou d''un délit résulte de ce que, dans un temps très voisin de l''action, la personne a volontairement consommé des substances psychoactives dans le dessein de commettre l''infraction ou une infraction de même nature ou d''en faciliter la commission. »*

###### Apport
- **Réaction** à l''affaire Sarah Halimi
- **Exclut** l''irresponsabilité si l''abolition résulte d''une **consommation volontaire** avec intention

### B. L''absence de liberté : la contrainte

#### Article 122-2 CP
> *« N''est pas pénalement responsable la personne qui a agi sous l''empire d''une force ou d''une contrainte à laquelle elle n''a pu résister. »*

#### 1. Les formes de la contrainte

##### Contrainte physique
**Force** qui s''exerce sur le **corps** de l''agent.

###### Externe
- Force venant de l''extérieur

###### Interne (inhérente à l''agent)
**Exemple** : automobiliste qui, du fait d''un **malaise cardiaque**, voit son pied se crisper sur la pédale d''accélérateur. **Relaxé** des chefs d''homicide et blessures involontaires.

##### Contrainte morale
**Pression** exercée sur la **volonté** de l''agent.

###### Externe
- **Menaces**, provocations venant d''un tiers

###### Interne
- **Tensions** psychologiques internes

#### 2. Les caractères de la contrainte

##### a) Caractère irrésistible
###### Appréciation
- **In concreto**
- La jp exige **« une impossibilité de se conformer à la loi »**

###### Affaire Genty
**Faits** : individu condamné pour intelligence avec l''ennemi (fourniture de renseignements en temps de guerre sous menace d''exécution de 3 otages).

**Solution** : la menace qui ne le visait pas personnellement n''était **pas assez pressante** ni assez directe pour lui enlever toute liberté d''esprit.

###### Constat
**JP sévère** : la preuve du caractère irrésistible est **rarement rapportée**.

##### b) Imprévisibilité et faute antérieure
###### Affaire Tremintin
**Solution** : la contrainte ne doit pas avoir été **occasionnée** par celui qui l''invoque.

**Faits** : marin interpellé pour ivresse sur la voie publique qui n''avait pu rejoindre son navire et avait été déclaré coupable de désertion. La faute antérieure (ivresse) rend l''infraction prévisible.

##### c) Extériorité
> *« La contrainte ne peut résulter que d''un événement indépendant de la volonté humaine et que celle-ci n''a pu prévoir ni conjurer. »* (Cour de cassation)

## II. Les causes objectives d''irresponsabilité

### A. L''autorisation de la loi et le commandement de l''autorité légitime

#### Article 122-4 CP
> *« N''est pas pénalement responsable la personne qui accomplit un acte prescrit ou autorisé par des dispositions législatives ou réglementaires. N''est pas pénalement responsable la personne qui accomplit un acte commandé par l''autorité légitime, sauf si cet acte est manifestement illégal. »*

#### 1. L''autorisation de la loi

##### Notion
**Comportements** prescrits ou autorisés par la **loi** ou le **règlement**.

##### Encadrement par la CEDH
> *« Le recours à la force doit être rendu absolument nécessaire pour atteindre l''un des objectifs mentionnés aux al. a), b) et c) de l''article 2 [CESDH]. »*

##### Forces de l''ordre (depuis 2016)
**Article 435-1 CP** : irresponsabilité du fonctionnaire de police ou militaire de gendarmerie en cas d''**utilisation de leur arme** dans certaines conditions.

##### Proportionnalité
- **Notion** développée dans la jurisprudence
- **Article 8 CESDH** (Civ. 1re, 2013 sur le mariage beau-père/bru)
- **Application** par la chambre criminelle (journaliste créant une fausse identité numérique pour infiltrer une fédération du FN)

#### 2. Le commandement de l''autorité légitime

##### Conditions
- **Autorité publique** disposant légalement du pouvoir de commander
- **Autorité française et légitime**

##### Le subordonné peut-il refuser ?

###### Théorie de l''obéissance passive
- **Doit obéir** sous peine d''être sanctionné

###### Théorie des « baïonnettes intelligentes » (retenue)
- Le subordonné peut **refuser sans sanction** d''exécuter un ordre **manifestement illégal**

##### Article 122-4 al. 2 CP
**Réception** de la théorie des baïonnettes intelligentes : exception si l''acte est **manifestement illégal**.

### B. La légitime défense

#### Notion
**Souci d''équité** : il serait anormal de réprimer celui qui n''a fait que **riposter** à une attaque injuste.

#### Effet
**Supprime** la responsabilité pénale ET civile.

#### 1. Les conditions de la légitime défense

##### Article 122-5 al. 1 CP
> *« N''est pas pénalement responsable la personne qui, devant une atteinte injustifiée envers elle-même ou autrui, accomplit, dans le même temps, un acte commandé par la nécessité de la légitime défense d''elle-même ou d''autrui, sauf s''il y a disproportion entre les moyens de défense employés et la gravité de l''atteinte. »*

##### Conditions cumulatives

###### Atteinte injustifiée
- **Caractère injuste** : seule condition légale
- **Atteinte** englobe toutes formes d''attaques/agressions constituant une infraction

###### Atteintes putatives
Acceptées par la jp dès lors qu''elles paraissent **vraisemblables**.

**Exemple** : père tirant sur un tiers qui, par jeu, menaçait son fils d''un pistolet.

###### Réaction concomitante
**L''acte** est exercé **dans le même temps** que l''atteinte.

###### Acte nécessaire
**Pas d''alternative**.

###### Acte proportionné
- **Appréciation** des juges
- **Pas de disproportion** entre moyens de défense et gravité de l''atteinte

#### 2. La légitime défense des biens

##### Article 122-5 al. 2 CP
**Possible** uniquement pour **interrompre l''exécution d''un crime ou d''un délit contre un bien**.

##### Conditions
- **Mêmes** que la légitime défense des personnes
- **Application** plus stricte

#### 3. La preuve de la légitime défense

##### Principe : *Reus in excipiens fit actor*
- Le défendeur en exception devient demandeur
- Doit prouver les éléments de la légitime défense

##### Charge
- **Ministère public** : preuve de l''infraction
- **Prévenu** : argumentation de la défense

#### 4. Présomptions de légitime défense

##### Article 122-6 CP
> *« Est présumé avoir agi en état de légitime défense celui qui accomplit l''acte :
1° Pour repousser, de nuit, l''entrée par effraction, violence ou ruse dans un lieu habité ;
2° Pour se défendre contre les auteurs de vols ou de pillages exécutés avec violence. »*

##### Caractère
**Présomption simple** : le parquet peut démontrer le contraire.

### C. L''état de nécessité

#### Article 122-7 CP
> *« N''est pas pénalement responsable la personne qui, face à un danger actuel ou imminent qui menace elle-même, autrui ou un bien, accomplit un acte nécessaire à la sauvegarde de la personne ou du bien, sauf s''il y a disproportion entre les moyens employés et la gravité de la menace. »*

#### Notion
Situation dans laquelle une personne, pour **sauvegarder un intérêt supérieur**, n''a d''autre solution que d''accomplir un **acte défendu** par la loi pénale.

#### Exemple
**Pompier** qui enfonce une porte pour secourir une personne.

#### Conditions

##### 1. Danger imminent ou actuel
- **Réel** (preuve par le prévenu)
- **Évident**
- **Lié à la fatalité** (selon la jp)

##### Exemple négatif
**Personne** qui franchit un passage à niveau malgré le feu rouge clignotant et qui, coincée sur la voie, détruit volontairement les barrières → **non couverte** par le fait justificatif (faute antérieure).

##### 2. Acte nécessaire
**Pour sauvegarder** :
- **Sa personne**
- **Un tiers**
- **Un bien**

##### 3. Proportionnalité
**Entre** les moyens employés et la gravité de la menace.

## III. Les causes mixtes d''irresponsabilité

### A. L''erreur sur le droit

#### Adage
> *« Nemo censetur ignorare legem »* — Nul n''est censé ignorer la loi.

#### Article 122-3 CP
> *« N''est pas pénalement responsable la personne qui justifie avoir cru, par une erreur sur le droit qu''elle n''était pas en mesure d''éviter, pouvoir légitimement accomplir l''acte. »*

#### Conditions

##### 1. Erreur insurmontable
- L''erreur sur le droit est exonératoire que si la personne **n''a pu l''éviter**

##### Exemples
- **Texte** n''a pas encore été publié
- **Renseignement erroné** auquel l''agent pouvait légitimement croire (s''il a cherché à connaître la loi)

##### Exemple jurisprudentiel
Individu qui, malgré l''**annulation de son permis** de conduire, conduisait avec un **permis international**.

##### 2. Caractère excusable
- **Appréciation in concreto** en principe
- **Mais** : technique d''**appréciation comparative** admise par la jp (comparer à une personne raisonnable dans les mêmes circonstances)

##### Exemple négatif
**Prévenu poursuivi pour construction sans permis** ne pouvait évoquer l''erreur sur le droit alors qu''il **connaissait la décision d''opposition** du maire.

### B. L''alerte

#### Cadre légal
- **Loi du 9 décembre 2016** : insertion d''une nouvelle cause d''irresponsabilité pénale
- **Loi du 21 mars 2022** : amélioration de la protection des lanceurs d''alerte

#### Texte
> *« N''est pas non plus pénalement responsable le lanceur d''alerte qui soustrait, détourne ou recèle les documents ou tout autre support contenant les informations dont il a eu connaissance de manière licite et qu''il signale ou divulgue dans les conditions mentionnées au premier alinéa du présent article. »*

#### Conditions
- **Lanceur d''alerte** au sens de la loi
- **Information acquise licitement**
- **Signalement** ou divulgation dans les conditions prévues

#### Application aux complices
**S''applique également** au complice de ces infractions.

#### Caractère pénal plus doux
**Chambre criminelle** : disposition pénale plus douce, **immédiatement applicable** aux faits commis avant son entrée en vigueur.

#### CEDH
A estimé que, au vu de l''importance du **débat public** sur les pratiques fiscales des multinationales auquel les informations divulguées ont apporté une contribution essentielle, **l''intérêt public** l''emportait sur les effets dommageables.

## IV. Tableau récapitulatif

| Cause | Article | Type | Effet |
|-------|---------|------|-------|
| **Minorité** | CJPM | Subjective | Exemption (< 13 ans) ou atténuation |
| **Trouble psychique abolition** | 122-1 al. 1 | Subjective | Irresponsabilité complète |
| **Trouble psychique altération** | 122-1 al. 2 | Subjective | Peine réduite d''1/3 |
| **Contrainte** | 122-2 | Subjective | Irresponsabilité |
| **Autorisation de la loi** | 122-4 al. 1 | Objective | Irresponsabilité |
| **Commandement de l''autorité** | 122-4 al. 2 | Objective | Irresponsabilité (sauf ordre manifestement illégal) |
| **Légitime défense** | 122-5 | Objective | Irresponsabilité pénale et civile |
| **État de nécessité** | 122-7 | Objective | Irresponsabilité |
| **Erreur sur le droit** | 122-3 | Mixte | Irresponsabilité (si insurmontable et excusable) |
| **Alerte** | 122-9 | Mixte | Irresponsabilité (lanceur d''alerte) |

## V. Quelques arrêts importants

### A. Sur la légitime défense
##### Crim. 16 février 1967
**Pas de légitime défense** contre un dommage prévisible.

### B. Sur l''état de nécessité
##### Crim. 25 juin 1958, Lesage
**Application** classique : père volant du pain pour nourrir son enfant.

### C. Sur l''erreur sur le droit
##### Crim. 24 novembre 1998
**Renseignement** erroné fourni par l''administration → erreur insurmontable.

### D. Sur le trouble psychique
##### Crim. 14 avril 2021, Halimi
**Confirmation** de l''irresponsabilité (malgré controverse) → réaction législative.

## Conclusion

Les **causes d''irresponsabilité pénale** sont des **mécanismes essentiels** qui **modulent** la rigueur du droit pénal pour tenir compte de **circonstances exceptionnelles**.

### Causes subjectives
- **Minorité** : régime spécifique (CJPM)
- **Trouble psychique** : abolition ou altération du discernement
- **Contrainte** : irrésistible, imprévisible, extérieure

### Causes objectives
- **Autorisation de la loi** : prescrit ou autorisé par un texte
- **Commandement de l''autorité légitime** : sauf ordre manifestement illégal
- **Légitime défense** : atteinte injustifiée, riposte nécessaire et proportionnée
- **État de nécessité** : danger actuel ou imminent, acte nécessaire et proportionné

### Causes mixtes
- **Erreur sur le droit** : insurmontable et excusable
- **Alerte** : protection des lanceurs d''alerte

L''**évolution** récente (loi 2022 sur les substances psychoactives, protection des lanceurs d''alerte) montre que ces causes sont en **adaptation permanente** aux **enjeux contemporains**.

La maîtrise de ces causes est **indispensable** pour comprendre les **limites** de la responsabilité pénale et les **garanties** offertes aux justiciables.

Avec la **fiche précédente** sur les conditions positives, cette fiche complète l''étude de la **responsabilité pénale**, troisième pilier du droit pénal général après le **principe de légalité** et l''**infraction**.'
from public.subjects where slug = 'l2-droit-penal-general';
