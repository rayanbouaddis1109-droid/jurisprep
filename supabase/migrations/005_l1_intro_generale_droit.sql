-- =====================================================================
-- JurisPrép - Cours complet : Introduction générale au droit (L1 S1)
-- 8 fiches de révision approfondies
-- =====================================================================

-- Nettoyage des anciennes fiches superficielles
delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Introduction générale au droit');

-- =====================================================================
-- FICHE 1 - LA RÈGLE DE DROIT : NOTION ET CARACTÈRES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La règle de droit : notion et caractères', 'Chapitre 1 - Le phénomène juridique',
       'Qu''est-ce qu''une règle de droit ? Définition, caractères distinctifs, distinction avec les autres règles de conduite sociale.',
       array['Règle de droit', 'Droit objectif', 'Droits subjectifs', 'Positivisme juridique', 'Jusnaturalisme', 'Sanction étatique', 'Caractère général', 'Caractère obligatoire', 'Règle morale', 'Règle religieuse'],
       20, 1,
'# La règle de droit : notion et caractères

## Introduction

Le droit accompagne toute société organisée : *ubi societas, ibi jus* (« là où il y a société, il y a droit »). Mais qu''est-ce que le droit ? La question, simple en apparence, divise les juristes et philosophes depuis l''Antiquité. Avant d''aborder les règles techniques qui composent le système juridique, il faut comprendre ce qu''est une **règle de droit**, ce qui la distingue des autres règles qui régissent la conduite humaine, et ce qu''elle apporte à la vie en société.

Le droit, dans son sens le plus large, désigne deux réalités complémentaires :
- **Le droit objectif** : ensemble des règles juridiques en vigueur dans une société (sens institutionnel)
- **Les droits subjectifs** : prérogatives reconnues à un individu et qu''il peut faire valoir (droit de propriété, droit de créance, droit à l''image…)

Cette dualité, présente en français mais absente en anglais (qui distingue *law* et *right*), structure tout le système juridique.

## I. Les conceptions du droit

### A. Le positivisme juridique

Pour les **positivistes**, le droit est uniquement constitué des règles **posées par l''autorité publique**. Peu importe leur contenu moral : ce qui compte, c''est leur origine.

**Auteurs de référence** :
- Hans **Kelsen** (1881-1973), théoricien autrichien, auteur de la *Théorie pure du droit* (1934). Pour lui, le droit est un système de normes hiérarchisées, chaque norme tirant sa validité d''une norme supérieure (pyramide des normes).
- **H.L.A. Hart** (1907-1992), philosophe britannique. Distingue les *règles primaires* (qui imposent des obligations) et les *règles secondaires* (qui organisent les pouvoirs et procédures).

**Avantages** : permet une analyse rigoureuse du droit positif, exclut les jugements de valeur subjectifs.
**Critique** : un droit injuste resterait du droit (ex. : lois raciales de Nuremberg).

### B. Le jusnaturalisme (droit naturel)

Pour les **jusnaturalistes**, il existe un droit supérieur au droit positif, fondé sur la nature humaine ou la raison. Une loi positive contraire au droit naturel ne serait pas vraiment du droit.

**Auteurs de référence** :
- **Cicéron** : *vera lex* (vraie loi) selon la nature
- **Saint Thomas d''Aquin** : *lex aeterna*, *lex naturalis*, *lex humana*
- **Grotius**, **Pufendorf** : école du droit naturel moderne (XVIIe siècle)
- **Locke** : droits naturels à la vie, à la liberté, à la propriété

**Influence** : Déclaration d''indépendance américaine (1776), DDHC (1789), Déclaration universelle des droits de l''homme (1948).

### C. Les approches sociologique et historique

- **École historique allemande** (Savigny) : le droit est le produit de l''esprit du peuple (*Volksgeist*)
- **Sociologie du droit** (Durkheim, Weber, Carbonnier) : le droit comme fait social

## II. La règle de droit : définition et caractères

### A. Définition

La **règle de droit** est une **règle de conduite** dans les rapports sociaux, **générale**, **abstraite**, **obligatoire** et **sanctionnée par la contrainte étatique**.

Cette définition met en lumière les caractères qui font de la règle de droit une règle spécifique, distincte des autres règles régissant la vie sociale.

### B. Le caractère général et impersonnel

La règle de droit s''applique **à tous ceux qui se trouvent dans la situation qu''elle vise**, sans distinction de personne.

**Fondement** :
- Article 6 DDHC : « **La loi est la même pour tous**, soit qu''elle protège, soit qu''elle punisse. »
- Principe d''**égalité devant la loi** (art. 1er Constitution)

**Précisions** :
- La règle peut viser une catégorie spéciale (commerçants, mineurs, fonctionnaires) sans perdre sa généralité, dès lors qu''elle s''applique à toutes les personnes de cette catégorie
- A contrario, une décision visant une personne nommément désignée (un jugement, un arrêté individuel) n''est pas une règle de droit mais un **acte juridique individuel**

**Exception apparente** : les lois individuelles. La Constitution interdit en principe les lois individuelles. Le Conseil constitutionnel a censuré des lois rétroactives validant des situations particulières (Cons. const. 22 juillet 1980).

### C. Le caractère permanent et abstrait

La règle de droit **a vocation à s''appliquer chaque fois que les conditions qu''elle prévoit sont réunies**. Elle ne s''épuise pas par une application unique.

Exemple : l''article 1240 du Code civil (« Tout fait quelconque de l''homme, qui cause à autrui un dommage, oblige celui par la faute duquel il est arrivé à le réparer ») s''applique à toutes les situations passées, présentes et futures qui réunissent ses conditions.

### D. Le caractère obligatoire

La règle de droit **s''impose** à ceux qu''elle vise. Cependant, on distingue :

#### Règles impératives (ordre public)
On ne peut y déroger par convention. Exemples :
- Conditions du mariage (art. 144 C. civ. : âge de 18 ans)
- Règles de capacité
- Règles pénales

L''article 6 du Code civil dispose : « On ne peut déroger, par des conventions particulières, aux lois qui intéressent l''ordre public et les bonnes mœurs. »

#### Règles supplétives
S''appliquent **sauf volonté contraire** des intéressés. Le législateur prévoit une solution par défaut, mais admet qu''elle puisse être écartée.

Exemples :
- **Régime matrimonial** : si les époux ne font pas de contrat de mariage, le régime légal (communauté réduite aux acquêts) s''applique. Mais ils peuvent en choisir un autre.
- **Lieu de paiement** : à défaut de clause, c''est le domicile du débiteur (art. 1342-6 C. civ.)

#### Règles d''interprétation
Précisent le sens des actes juridiques (ex. : art. 1188 et s. C. civ. sur l''interprétation des contrats).

### E. Le caractère coercitif (sanction étatique organisée)

C''est le **critère distinctif fondamental** de la règle de droit. Seul le droit bénéficie d''une **sanction organisée par l''État**.

Trois types de sanctions :

#### L''exécution forcée
L''État met en œuvre la règle même contre la volonté du débiteur :
- **Saisie** de biens
- **Expulsion** du locataire
- Exécution forcée en nature ou en équivalent (art. 1221 et s. C. civ.)

#### La réparation
Compensation du préjudice causé par la violation de la règle :
- **Dommages-intérêts** en responsabilité civile (art. 1240 C. civ.)
- Restitution de l''indu, rétablissement

#### La punition
- **Amende** (contraventionnelle, délictuelle, criminelle)
- **Privation de liberté** (emprisonnement, réclusion criminelle)
- **Peines complémentaires** (interdiction professionnelle, confiscation)

#### La nullité
Sanction de la violation des conditions de validité d''un acte juridique (mariage, contrat). Distinction nullité absolue / nullité relative.

#### L''inopposabilité
Un acte valable n''est pas opposable à certains tiers.

## III. La distinction avec les autres règles

### A. Règle de droit et règle morale

#### Différences essentielles

| **Règle de droit** | **Règle morale** |
|---|---|
| Régit les rapports sociaux extérieurs | Régit le for intérieur |
| Sanctionnée par l''État | Sanctionnée par la conscience |
| Critère : licéité | Critère : moralité |
| Objectif : ordre social | Objectif : perfection individuelle |

#### Convergences fréquentes

De nombreuses règles juridiques ont une origine morale :
- Interdiction du meurtre, du vol
- Obligation de respecter ses engagements (*pacta sunt servanda*)
- Bonne foi dans les contrats (art. 1104 C. civ.)
- Obligation alimentaire entre membres d''une famille

#### Divergences

- **Le droit ignore parfois la morale** : la prescription efface une dette morale ; le mensonge n''est en principe pas punissable
- **La morale ignore parfois le droit** : la rétention sur un objet d''autrui par nécessité morale peut être juridiquement délictueuse

### B. Règle de droit et règle religieuse

#### Distinction
- La règle religieuse a pour fondement une **vérité révélée**
- La règle de droit moderne se veut **laïque** (loi du 9 décembre 1905)
- L''article 1er C. consacre la laïcité de la République

#### Coexistence historique
Les ordres religieux ont longtemps coïncidé avec le droit (droit canonique régissant le mariage sous l''Ancien Régime).

#### Coexistence contemporaine
Les religions peuvent influencer le droit (ex. : repos dominical), mais l''État ne tire pas sa légitimité d''une autorité religieuse.

### C. Règle de droit et règles de convenance

Les **règles de courtoisie**, d''**usage**, de **politesse** ne sont pas sanctionnées juridiquement. Cependant :
- Certaines règles d''usage peuvent acquérir force juridique : la **coutume**
- Les **usages professionnels** peuvent compléter le contrat (art. 1194 C. civ.)

### D. Règle de droit et règle technique

Une règle technique (mode d''emploi, instructions de sécurité) n''est pas juridique. Mais elle peut devenir une **norme juridique** quand le droit y renvoie (normes AFNOR, normes ISO).

## IV. L''utilité du droit

### A. Fonction de pacification sociale
Le droit substitue **la procédure à la violence**. Au lieu de se faire justice soi-même, on saisit le juge. C''est l''abandon de la **vengeance privée** au profit de la **justice étatique**.

### B. Fonction de prévisibilité
Le droit organise les attentes légitimes. Il permet de planifier sa vie économique et familiale.

### C. Fonction d''organisation
Le droit structure les pouvoirs publics (droit constitutionnel), les rapports économiques (droit des affaires), les relations familiales (droit civil).

### D. Fonction de promotion
Le droit n''est pas seulement gardien d''un ordre existant : il transforme la société (loi Veil 1975 sur l''IVG, loi Taubira 2013 sur le mariage pour tous, loi PMA 2021).

## À retenir

**Définition** : la règle de droit est une règle de conduite **générale, abstraite, obligatoire et sanctionnée par l''autorité publique**.

**Critère distinctif fondamental** : la **sanction étatique organisée**. C''est ce qui distingue la règle de droit des autres règles (morale, religieuse, courtoisie).

**Conceptions** : positivisme (Kelsen, Hart) vs jusnaturalisme (Cicéron, Grotius, Locke).

**Distinction règles impératives / supplétives** : article 6 C. civ. fonde l''ordre public, qui ne peut être écarté par convention.

**Trois grandes catégories de sanctions** : exécution forcée, réparation, punition.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 2 - LES DIVISIONS DU DROIT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les divisions du droit', 'Chapitre 2 - Les classifications fondamentales',
       'Summa divisio droit public / droit privé, classifications des branches du droit, droit interne et international.',
       array['Droit public', 'Droit privé', 'Summa divisio', 'Droit civil', 'Droit administratif', 'Droit pénal', 'Droit international', 'Droit communautaire', 'Service public'],
       18, 2,
'# Les divisions du droit

## Introduction

Le droit n''est pas un bloc monolithique : il se subdivise en de multiples branches qui ont leurs règles propres, leurs juridictions et leur logique. Pour un juriste, savoir identifier la branche concernée par un problème est un préalable indispensable. La grande division qui domine le système français est celle entre **droit public** et **droit privé**, traditionnellement appelée *summa divisio*. Mais d''autres classifications, complémentaires ou concurrentes, structurent aussi le droit : interne/international, civil/pénal, etc.

Comprendre ces divisions, c''est comprendre l''architecture même du système juridique.

## I. La distinction droit public / droit privé (la summa divisio)

Cette distinction, déjà énoncée par **Ulpien** (jurisconsulte romain, IIIe siècle) — *publicum jus est quod ad statum rei romanae spectat, privatum quod ad singulorum utilitatem* —, est au cœur du système français.

### A. Le droit privé

Le **droit privé** régit les rapports entre **personnes privées** (individus, sociétés, associations). Il vise à organiser leurs relations dans le respect d''un certain équilibre.

#### Caractéristiques
- **Égalité juridique** entre les parties
- **Autonomie de la volonté** (les parties choisissent leurs engagements)
- Sanction par le **juge judiciaire**

#### Principales branches

**Droit civil** (« *jus civile* », droit des citoyens)
Branche mère du droit privé. Couvre :
- **Droit des personnes** (état civil, capacité, nationalité)
- **Droit de la famille** (mariage, PACS, divorce, filiation, autorité parentale)
- **Droit des biens** (propriété, possession, servitudes)
- **Droit des obligations** (contrats, responsabilité)
- **Droit des successions et libéralités**

Source principale : **Code civil de 1804** (réforme contractuelle 2016).

**Droit commercial / droit des affaires**
Régit l''activité économique des commerçants et entreprises :
- Statut du commerçant
- Fonds de commerce
- Sociétés commerciales
- Procédures collectives (sauvegarde, redressement, liquidation)
- Effets de commerce (lettre de change, billet à ordre)

Source : **Code de commerce** (1807, réforme 2000).

**Droit du travail**
Régit les relations individuelles et collectives :
- **Contrat de travail** (CDI, CDD, intérim)
- **Conditions de travail** (durée, salaires, congés)
- **Représentation du personnel** (CSE, syndicats)
- **Négociation collective**
- **Conflits du travail** (licenciement, prud''hommes)

Source : **Code du travail**.

**Droit de la sécurité sociale**
Régit la protection sociale obligatoire : assurance maladie, retraite, famille, accidents du travail.

**Droit international privé**
Régit les situations privées comportant un élément d''**extranéité** :
- **Conflits de lois** : quelle loi appliquer ?
- **Conflits de juridictions** : quel tribunal saisir ?
- **Nationalité** et condition des étrangers

### B. Le droit public

Le **droit public** régit les rapports impliquant au moins une **personne publique** (État, collectivités, établissements publics). Il vise à concilier intérêt général et libertés individuelles.

#### Caractéristiques
- **Inégalité juridique** : l''administration dispose de **prérogatives de puissance publique**
- **Intérêt général** primauté
- Sanction par le **juge administratif**

#### Principales branches

**Droit constitutionnel**
Concerne :
- L''**État** (éléments, formes)
- La **Constitution** (élaboration, révision, hiérarchie)
- Les **institutions politiques** (Président, Gouvernement, Parlement)
- Les **libertés fondamentales**
- Le **contentieux constitutionnel** (Conseil constitutionnel)

Source : **Constitution du 4 octobre 1958** + bloc de constitutionnalité.

**Droit administratif**
Régit l''organisation et l''activité de l''administration :
- **Organisation administrative** (administration centrale, décentralisée)
- **Actes administratifs** (unilatéraux, contractuels)
- **Service public**
- **Domaine public**
- **Responsabilité administrative**
- **Contentieux administratif** (REP, plein contentieux)

Source : essentiellement **jurisprudentielle** (CE Blanco 1873).

**Finances publiques**
Régit le **budget de l''État** et des collectivités, la fiscalité, la comptabilité publique.

Sources : **Constitution**, **LOLF du 1er août 2001**, **Code général des impôts**.

**Droit international public**
Régit les **relations entre États** et organisations internationales :
- Traités
- Coutumes internationales
- Responsabilité internationale
- Règlement pacifique des différends

Sources : **Convention de Vienne** sur le droit des traités (1969), **Charte de l''ONU**.

### C. Les critères de distinction

#### Critère organique
La présence d''une **personne publique** caractérise le droit public.
**Limite** : des personnes privées peuvent gérer un service public (associations, sociétés).

#### Critère du service public
Le droit public régit le **service public**. Notion développée par **Léon Duguit** au début du XXe siècle.
**Limite** : tous les services publics ne sont pas soumis au droit public (SPIC).

#### Critère des prérogatives de puissance publique
Le droit public se caractérise par l''usage de **prérogatives** spéciales (police, expropriation).
**Limite** : pas toujours présentes dans les activités administratives.

#### Synthèse jurisprudentielle
Le **Tribunal des conflits** combine ces critères au cas par cas. Aucun critère n''est exclusif.

### D. Les juridictions
La distinction droit public / droit privé entraîne une **dualité juridictionnelle** :
- **Ordre judiciaire** : juge des litiges de droit privé (Cour de cassation au sommet)
- **Ordre administratif** : juge des litiges de droit public (Conseil d''État au sommet)
- **Tribunal des conflits** : résout les conflits de compétence

Cette dualité, fondée historiquement sur la **loi des 16-24 août 1790** (interdiction au juge judiciaire de connaître des affaires de l''administration), est consacrée constitutionnellement (Cons. const. 23 janvier 1987, *Conseil de la concurrence*).

## II. Les droits mixtes

Certaines disciplines mêlent éléments de droit public et de droit privé : on parle de **droits mixtes**.

### A. Le droit pénal
- **Protège des intérêts publics et privés** : l''ordre public et les victimes
- Sanctionne par des peines (caractère public)
- Mais juge judiciaire compétent
- Procédure pénale autonome

Le droit pénal comprend :
- **Droit pénal général** : théorie de l''infraction, sanctions
- **Droit pénal spécial** : infractions particulières (vol, meurtre…)
- **Procédure pénale** : enquête, instruction, jugement

Source : **Code pénal** (1810, refonte 1992) + **Code de procédure pénale** (1959).

### B. La procédure
Procédures civile, pénale, administrative : règles d''organisation des procès.
- **Code de procédure civile** (1975)
- **Code de procédure pénale**
- **Code de justice administrative** (2000)

### C. Le droit fiscal
Établi par l''État (public), il pèse sur les contribuables (privés). Compétence partagée entre juges administratif et judiciaire selon les impôts.

### D. Le droit de la concurrence
Régule les marchés (public) en s''appliquant aux entreprises (privées). Compétences partagées.

### E. Le droit social
Combine droit du travail (privé) et droit de la sécurité sociale (mixte).

## III. La distinction droit interne / droit international

### A. Le droit interne
Produit par les autorités nationales. S''applique sur le territoire national.

### B. Le droit international

#### Droit international public
Relations entre États. Sources :
- **Traités** et conventions
- **Coutume internationale**
- **Principes généraux du droit reconnus par les nations civilisées**
- **Jurisprudence internationale** (Cour internationale de Justice)
- **Doctrine**

#### Droit international privé
Voir supra. Branche du droit privé, mais avec un élément d''extranéité.

### C. Le droit de l''Union européenne

#### Spécificité
Droit **supranational** au sens fort : non seulement entre États, mais directement applicable aux particuliers (CJCE Van Gend en Loos, 1963).

#### Principes
- **Primauté** sur le droit national (CJCE Costa c/ ENEL, 1964)
- **Effet direct** (CJCE Van Gend en Loos, 1963)
- **Coopération loyale** (art. 4 § 3 TUE)

#### Sources
- **Traités** (TUE et TFUE)
- **Règlements** (application directe)
- **Directives** (transposition par les États)
- **Décisions** (individuelles)
- **Jurisprudence** de la CJUE

### D. La Convention européenne des droits de l''homme

Adoptée en 1950, ratifiée par la France en 1974. Garantit des **droits fondamentaux**, contrôlés par la **Cour européenne des droits de l''homme** (Strasbourg).

Tout justiciable peut saisir directement la CEDH après épuisement des voies de recours internes.

## IV. Les classifications complémentaires

### A. Droit substantiel / droit processuel
- **Droit substantiel** (ou matériel) : règles de fond
- **Droit processuel** (ou formel) : règles de procédure

### B. Droit objectif / droit subjectif
- **Droit objectif** : ensemble des règles
- **Droits subjectifs** : prérogatives individuelles

### C. Droit positif / droit naturel
- **Droit positif** : règles effectivement en vigueur
- **Droit naturel** : règles idéales, supposées universelles

### D. Droits patrimoniaux / droits extrapatrimoniaux
- **Patrimoniaux** : évaluables en argent (droit de propriété)
- **Extrapatrimoniaux** : non évaluables (droit à l''image)

## À retenir

La **summa divisio** droit public / droit privé structure le système français et entraîne une **dualité juridictionnelle** (CE / Cour de cassation).

**Trois critères** classiques de distinction : organique, service public, prérogatives de puissance publique. Aucun n''est exclusif : appréciation au cas par cas (Tribunal des conflits).

**Droits mixtes** : droit pénal, droit fiscal, procédures, droit social, droit de la concurrence.

Le **droit de l''Union européenne** est un droit autonome, doté de **primauté** (Costa c/ ENEL, 1964) et d''**effet direct** (Van Gend en Loos, 1963).

Les classifications ne sont pas étanches : un même problème peut relever de plusieurs branches.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 3 - LES SOURCES DU DROIT (HIÉRARCHIE DES NORMES)
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les sources du droit et la hiérarchie des normes', 'Chapitre 3 - Les sources formelles du droit',
       'Pyramide de Kelsen, bloc de constitutionnalité, bloc de conventionnalité, loi, règlement, sources non écrites.',
       array['Pyramide de Kelsen', 'Bloc de constitutionnalité', 'Article 55 C', 'Bloc de conventionnalité', 'Loi organique', 'Loi ordinaire', 'Règlement autonome', 'Jurisprudence', 'Coutume', 'PFRLR', 'Contrôle de constitutionnalité', 'Contrôle de conventionnalité'],
       25, 3,
'# Les sources du droit et la hiérarchie des normes

## Introduction

Identifier les **sources du droit** est essentiel pour le juriste : c''est savoir d''où viennent les règles qu''on applique et selon quelle hiérarchie elles s''organisent. Le système français repose sur une **pyramide normative** théorisée par **Hans Kelsen**, où chaque norme tire sa validité de la norme supérieure et doit lui être conforme.

On distingue traditionnellement :
- Les **sources formelles** : textes écrits (Constitution, traités, lois, règlements)
- Les **sources non écrites** : jurisprudence, coutume, doctrine, principes généraux du droit

Le contrôle de conformité des normes inférieures aux normes supérieures constitue le mécanisme central de garantie de cette hiérarchie.

## I. La pyramide de Kelsen et la hiérarchie des normes

### A. Le modèle théorique

Hans **Kelsen** (1881-1973), dans sa *Théorie pure du droit* (1934), propose une représentation pyramidale du système juridique. Chaque norme :
- Tire sa **validité** de la norme supérieure
- Doit lui être **conforme**
- Habilite à édicter des normes inférieures

Au sommet, la **norme fondamentale** (*Grundnorm*) — purement hypothétique chez Kelsen.

### B. Application au droit français

```
                    Constitution
                         |
              Bloc de constitutionnalité
                         |
                  Traités internationaux
                         |
                  Lois organiques
                         |
                  Lois ordinaires
                         |
              Règlements (décrets, arrêtés)
                         |
                  Actes individuels
```

Cette hiérarchie est consacrée par l''article 55 C. (traités > lois) et par la jurisprudence du Conseil constitutionnel (les lois doivent respecter la Constitution).

## II. Le bloc de constitutionnalité (sommet)

Le **bloc de constitutionnalité** désigne l''ensemble des normes constitutionnelles. Sa composition a été progressivement étendue par la jurisprudence.

### A. Composition

#### La Constitution du 4 octobre 1958
**Texte central**, organisant les pouvoirs publics, énonçant certains droits, organisant la révision.

#### Le Préambule de 1946
Référence dans le Préambule de 1958. Contient des **droits économiques et sociaux** :
- Droit au travail
- Liberté syndicale
- Droit de grève
- Sécurité matérielle (santé, retraite)
- Égalité hommes-femmes
- Enseignement gratuit et laïque

#### La Déclaration des droits de l''homme et du citoyen (1789)
Référence dans le Préambule de 1958. Texte fondateur des **libertés individuelles** :
- Liberté (art. 4)
- Égalité (art. 1, 6)
- Sûreté (art. 7-9)
- Propriété (art. 17)
- Présomption d''innocence (art. 9)
- Légalité des délits et des peines (art. 8)
- Liberté de communication (art. 11)

#### La Charte de l''environnement de 2004
Intégrée par la loi constitutionnelle du 1er mars 2005. Consacre :
- Droit à un environnement équilibré (art. 1)
- Devoir de prévenir les atteintes (art. 3)
- Principe de précaution (art. 5)

#### Les Principes fondamentaux reconnus par les lois de la République (PFRLR)
Mentionnés par le Préambule de 1946. Dégagés par la jurisprudence :
- **Liberté d''association** (Cons. const. 16 juillet 1971, *Liberté d''association*)
- **Droits de la défense** (Cons. const. 2 décembre 1976)
- **Liberté individuelle** (Cons. const. 12 janvier 1977, *Fouille des véhicules*)
- **Liberté de l''enseignement** (Cons. const. 23 novembre 1977)
- **Indépendance de la juridiction administrative** (Cons. const. 22 juillet 1980)
- **Indépendance des professeurs d''université** (Cons. const. 20 janvier 1984)
- **Atténuation de la responsabilité pénale des mineurs** (Cons. const. 29 août 2002)
- **Réserve de compétence législative en matière de droit local d''Alsace-Moselle** (Cons. const. 5 août 2011)

**Critères d''identification** d''un PFRLR (Cons. const. 1988) :
- Tradition républicaine consacrée par des textes législatifs
- Avant le préambule de 1946
- Sans interruption

#### Les Objectifs de valeur constitutionnelle (OVC)
Dégagés par la jurisprudence : ne sont pas des droits subjectifs mais des objectifs que le législateur doit poursuivre. Exemples :
- Sauvegarde de l''ordre public
- Droit à un logement décent
- Recherche des auteurs d''infractions
- Pluralisme dans les médias

### B. La consécration jurisprudentielle

**Décision fondatrice** : Cons. const. **71-44 DC, 16 juillet 1971, Liberté d''association**.

Le Conseil constitutionnel intègre le Préambule de 1946 et la DDHC au bloc de constitutionnalité. C''est un tournant majeur : le Conseil devient un protecteur des **libertés fondamentales**, et non plus seulement le gardien des compétences.

## III. Les traités internationaux

### A. La supériorité sur la loi (art. 55 C.)

> « Les traités ou accords régulièrement ratifiés ou approuvés ont, dès leur publication, une autorité supérieure à celle des lois, sous réserve, pour chaque accord ou traité, de son application par l''autre partie. »

**Trois conditions** :
- Ratification ou approbation régulière
- Publication
- Réciprocité (sauf pour les traités relatifs aux droits fondamentaux)

### B. Les juges compétents pour le contrôle de conventionnalité

#### La Cour de cassation (1975)
**Cass. ch. mixte, 24 mai 1975, Société des cafés Jacques Vabre**. La Cour de cassation accepte de contrôler la conformité d''une loi à un traité international, même postérieure.

#### Le Conseil d''État (1989)
**CE Ass., 20 octobre 1989, Nicolo**. Revirement : le Conseil d''État abandonne sa jurisprudence Semoules (1968) et accepte le contrôle de conventionnalité, même pour les lois postérieures.

#### Le Conseil constitutionnel
**Refuse** ce contrôle depuis la décision IVG (Cons. const. 75-54 DC, 15 janvier 1975) : « il n''appartient pas au Conseil constitutionnel, lorsqu''il est saisi en application de l''article 61 de la Constitution, d''examiner la conformité d''une loi aux stipulations d''un traité ».

### C. Le droit de l''Union européenne

Statut particulier consacré par l''**article 88-1 C.** : la France « participe à l''Union européenne ».

**Primauté** : reconnue par la CJUE depuis Costa c/ ENEL (1964) et acceptée par les juridictions françaises.
**Effet direct** : CJCE Van Gend en Loos (1963) pour les règlements ; conditionné pour les directives.

**Articulation avec la Constitution** : le Conseil constitutionnel (2004) et le Conseil d''État (CE Arcelor, 8 février 2007) admettent la primauté du droit de l''UE sur la loi, mais réservent la Constitution. En cas de conflit avec un principe inhérent à l''identité constitutionnelle française, la Constitution prime.

## IV. La loi

### A. Définition

#### Sens matériel
Toute règle générale et abstraite.

#### Sens formel
Acte adopté par le **Parlement** selon la procédure législative (art. 39 et s. C.).

### B. Catégories de lois

#### Lois constitutionnelles
Révisent la Constitution (procédure art. 89 C.). Position : sommet du bloc de constitutionnalité.

#### Lois organiques
Précisent l''organisation des pouvoirs publics. Adoptées selon procédure spéciale (art. 46 C.) : examen par les deux chambres avec délai, contrôle obligatoire du Conseil constitutionnel.

Exemples : loi organique sur les lois de finances (LOLF), loi organique relative au Défenseur des droits.

#### Lois ordinaires
**Domaine de la loi** : limité par l''article 34 C. (innovation majeure de 1958). Le Parlement n''a plus une compétence générale.

Article 34 distingue :
- Matières où la loi **fixe les règles** (libertés publiques, état civil, infractions, etc.)
- Matières où la loi **détermine les principes fondamentaux** (organisation de la défense, propriété, droit du travail, etc.)

#### Ordonnances (art. 38 C.)
Délégation législative : le Parlement autorise le Gouvernement à légiférer dans son domaine par ordonnance. Doivent être **ratifiées** pour avoir valeur législative.

#### Lois référendaires (art. 11 C.)
Adoptées par référendum. Pas susceptibles de contrôle de constitutionnalité (Cons. const. 6 novembre 1962).

### C. La procédure législative

1. **Initiative** : Gouvernement (projets) ou parlementaires (propositions)
2. **Dépôt** sur le bureau d''une assemblée
3. Examen en **commission**
4. **Débat en séance** : discussion générale, examen des articles, vote
5. **Navette** entre les deux assemblées
6. En cas de désaccord : **CMP** (commission mixte paritaire)
7. **Dernier mot** de l''AN (art. 45 al. 4)
8. **Promulgation** par le Président dans les 15 jours (art. 10)
9. **Publication** au Journal officiel

## V. Le règlement

### A. Définition
Acte juridique pris par les autorités exécutives (Président, PM, ministres) ayant un caractère général et impersonnel.

### B. Catégories

#### Règlements autonomes (art. 37 C.)
**Innovation de 1958**. Pour les matières non listées à l''article 34, le Gouvernement dispose d''un **pouvoir réglementaire autonome**.

Procédure de protection : si une proposition de loi empiète sur le domaine réglementaire, le Gouvernement peut opposer l''**irrecevabilité** (art. 41 C.). Et un texte législatif intervenu dans le domaine réglementaire peut être **délégalisé** par le Conseil constitutionnel (art. 37 al. 2 C.).

#### Règlements d''application
Précisent les modalités d''application des lois.

### C. Hiérarchie interne
- **Décrets en Conseil des ministres** (Président)
- **Décrets simples** (Premier ministre)
- **Arrêtés ministériels**
- **Arrêtés préfectoraux**
- **Arrêtés municipaux**

## VI. Les sources non écrites

### A. La jurisprudence

#### Définition
Ensemble des décisions rendues par les juridictions.

#### Statut de source
**Débat ancien**. L''article 5 du Code civil interdit au juge de « prononcer par voie de disposition générale et réglementaire ». Mais en pratique :
- Les **revirements de jurisprudence** créent du droit
- Les **principes généraux du droit** (PGD) dégagés par le Conseil d''État ont valeur supra-décrétale
- L''interprétation de la loi par les juges est constitutive

**Position dominante** : la jurisprudence est une **source réelle** mais non formelle.

#### Limitation
- **Effet relatif** : autorité de la chose jugée limitée aux parties (art. 1355 C. civ.)
- **Revirements possibles** : pas de règle du précédent à la française

### B. La coutume

#### Définition
Usage répété et constant, vécu comme obligatoire.

#### Éléments
- **Élément matériel** : pratique répétée (*longa consuetudo*)
- **Élément psychologique** : sentiment du caractère obligatoire (*opinio juris*)

#### Place
**Faible en droit français moderne** (contrairement à l''Ancien Régime). Exemples résiduels :
- Coutumes commerciales (Code de commerce)
- Bornage agricole
- Coutume internationale

### C. La doctrine

Ensemble des écrits des juristes. **Pas une source directe**, mais :
- Influence forte sur la jurisprudence et le législateur
- Systématise le droit positif
- Propose des évolutions

### D. Les principes généraux du droit

Dégagés par les juges, parfois supra-législatifs (PGD du Conseil d''État, principes fondamentaux reconnus par les lois de la République du Conseil constitutionnel).

## VII. Les contrôles de conformité

### A. Le contrôle de constitutionnalité
Vérifie la conformité des **lois** à la **Constitution**.

#### A priori (art. 61)
Avant promulgation. Saisine : Président, PM, présidents des assemblées, 60 parlementaires.

#### A posteriori : la QPC (art. 61-1)
Depuis la révision du 23 juillet 2008. Voir fiche sur le Conseil constitutionnel.

### B. Le contrôle de conventionnalité
Vérifie la conformité des **lois** aux **traités**. Exercé par les juges ordinaires (Cass. Jacques Vabre 1975, CE Nicolo 1989).

### C. Le contrôle de légalité
Vérifie la conformité des **règlements** à la loi (et à la Constitution).
- **Recours pour excès de pouvoir** devant le juge administratif
- **Exception d''illégalité** dans le cadre d''un autre litige

## À retenir

**Pyramide de Kelsen** : Constitution > traités > loi > règlement > actes individuels. Chaque norme doit être conforme à la norme supérieure.

**Bloc de constitutionnalité** : Constitution + Préambule 1946 + DDHC 1789 + Charte environnement 2004 + PFRLR + OVC. Décision fondatrice : Cons. const. **71-44 DC, 16 juillet 1971**, Liberté d''association.

**Article 55 C.** : supériorité des traités sur la loi, sous condition de réciprocité. Contrôle de conventionnalité accepté par Cass. Jacques Vabre (1975) et CE Nicolo (1989).

**Innovation 1958** : limitation du domaine de la loi (art. 34) et création du pouvoir réglementaire autonome (art. 37). Le règlement devient compétence de droit commun.

**QPC depuis 2008** : tout justiciable peut soulever l''inconstitutionnalité d''une loi en vigueur.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 4 - LA LOI : ÉLABORATION ET ENTRÉE EN VIGUEUR
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La loi : élaboration, entrée en vigueur, sortie de vigueur', 'Chapitre 4 - Le cycle de vie de la loi',
       'Procédure législative, promulgation, publication, abrogation : la vie complète d''une loi.',
       array['Initiative législative', 'Navette parlementaire', 'CMP', 'Article 49 alinéa 3', 'Promulgation', 'Publication', 'JORF', 'Entrée en vigueur', 'Abrogation expresse', 'Abrogation tacite'],
       18, 4,
'# La loi : élaboration, entrée en vigueur, sortie de vigueur

## Introduction

La loi est l''acte juridique central du système français. Connaître son **cycle de vie** — de son initiative à son extinction — est essentiel pour comprendre comment une règle juridique acquiert force obligatoire.

## I. L''initiative législative

### A. L''initiative gouvernementale : les projets de loi (art. 39 C.)
- Délibérés en **Conseil des ministres** après avis du **Conseil d''État**
- Déposés au bureau de l''Assemblée nationale ou du Sénat (sauf cas réservés)
- Étude d''impact obligatoire

### B. L''initiative parlementaire : les propositions de loi
- Initiative de tout député ou sénateur
- **Limites** :
  - **Article 40 C.** : irrecevabilité financière (création ou aggravation des charges publiques)
  - Domaine du règlement (art. 41 C.)
- Difficulté pratique : peu de propositions aboutissent (priorité gouvernementale, ordre du jour)

### C. Le partage de l''ordre du jour (art. 48 C.)
**Révision du 23 juillet 2008** : l''ordre du jour est partagé entre Gouvernement et Parlement.

## II. La procédure législative ordinaire

### A. L''examen en commission
- **Commissions permanentes** (8 par assemblée)
- **Commission spéciale** possible
- Rapporteur désigné
- Amendements examinés
- Adoption d''un **texte amendé**

### B. Le débat en séance publique
1. **Discussion générale**
2. **Examen des articles** un par un
3. **Vote des amendements** (article par article)
4. **Vote sur l''ensemble du texte**

### C. La navette (art. 45 C.)
Le texte voyage entre les deux assemblées jusqu''à adoption en termes identiques.

#### En cas de désaccord persistant
- Le Gouvernement (ou les présidents des assemblées) peut convoquer une **commission mixte paritaire** (CMP) : 7 députés + 7 sénateurs
- Si la CMP **trouve un accord** : texte soumis aux deux assemblées
- Si **échec** ou rejet : le Gouvernement peut demander à l''**Assemblée nationale de statuer définitivement** (« dernier mot »)

### D. Les procédures accélérées et exceptionnelles

#### La procédure accélérée (art. 45 C.)
Engagée par le Gouvernement. **Réduit les délais** entre les deux assemblées.

#### Le vote bloqué (art. 44 al. 3)
Le Gouvernement peut demander à une assemblée de se prononcer par un **seul vote** sur tout ou partie du texte, en ne retenant que les amendements proposés ou acceptés par le Gouvernement.

#### L''engagement de responsabilité (art. 49 al. 3)
Le PM, après délibération du Conseil des ministres, peut engager la responsabilité du Gouvernement devant l''Assemblée nationale sur un texte. Le texte est **considéré comme adopté** sauf si une **motion de censure** est déposée dans les 24 heures et adoptée à la majorité absolue.

**Limites depuis la révision de 2008** : un seul texte par session, sauf pour les **lois de finances** et **lois de financement de la sécurité sociale**.

## III. La promulgation

### A. Définition (art. 10 C.)
Acte par lequel le **Président de la République** atteste l''existence de la loi et ordonne son exécution.

### B. Délai
**15 jours** suivant la transmission au Gouvernement de la loi définitivement adoptée.

### C. Pouvoirs du Président
- Demander une **nouvelle délibération** sur tout ou partie du texte (art. 10 al. 2) — pouvoir rarement utilisé
- **Saisir le Conseil constitutionnel** (art. 61) — suspend le délai
- Doit promulguer si **inconstitutionnalité** non retenue

### D. Refus de promulgation
**Pas un pouvoir de veto** : le Président est tenu de promulguer, sous peine de manquement.

## IV. La publication

### A. Au Journal officiel
La loi entre en vigueur après **publication au JORF** (art. 1er C. civ., réforme du 20 février 2004).

### B. La date d''entrée en vigueur
**Principe** (art. 1er C. civ.) : le **lendemain** de la publication.

**Exceptions** :
- Date fixée par la loi elle-même
- **Cas d''urgence** : entrée en vigueur le jour même
- Pour les actes nécessitant des décrets d''application : à la date d''entrée en vigueur du décret (avec délai raisonnable)

### C. La conséquence : l''opposabilité
Une fois publiée, la loi est **opposable à tous** : *nemo censetur ignorare legem* (« nul n''est censé ignorer la loi »).

Critique : fiction utile mais déconnectée de la réalité (inflation législative).

## V. La sortie de vigueur

### A. L''abrogation expresse
La loi nouvelle **indique expressément** qu''elle abroge la précédente. Forme claire et préférable.

### B. L''abrogation tacite
Résulte de l''**incompatibilité** entre la loi ancienne et la loi nouvelle. *Lex posterior derogat priori*.

Conditions :
- Identité d''objet
- Contradiction réelle
- Volonté du législateur

### C. La caducité
La loi perd sa raison d''être (changement de circonstances).

### D. La désuétude
**Principe** : la non-application prolongée d''une loi **n''entraîne pas son abrogation**. Une loi reste en vigueur tant qu''elle n''est pas formellement abrogée.

**Exceptions doctrinales** discutées : certains auteurs admettent une « obsolescence ».

### E. L''annulation
Une **loi déclarée inconstitutionnelle** par le Conseil constitutionnel (QPC) est **abrogée** (art. 62 al. 2 C.). Effet erga omnes.

### F. Les lois temporaires
Certaines lois sont adoptées pour une durée déterminée et s''éteignent à son terme (ex. : lois habilitant le Gouvernement à prendre des ordonnances).

## VI. La codification

### A. Codification à droit constant
Regroupe et classe des textes existants sans en modifier le contenu. Méthode actuelle de codification française.

### B. Le rôle de la **Commission supérieure de codification**

### C. Limites
- Difficulté de mise à jour
- Codes parfois lacunaires (ex. : Code du travail incomplet)
- Risque de **« codification cimetière »**

## À retenir

**Trois étapes** : adoption (procédure parlementaire) → promulgation (Président, 15 jours) → publication (JORF, entrée en vigueur le lendemain).

**Article 49 al. 3** : texte adopté sans vote sauf motion de censure dans les 24 h. Limité à un texte par session (sauf budget et LFSS) depuis 2008.

**Article 1er C. civ.** : « Les lois […] entrent en vigueur à la date qu''elles fixent ou, à défaut, le lendemain de leur publication. »

**Abrogation expresse** privilégiée. Abrogation tacite admise par principe d''incompatibilité. **La désuétude n''abroge pas** la loi.

**Inflation législative** : pose la question de la **qualité** de la loi (Cons. const. : l''**accessibilité et l''intelligibilité de la loi** sont des objectifs de valeur constitutionnelle).'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 5 - L''APPLICATION DE LA LOI DANS LE TEMPS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''application de la loi dans le temps', 'Chapitre 5 - Conflits de lois dans le temps',
       'Principe de non-rétroactivité, effet immédiat, survie de la loi ancienne, exceptions (lois pénales plus douces, lois interprétatives).',
       array['Non-rétroactivité', 'Article 2 Code civil', 'Effet immédiat', 'Survie de la loi ancienne', 'Lois pénales plus douces', 'In mitius', 'Article 112-1 Code pénal', 'Lois interprétatives', 'Droits acquis', 'Situations contractuelles'],
       17, 5,
'# L''application de la loi dans le temps

## Introduction

Quand la loi change, des situations nées sous l''ancienne loi se prolongent sous la nouvelle. Comment résoudre ces conflits ? Le principe de **non-rétroactivité** (article 2 du Code civil) protège la **sécurité juridique**, mais il connaît de nombreuses nuances et exceptions, notamment en matière pénale et contractuelle.

La théorie des conflits de lois dans le temps est l''une des plus subtiles du droit. Elle a été particulièrement développée par **Paul Roubier** (*Les conflits de lois dans le temps*, 1929) qui a renouvelé la matière.

## I. Le principe de non-rétroactivité (art. 2 C. civ.)

### A. Énoncé du principe

> « La loi ne dispose que pour l''avenir ; elle n''a point d''effet rétroactif. » (article 2 C. civ.)

### B. Fondement
- **Sécurité juridique** : éviter de bouleverser les situations acquises
- **Confiance légitime** dans le droit en vigueur
- Principe de **non-rétroactivité de la loi pénale** (art. 8 DDHC) : valeur constitutionnelle

### C. Portée de l''article 2 C. civ.
**Valeur législative seulement** (sauf en matière pénale). Le législateur peut donc, en matière civile, adopter des lois expressément rétroactives — sous réserve du contrôle du Conseil constitutionnel.

### D. Distinction rétroactivité / effet immédiat
- **Rétroactivité** : la loi s''applique à des **situations entièrement constituées** avant son entrée en vigueur
- **Effet immédiat** : la loi s''applique aux **effets futurs** de situations en cours

## II. L''effet immédiat de la loi nouvelle

### A. Principe (théorie Roubier)
La loi nouvelle s''applique **immédiatement aux situations en cours**, pour leurs effets futurs. Elle ne remet pas en cause les effets passés.

**Exemple** : si une loi nouvelle modifie les règles de la garde des enfants, elle s''applique immédiatement aux divorces en cours (pour les mesures à venir), sans remettre en cause les décisions déjà prises.

### B. Distinction effets / situation juridique

Roubier distingue :
- La **situation juridique** elle-même (statut)
- Les **effets** de cette situation

La loi nouvelle s''applique aux effets futurs même de situations anciennes.

### C. Application

#### Lois sur l''état des personnes
Effet immédiat. Exemples : capacité, mariage, filiation.

#### Lois sur les biens
Effet immédiat sur les éléments du régime juridique. Exemple : les nouvelles règles de copropriété s''appliquent aux copropriétés existantes.

#### Lois sur l''organisation judiciaire et la procédure
**Application immédiate**, sauf disposition contraire. Le procès en cours est régi par les règles nouvelles.

## III. La survie de la loi ancienne (matière contractuelle)

### A. Le principe
Les **contrats en cours** restent régis par la **loi en vigueur au jour de leur conclusion**. C''est une exception à l''effet immédiat.

### B. Justification
- **Sécurité contractuelle**
- **Respect des prévisions des parties**
- Les parties ont contracté en connaissance d''une certaine législation

### C. Domaine de la survie

Couvre :
- La **formation** du contrat (conditions de validité)
- Les **effets** du contrat (obligations, droits)
- L''**extinction** du contrat

### D. Exceptions : application immédiate aux contrats en cours

Le législateur peut imposer l''**application immédiate** aux contrats en cours. Conditions développées par la jurisprudence :
- **Loi d''ordre public économique impérieux**
- **Effet immédiat expressément prévu**
- **Disposition relative aux statuts légaux** (et non contractuels) — ex. : congés payés, durée du travail

**Exemples** :
- Lois sociales (durée du travail, salaire minimum) : application immédiate
- Lois sur les baux d''habitation : application immédiate fréquente
- Lois relatives à l''ordre public familial : application immédiate

## IV. Les exceptions à la non-rétroactivité

### A. La rétroactivité expressément prévue par le législateur

**En matière civile**, la loi peut être expressément rétroactive. Limites :
- **Cons. const.** : pas d''atteinte aux **situations légalement acquises** ni aux **contrats en cours** sans **motif d''intérêt général suffisant**
- **CEDH** (art. 6 § 1) : les lois rétroactives en matière fiscale ou civile doivent respecter le procès équitable

### B. Les lois interprétatives

#### Définition
Lois qui **précisent le sens** d''une loi antérieure obscure ou ambiguë.

#### Effet
**Rétroactives par nature** : elles font corps avec la loi qu''elles interprètent.

#### Conditions strictes
La jurisprudence vérifie :
- Le caractère **réellement interprétatif** (pas une loi nouvelle déguisée)
- L''**ambiguïté** de la loi initiale

### C. Les lois de validation

Lois qui valident rétroactivement des actes annulés (ou risquant de l''être) par le juge.

**Contrôle strict** (Cons. const. + CEDH) :
- Motif **impérieux** d''intérêt général
- Pas de violation manifeste de la séparation des pouvoirs
- Pas d''atteinte au procès équitable

### D. La rétroactivité in mitius (matière pénale)

#### Principe
La **loi pénale plus douce s''applique rétroactivement** aux faits commis avant son entrée en vigueur, s''ils n''ont pas encore été définitivement jugés.

#### Fondement
- **Article 8 DDHC** : « la loi ne doit établir que des peines strictement et évidemment nécessaires »
- **Article 112-1 al. 3 C. pén.** : « Les dispositions nouvelles s''appliquent aux infractions commises avant leur entrée en vigueur et n''ayant pas donné lieu à une condamnation passée en force de chose jugée lorsqu''elles sont moins sévères que les dispositions anciennes. »
- Valeur constitutionnelle (Cons. const. 1980)
- Valeur conventionnelle (CEDH, Scoppola c. Italie, 17 sept. 2009)

#### Application
- Suppression d''une infraction
- Allègement de la peine
- Élément constitutif allégé

#### Cas particuliers
- **Pluralité de modifications** : appréciation globale
- **Régime de circonstances aggravantes**

### E. La non-rétroactivité absolue des lois pénales plus sévères

#### Principe constitutionnel
Article 8 DDHC, article 112-1 C. pén.

#### Conséquence
**Aucune exception** possible. Une loi pénale plus sévère ne peut s''appliquer à des faits antérieurs.

## V. La règle particulière des lois de procédure et de compétence

### A. Application immédiate
Principe : les lois de procédure pénale ou civile s''appliquent **immédiatement** aux procès en cours.

### B. Réserve : actes déjà accomplis
Les actes valablement faits sous l''ancienne loi restent valables (théorie de la « survie procédurale »).

### C. Cas particulier des règles de prescription
Évolution complexe. **Loi du 17 juin 2008** sur la prescription civile a posé des règles transitoires précises.

## VI. Le contrôle des lois rétroactives

### A. Contrôle du Conseil constitutionnel

#### En matière non pénale
Le législateur peut adopter des lois rétroactives, mais sous **conditions** :
- **Motif d''intérêt général suffisant**
- **Pas d''atteinte** aux situations légalement acquises ni à des **contrats légalement formés**
- **Respect** des droits constitutionnels

#### En matière pénale
**Interdiction absolue** des lois rétroactives plus sévères (art. 8 DDHC).

### B. Contrôle conventionnel (CEDH)

#### Article 7 CESDH
Principe de la légalité des délits et des peines. Interdit la rétroactivité pénale plus sévère.

#### Article 6 § 1
Procès équitable. Encadre les lois de validation et lois interprétatives qui interféreraient dans des procès en cours.

#### Article 1er Protocole n° 1
Protection de la propriété. Limite les expropriations rétroactives.

### C. Contrôle du Conseil d''État
Sanctionne les rétroactivités illégales des règlements (CE 1948, *Société du journal L''Aurore* : principe de non-rétroactivité des actes administratifs).

## À retenir

**Principe (art. 2 C. civ.)** : la loi ne dispose que pour l''avenir.

**Distinction essentielle** :
- **Rétroactivité** : interdite par principe
- **Effet immédiat** : autorisé pour les situations en cours
- **Survie de la loi ancienne** : pour les contrats en cours

**Exception majeure en pénal** : la **rétroactivité in mitius** (art. 112-1 al. 3 C. pén.) — la loi pénale plus douce s''applique rétroactivement. À l''inverse, la **loi pénale plus sévère ne s''applique jamais rétroactivement**.

**Lois interprétatives et de validation** : rétroactives mais contrôlées strictement (Cons. const., CEDH).

**Procédure et compétence** : application immédiate, sauf actes déjà accomplis.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 6 - L''APPLICATION DE LA LOI DANS L''ESPACE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''application de la loi dans l''espace', 'Chapitre 6 - Conflits de lois dans l''espace',
       'Principe de territorialité, personnalité, extra-territorialité, introduction au droit international privé.',
       array['Territorialité', 'Personnalité', 'Extra-territorialité', 'Statut personnel', 'Statut réel', 'Lois de police', 'DIP', 'Conflit de lois', 'Conflit de juridictions'],
       14, 6,
'# L''application de la loi dans l''espace

## Introduction

Notre monde est divisé en États souverains, chacun ayant son ordre juridique. Quand une situation comporte un élément d''**extranéité** (étranger sur le territoire, contrat international, mariage mixte…), il faut déterminer **quelle loi s''applique** et **quel juge est compétent**. C''est l''objet du droit international privé (DIP).

## I. Les principes de répartition des compétences législatives

### A. Le principe de territorialité

#### Énoncé
La loi française s''applique à **toutes les personnes et situations** présentes sur le **territoire français**, quelle que soit la nationalité.

#### Fondement
- Souveraineté étatique
- Article 3 al. 1 C. civ. : « Les lois de police et de sûreté obligent tous ceux qui habitent le territoire. »

#### Application
Couvre notamment :
- **Lois de police et de sûreté** : ordre public, sécurité, police administrative
- **Lois pénales** (principe de territorialité de la loi pénale)
- **Lois fiscales**
- **Lois de procédure**

### B. Le principe de personnalité

#### Énoncé
Certaines lois suivent la **personne** où qu''elle aille, en raison de sa **nationalité**.

#### Fondement
Article 3 al. 3 C. civ. : « Les lois concernant l''état et la capacité des personnes régissent les Français, même résidant en pays étranger. »

#### Application
- **Statut personnel** : nom, capacité, mariage, divorce, filiation
- Les Français à l''étranger restent régis par la loi française pour leur statut personnel
- Les étrangers en France peuvent rester régis par leur loi nationale pour leur statut personnel

### C. Le statut réel (immeubles)

#### Énoncé
Les **immeubles** sont régis par la **loi du lieu de leur situation** (*lex rei sitae*).

#### Fondement
- Article 3 al. 2 C. civ. : « Les immeubles, même ceux possédés par des étrangers, sont régis par la loi française. »

#### Application
- Propriété foncière
- Servitudes
- Droits réels immobiliers

## II. L''application territoriale de la loi pénale française

### A. Territorialité (art. 113-2 C. pén.)
La loi pénale française s''applique aux infractions **commises sur le territoire de la République**.

Élément constitutif :
- L''infraction est commise en France dès qu''**un de ses faits constitutifs** a lieu en France
- Cas particulier des **navires et aéronefs** français (territoire fictif)

### B. Personnalité active (art. 113-6 C. pén.)
La loi française s''applique aux **crimes** et à certains **délits** commis par un **Français à l''étranger**.

Conditions pour les délits :
- Infraction également incriminée à l''étranger (double incrimination)
- Plainte de la victime ou dénonciation officielle

### C. Personnalité passive (art. 113-7 C. pén.)
Loi française applicable aux crimes et délits commis à l''étranger par un **étranger** quand la **victime est de nationalité française**.

### D. Compétence réelle (art. 113-10 C. pén.)
Pour certaines infractions atteignant les intérêts fondamentaux de la France (trahison, espionnage, fausse monnaie).

### E. Compétence universelle (art. 689 C. pr. pén.)
Pour certaines infractions internationales (torture, terrorisme), la France peut juger l''auteur quelle que soit sa nationalité et le lieu de commission, dès lors qu''il se trouve sur son territoire.

## III. Les lois de police

### A. Définition
**Lois impératives** dont l''application est jugée **indispensable** pour la sauvegarde de l''organisation politique, sociale ou économique du pays.

### B. Effet
S''appliquent **immédiatement** à toute situation se trouvant sur le territoire français, sans considération de la règle de conflit.

### C. Exemples
- Législation sur la **monnaie**
- **Droit du travail** (durée, salaire minimum)
- **Droit de la consommation**
- **Législation environnementale**

### D. Sources
- **Article 9 du règlement Rome I** (UE) sur les obligations contractuelles
- Jurisprudence française (Cass. ch. mixte 30 nov. 2007)

## IV. Le droit international privé (DIP)

### A. Définition
Discipline qui résout les **conflits de lois** et **conflits de juridictions** dans les situations comportant un élément d''extranéité.

### B. Conflits de lois

#### Méthode classique : la règle de conflit bilatérale
Désigne la loi applicable selon un **critère de rattachement** (nationalité, domicile, lieu de l''acte, situation du bien).

**Exemple** : pour le **divorce**, le règlement Rome III (UE) désigne la loi de la résidence habituelle commune des époux, ou à défaut leur dernière résidence commune.

#### Sources
- **Conventions internationales** (Convention de La Haye)
- **Règlements UE** : Rome I (contrats), Rome II (responsabilité), Rome III (divorce), Bruxelles II bis (responsabilité parentale)
- **Code civil** (art. 3 C. civ. et autres)
- **Jurisprudence**

### C. Conflits de juridictions

#### Compétence internationale du juge français
Règles spécifiques (privilèges de juridiction, articles 14 et 15 C. civ. pour les Français).

#### Reconnaissance des jugements étrangers
- **Effets** des jugements étrangers en France
- Procédure d''**exequatur** : conditions de reconnaissance (compétence internationale du juge, conformité à l''ordre public, absence de fraude)

### D. L''ordre public international
Mécanisme permettant **d''écarter une loi étrangère** désignée par la règle de conflit si son application aboutirait à un résultat contraire à des valeurs fondamentales du for.

**Exemples** :
- Refus d''appliquer une loi étrangère autorisant la polygamie
- Refus d''une loi étrangère discriminant en raison du sexe

## V. Le droit de l''Union européenne et l''espace judiciaire

### A. Libre circulation
Les **quatre libertés** (personnes, marchandises, services, capitaux) façonnent l''application territoriale du droit dans l''UE.

### B. Espace de liberté, sécurité et justice
Coopération judiciaire en matière civile et pénale (titre V TFUE).

### C. Reconnaissance mutuelle des décisions
Les jugements rendus dans un État membre sont **directement reconnus** dans les autres (règlement Bruxelles I bis).

## À retenir

**Trois principes** :
- **Territorialité** : lois s''appliquant à tous sur le territoire (police, sûreté, pénal)
- **Personnalité** : lois suivant la personne selon sa nationalité (statut personnel, art. 3 al. 3 C. civ.)
- **Statut réel** : *lex rei sitae* (loi du lieu de situation pour les immeubles)

**Loi pénale française** : territorialité (art. 113-2 C. pén.), personnalité active et passive, compétence réelle et universelle.

**Lois de police** : s''appliquent impérativement quelle que soit la règle de conflit.

**DIP** : résout les conflits de lois (Rome I, II, III) et de juridictions (Bruxelles I bis, II bis).

**Ordre public international** : permet d''écarter une loi étrangère contraire aux valeurs fondamentales du for.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 7 - LA PREUVE EN DROIT
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La preuve en droit civil', 'Chapitre 7 - La preuve',
       'Charge de la preuve, objet, modes (écrit, témoignages, présomptions, aveu, serment), force probante.',
       array['Charge de la preuve', 'Actori incumbit probatio', 'Acte authentique', 'Acte sous signature privée', 'Témoignage', 'Présomption légale', 'Présomption judiciaire', 'Aveu', 'Serment', 'Commencement de preuve par écrit'],
       16, 7,
'# La preuve en droit civil

## Introduction

Avoir un droit ne suffit pas : il faut pouvoir le **prouver**. *Idem est non esse aut non probari* (« ne pas être ou ne pas être prouvé, c''est la même chose »). Le droit de la preuve organise les modalités de la démonstration en justice : qui doit prouver ? Que prouver ? Comment prouver ?

La matière a été **réformée par l''ordonnance du 10 février 2016**, qui a renuméroté et clarifié les articles 1353 à 1386-1 du Code civil.

## I. La charge de la preuve

### A. Le principe (art. 1353 C. civ.)

> « Celui qui réclame l''exécution d''une obligation doit la prouver. Réciproquement, celui qui se prétend libéré doit justifier le paiement ou le fait qui a produit l''extinction de son obligation. »

Adage latin : *actori incumbit probatio* (« la preuve incombe au demandeur »).

### B. Application

- Le **demandeur** prouve l''existence de son droit (ex. : créance, propriété)
- Le **défendeur** prouve les faits sur lesquels il fonde sa défense (paiement, prescription, compensation)

### C. Le risque de la preuve
Celui qui ne parvient pas à prouver **perd le procès**. La charge de la preuve détermine donc le **risque** qui pèse sur chaque partie.

### D. Le renversement de la charge : les présomptions

#### Définition (art. 1354 C. civ.)
« La présomption que la loi attache à certains actes ou à certains faits en les tenant pour certains dispense celui au profit duquel elle existe d''en rapporter la preuve. »

#### Présomptions légales simples
Peuvent être renversées par **preuve contraire**. Exemple : présomption de paternité du mari (art. 312 C. civ.) — réfutable.

#### Présomptions légales irréfragables
**Preuve contraire interdite**. Très rares (autorité de la chose jugée).

#### Présomptions mixtes
Preuve contraire admise mais **limitée** à certains moyens.

## II. L''objet de la preuve

### A. Le fait
**Le fait doit être prouvé** par la partie à laquelle son existence ou son inexistence profite.

### B. Le droit
**Le juge est présumé connaître le droit** : *jura novit curia*. Les parties n''ont pas à prouver le contenu d''une loi française.

### C. Cas particuliers

#### La coutume
**Doit être prouvée** par celui qui s''en prévaut.

#### Le droit étranger
La jurisprudence évolue : autrefois, la partie devait prouver le contenu de la loi étrangère. **Désormais** (Cass. 1re civ. 28 juin 2005), il appartient au juge français de **rechercher** le contenu du droit étranger applicable.

### D. Les faits négatifs
Difficiles à prouver. La jurisprudence admet la **preuve par tout moyen** d''un fait négatif (par démonstration positive du fait contraire).

## III. Les modes de preuve

### A. La preuve par écrit

#### L''acte authentique (art. 1369 C. civ.)
**Reçu par un officier public** (notaire, huissier, officier d''état civil) compétent et selon les formes requises.

**Force probante** :
- Fait foi **jusqu''à inscription de faux** (procédure exceptionnelle)
- Pour les énonciations principales (constatées par l''officier)
- Pour les autres énonciations : fait foi jusqu''à preuve contraire

**Utilité** : vente immobilière (obligatoire), contrat de mariage, donation, testament authentique.

#### L''acte sous signature privée (art. 1372 C. civ.)
**Rédigé et signé par les parties**, sans officier public.

Conditions de validité (art. 1322 ancien, 1372 nouveau) :
- **Signatures** des parties
- **Mentions manuscrites** parfois exigées (cautionnement, art. 1376)
- **Double original** pour les contrats synallagmatiques (art. 1375)
- **Mention de la somme** en chiffres et en lettres pour les engagements unilatéraux de payer (art. 1376)

**Force probante** :
- Fait foi **jusqu''à preuve contraire** entre les parties
- Date opposable aux tiers à partir de l''**enregistrement** ou de la mort d''un signataire
- Possibilité de **dénégation d''écriture ou de signature** (procédure)

#### L''écrit électronique (art. 1366 C. civ.)
**Admis** comme l''écrit papier, sous conditions :
- Identification de la personne dont il émane
- Intégrité de l''écrit (signature électronique avancée)

**Loi du 13 mars 2000** sur la signature électronique. Règlement eIDAS (2014).

### B. La preuve testimoniale

#### Définition
Déposition orale d''un témoin sur les faits dont il a eu connaissance.

#### Admissibilité (art. 1361 C. civ.)
- **Faits juridiques** : preuve libre
- **Actes juridiques** : preuve par écrit obligatoire au-delà de **1 500 €** (décret du 15 juillet 2004)

#### Exceptions à l''exigence d''écrit (art. 1360)
- **Commencement de preuve par écrit** complété par d''autres éléments
- **Impossibilité matérielle ou morale** de se procurer un écrit (ex. : entre membres de la famille)
- **Perte de l''écrit** par cas fortuit ou force majeure
- **Acte de commerce** (preuve libre entre commerçants)

### C. Les présomptions de l''homme (art. 1382 C. civ.)

#### Définition
**Indices** que le juge interprète pour déduire un fait inconnu d''un fait connu.

#### Conditions
- **Graves, précises et concordantes**
- Appréciation **souveraine** du juge du fond

#### Admissibilité
Suit le régime de la preuve testimoniale (limites aux 1 500 €).

### D. L''aveu

#### Définition
**Reconnaissance par une partie** d''un fait défavorable à elle et favorable à l''autre.

#### L''aveu judiciaire (art. 1383-2 C. civ.)
- Fait devant le juge
- **Indivisible** : on doit prendre tout ou rien
- **Irrévocable**, sauf erreur de fait
- **Force probante absolue**

#### L''aveu extrajudiciaire
Apprécié librement par le juge.

### E. Le serment

#### Le serment décisoire (art. 1384 et s.)
**Déféré par une partie à l''autre**. La partie à qui il est déféré :
- **Prête serment** : gagne le procès
- **Refuse** ou ne le réfère pas : perd le procès
- **Réfère le serment** : à l''autre partie

#### Le serment supplétoire
**Déféré par le juge** d''office pour compléter sa conviction. Sans force décisoire.

## IV. La distinction acte juridique / fait juridique

### A. Acte juridique
**Manifestation de volonté** destinée à produire des effets de droit (contrat, testament).

**Preuve** :
- Par **écrit** au-delà de 1 500 €
- **Sauf exceptions** vues supra
- **Sauf en matière commerciale** : preuve libre

### B. Fait juridique
**Événement** (volontaire ou non) produisant des effets de droit sans avoir été spécialement voulu (accident, naissance, prescription).

**Preuve libre par tous moyens** :
- Écrits
- Témoignages
- Présomptions
- Aveu
- Serment

## V. L''administration de la preuve en justice

### A. Le principe du contradictoire
Les éléments de preuve doivent être communiqués à toutes les parties. Article 16 CPC.

### B. Les mesures d''instruction
Le juge peut ordonner :
- **Expertise** (art. 232 et s. CPC)
- **Enquête** (audition de témoins, art. 199)
- **Constatations** par huissier
- **Vérification d''écritures**

### C. La loyauté de la preuve
**Principe** : la preuve doit être **loyalement** obtenue.
- Cass. ass. plén. 7 janvier 2011 : irrecevabilité des enregistrements obtenus à l''insu de leur auteur
- Mais en matière prud''homale et pénale, plus de souplesse

### D. Le secret professionnel
Limite la production de certaines preuves (secret médical, avocat-client, etc.).

## VI. La preuve à l''ère numérique

### A. Les enjeux
- **Métadonnées**
- **Authenticité** des documents numériques
- **Cookies** et tracking

### B. Le RGPD (Règlement Général sur la Protection des Données)
Encadre la **collecte** et l''utilisation de données personnelles comme moyen de preuve.

### C. L''e-discovery
Pratiques d''enquête électronique, importées du droit américain.

## À retenir

**Charge de la preuve (art. 1353)** : *actori incumbit probatio*. Le demandeur prouve son droit ; le défendeur prouve ses moyens de défense.

**Distinction acte/fait juridique** :
- **Acte juridique > 1 500 €** : preuve par **écrit** obligatoire (sauf exceptions)
- **Fait juridique** : preuve **libre**

**5 modes de preuve** : écrit (authentique ou sous signature privée), témoignage, présomption, aveu, serment.

**Force probante** :
- **Authentique** : jusqu''à inscription de faux
- **Sous signature privée** : jusqu''à preuve contraire
- **Aveu judiciaire** : preuve absolue

**Exceptions à l''exigence d''écrit** : commencement de preuve par écrit, impossibilité matérielle/morale, perte de l''écrit, matière commerciale.'
from public.subjects where name = 'Introduction générale au droit';

-- =====================================================================
-- FICHE 8 - LES DROITS SUBJECTIFS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les droits subjectifs', 'Chapitre 8 - Les droits subjectifs',
       'Définition, classification (patrimoniaux/extra-patrimoniaux, réels/personnels), acquisition, exercice et abus de droit.',
       array['Droits subjectifs', 'Droits patrimoniaux', 'Droits extrapatrimoniaux', 'Droits réels', 'Droits personnels', 'Droits intellectuels', 'Abus de droit', 'Action en justice', 'Prescription'],
       18, 8,
'# Les droits subjectifs

## Introduction

Le droit objectif (l''ensemble des règles) octroie aux personnes des **prérogatives** : les **droits subjectifs**. C''est l''autre versant du droit. Tous les jours, chacun exerce des droits subjectifs : droit de propriété sur ses biens, droit de créance contre son employeur, droit à l''image, droit de vote… Comprendre la nature, la classification et le régime des droits subjectifs est fondamental.

## I. La notion de droit subjectif

### A. Définition

Le **droit subjectif** est une **prérogative individuelle** reconnue et sanctionnée par le droit objectif, qui permet à son titulaire de **faire**, **d''exiger** ou **d''interdire** quelque chose dans son propre intérêt.

### B. Les éléments constitutifs

#### Le sujet
Titulaire du droit. **Toute personne juridique** (physique ou morale) peut être titulaire de droits.

#### L''objet
**Ce sur quoi porte le droit** :
- Une chose (droit réel)
- Une prestation d''une autre personne (droit personnel)
- Une création de l''esprit (droit intellectuel)
- Sa propre personnalité (droits de la personnalité)

#### Le rapport juridique
**Lien** entre le sujet actif (titulaire) et un ou plusieurs sujets passifs.

### C. Théories sur la nature du droit subjectif

#### Théorie de la volonté (Savigny, Windscheid)
Le droit subjectif est un **pouvoir de la volonté** reconnu par l''ordre juridique.
**Critique** : les incapables (mineurs, majeurs protégés) ont pourtant des droits.

#### Théorie de l''intérêt (Ihering)
Le droit subjectif est un **intérêt juridiquement protégé**.
**Critique** : la simple satisfaction d''un intérêt ne suffit pas (intérêt simple vs intérêt juridiquement protégé).

#### Théorie mixte (Jellinek, Michoud)
Le droit subjectif est un **intérêt protégé par le droit objectif et fondé sur une volonté**.

#### Théorie de Duguit (négation)
Pour Duguit, il n''y a pas de droits subjectifs : seulement des **situations juridiques** créées par le droit objectif. Théorie controversée.

## II. La classification des droits subjectifs

### A. Droits patrimoniaux et extrapatrimoniaux

#### Droits patrimoniaux
**Évaluables en argent**. Peuvent être :
- Cédés (vendus, donnés)
- Saisis par les créanciers
- Transmis par succession

Composent le **patrimoine** du titulaire.

#### Droits extrapatrimoniaux
**Non évaluables en argent**. En principe :
- **Incessibles**
- **Insaisissables**
- **Intransmissibles**
- **Imprescriptibles**

Exemples : droits de la personnalité, droits politiques, droits familiaux.

### B. Les droits patrimoniaux

#### Droits réels
**Pouvoir direct** sur une chose. Sans intermédiaire.

**Droits réels principaux** :
- **Droit de propriété** (art. 544 C. civ.) : usus, fructus, abusus
- **Démembrements** : usufruit, nue-propriété, servitudes

**Droits réels accessoires** (sûretés réelles) :
- **Hypothèque**
- **Gage**
- **Privilèges**

Caractères :
- **Opposables erga omnes** (à tous)
- Droit de **suite** : le titulaire peut suivre le bien en quelque main qu''il se trouve
- Droit de **préférence** : il prime les autres créanciers sur le bien grevé

#### Droits personnels (droits de créance)
**Pouvoir d''exiger une prestation** d''une autre personne (le débiteur).

Caractères :
- **Effet relatif** : n''opère qu''entre créancier et débiteur (art. 1199 C. civ.)
- **Sans droit de suite** (en principe)
- **Concourent** sur le patrimoine du débiteur

Trois objets possibles (art. 1101) :
- **Donner** (transférer la propriété)
- **Faire** (accomplir un acte)
- **Ne pas faire** (s''abstenir)

#### Droits intellectuels
**Droits d''auteur**, **brevets**, **marques**, **dessins et modèles**.

Caractères mixtes :
- Aspect patrimonial : exploitation, cession
- Aspect moral : droit moral de l''auteur (incessible)

### C. Les droits extrapatrimoniaux

#### Les droits de la personnalité
Protégent **l''intégrité** physique et morale.

Articles clés :
- **Article 9 C. civ.** : droit au respect de la vie privée
- **Article 16 C. civ.** : primauté de la personne, dignité, intégrité du corps
- **Articles 1240 et s. C. civ.** : protection délictuelle

Catégories :
- **Intégrité physique** : droit à la vie, à l''intégrité du corps
- **Intégrité morale** :
  - Droit à l''**honneur** (protection contre la diffamation)
  - Droit à la **vie privée** (loi du 17 juillet 1970)
  - Droit à l''**image**
  - Droit au **nom**
  - Droit à la **présomption d''innocence**
  - Droit à l''**oubli numérique**

#### Les droits familiaux
- Autorité parentale
- Droit aux aliments
- Droit de visite

#### Les droits politiques
- Droit de vote
- Droit d''éligibilité
- Liberté d''association

#### Les droits publics
- Liberté d''aller et venir
- Liberté d''expression
- Liberté de conscience

## III. L''acquisition des droits subjectifs

### A. Les modes d''acquisition

#### Acquisition originaire
Le droit naît dans le patrimoine du titulaire **sans avoir existé antérieurement** ailleurs :
- **Occupation** (chose sans maître)
- **Création** (œuvre, invention)
- **Naissance** (droits liés à la personnalité)

#### Acquisition dérivée
Le droit est **transmis** d''un patrimoine à un autre :
- **Acte juridique** : vente, donation, échange, succession
- **Fait juridique** : possession, prescription acquisitive

### B. Les actes juridiques

#### Classification

**Selon le nombre de parties** :
- **Unilatéraux** : testament, démission, reconnaissance d''enfant
- **Bilatéraux** : contrats à deux parties
- **Multilatéraux** : contrats de société, conventions collectives

**Selon le caractère onéreux ou gratuit** :
- **À titre onéreux** : contrepartie (vente)
- **À titre gratuit** : sans contrepartie (donation, prêt à usage)

**Selon le moment des effets** :
- **Entre vifs** : effet immédiat
- **À cause de mort** : effet au décès (testament)

### C. Les faits juridiques

#### Événements involontaires créateurs de droits
- Naissance
- Décès
- Accidents

#### Faits volontaires non destinés à créer des droits
Mais produisant des effets : occupation, possession, paiement de l''indu (quasi-contrats, art. 1300 C. civ.).

## IV. L''exercice des droits subjectifs

### A. Le principe de la liberté d''exercice
Chacun exerce ses droits **comme bon lui semble**, dans les limites du droit objectif.

### B. L''abus de droit

#### Origine jurisprudentielle
**Affaire Clément-Bayard** (Cass. req. 3 août 1915) : un propriétaire avait planté des piques de fer sur son terrain pour endommager les ballons dirigeables du voisin. La Cour de cassation a condamné l''abus du droit de propriété.

#### Critères de l''abus
- **Intention de nuire** : critère classique (Clément-Bayard)
- **Détournement du droit de sa finalité** : critère plus récent (Josserand)
- **Disproportion** entre exercice et utilité

#### Sanctions
- **Dommages-intérêts** (responsabilité civile, art. 1240)
- **Cessation** de l''acte abusif

#### Exemples
- Abus du droit de propriété (Clément-Bayard)
- Abus du droit de licencier (cause sérieuse)
- Abus du droit d''action en justice (procédure abusive)
- Abus du droit de vote en société

#### Domaine
L''abus de droit s''applique à **tous les droits**, sauf les **droits discrétionnaires** (rares) que la loi entoure d''un pouvoir absolu (droit moral d''auteur, droit de tester).

## V. La protection des droits subjectifs : l''action en justice

### A. Définition
Pouvoir reconnu au titulaire d''un droit subjectif de **saisir le juge** pour faire reconnaître ou sanctionner son droit.

### B. Conditions de recevabilité

#### Intérêt à agir (art. 31 CPC)
- **Direct et personnel**
- **Né et actuel** (en principe)
- **Légitime** (juridiquement protégé)

#### Qualité à agir
Le demandeur doit avoir le droit d''invoquer la prétention.

#### Capacité
Avoir la capacité juridique requise.

### C. Classification des actions
- **Actions personnelles** : fondées sur un droit personnel
- **Actions réelles** : fondées sur un droit réel
- **Actions mixtes** : combinent les deux
- **Actions mobilières / immobilières** selon l''objet

### D. La prescription extinctive

#### Principe
Le droit s''**éteint par non-usage** pendant un certain temps.

#### Délais (loi du 17 juin 2008)
- **Droit commun** : 5 ans (art. 2224 C. civ.)
- **Droits réels immobiliers** : 30 ans (art. 2227)
- **Responsabilité corporelle** : 10 ans
- **Responsabilité du fait des produits défectueux** : 3 ans (à compter de la connaissance), 10 ans (depuis la mise en circulation)

#### Causes d''interruption et de suspension
- **Interruption** : reconnaissance de dette, action en justice, mise en demeure
- **Suspension** : minorité, force majeure, négociations

#### Le délai-butoir
20 ans à compter du fait générateur, sauf exceptions.

### E. La prescription acquisitive (usucapion)
Pour les **droits réels immobiliers** : possession utile pendant 30 ans (ou 10 ans en cas de juste titre et bonne foi).

## À retenir

**Définition** : un droit subjectif est une **prérogative individuelle** reconnue et sanctionnée par le droit objectif.

**Classifications** :
- **Patrimoniaux** (évaluables, cessibles) / **extrapatrimoniaux** (incessibles, insaisissables)
- **Réels** (sur une chose, erga omnes) / **personnels** (créance, effet relatif) / **intellectuels** (mixtes)

**Acquisition** : originaire (occupation, création) ou dérivée (acte juridique, fait juridique).

**Abus de droit** : sanction de l''exercice malicieux ou détourné. Affaire fondatrice : **Clément-Bayard** (Cass. req. 3 août 1915).

**Action en justice** : intérêt + qualité + capacité (art. 31 CPC).

**Prescription extinctive** : 5 ans en principe (art. 2224 C. civ.). Délai-butoir : 20 ans.'
from public.subjects where name = 'Introduction générale au droit';
