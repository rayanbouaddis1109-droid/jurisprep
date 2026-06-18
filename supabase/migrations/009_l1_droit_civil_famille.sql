-- =====================================================================
-- JurisPrép - Cours complet : Droit civil de la famille (L1 S2)
-- 8 fiches de révision approfondies avec code couleur
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Droit civil de la famille');

-- =====================================================================
-- FICHE 1 - LA NOTION DE FAMILLE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La notion de famille : évolution et fondements', 'Chapitre 1 - Introduction au droit de la famille',
       'Évolution historique, fondements philosophiques, sources juridiques et défis contemporains de la famille.',
       array['Famille', 'Couple', 'Filiation', 'Loi Veil', 'Loi Taubira', 'PMA', 'GPA', 'Parenté', 'Alliance', 'État civil'],
       18, 1,
'# La notion de famille : évolution et fondements

## Introduction

Le **droit de la famille** est l''une des branches les plus dynamiques et politiques du droit civil. Reflétant les **transformations sociales** profondes (libération sexuelle, place des femmes, reconnaissance des homosexualités, évolution des techniques médicales), il s''est métamorphosé en cinquante ans : la famille moderne n''a plus grand-chose en commun avec celle imaginée par les rédacteurs du **Code civil de 1804**.

> **Définition** : Le droit de la famille est l''ensemble des règles juridiques régissant les relations issues du **couple** (mariage, PACS, concubinage), de la **filiation** (biologique ou adoptive) et de la **parenté**.

## I. La notion de famille

### A. Définition et délimitation

#### Approche restrictive
**Famille nucléaire** : père + mère + enfants vivant sous le même toit.

#### Approche large
**Famille étendue** :
- **Parenté** : liens biologiques (descendance) ou juridiques (adoption)
- **Alliance** : liens par mariage (conjoint et sa famille)

#### L''absence de définition légale
Le **Code civil** ne définit pas la famille comme telle. Il régit ses composantes :
- Le **mariage** (`art. 143 et s.`)
- La **filiation** (`art. 310 et s.`)
- Les **obligations alimentaires** (`art. 205 et s.`)

### B. Les liens familiaux

#### La parenté
**Lien biologique** ou **juridique** entre ascendants et descendants.

##### Parenté en ligne directe
- **Ascendants** : parents, grands-parents, etc.
- **Descendants** : enfants, petits-enfants, etc.

##### Parenté en ligne collatérale
- **Frères et sœurs**
- **Oncles, tantes, cousins**

#### L''alliance
**Lien créé par le mariage** entre un époux et la famille de l''autre :
- **Beaux-parents** / belle-fille, beau-fils
- **Belle-sœur**, **beau-frère**

#### Le degré de parenté
Mesure de la **proximité** :
- En ligne directe : 1 degré par génération
- En ligne collatérale : compter les générations en montant, puis en descendant

### C. La diversité des modèles familiaux

#### Famille traditionnelle
**Couple marié** + enfants biologiques.

#### Familles recomposées
Après divorce ou veuvage. **Beau-parent** sans statut juridique propre.

#### Familles monoparentales
**Un seul parent** avec enfants.

#### Familles homoparentales
**Couple de même sexe** avec enfants (depuis la **loi du 17 mai 2013**).

#### Familles sans enfant
**Couple** sans descendance.

#### Familles d''adoption
Adoption **plénière** ou **simple**.

#### Familles issues de PMA
**Procréation médicalement assistée**, étendue aux couples de femmes et femmes seules par la **loi du 2 août 2021**.

## II. L''évolution historique du droit de la famille

### A. Le Code civil de 1804

#### Une famille hiérarchique
- **Patriarcale** : autorité du **père de famille**
- **Inégalitaire** : femmes mariées incapables (jusqu''en `1938`)
- **Indissoluble** ou presque : divorce restrictif

#### Caractères généraux
- **Mariage** institutionnel (longue durée)
- **Légitimité** de la filiation valorisée
- **Recherche de paternité** interdite (art. `340`, jusqu''en `1912`)

### B. Les grandes réformes du XX^e^ siècle

#### Capacité de la femme mariée
- **Loi du 18 février 1938** : suppression de l''incapacité juridique de la femme mariée
- **Loi du 13 juillet 1965** : réforme des régimes matrimoniaux, égalité dans la gestion des biens

#### Filiation
- **Loi du 16 novembre 1912** : autorisation (limitée) de la recherche de paternité
- **Loi du 3 janvier 1972** : égalité des filiations légitime/naturelle

#### Autorité parentale
- **Loi du 4 juin 1970** : *« puissance paternelle »* devient *« autorité parentale »*, exercée par les deux parents

#### Divorce
- **Loi du 11 juillet 1975** (loi Pelletier) : pluralité des cas de divorce, dont consentement mutuel

#### Avortement
- **Loi Veil** (`17 janvier 1975`) : dépénalisation de l''interruption volontaire de grossesse

### C. Les réformes du XXI^e^ siècle

#### PACS
- **Loi du 15 novembre 1999** : création du **Pacte civil de solidarité**

#### Autorité parentale
- **Loi du 4 mars 2002** : modernisation, *« meilleur intérêt de l''enfant »*

#### Mariage pour tous
- **Loi Taubira** (`17 mai 2013`) : ouverture du mariage et de l''adoption aux couples de même sexe

#### PMA pour toutes
- **Loi du 2 août 2021** (bioéthique) : extension de la PMA aux couples de femmes et aux femmes non mariées

#### Réforme du divorce
- **Loi du 18 novembre 2016** : divorce sans juge par consentement mutuel
- **Loi du 23 mars 2019** : suppression de la phase de conciliation

## III. Les sources du droit de la famille

### A. Sources internes

#### Code civil
**Livre I** essentiellement. Plus de 500 articles.

#### Code de la sécurité sociale
**Prestations familiales**.

#### Code de procédure civile
**Procédures** spécifiques (divorce, autorité parentale).

#### Code de l''action sociale et des familles
**Protection** de l''enfance, adoption.

### B. Sources internationales

#### Convention européenne des droits de l''homme

##### Article 8 CESDH
> *« Toute personne a droit au respect de sa vie privée et familiale… »*

Pierre angulaire de la **jurisprudence** européenne en matière familiale.

##### Article 12 CESDH
> *« À partir de l''âge nubile, l''homme et la femme ont le droit de se marier… »*

#### Convention internationale des droits de l''enfant (`20 novembre 1989`)
**Ratifiée par la France** en `1990`. Principes :
- **Intérêt supérieur de l''enfant**
- **Non-discrimination**
- **Droit à la parole**

### C. La jurisprudence

#### Cour de cassation (chambre civile 1^re^)
Compétence en matière familiale.

#### CEDH
Jurisprudence très active. Exemples :
- *Mazurek c/ France* (`1^er^ février 2000`) : discrimination des enfants adultérins (réforme française subséquente)
- *Mennesson c/ France* (`26 juin 2014`) : reconnaissance de la filiation après GPA à l''étranger

#### Conseil constitutionnel
- *Cons. const. 28 janvier 2011* : QPC sur le mariage homosexuel (avant la loi de `2013`)
- Évolution sur l''**intérêt de l''enfant**

## IV. Les défis contemporains

### A. La diversification des familles

#### Acceptation sociale
- **Familles recomposées**
- **Familles monoparentales**
- **Couples non mariés** (PACS, concubinage)
- **Couples de même sexe**

#### Conséquences juridiques
- Adaptation des règles
- **Reconnaissance** statutaire variable

### B. Les techniques médicales

#### PMA (Procréation médicalement assistée)

##### Encadrement
**Lois de bioéthique** (`1994`, `2004`, `2011`, `2021`).

##### Conditions actuelles
- Couples (mariés, PACS, concubins) hétérosexuels et homosexuels féminins
- Femme non mariée
- **Pas d''accès** pour les couples d''hommes ou hommes seuls

#### GPA (Gestation pour autrui)

##### Interdite en France
**Article 16-7 C. civ.** :
> *« Toute convention portant sur la procréation ou la gestation pour le compte d''autrui est nulle. »*

##### Reconnaissance partielle des GPA réalisées à l''étranger
- *Cass. ass. plén., 4 octobre 2019*
- Transcription possible de la filiation à l''égard du parent d''intention

### C. L''internationalisation

#### Mobilité familiale
**Mariages mixtes**, divorces internationaux, déplacements internationaux d''enfants.

#### Règlements UE
- **Bruxelles II ter** (compétence et reconnaissance)
- **Rome III** (divorce)

#### Convention de La Haye
Sur l''**enlèvement international d''enfants** (`1980`).

### D. La désinstitutionalisation

#### Recul du mariage
- En `1972` : `416 000` mariages
- En `2023` : `225 000` mariages

#### Hausse du PACS
- **PACS** : ~`200 000` par an
- Concubinage massif (1 enfant sur 2 né hors mariage)

## V. Les principes du droit de la famille

### A. La liberté individuelle

#### Mariage librement consenti
**Article 12 CESDH**, **article 146 C. civ.**.

#### Divorce librement choisi
Évolution depuis 1975.

### B. L''égalité

#### Entre époux
**Égalité** complète dans la gestion de la famille et des biens.

#### Entre enfants
**Égalité** des filiations (depuis `1972`).

#### Entre couples
**Égalité** des couples de même sexe (depuis `2013`).

### C. L''intérêt supérieur de l''enfant

#### Article 3.1 CIDE
> *« Dans toutes les décisions qui concernent les enfants, […] l''intérêt supérieur de l''enfant doit être une considération primordiale. »*

#### Application
**Critère central** de toutes les décisions concernant les enfants.

### D. La protection de la vie privée et familiale
**Article 8 CESDH** : socle de la jurisprudence européenne.

## À retenir

**Définition** : le droit de la famille régit les relations issues du **couple** et de la **filiation**.

**Évolution majeure** :
- **Code civil 1804** : famille patriarcale, hiérarchique
- **XX^e^ s.** : émancipation femmes, divorce, égalité enfants
- **XXI^e^ s.** : PACS (`1999`), mariage pour tous (`2013`), PMA pour toutes (`2021`)

**Sources** :
- **Internes** : Code civil (livre I) et autres codes
- **Internationales** : CESDH (art. 8, 12), CIDE (`1989`)
- **Jurisprudence** : Cass. 1^re^ civ., CEDH, Cons. const.

**Lois fondatrices** :
- Loi Pelletier (`11 juillet 1975`) : divorce
- Loi Veil (`17 janvier 1975`) : IVG
- Loi PACS (`15 novembre 1999`)
- Loi Taubira (`17 mai 2013`) : mariage pour tous
- Loi bioéthique (`2 août 2021`) : PMA pour toutes

**Principes** : liberté, égalité, **intérêt supérieur de l''enfant**, vie privée et familiale.

**Défis** : PMA, GPA, internationalisation, désinstitutionalisation du mariage.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 2 - LE MARIAGE : FORMATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le mariage : conditions de formation', 'Chapitre 2 - Le mariage (formation)',
       'Conditions de fond (consentement, âge, capacité, empêchements), conditions de forme, oppositions, sanctions.',
       array['Mariage', 'Article 143', 'Article 146', 'Article 144', 'Consentement', 'Empêchements', 'Bigamie', 'Inceste', 'Loi Taubira', 'Mariage putatif'],
       18, 2,
'# Le mariage : conditions de formation

## Introduction

Le **mariage** est l''institution juridique la plus ancienne et la plus emblématique du droit de la famille. Bien qu''il ait perdu son monopole (face au PACS et au concubinage), il reste **central** : c''est l''union la plus protectrice et la plus engageante. Sa formation est strictement encadrée par le Code civil, dans le souci de garantir la **liberté du consentement** et l''**ordre public familial**.

> **Définition** (`art. 143 C. civ.`) : Le mariage est *« l''union de deux personnes »* consacrée par la célébration devant un officier d''état civil et créant entre les époux une **communauté de vie**.

## I. La nature juridique du mariage

### A. Une institution

#### Caractère institutionnel
Le mariage est **plus qu''un contrat** : ses effets sont **fixés par la loi** et non par les époux.

#### Conséquences
- **Règles impératives** (régime primaire, devoirs)
- **Engagement** durable
- **Statut** organisé

### B. Un contrat

#### Aspect contractuel
- **Consentement** des époux nécessaire
- **Conditions de validité** comme tout contrat

### C. Synthèse : institution-contrat

Doctrine majoritaire : le mariage est un **acte juridique** mixte, à la fois contrat et institution.

## II. L''ouverture du mariage aux couples de même sexe

### A. La loi Taubira (`17 mai 2013`)

#### Genèse
- **Promesse** de campagne du candidat Hollande
- **Forte mobilisation** sociale (pro et anti)
- Adoption après débats parlementaires intenses

#### Le texte
**Modification de l''article 143** :
> *« Le mariage est contracté par deux personnes de sexe différent ou de même sexe. »*

#### Conséquences
- **Mariage** ouvert aux couples de même sexe
- **Adoption** ouverte aux couples mariés de même sexe
- **Adaptation** des textes (« père et mère » → « parents »)

### B. La validation constitutionnelle

#### *Cons. const. 17 mai 2013, n° 2013-669 DC*
Le Conseil constitutionnel **valide** l''ouverture du mariage aux couples de même sexe :
- Pas d''atteinte à un PFRLR
- Respect de l''ordre public

#### L''*affaire Hyest*
Avant la loi : *Cass. 1^re^ civ., 13 mars 2007* : refus de transcription d''un mariage entre personnes de même sexe contracté à Bègles.

## III. Les conditions de fond

### A. Le consentement (`art. 146 C. civ.`)

#### Le principe
> *« Il n''y a pas de mariage lorsqu''il n''y a point de consentement. »*

#### Caractères requis

##### Existant
**Pas de simulation** (mariage fictif, blanc).

##### Sérieux
**Pas en vue d''une finalité étrangère** (acquisition de la nationalité, séjour).

##### Libre
**Non vicié** par erreur, dol ou violence.

#### Les vices du consentement

##### Erreur (`art. 180 C. civ.`)
**Erreur dans la personne** ou ses qualités essentielles.

Cas reconnus :
- Erreur sur l''**identité** physique
- Erreur sur les **qualités essentielles** (situation matrimoniale, religion, casier judiciaire)

##### Violence (`art. 180 C. civ.`)
**Physique ou morale**, y compris dans les **mariages forcés**.

#### Sanction
**Nullité relative** (art. 181 C. civ.) : action ouverte à l''époux dont le consentement a été vicié, dans un délai de **5 ans** depuis la découverte.

### B. L''âge nubile

#### Principe (`art. 144 C. civ.`)
> *« Le mariage ne peut être contracté avant 18 ans révolus. »*

#### Évolution
- Avant `2006` : **15 ans** pour les filles, **18 ans** pour les garçons
- **Loi du 4 avril 2006** : **égalisation à 18 ans** (lutte contre les mariages précoces et forcés)

#### Dispense
**Le Procureur de la République** peut accorder des dispenses pour **motifs graves** (`art. 145 C. civ.`).

### C. La capacité

#### Mineurs
**Pas de mariage** sans dispense.

#### Majeurs protégés (`art. 460 C. civ.`)
- **Tutelle** : autorisation du juge des tutelles ou conseil de famille
- **Curatelle** : assistance du curateur ou autorisation du juge

### D. L''absence d''empêchements

#### Empêchements absolus

##### La bigamie (`art. 147 C. civ.`)
> *« On ne peut contracter un second mariage avant la dissolution du premier. »*

#### Sanction : **nullité absolue** + **délit** (`art. 433-20 C. pén.`).

##### L''inceste

###### Empêchements absolus
- Entre **ascendants et descendants** légitimes ou naturels (`art. 161`)
- Entre **frères et sœurs** (`art. 162`)

###### Empêchements avec dispense possible
- Entre **oncle et nièce, tante et neveu** (`art. 163` : dispense du Président de la République pour causes graves)

#### Empêchements relatifs

##### Mariage entre alliés en ligne directe
**Beau-père/belle-fille, belle-mère/beau-fils** (`art. 161`).
- **Dispense** possible si le lien créant l''alliance est rompu (décès du conjoint commun)
- Cas validé par la CEDH (*B. et L. c/ Royaume-Uni*, `13 septembre 2005`)

##### Mariage entre adoptant et adopté
- **Empêchement** entre adoptant et adopté (`art. 366 C. civ.`)
- Dispense possible

### E. Les publications préalables

#### Article 63 C. civ.
**Publication des bans** :
- **10 jours** avant le mariage
- Affichée à la mairie du lieu de chaque futur époux

#### Audition préalable
**Article 63 al. 2** : l''officier d''état civil peut **auditionner** les futurs époux pour détecter les **mariages de complaisance**.

## IV. Les conditions de forme

### A. Lieu de célébration

#### Article 74 C. civ.
**Mairie** du lieu où l''un des futurs époux a son **domicile** ou sa **résidence**.

#### Évolution
**Loi du 17 mai 2013** (Taubira) : élargissement des possibilités (mairie d''un parent).

### B. La célébration

#### L''officier d''état civil
- **Maire** ou **adjoint**
- Parfois **conseiller municipal** (sur délégation)

#### La publicité
**Portes ouvertes** : caractère public de la cérémonie.

#### La présence des époux
**En personne**, sauf cas particuliers :
- **Mariage posthume** (`art. 171`) : exceptionnel, autorisation présidentielle, après décès accidentel
- **Mariage par procuration** des militaires en opération (limité)

#### Les témoins
- **Au moins 2**, au plus 4
- Choisis par les époux

#### Les formalités
- Lecture des **articles 212 à 215** du Code civil (devoirs des époux)
- **Échange des consentements** (« Je le veux »)
- Lecture du **livret de famille**

### C. La dressé acte

#### L''acte de mariage
- **Rédigé** sur les registres d''état civil
- **Signé** par les époux, témoins et officier

#### Le **livret de famille**
Remis aux époux. Document important.

## V. L''opposition à mariage

### A. Qui peut s''opposer ? (`art. 172 à 179 C. civ.`)

#### Le ministère public (`art. 175-2`)
En cas de :
- **Bigamie**
- **Inceste**
- **Défaut de consentement**
- Soupçon de **mariage forcé** ou de complaisance

#### Les ascendants
Si **défaut de leur consentement** (cas spécifiques).

#### Le conjoint précédent
En cas de **bigamie**.

### B. Effets de l''opposition

#### Suspension
La célébration est **suspendue** jusqu''à la mainlevée.

#### Procédure
- Notification à l''officier d''état civil
- Recours possible devant le **tribunal judiciaire** (mainlevée)

## VI. Les sanctions : la nullité du mariage

### A. Nullité absolue (`art. 184 C. civ.`)

#### Causes
- **Défaut de consentement** (existence)
- **Bigamie**
- **Inceste**
- **Incompétence** de l''officier
- **Clandestinité**
- **Défaut d''âge** (sauf si dispense)

#### Régime
- **Action** ouverte à **tout intéressé** (époux, ministère public, ascendants)
- **Délai** : `30 ans`
- **Action d''ordre public**

### B. Nullité relative

#### Vices du consentement (`art. 181`)
- Action ouverte à l''**époux** dont le consentement a été vicié
- Délai : **`5 ans`** depuis la découverte (réforme de 2006)

#### Défaut d''autorisation
- Action ouverte à ceux dont l''autorisation était requise

### C. Les effets de la nullité

#### Principe : effet rétroactif
Le mariage est **réputé** n''avoir jamais existé.

#### Le mariage putatif (`art. 201 C. civ.`)
> *« Le mariage déclaré nul produit, néanmoins, ses effets à l''égard des époux, lorsqu''il a été contracté de bonne foi. »*

**Conditions** :
- **Bonne foi** d''au moins un époux (ignorance de la cause de nullité)
- **Apparence** de mariage

**Effets** :
- **Conservation** des effets passés du mariage pour l''époux de bonne foi
- Les **enfants** conservent leur statut (peu importe)

### D. Distinction nullité/divorce
- **Nullité** : vice à l''origine, effet rétroactif
- **Divorce** : dissolution pour cause **postérieure**

## À retenir

**Article 143 C. civ.** (depuis Taubira `2013`) : *« Le mariage est contracté par deux personnes de sexe différent ou de même sexe. »*

**Conditions de fond** :
- **Consentement** libre et sérieux (`art. 146`)
- **Âge** : 18 ans (`art. 144`, depuis loi du `4 avril 2006`)
- **Capacité**
- **Absence d''empêchements** :
  - Bigamie (`art. 147`)
  - Inceste (`art. 161-162`)
  - Alliés en ligne directe (`art. 161`, dispense possible)

**Conditions de forme** :
- **Publication des bans** (10 jours)
- **Audition préalable** (mariages de complaisance)
- **Célébration** publique en mairie
- **Officier d''état civil**, **2 à 4 témoins**

**Opposition à mariage** : ministère public, ascendants, conjoint précédent.

**Sanctions** :
- **Nullité absolue** (intérêt général, 30 ans) : bigamie, inceste, défaut de consentement…
- **Nullité relative** (intérêt privé, 5 ans) : vices du consentement

**Mariage putatif** (`art. 201`) : effets maintenus pour l''époux de **bonne foi**.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 3 - EFFETS DU MARIAGE ET RÉGIME PRIMAIRE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Effets du mariage : devoirs des époux et régime primaire', 'Chapitre 3 - Effets du mariage',
       'Les devoirs personnels (fidélité, secours, communauté de vie), le régime primaire (solidarité ménagère, logement familial).',
       array['Article 212', 'Article 215', 'Article 220', 'Devoir de fidélité', 'Communauté de vie', 'Régime primaire', 'Solidarité ménagère', 'Logement familial', 'Contribution aux charges'],
       17, 3,
'# Effets du mariage : devoirs des époux et régime primaire

## Introduction

Le mariage produit des **effets puissants** sur la vie des époux : il crée des **devoirs réciproques** entre eux, organise leurs **rapports patrimoniaux** et leur impose des règles **impératives** appelées **« régime primaire »**. Ces règles s''appliquent à **tous les couples mariés**, quel que soit leur régime matrimonial. Elles sont **d''ordre public** : on ne peut y déroger.

> **Définition** : Le **régime primaire** (ou **régime matrimonial impératif**) est l''ensemble des règles impératives applicables à tous les époux, formant le statut fondamental du mariage en France (`art. 212 à 226 C. civ.`).

## I. Les devoirs personnels des époux (`art. 212 C. civ.`)

### A. Le devoir de respect

#### Ajout récent
**Loi du 4 avril 2006** : *« Les époux se doivent mutuellement respect, fidélité, secours, assistance. »*

#### Inclut
- **Lutte contre les violences conjugales**
- **Dignité** réciproque
- Respect de la personne et de la sensibilité de l''autre

### B. Le devoir de fidélité

#### Caractère
**Devoir civil** depuis la dépénalisation de l''adultère (`loi du 11 juillet 1975`).

#### Sanction
- Plus de sanction pénale
- **Faute** pouvant fonder un **divorce** (`art. 242`)
- **Dommages-intérêts** possibles
- Influence sur la **prestation compensatoire** (peut être refusée à l''époux fautif, `art. 270 al. 2`)

#### Limites
- **Tolérance mutuelle** : un adultère ancien, pardonné, ne peut plus fonder un divorce
- **Égalité** : la sanction est identique pour les deux sexes (depuis `1975`)

### C. Le devoir de secours et d''assistance

#### Le devoir de secours
**Obligation matérielle** : subvenir aux besoins de l''autre en cas de difficulté.

#### Le devoir d''assistance
**Soutien moral** et soins (notamment en cas de maladie).

#### Maintien après divorce
- Le devoir de secours **disparaît** au divorce (transformé en prestation compensatoire éventuelle)

### D. La communauté de vie (`art. 215 al. 1`)

#### Définition
> *« Les époux s''obligent mutuellement à une communauté de vie. »*

#### Composantes

##### La cohabitation
Obligation de vivre **sous le même toit**. Peut être suspendue temporairement (motif professionnel, médical).

##### La communion de vie
**Partage** affectif et matériel de l''existence.

#### Sanctions
- **Faute** justifiant le divorce
- Pas de **contrainte physique** à la cohabitation (libertés individuelles)

## II. La contribution aux charges du mariage (`art. 214`)

### A. Principe

> *« Si les conventions matrimoniales ne règlent pas la contribution des époux aux charges du mariage, ils y contribuent à proportion de leurs facultés respectives. »*

### B. Notion de charges du mariage

#### Comprend
- **Dépenses courantes** du ménage
- **Logement, nourriture, santé, éducation**
- **Vacances** raisonnables
- **Investissements** familiaux

#### Ne comprend pas
- **Investissements purement personnels**
- **Dépenses somptuaires** disproportionnées

### C. La modalité

#### Proportionnelle aux facultés
**Chacun** contribue selon ses **revenus** et son **patrimoine**.

#### Forme
- **En argent**
- **En nature** (travail à la maison, éducation des enfants)
- **En industrie** (activité professionnelle au profit du ménage)

### D. Sanction
**Action en contribution** : un époux peut **demander en justice** que l''autre contribue.

## III. La solidarité ménagère (`art. 220 C. civ.`)

### A. Principe

> *« Chacun des époux a pouvoir pour passer seul les contrats qui ont pour objet l''entretien du ménage ou l''éducation des enfants : toute dette ainsi contractée par l''un oblige l''autre solidairement. »*

### B. Domaine

#### Dépenses concernées
- **Entretien du ménage** : nourriture, vêtements, électroménager…
- **Éducation des enfants** : scolarité, activités, soins

#### Caractère automatique
La **solidarité** s''applique **sans avoir besoin d''accord** des deux époux.

### C. Les exclusions (art. 220 al. 2 et 3)

#### Dépenses manifestement excessives
> *« La solidarité n''a pas lieu, néanmoins, pour des dépenses manifestement excessives, eu égard au train de vie du ménage, à l''utilité ou à l''inutilité de l''opération, à la bonne ou mauvaise foi du tiers contractant. »*

#### Achats à tempérament
**Pas de solidarité** pour les achats à tempérament (sauf accord des deux).

#### Emprunts
**Pas de solidarité** pour les emprunts, sauf :
- **Petites sommes nécessaires** aux besoins de la vie courante
- **Emprunts ménagers** modestes

### D. Importance pratique
La **solidarité ménagère** est **majeure** : un créancier peut poursuivre **n''importe lequel** des époux pour des dettes ménagères.

## IV. La protection du logement familial (`art. 215 al. 3`)

### A. Principe

> *« Les époux ne peuvent l''un sans l''autre disposer des droits par lesquels est assuré le logement de la famille, ni des meubles meublants dont il est garni. »*

### B. Justification
**Protection de la stabilité** familiale et de l''intérêt des enfants.

### C. Domaine

#### Le logement familial
**Lieu de résidence** principal et habituel de la famille.

#### Quel que soit le titulaire
- Propriétaire
- Locataire
- Bailleur emphytéotique
- Possession précaire

#### Quel que soit le régime
**S''applique à tous les régimes** matrimoniaux.

### D. Les actes interdits

#### Sans le consentement de l''autre époux
- **Vente** du logement
- **Donation**
- **Hypothèque**
- **Résiliation du bail**

### E. La sanction

#### Nullité de l''acte (`art. 215 al. 3`)
**Action ouverte** à l''époux dont le consentement n''a pas été obtenu.

#### Délai
- **`1 an`** à compter de la connaissance de l''acte
- **`1 an`** maximum après la dissolution du régime

### F. Le cas du logement loué (`art. 1751 C. civ.`)

#### Droit au bail commun
Les époux sont **cotitulaires** du bail, peu importe qui a signé. Loi du `24 mars 2014` (ALUR).

#### En cas de séparation
Le juge peut **attribuer** le bail à l''un des époux.

## V. L''indépendance des époux

### A. L''indépendance professionnelle (`art. 223`)

#### Principe
> *« Chaque époux peut librement exercer une profession, percevoir ses gains et salaires et en disposer après s''être acquitté des charges du mariage. »*

#### Innovation majeure
**Loi du 13 juillet 1965** : émancipation économique de la femme mariée.

### B. L''indépendance bancaire (`art. 221`)

#### Comptes individuels
Chaque époux peut **ouvrir** des comptes en son nom seul et y **disposer librement** des fonds.

#### Présomption simple
Le banquier est dispensé de prouver l''accord de l''autre conjoint pour les opérations courantes.

### C. La capacité bancaire

#### Sécurité juridique
Le banquier est protégé en cas d''opération de bonne foi.

## VI. Les pouvoirs en cas de crise

### A. L''autorisation judiciaire (`art. 217`)

#### Hypothèse
Un époux ne peut **manifester sa volonté** (absence, éloignement, refus injustifié).

#### Solution
L''autre époux peut être **autorisé** par le juge à passer un acte qui exigerait l''accord des deux.

### B. La représentation judiciaire (`art. 219`)

#### Hypothèse
**Empêchement durable** d''un époux.

#### Solution
Le juge peut désigner l''autre époux comme **représentant** légal.

### C. Le contrôle des pouvoirs (`art. 220-1`)

#### Mesures urgentes
**Si un époux** manque gravement à ses devoirs et **met en péril** les intérêts de la famille :
- Le juge peut **prescrire** des mesures urgentes
- Notamment : **interdire** la disposition de certains biens

### D. Le déblocage des fonds (`art. 221`)

#### Cas
Un époux a placé l''argent du ménage sur un compte à son nom.

#### Solution
L''autre peut **demander** au juge l''autorisation de retirer.

## VII. La présomption de pouvoirs

### A. Pour les biens mobiliers (`art. 222`)

#### Principe
Chacun des époux est **réputé**, à l''égard des tiers de bonne foi, avoir **pouvoir** de faire seul les actes :
- D''**administration**
- De **jouissance**
- De **disposition** sur un bien meuble qu''il détient individuellement

#### Effet
**Protection** des tiers contractants de bonne foi.

#### Exclusion
- **Meubles meublants** du logement (art. 215 al. 3)
- **Meubles corporels** dont la nature révèle l''appartenance personnelle à l''autre

### B. Importance

#### Sécurité juridique
Permet aux **tiers** de contracter avec confiance.

#### Limite
**Pas pour les biens immobiliers** (où la publicité foncière s''applique).

## VIII. Le contrôle judiciaire des actes graves

### A. L''article 220-1

Voir supra. Mesures urgentes possibles.

### B. L''article 219
Représentation judiciaire.

### C. L''article 217
Autorisation judiciaire en cas d''empêchement.

## À retenir

**Régime primaire** : règles **impératives** applicables à tous les couples mariés (`art. 212 à 226 C. civ.`).

**Devoirs personnels** (`art. 212`) :
- **Respect**, **fidélité**, **secours**, **assistance**
- **Communauté de vie** (`art. 215 al. 1`)

**Contribution aux charges** (`art. 214`) : **proportionnelle** aux facultés respectives.

**Solidarité ménagère** (`art. 220`) :
- Pour **entretien du ménage** et **éducation des enfants**
- **Automatique**
- Exclusions : dépenses **manifestement excessives**, achats à tempérament, emprunts (sauf petites sommes nécessaires)

**Protection du logement familial** (`art. 215 al. 3`) :
- **Aucun acte** unilatéral sur le logement
- Sanction : **nullité** (`1 an` à compter de la connaissance)

**Indépendance** :
- **Professionnelle** (`art. 223`)
- **Bancaire** (`art. 221`)

**Mesures de crise** : autorisation judiciaire (`art. 217`), représentation (`art. 219`), mesures urgentes (`art. 220-1`).

**Présomption de pouvoirs** pour les biens mobiliers (`art. 222`).'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 4 - LE DIVORCE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le divorce', 'Chapitre 4 - Dissolution du mariage',
       'Les 4 cas de divorce, la procédure devant le JAF, les effets (prestation compensatoire, enfants, biens).',
       array['Divorce', 'Article 229', 'Consentement mutuel', 'Divorce accepté', 'Altération définitive', 'Divorce pour faute', 'JAF', 'Prestation compensatoire', 'Loi du 18 novembre 2016'],
       18, 4,
'# Le divorce

## Introduction

Le **divorce** est la **rupture du lien matrimonial** prononcée pendant la vie des époux. Longtemps interdit (avant `1792`), puis restreint (de `1816` à `1884`), il est aujourd''hui **largement ouvert** et progressivement **simplifié** par les réformes de `1975`, `2004`, `2016` et `2019`. La France compte environ **120 000 divorces par an**, dont une majorité par consentement mutuel.

> **Définition** : Le **divorce** est l''**acte juridictionnel** (ou parfois conventionnel) qui prononce la **dissolution** du mariage. Il se distingue de la **séparation de corps**, qui maintient le lien matrimonial mais dispense les époux de la cohabitation.

## I. Les cas de divorce (`art. 229 C. civ.`)

### A. Le divorce par consentement mutuel

#### Deux variantes depuis la loi du `18 novembre 2016`

##### Divorce sans juge (variante principale, `art. 229-1 à 229-4`)
- **Pas d''intervention du juge**
- Chaque époux assisté de **son propre avocat** (deux avocats au total)
- **Convention** rédigée par les avocats
- **Dépôt au rang des minutes** d''un **notaire**

##### Divorce judiciaire par consentement mutuel
**Maintenu** dans deux cas :
- L''**enfant mineur** demande à être entendu
- L''un des époux est sous **mesure de protection**

#### Conditions
- **Accord** sur la rupture
- **Accord** sur **toutes les conséquences** (enfants, biens, prestation compensatoire)

#### Procédure du divorce sans juge

##### Étape 1 : convocation des avocats
Chaque époux choisit son **avocat**.

##### Étape 2 : rédaction de la convention
La convention contient :
- Identité des époux
- Mention de l''accord sur le divorce
- **Modalités** : prestation compensatoire, attribution des biens, autorité parentale, résidence des enfants, pension alimentaire

##### Étape 3 : délai de réflexion
**15 jours** entre l''envoi de la convention et sa signature.

##### Étape 4 : signature
Les époux **signent** la convention en présence des avocats.

##### Étape 5 : dépôt notarial
Dans les **7 jours**, la convention est déposée au rang des minutes d''un notaire.

##### Effet
**Date du divorce** : date du dépôt notarial.

### B. Le divorce accepté (`art. 233-234 C. civ.`)

#### Principe
Les époux **acceptent le principe** de la rupture, **sans avoir à en justifier**, mais ne s''accordent pas sur les conséquences.

#### Procédure
- **Assignation** ou **requête conjointe**
- Le juge constate l''accord sur le principe
- Le juge **statue** sur les conséquences

#### Avantage
**Voie souple** entre consentement mutuel et faute.

### C. Le divorce pour altération définitive du lien conjugal (`art. 237-238 C. civ.`)

#### Conditions
- **Cessation de la communauté de vie**
- **Depuis 1 an** au jour de l''assignation (réduit par la loi du `23 mars 2019` ; avant : 2 ans)

#### Pas d''accord nécessaire
Peut être demandé **par un seul** époux.

#### Démonstration
Preuve par tous moyens de la séparation depuis 1 an.

#### Réponse de l''autre époux
- Peut demander un **divorce pour faute**
- Le juge statue alors sur les **deux demandes**

### D. Le divorce pour faute (`art. 242-246 C. civ.`)

#### Définition (`art. 242`)
> *« Le divorce peut être demandé par l''un des époux lorsque des faits constitutifs d''une violation grave ou renouvelée des devoirs et obligations du mariage sont imputables à son conjoint et rendent intolérable le maintien de la vie commune. »*

#### Conditions cumulatives
1. **Violation** des devoirs et obligations du mariage
2. **Grave** ou **renouvelée**
3. **Imputable** à l''époux (commise par lui, en pleine conscience)
4. Rend **intolérable** le maintien de la vie commune

#### Exemples de fautes
- **Adultère**
- **Violences** physiques ou psychologiques
- **Abandon** de domicile
- **Refus** durable de relations sexuelles
- **Alcoolisme**, **dépendance**
- **Injures** publiques
- **Manquement** à l''obligation de secours

#### Le divorce aux torts partagés
Le juge peut prononcer le divorce aux **torts partagés** (`art. 245 al. 3`) si **chaque** époux a commis des fautes.

## II. La procédure du divorce contentieux

### A. La réforme du `23 mars 2019` (entrée en vigueur `1^er^ janvier 2021`)

#### Suppression de la phase de conciliation
Avant : **conciliation préalable** obligatoire. Désormais : **procédure unique**.

#### Mécanisme actuel
1. **Assignation** en divorce (ou requête conjointe)
2. **Mesures provisoires** possibles dès la 1^re^ audience
3. **Instruction**
4. **Jugement** prononçant le divorce et statuant sur les conséquences

### B. Le juge compétent

#### Le juge aux affaires familiales (JAF)
- Statue **en chambre du conseil** (huis clos)
- Juge **unique** en principe
- Possibilité de **formation collégiale**

### C. La représentation

#### Avocat obligatoire
**Représentation** par un avocat pour chaque époux.

### D. Les mesures provisoires (`art. 254 et s.`)

#### Pendant la procédure
Le JAF peut **ordonner** :
- **Résidence séparée**
- **Attribution** du logement familial
- **Pension alimentaire** (devoir de secours)
- **Contribution** à l''entretien des enfants
- **Mesures** relatives aux enfants (résidence, droit de visite)

### E. Le déroulement

#### L''audience d''orientation et sur mesures provisoires (AOMP)
- **Première audience** après l''assignation
- **Mesures provisoires** ordonnées
- **Orientation** du dossier

#### L''instruction
- **Échange** d''écritures
- **Production** de pièces
- Possibles **expertises**

#### Le jugement
- **Prononcé** du divorce
- **Statut** sur les conséquences

## III. Les effets du divorce

### A. La dissolution du lien matrimonial

#### Date d''effet
- Entre époux : date du **jugement** (sauf report sur demande à la date de la séparation pour les biens)
- À l''égard des tiers : date de la **publicité** (mention en marge de l''acte de mariage)

#### Conséquences personnelles
- **Fin** des devoirs réciproques
- Reprise du **nom** d''origine (sauf accord ou intérêt particulier, `art. 264`)
- **Liquidation** du régime matrimonial

### B. Les effets entre époux

#### La prestation compensatoire (`art. 270 et s.`)

##### Principe
> *« Le divorce met fin au devoir de secours entre époux, mais l''un d''eux peut être tenu de verser à l''autre une prestation destinée à compenser, autant qu''il est possible, la disparité que la rupture du mariage crée dans les conditions de vie respectives. »*

##### Forme
- **Capital** (privilégié) :
  - Argent
  - Attribution de **biens**
  - Attribution du **logement** familial
- **Rente viagère** (exceptionnel, depuis `2000`)

##### Critères (`art. 271`)
- **Durée** du mariage
- **Âge** et état de santé des époux
- **Qualification** et situation professionnelle
- **Conséquences** des choix professionnels pendant la vie commune
- **Patrimoine** présent et futur
- **Droits** acquis et prévisibles

##### Refus possible (`art. 270 al. 2`)
Le juge peut refuser la prestation compensatoire si :
- **L''équité** le commande
- Les circonstances particulières de la rupture (cas typique : époux fautif)

#### Les dommages-intérêts

##### Article 266 C. civ.
Peuvent être accordés si :
- Divorce pour **altération définitive** demandé par l''autre (et conséquences d''une particulière gravité)
- **Faute** d''une particulière gravité

##### Article 1240 C. civ.
**Action de droit commun** pour les préjudices distincts.

### C. Les effets pour les enfants

#### L''autorité parentale (`art. 372`)
**Conjointe** : reste partagée entre les deux parents, sauf décision contraire dans l''intérêt de l''enfant.

#### La résidence

##### Résidence alternée
**Loi du 4 mars 2002** : consécration de la résidence alternée.

##### Résidence fixée chez un parent
Avec **droit de visite et d''hébergement** pour l''autre.

##### Critère
**Intérêt supérieur de l''enfant** (`art. 373-2-6`).

#### La contribution à l''entretien et à l''éducation (`art. 371-2`)
- **Pension alimentaire** versée au parent où réside l''enfant
- **Proportionnelle** aux ressources et besoins
- Aujourd''hui : intermédiation systématique par la **CAF** (ARIPA, Agence de recouvrement et d''intermédiation des pensions alimentaires)

### D. Les effets patrimoniaux

#### Liquidation du régime matrimonial
- **Communauté** : partage des biens communs
- **Séparation de biens** : règlement des comptes
- **Participation aux acquêts** : calcul

#### Le sort des donations

##### Donations consenties entre époux pendant le mariage
- **Avant 2005** : révocables ad nutum (à tout moment) → loi du `26 mai 2004`
- **Désormais** : irrévocables sauf cas particulier (donation au dernier vivant maintenue selon les règles successorales)

##### Avantages matrimoniaux
- Peuvent être révoqués

## IV. La séparation de corps

### A. Définition
**Suspension** des devoirs de vie commune **sans dissoudre** le mariage.

### B. Procédure
Identique au divorce (mêmes cas).

### C. Effets
- **Cessation** de la cohabitation
- **Devoir de secours** maintenu
- **Pas** de remariage possible

### D. Conversion en divorce
**Après 2 ans** de séparation de corps, conversion possible en divorce à la demande de l''un des époux.

### E. Importance pratique
**De moins en moins utilisée** (préférence pour le divorce direct).

## V. Quelques chiffres

### A. Volume
- **~120 000 divorces** par an en France
- **~60 %** par consentement mutuel

### B. Durée
**6 ans** en moyenne entre le mariage et la séparation.

### C. Coût
- Consentement mutuel : ~`1 500 à 3 000 €` (avocats)
- Contentieux : peut atteindre `10 000 €` et plus

## À retenir

**4 cas de divorce** (`art. 229 C. civ.`) :
1. **Consentement mutuel** (sans juge depuis la loi du `18 novembre 2016`)
2. **Divorce accepté** (accord sur le principe, désaccord sur les effets)
3. **Altération définitive** du lien conjugal (1 an de séparation, depuis `2021`)
4. **Faute** (`art. 242`) : violation grave/renouvelée, imputable, intolérable

**Procédure** : depuis la réforme du `23 mars 2019` (vigueur `2021`), **suppression** de la phase de conciliation. Procédure unique devant le **JAF**.

**Effets** :
- **Dissolution** du lien
- **Prestation compensatoire** (`art. 270 et s.`) : capital privilégié
- **Dommages-intérêts** : `art. 266` ou `art. 1240`
- **Autorité parentale** : conjointe par principe
- **Résidence** : selon l''intérêt de l''enfant (alternée ou chez un parent)
- **Pension alimentaire** : `art. 371-2`, intermédiation CAF

**Séparation de corps** : suspension des devoirs sans dissolution. Conversion en divorce après 2 ans.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 5 - LE PACS ET LE CONCUBINAGE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le PACS et le concubinage', 'Chapitre 5 - Les couples hors mariage',
       'Le pacte civil de solidarité (formation, effets, dissolution) et le concubinage (notion juridique, conséquences).',
       array['PACS', 'Pacte civil de solidarité', 'Loi du 15 novembre 1999', 'Concubinage', 'Article 515-8', 'Indivision', 'Solidarité', 'Rupture'],
       15, 5,
'# Le PACS et le concubinage

## Introduction

À côté du mariage, le droit français reconnaît **deux autres formes** de vie en couple :
- Le **PACS** (Pacte civil de solidarité), créé en `1999`
- Le **concubinage**, qui était jusque-là sans statut juridique formel

Ces deux institutions répondent à la **diversification des modes de vie** et offrent des **alternatives** au mariage, avec des **engagements** et des **protections** différents.

> **Définition du PACS** (`art. 515-1 C. civ.`) : *« Un contrat conclu par deux personnes physiques majeures, de sexe différent ou de même sexe, pour organiser leur vie commune. »*

## I. Le pacte civil de solidarité (PACS)

### A. Genèse et évolution

#### Création
**Loi du 15 novembre 1999**, à l''époque où le mariage n''était pas ouvert aux couples de même sexe.

#### Genèse
- **Compromis politique** entre reconnaissance des couples homosexuels et préservation du mariage
- Inspiré du **Lebenspartnerschaft** allemand

#### Évolutions
- **Loi du 23 juin 2006** : régime patrimonial par défaut = **séparation de biens**
- Depuis `2017` : enregistrement à la **mairie** (auparavant au greffe du tribunal)
- **`2 millions`** de PACS environ depuis sa création
- **`200 000`** PACS conclus par an

### B. La nature juridique

#### Un contrat
**Contrat civil** entre deux personnes pour organiser leur vie commune.

#### Distinct du mariage
- **Moins solennel**
- **Engagement** moins fort
- **Effets** plus limités

### C. Les conditions de conclusion

#### Conditions de fond

##### Article 515-1
- **Deux personnes physiques**
- **Majeures** (sauf émancipation)
- **Vie commune** projetée

##### Empêchements (`art. 515-2`)
- Entre **parents** en ligne directe
- Entre **alliés** en ligne directe
- Entre **frère et sœur**
- Avec **une personne déjà mariée** ou pacsée

#### Conditions de forme

##### Convention écrite
**Rédigée librement** par les partenaires (modèle ou personnalisée).

##### Enregistrement
- À la **mairie** (depuis `2017`)
- Auparavant : greffe du tribunal d''instance
- **Officier d''état civil**

##### Le contrat de PACS
Peut être conclu :
- **Par acte sous signature privée**
- **Par acte notarié**

### D. Les effets du PACS

#### Effets personnels

##### Communauté de vie
**Obligation** de vie commune (`art. 515-4`).

##### Assistance mutuelle
**Devoir** réciproque d''assistance matérielle et morale.

##### Pas de fidélité expresse
**Absence** d''obligation expresse de fidélité (contrairement au mariage).

#### Effets patrimoniaux

##### Solidarité pour les dettes du quotidien (`art. 515-4 al. 2`)
Les partenaires sont **solidaires** des dettes contractées pour :
- Les **besoins de la vie courante**
- Pas pour les dépenses **manifestement excessives**

##### Le régime des biens

###### Par défaut : séparation de biens
**Loi du 23 juin 2006** : chaque partenaire reste **propriétaire** des biens qu''il acquiert.

###### Possibilité d''indivision
Les partenaires peuvent **opter** pour l''**indivision des biens acquis** pendant le PACS.

#### Effets fiscaux

##### Imposition commune
**Déclaration commune** des impôts sur le revenu.

##### Avantages successoraux
- **Exonération** de droits de succession (depuis `2007`)
- Mais **pas** d''héritier réservataire (différence majeure avec le mariage)
- Possibilité de **testament** au profit du partenaire

#### Effets sociaux
- **Sécurité sociale** : ayant droit
- **Pension** de réversion : **non**
- **Congés** : pas de congé pour mariage du partenaire

### E. La dissolution du PACS

#### Causes (`art. 515-7`)

##### Décès d''un partenaire
**Automatique**.

##### Mariage des partenaires
**Automatique** (mariage entre eux ou avec un tiers).

##### Volonté commune
**Déclaration** conjointe enregistrée à la mairie.

##### Volonté unilatérale
- **Signification** à l''autre partenaire par **commissaire de justice** (anciennement huissier)
- **Notification** à la mairie

#### Effets de la dissolution

##### Liquidation
- **Récupération** des biens propres
- **Partage** des biens en indivision

##### Pas de prestation compensatoire
**Aucune indemnisation** automatique. Mais une indemnité peut être due si **enrichissement sans cause**.

##### Pour les enfants
**Mêmes règles** que pour les couples non mariés (autorité parentale conjointe si reconnaissance).

## II. Le concubinage

### A. La définition légale

#### Article 515-8 C. civ.
> *« Le concubinage est une union de fait, caractérisée par une vie commune présentant un caractère de stabilité et de continuité, entre deux personnes, de sexe différent ou de même sexe, qui vivent en couple. »*

#### Innovation
**Loi du 15 novembre 1999** (la même que pour le PACS) : **première définition légale** du concubinage.

### B. Les éléments constitutifs

#### Vie commune
**Cohabitation** effective.

#### Stabilité et continuité
**Pas** de relation occasionnelle.

#### Vie de couple
**Affective et matérielle**.

#### Indifférence du sexe
**Hétérosexuel** ou **homosexuel**.

### C. La nature juridique

#### Une situation de fait
**Pas un acte juridique**, mais une **situation factuelle**.

#### Pas d''engagement
**Aucune obligation** réciproque légale entre les concubins.

#### Liberté de rupture
**Rupture libre**, sans procédure ni formalité.

### D. Les effets du concubinage

#### Effets entre les concubins

##### Pas de devoirs réciproques légaux
- Pas de devoir de secours
- Pas de devoir d''assistance
- Pas de solidarité ménagère

##### Indépendance patrimoniale totale
**Séparation** complète des biens. Chaque concubin gère son patrimoine.

##### Indivision possible
Possible **par accord** ou **acquisition commune**.

#### Effets fiscaux et sociaux

##### Imposition séparée
**Distinct** des époux et des partenaires de PACS.

##### Sécurité sociale
**Ayant droit** possible.

##### Droits sociaux
- **Allocations familiales** : oui
- **Réversion** : non
- **Pension alimentaire** entre concubins : non

#### Vis-à-vis des enfants

##### Filiation
- **Reconnaissance** nécessaire pour le père (pas comme dans le mariage)
- **Autorité parentale** conjointe si reconnaissance dans la première année

#### Avantages succession
- **Pas d''avantage fiscal**
- **Pas d''héritier** légal
- Possibilité de **testament**, mais **soumis à fortes taxations** (`60 %` de droits, comme un étranger)

### E. La rupture du concubinage

#### Rupture libre
**Pas de procédure**.

#### Pas d''indemnité automatique
Mais possibilité de réclamer :
- **Indemnité** pour **enrichissement sans cause** (en cas de contribution excessive au patrimoine de l''autre)
- **Dommages-intérêts** pour rupture brutale et fautive
- **Partage** des biens en indivision

#### Pour les enfants
**Procédure** identique au divorce pour les questions parentales (compétence du JAF).

## III. Comparaison mariage / PACS / concubinage

### A. Tableau récapitulatif

| Critère | **Mariage** | **PACS** | **Concubinage** |
|---|---|---|---|
| Nature | Institution | Contrat | Fait |
| Formalité | Cérémonie publique | Enregistrement mairie | Aucune |
| Devoirs | Forts (fidélité, secours…) | Vie commune, assistance | Aucun légal |
| Solidarité | Ménagère (art. 220) | Vie courante (515-4) | Aucune |
| Régime biens | Communauté (par défaut) | Séparation (par défaut) | Séparation |
| Dissolution | Divorce (procédure) | Volonté unilatérale | Libre |
| Succession | Héritier réservataire | Pas réservataire | Pas légal |
| Imposition | Commune | Commune | Séparée |
| Pension réversion | Oui | Non | Non |
| Adoption | Oui (`2013`) | Non (sauf seul) | Non (sauf seul) |

### B. Le choix

#### Critères pour choisir
- **Stabilité** souhaitée
- **Protection** voulue
- **Coût** et formalisme acceptable
- **Considérations** fiscales et successorales

#### Tendance
- **Recul** du mariage
- **Hausse** du PACS
- **Maintien** du concubinage

## IV. La rupture brutale et fautive du concubinage

### A. Le principe de liberté
**Pas de droit** au maintien du concubinage.

### B. Exceptions jurisprudentielles

#### Rupture brutale
Si la rupture cause un **préjudice excessif** par sa **brutalité** ou ses **circonstances**, **dommages-intérêts** possibles (responsabilité civile, `art. 1240 C. civ.`).

#### Enrichissement sans cause
Si un concubin a **contribué** au patrimoine de l''autre sans en avoir conscience, action en **indemnisation** possible.

### C. La jurisprudence
- *Cass. 1^re^ civ., 17 octobre 2000* : rupture brutale fautive
- *Cass. 1^re^ civ., 24 septembre 2008* : enrichissement sans cause

## À retenir

**PACS** :
- **Loi du 15 novembre 1999**
- **Contrat** entre deux personnes majeures
- **Enregistrement** à la mairie
- **Régime par défaut** : séparation de biens (depuis `2006`)
- **Solidarité** : vie courante (`art. 515-4`)
- **Dissolution** : décès, mariage, accord, volonté unilatérale
- **Fiscalité** : imposition commune, exonération de droits de succession (mais pas réservataire)

**Concubinage** :
- **Définition** : `art. 515-8 C. civ.` (depuis `1999`)
- **Union de fait** stable et continue
- **Aucun devoir** légal entre concubins
- **Séparation** patrimoniale totale
- **Rupture libre** (mais possible faute)
- **Fiscalité** : imposition séparée, pas d''avantage successoral

**Différences avec le mariage** : pas d''héritier réservataire pour le PACS et le concubinage ; pas de pension de réversion ; pas de prestation compensatoire automatique en cas de rupture.

**Tendance** : recul du mariage (~`225 000`/an), forte hausse du PACS (~`200 000`/an), maintien du concubinage.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 6 - LA FILIATION
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La filiation', 'Chapitre 6 - La filiation',
       'Établissement de la filiation : par effet de la loi, reconnaissance, possession d''état, action en justice. PMA et GPA.',
       array['Filiation', 'Présomption de paternité', 'Article 312', 'Reconnaissance', 'Possession d''état', 'Action en recherche', 'PMA', 'GPA', 'Loi du 2 août 2021', 'Adoption'],
       17, 6,
'# La filiation

## Introduction

La **filiation** est le **lien juridique** unissant un enfant à ses parents. C''est l''**élément structurant** de la famille. Le droit français a connu une évolution majeure : d''une distinction entre filiations légitime, naturelle et adultérine, on est passé à un système **unifié** depuis la **réforme du 4 juillet 2005** (entrée en vigueur le `1^er^ juillet 2006`). Les techniques médicales (PMA, GPA) ont également bouleversé la matière.

> **Définition** : La **filiation** est le lien juridique qui relie un enfant à ses parents. Elle peut être **biologique** (par procréation) ou **adoptive**.

## I. L''évolution du droit de la filiation

### A. Le droit ancien

#### Distinction légitime/naturelle
- **Filiation légitime** : enfant né de parents mariés
- **Filiation naturelle** : enfant né hors mariage
- **Filiation adultérine** : enfant né d''une relation adultère
- **Filiation incestueuse** : interdiction stricte

#### Inégalité
Avant `1972` : enfants naturels et adultérins **discriminés** en droits successoraux.

### B. La réforme du 3 janvier 1972
**Égalité** des filiations légitime et naturelle. Mais distinction terminologique maintenue.

### C. La réforme du 4 juillet 2005 (ordonnance n° 2005-759)

#### Vigueur le `1^er^ juillet 2006`

#### Innovations
- **Suppression** des termes « filiation légitime » et « filiation naturelle »
- **Unification** : la filiation est simplement « la filiation »
- **Simplification** des actions
- **Précision** des règles

### D. Les réformes contemporaines

#### Loi du 2 août 2021 (bioéthique)
- **Extension** de la PMA aux couples de femmes et femmes non mariées
- **Reconnaissance conjointe anticipée** (RCA) pour les couples de femmes ayant recours à la PMA

#### Jurisprudence Mennesson
- **CEDH**, *Mennesson c/ France*, `26 juin 2014`
- Reconnaissance partielle de la filiation après GPA à l''étranger

## II. L''établissement de la filiation maternelle

### A. Par l''effet de la loi

#### Article 311-25 C. civ.
> *« La filiation est établie, à l''égard de la mère, par la désignation de celle-ci dans l''acte de naissance de l''enfant. »*

#### Simplicité
**Automatique** : la mère est celle qui figure dans l''acte de naissance.

### B. L''accouchement sous X (`art. 326`)

#### Principe
La mère peut **demander** le **secret de son admission** et de son identité lors de l''accouchement.

#### Effets
- **Pas** d''établissement de la filiation maternelle
- Enfant **né sous X** : peut être adopté

#### La CADCO
**Conseil national pour l''accès aux origines personnelles** (`CNAOP`). Permet à l''enfant majeur de **rechercher** son origine si la mère lève le secret.

#### La jurisprudence
- **CEDH** : compatibilité de l''accouchement sous X avec l''article 8 (CEDH, *Odièvre c/ France*, `13 février 2003`)
- Décisions françaises confirmant la validité du système

### C. La reconnaissance

#### Par la mère
**Possible** mais en pratique rare (la mère figure déjà à l''acte de naissance).

#### Cas
- **Avant** la naissance (reconnaissance prénatale)
- **Après** la naissance si non figurée sur l''acte

## III. L''établissement de la filiation paternelle

### A. Par la présomption de paternité du mari (`art. 312 C. civ.`)

#### Principe
> *« L''enfant conçu ou né pendant le mariage a pour père le mari. »*

#### Champ d''application
- L''enfant doit être **conçu ou né** pendant le mariage
- Présume que le mari est le père

#### Période de conception
**`6 à 10 mois`** avant la naissance (présomption).

#### Présomption simple
**Peut être renversée** par preuve contraire :
- Action en **désaveu de paternité**
- Action en **contestation de paternité**

#### Exclusion de la présomption (`art. 313`)
- Indication de la séparation par défaut du mariage à l''état civil
- Demande à laisser supprimer la mention du mari sur l''acte de naissance

### B. Par la reconnaissance volontaire (`art. 316 à 322`)

#### Caractères
- **Acte juridique unilatéral**
- **Acte authentique** : devant un officier d''état civil ou un notaire
- **Indivisible** et **irrévocable**
- **Possible** par toute personne (homme ou femme)

#### Moment
- **Avant** la naissance (reconnaissance prénatale)
- **Au moment** de la déclaration
- **Après** la naissance

#### Conditions
- **Capacité** de comprendre la portée
- **Possibilité** : pas d''autre filiation contradictoire (`art. 320`)

### C. Par la possession d''état (`art. 311-1 à 311-2`)

#### Définition (`art. 311-1`)
> *« La possession d''état s''établit par une réunion suffisante de faits qui révèlent le lien de filiation et de parenté entre une personne et la famille à laquelle elle est dite appartenir. »*

#### Éléments
- ***Nomen*** : porte le nom du parent prétendu
- ***Tractatus*** : est traité comme son enfant
- ***Fama*** : est considéré comme tel par la société

#### Conditions
La possession d''état doit être :
- **Continue**
- **Paisible**
- **Publique**
- **Non équivoque**

#### Constatation
**Acte de notoriété** délivré par le notaire (`art. 317`), dans les 5 ans après cessation.

### D. Par l''action en recherche de paternité (`art. 327`)

#### Recouvré
**Loi du 8 janvier 1993** : action ouverte à l''enfant.

#### Conditions
- L''enfant ou ses représentants légaux
- **Délai** : 10 ans à compter de la majorité

#### Preuve
**Tous moyens**, notamment :
- **Test ADN** (avec consentement)
- **Témoignages**
- **Lettres**
- **Photos**

## IV. La filiation par PMA

### A. Cadre juridique

#### Lois de bioéthique
- `1994`, `2004`, `2011`, **`2 août 2021`**

#### Conditions d''accès (depuis `2021`)
- **Couples** (mariés, pacsés, concubins) hétérosexuels et homosexuels féminins
- **Femme** non mariée

#### Encadrement
- **Centres** agréés
- **Donneurs** anonymes (en principe)
- **Pas de filiation** entre l''enfant et le donneur

### B. La filiation pour les couples hétérosexuels

#### PMA avec **tiers donneur**
- **Consentement** notarié des deux membres du couple
- L''enfant est **rattaché** au couple (paternité présumée pour le mari, reconnaissance pour le compagnon non marié)
- **Pas d''action** en contestation possible pour ceux qui ont consenti (`art. 311-20`)

### C. La filiation pour les couples de femmes

#### Reconnaissance conjointe anticipée (RCA)
**Loi du 2 août 2021** :
- Les **deux femmes** signent une RCA chez le notaire avant la conception
- La filiation **maternelle** est établie à l''égard des deux femmes
- L''enfant a **deux mères**

#### Avant `2021`
- L''**adoption** intra-familiale était la seule solution pour le parent non géniteur

### D. L''anonymat du donneur

#### Évolution
**Loi du 2 août 2021** : possibilité pour l''enfant **majeur** d''accéder à l''**identité** du donneur.

## V. La GPA (gestation pour autrui)

### A. L''interdiction française

#### Article 16-7 C. civ.
> *« Toute convention portant sur la procréation ou la gestation pour le compte d''autrui est nulle. »*

#### Sanction
- **Nullité** d''ordre public
- **Sanctions pénales** pour les intermédiaires

### B. Les GPA à l''étranger

#### Pratique
Des couples français se rendent à l''étranger pour recourir à la GPA.

#### Évolution jurisprudentielle

##### Refus initial
**Cass. ass. plén., 31 mai 1991** : refus de transcription de la filiation issue d''une GPA.

##### Condamnation par la CEDH
*Mennesson c/ France*, `26 juin 2014` : violation de l''**article 8 CESDH** (vie privée de l''enfant).

##### Évolution française
- **Cass. ass. plén., 4 octobre 2019** : possibilité de **transcrire** la filiation à l''égard du parent **biologique** + adoption pour le parent d''intention
- **Loi du 2 août 2021** : confirmation, sans légalisation de la GPA en France

## VI. L''adoption

### A. Deux formes

#### Adoption plénière (`art. 343 et s.`)
- Effets **substituts** : l''enfant devient juridiquement l''enfant des adoptants, rupture avec la famille d''origine
- **Irrévocable**
- Pour les **enfants de moins de 15 ans** en principe

#### Adoption simple (`art. 360 et s.`)
- Effets **additionnels** : maintien des liens avec la famille d''origine
- **Révocable** pour motifs graves
- Pour les **enfants** ou **adultes**

### B. Conditions

#### Pour les adoptants
- **Majeurs**
- **Différence d''âge** d''au moins **15 ans** avec l''adopté (`10 ans` pour l''enfant du conjoint)
- **Mariés ou pacsés** depuis 1 an
- Ou personne seule de plus de 26 ans

#### Loi du 21 février 2022
- **Ouverture** aux **partenaires de PACS** et aux **concubins** depuis 1 an
- **Adoption** par une seule personne

### C. Procédure
- **Agrément** délivré par le département (pour adoption de mineurs étrangers)
- **Requête** devant le tribunal judiciaire
- **Jugement** d''adoption

## VII. Les actions relatives à la filiation

### A. Les actions en établissement
- Action en **recherche de paternité** (`art. 327`)
- Action en **recherche de maternité** (`art. 325`)
- Action en **constatation de la possession d''état**

### B. Les actions en contestation
- Action en **contestation de paternité**
- Action en **contestation de maternité**
- Limites : **délais**, **fin de non-recevoir**

### C. Les délais
- En principe **10 ans** à compter du jour où la filiation a été établie ou de la majorité

## À retenir

**Réforme du 4 juillet 2005** (vigueur `1^er^ juillet 2006`) : **unification** des filiations.

**Filiation maternelle** :
- **Désignation** dans l''acte de naissance (`art. 311-25`)
- **Accouchement sous X** possible (`art. 326`)

**Filiation paternelle** :
- **Présomption de paternité du mari** (`art. 312`)
- **Reconnaissance** volontaire (`art. 316-322`)
- **Possession d''état** (`art. 311-1`)
- **Action en recherche de paternité** (`art. 327`)

**PMA** : **loi du 2 août 2021** étend aux couples de femmes et femmes non mariées. **Reconnaissance conjointe anticipée** (RCA) pour les couples de femmes.

**GPA** : **interdite** en France (`art. 16-7`). Mais transcription **partielle** de filiation pour les GPA réalisées à l''étranger (*Cass. ass. plén., 4 octobre 2019*).

**Adoption** :
- **Plénière** (substitutive, irrévocable, < 15 ans)
- **Simple** (additive, révocable, mineurs ou adultes)
- **Loi du 21 février 2022** : ouverture aux pacsés et concubins.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 7 - L''AUTORITÉ PARENTALE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''autorité parentale', 'Chapitre 7 - L''autorité parentale',
       'Notion, exercice conjoint, contenu, intérêt supérieur de l''enfant, juge aux affaires familiales.',
       array['Autorité parentale', 'Article 371-1', 'Article 372', 'Loi du 4 mars 2002', 'Intérêt supérieur de l''enfant', 'JAF', 'Résidence alternée', 'Délégation', 'Retrait'],
       16, 7,
'# L''autorité parentale

## Introduction

L''**autorité parentale** est l''ensemble des **droits et obligations** des parents à l''égard de leurs enfants mineurs. Elle a connu une transformation profonde : de la **puissance paternelle** (Code civil de `1804`) à l''autorité parentale **partagée** des deux parents (loi de `1970`), puis à un système centré sur l''**intérêt supérieur de l''enfant** (loi de `2002`).

> **Définition (`art. 371-1 C. civ.`)** : *« L''autorité parentale est un ensemble de droits et de devoirs ayant pour finalité l''intérêt de l''enfant. Elle appartient aux parents jusqu''à la majorité ou l''émancipation de l''enfant pour le protéger dans sa sécurité, sa santé et sa moralité, pour assurer son éducation et permettre son développement, dans le respect dû à sa personne. »*

## I. Évolution de la notion

### A. La puissance paternelle (Code civil de 1804)

#### Caractères
- **Autorité du père** sur ses enfants
- **Mère** en position subordonnée
- **Conception** très autoritaire (correction modérée admise)

#### Article original
- Père seul détenteur des droits
- Pouvoir de **correction** : article 376 ancien (autorisation de demander la détention de l''enfant rebelle)

### B. La loi du 4 juin 1970

#### Innovations
- **« Autorité parentale »** remplace **« puissance paternelle »**
- Exercice **conjoint** par les deux parents
- **Égalité** des père et mère

### C. La loi du 8 janvier 1993

#### Innovations
- **Élargissement** de l''autorité parentale conjointe aux **couples non mariés** (reconnaissance des deux parents dans l''année suivant la naissance)

### D. La loi du 4 mars 2002

#### Réforme majeure
- **Centrage** sur l''**intérêt supérieur de l''enfant**
- **Audition** de l''enfant
- **Résidence alternée** consacrée
- **Médiation familiale** encouragée
- **Délégation** facilitée

### E. La Convention internationale des droits de l''enfant (`CIDE, 20 novembre 1989`)

#### Influence
- **Article 3.1** : intérêt supérieur de l''enfant
- **Article 12** : droit à la parole

#### Ratification française
**`7 août 1990`** : la France ratifie la CIDE.

## II. La notion d''autorité parentale

### A. Définition

#### Article 371-1 C. civ.
*Voir introduction.*

#### Caractères
- **Finalité** : intérêt de l''enfant
- **Droits ET devoirs**
- **Limitée dans le temps** : jusqu''à 18 ans (majorité) ou émancipation

### B. Distinction avec d''autres notions

#### Avec la **garde** (notion ancienne)
La « garde » ne désigne plus l''autorité parentale, mais seulement la **résidence** de l''enfant.

#### Avec la **filiation**
La filiation est le **lien juridique** ; l''autorité parentale est ses **effets** sur les rapports parents-enfants.

#### Avec la **tutelle**
La tutelle s''applique à un mineur **sans parents** (ou parents privés d''autorité). Régime distinct.

## III. Les titulaires de l''autorité parentale

### A. Le principe : les deux parents

#### Article 372 C. civ.
> *« Les père et mère exercent en commun l''autorité parentale. »*

#### Conditions
- **Filiation établie** dans l''année suivant la naissance pour le père non marié
- Sinon : autorité exercée par la mère seule (jusqu''à reconnaissance par décision judiciaire ou accord)

### B. Cas particuliers

#### Couples de même sexe
- **Couple de mères** ayant recours à la PMA : autorité parentale conjointe (loi `2021`)
- **Adoption** par un couple : autorité partagée

#### Recomposition familiale
- **Beau-parent** : pas d''autorité parentale automatique
- **Délégation** possible par les parents biologiques

### C. L''exercice unilatéral

#### Cas (`art. 373`)
- **Empêchement** d''un parent (incapacité, éloignement…)
- **Privation** par le juge

#### Cas (`art. 373-2`)
- Conséquence d''une décision judiciaire (déchéance, retrait)

## IV. L''exercice de l''autorité parentale

### A. L''exercice conjoint

#### Principe (`art. 372`)
**Les deux parents** prennent ensemble les décisions concernant l''enfant.

#### Présomption de l''accord (`art. 372-2`)
> *« À l''égard des tiers de bonne foi, chacun des parents est réputé agir avec l''accord de l''autre, quand il fait seul un acte usuel de l''autorité parentale relativement à la personne de l''enfant. »*

#### Distinction actes usuels / actes graves
- **Actes usuels** : un parent peut agir seul (école, médecin habituel)
- **Actes graves** : accord des deux nécessaire (intervention chirurgicale importante, changement d''école, déménagement à l''étranger…)

### B. En cas de séparation

#### Maintien du principe
**L''autorité parentale reste conjointe** après séparation/divorce.

#### Modalités
- **Résidence** : chez un parent ou **alternée**
- **Pension alimentaire** : pour la contribution à l''entretien
- **Décisions** : par l''accord des deux

#### En cas de désaccord
**Saisine du JAF** (`art. 373-2-6`).

## V. Le contenu de l''autorité parentale

### A. Les attributs personnels

#### Le pouvoir de garde
- **Cohabitation** avec l''enfant
- **Surveillance**

#### Le pouvoir d''éducation
- **Choix** scolaires
- **Activités** extra-scolaires
- **Religion**

#### Le pouvoir disciplinaire
- **Modéré** : la **« correction modérée »** a été supprimée par la **loi du 10 juillet 2019** interdisant les violences éducatives ordinaires (« VEO »)
- **Tout châtiment corporel** est aujourd''hui prohibé

#### La protection de la santé
- **Soins médicaux**
- **Vaccinations**

#### Les relations
- **Choix** des relations
- **Visites**

### B. Les attributs patrimoniaux

#### L''administration légale (`art. 382 et s.`)

##### Principe
**Les parents** administrent les biens de leur enfant mineur.

##### Distinction
- **Administration légale pure et simple** : actes courants
- **Administration légale sous contrôle judiciaire** : actes graves (vente immobilière, emprunt…)

#### Quelques limites
- **Donation** : nécessite l''accord du juge des tutelles
- **Acceptation/répudiation d''une succession** : autorisation

#### La jouissance légale (`art. 382-1`)
**Droit** des parents à **percevoir** les revenus du patrimoine de l''enfant, jusqu''à ses 16 ans. **Compensé** par la charge d''entretien.

### C. Les obligations

#### L''obligation alimentaire (`art. 371-2`)
> *« Chacun des parents contribue à l''entretien et à l''éducation des enfants à proportion de ses ressources, de celles de l''autre parent, ainsi que des besoins de l''enfant. »*

#### Continuité
S''applique **au-delà de la séparation** (pension alimentaire).

#### Au-delà de la majorité
**Possibilité** de poursuivre pour les **études supérieures** (jurisprudence).

## VI. La protection de l''autorité parentale

### A. La **délégation** (`art. 377-377-3 C. civ.`)

#### Principe
Les parents peuvent **déléguer** tout ou partie de leur autorité parentale à un tiers.

#### Hypothèses
- Impossibilité d''exercice
- Volonté des parents

#### Bénéficiaires possibles
- **Tiers** : beau-parent, grand-parent, association

#### Procédure
- Requête au **JAF**
- Délégation **judiciaire**

### B. Le partage de l''autorité parentale (`art. 377-1`)

#### Mécanisme
Le JAF peut décider que les parents et un **tiers** partagent l''autorité parentale.

#### Utilité
- **Recomposition familiale**
- Couples non mariés/non pacsés

### C. Le retrait de l''autorité parentale (`art. 378 à 381`)

#### Causes (`art. 378-1`)
- **Mauvais traitements**
- **Consommation habituelle et excessive** d''alcool/drogue
- **Inconduite notoire**
- **Délinquance** menaçant l''enfant
- **Désintérêt** manifeste

#### Procédure
- **JAF** ou **juge des enfants**
- Sanction grave : peut être **total** ou **partiel**

#### Effets
- **Perte** des droits parentaux
- **Maintien** des obligations (entretien)
- **Possibilité** de restitution si circonstances le justifient

## VII. L''intérêt supérieur de l''enfant

### A. Le principe

#### Article 3.1 CIDE
> *« Dans toutes les décisions qui concernent les enfants, […] l''intérêt supérieur de l''enfant doit être une considération primordiale. »*

#### Effet direct
**Cass. 1^re^ civ., 18 mai 2005** : reconnaissance de l''effet direct de l''article 3.1.

### B. L''application en droit français

#### Article 371-1 C. civ.
La **finalité** de l''autorité parentale.

#### Article 373-2-11 C. civ.
**Critères** pour le juge dans les décisions sur l''enfant.

#### Article 388-1 C. civ.
**Audition** de l''enfant capable de discernement.

### C. La jurisprudence

#### Application large
Présent dans **toutes** les décisions concernant les enfants.

#### Exemples
- **Divorce** et résidence
- **Adoption**
- **Filiation**

## VIII. Le rôle du juge aux affaires familiales (JAF)

### A. Compétences

#### En matière d''autorité parentale (`art. 373-2-6`)
- **Conflit** sur les modalités d''exercice
- **Résidence** de l''enfant
- **Droit de visite et d''hébergement**
- **Pension alimentaire**

#### En matière de divorce
- Voir fiche dédiée.

### B. Procédure

#### Saisine
- **Requête** ou **assignation**

#### Procédure orale
**Représentation** non obligatoire pour certaines requêtes (post-divorce).

### C. Mesures
- **Conciliation** parfois
- **Médiation familiale** ordonnée

## IX. L''audition de l''enfant

### A. Article 388-1 C. civ.
> *« Dans toute procédure le concernant, le mineur capable de discernement peut, sans préjudice des dispositions prévoyant son intervention ou son consentement, être entendu par le juge. »*

### B. Modalités

#### Demandé par
- **L''enfant lui-même**
- **Les parties**
- **Le juge**

#### Forme
- Entretien avec le juge
- Possibilité d''**assistance** par un avocat

### C. Importance
**Respect** du droit de l''enfant à la parole (art. 12 CIDE).

## À retenir

**Définition** (`art. 371-1`) : ensemble de **droits et devoirs** ayant pour finalité l''**intérêt de l''enfant**.

**Évolution** :
- `1804` : puissance paternelle
- `1970` : autorité parentale conjointe
- `2002` : centrage sur l''intérêt supérieur de l''enfant

**Exercice conjoint** (`art. 372`) :
- Par défaut entre parents mariés
- Pour les parents non mariés si reconnaissance dans la première année

**Maintien après divorce** : exercice conjoint, modalités fixées par le **JAF**.

**Contenu** :
- **Personnel** : éducation, santé, religion, relations
- **Patrimonial** : administration légale, jouissance légale (jusqu''à 16 ans)

**Loi du 10 juillet 2019** : interdiction des **violences éducatives ordinaires** (VEO).

**Délégation** (`art. 377`), **partage** (`art. 377-1`), **retrait** (`art. 378`).

**Intérêt supérieur de l''enfant** : article `3.1 CIDE`, principe primordial.

**Audition de l''enfant** : `art. 388-1` C. civ.

**JAF** : juge compétent pour les questions parentales.'
from public.subjects where name = 'Droit civil de la famille';

-- =====================================================================
-- FICHE 8 - INTRODUCTION AUX RÉGIMES MATRIMONIAUX ET SUCCESSIONS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Introduction aux régimes matrimoniaux et aux successions', 'Chapitre 8 - Rapports patrimoniaux familiaux',
       'Présentation des régimes matrimoniaux (communauté, séparation, participation) et des principes du droit des successions.',
       array['Régime matrimonial', 'Communauté réduite aux acquêts', 'Séparation de biens', 'Participation aux acquêts', 'Succession', 'Héritiers réservataires', 'Réserve', 'Quotité disponible', 'Testament'],
       17, 8,
'# Introduction aux régimes matrimoniaux et aux successions

## Introduction

Les **régimes matrimoniaux** organisent les rapports patrimoniaux entre époux et avec les tiers. Le **droit des successions** régit la **transmission du patrimoine** au décès. Ces deux matières, à l''intersection du droit de la famille et du droit patrimonial, sont essentielles à la **vie économique** des familles.

> **Définition du régime matrimonial** : Ensemble des règles régissant les **rapports pécuniaires entre époux**, tant entre eux qu''à l''égard des tiers.

## I. Les régimes matrimoniaux

### A. La distinction régime primaire / régime secondaire

#### Régime primaire (`art. 212-226 C. civ.`)
**Impératif**, applicable à tous les couples mariés. Voir fiche n° 3.

#### Régime secondaire
**Régime matrimonial** au sens strict : organisation des biens, choisi par les époux ou supplétif.

### B. Le choix du régime

#### Liberté contractuelle
Les époux choisissent librement leur régime par **contrat de mariage** (`art. 1394`).

#### En l''absence de contrat
**Régime légal** par défaut : **communauté réduite aux acquêts** (`art. 1400 et s.`).

#### Forme du contrat de mariage
- **Acte notarié** obligatoire
- **Avant** la célébration
- Mentionné dans l''acte de mariage

### C. Le régime légal : la communauté réduite aux acquêts

#### Principe
**Distinction** entre **biens propres** et **biens communs**.

#### Les biens propres (`art. 1404-1408`)

##### Biens antérieurs au mariage
**Tous les biens** possédés par chaque époux avant le mariage.

##### Biens reçus à titre gratuit pendant le mariage
- **Succession**
- **Donation**
- **Legs**

##### Biens à caractère personnel
- **Vêtements** et linge personnel
- **Action en réparation** d''un dommage corporel ou moral
- **Diplômes**, droits **incessibles**

##### Biens créés par l''industrie personnelle
**Œuvres** de l''artiste, **droits d''auteur** (en partie).

#### Les biens communs (`art. 1401-1403`)

##### Présomption
Tous les biens **non propres** sont **communs**.

##### Acquêts
**Biens acquis** pendant le mariage à titre **onéreux**.

##### Gains et salaires
**Revenus** du travail pendant le mariage.

##### Revenus des biens propres
**Fruits** des biens propres deviennent communs (`art. 1401`).

#### La gestion

##### Cogestion (`art. 1421 al. 1`)
Chacun **administre seul** les biens communs.

##### Actes graves (`art. 1422-1425`)
- **Vente** d''un immeuble commun
- **Donation**
- **Bail à long terme**
→ **Accord** des deux nécessaire.

#### La liquidation

##### À la dissolution
- **Reprise** des biens propres
- **Partage** par moitié des biens communs

##### Récompenses
- Quand l''un des patrimoines (propre/commun) s''est **enrichi aux dépens** de l''autre, une **récompense** est due

### D. La séparation de biens

#### Principe
**Aucune communauté**. Chacun reste **propriétaire** des biens qu''il acquiert.

#### Avantages
- **Indépendance** financière
- **Protection** contre les créanciers de l''autre
- **Simplicité** de liquidation

#### Inconvénients
- Pas de **mise en commun**
- Difficile de **valoriser** la contribution non monétaire (foyer, éducation)

#### Le « bien indivis »
Les biens **acquis ensemble** sont en **indivision**.

#### Public typique
- Professions à risque (commerçants, libéraux)
- Mariages tardifs
- Seconde union

### E. La participation aux acquêts

#### Principe
- Pendant le mariage : **séparation de biens** (indépendance)
- À la dissolution : **compensation** des acquêts (équilibrage)

#### Mécanisme
À la dissolution, on calcule pour chacun la **différence** entre :
- Le **patrimoine final**
- Le **patrimoine originaire**

Celui qui a le **moins acquis** reçoit une **créance** d''une moitié de la différence des acquêts.

#### Origine
**Loi du 13 juillet 1965**, inspirée du droit allemand.

#### Utilisation
**Rare** en France, car complexe.

### F. La communauté universelle

#### Principe
**Tous les biens** des époux (présents et futurs) sont communs.

#### Forme renforcée
Souvent assortie d''une **clause d''attribution intégrale** au survivant : avantage successoral important.

#### Public typique
- Couples âgés sans enfants
- Volonté de **simplifier** la transmission

### G. Le changement de régime matrimonial (`art. 1397`)

#### Possibilité
Les époux peuvent **changer** de régime matrimonial pendant le mariage.

#### Conditions
- **2 ans** de régime initial (sauf premier changement après 2007)
- **Acte notarié**
- **Notification** aux enfants majeurs
- **Homologation** judiciaire **si enfant mineur** ou opposition

## II. Le droit des successions

### A. Notions fondamentales

#### Définition
**Transmission** du patrimoine d''une personne décédée à ses héritiers.

#### Ouverture de la succession
- **Au décès** (`art. 720`)
- **Lieu** : dernier domicile du défunt

#### La saisine (`art. 724`)
Les héritiers sont **saisis** de plein droit. Mais l''option leur reste ouverte.

### B. Les héritiers

#### Distinction (`art. 731`)

##### Héritiers réservataires
**Doivent** recevoir une part minimale (réserve).
- **Descendants** : enfants, petits-enfants
- **À défaut de descendants**, le **conjoint survivant** est réservataire (1/4 des biens, depuis la loi du `3 décembre 2001`)

##### Héritiers non réservataires
Peuvent être déshérités par testament.
- **Père et mère** (depuis `2006`)
- **Frères et sœurs**
- **Collatéraux** plus éloignés

#### L''ordre des successibles (`art. 734-740`)

##### Ordre des héritiers
1. **Descendants**
2. **Conjoint** (avec descendants ou ascendants)
3. **Père et mère** + **frères et sœurs**
4. **Ascendants** (autres que père et mère)
5. **Collatéraux** ordinaires

#### Le conjoint survivant
**Loi du 3 décembre 2001** : amélioration majeure de ses droits.
- **Avec descendants** : choix entre `1/4` en propriété ou usufruit total
- **Sans descendants** : **1/4** réservataire + autres droits

### C. La réserve et la quotité disponible

#### La réserve héréditaire
**Part minimale** revenant aux héritiers réservataires (`art. 913 et s.`).

##### Avec enfants (`art. 913`)
- **1 enfant** : 1/2 de réserve, 1/2 quotité disponible
- **2 enfants** : 2/3 de réserve, 1/3 quotité disponible
- **3 enfants ou +** : 3/4 de réserve, 1/4 quotité disponible

##### Sans enfant, avec conjoint
**1/4** de réserve pour le conjoint, **3/4** quotité disponible.

#### La quotité disponible
Part dont le défunt peut **disposer librement** (testament, donation).

### D. Le testament

#### Définition
**Acte par lequel** une personne dispose, pour le temps où elle ne sera plus, de tout ou partie de ses biens.

#### Caractères
- **Acte juridique unilatéral**
- **Personnel**
- **Révocable**
- **Soumis** à des formes strictes

#### Les formes principales

##### Testament olographe (`art. 970`)
- **Écrit en entier de la main du testateur**
- **Daté**
- **Signé**
- Simple, gratuit, mais **risque** de perte

##### Testament authentique (`art. 971`)
- **Devant notaire**
- **Deux témoins** ou **2 notaires**
- **Force probante**
- **Conservation** garantie

##### Testament mystique (`art. 976`)
- **Très rare**, peu utilisé

### E. Les donations

#### Définition (`art. 894`)
> *« La donation entre vifs est un acte par lequel le donateur se dépouille actuellement et irrévocablement de la chose donnée, en faveur du donataire qui l''accepte. »*

#### Caractères
- **Acte solennel** : forme **notariée** (`art. 931`)
- **Irrévocable** (sauf cas légaux : ingratitude, survenance d''enfant)

#### Les formes
- **Donation simple**
- **Donation-partage**
- **Donation au dernier vivant** (entre époux)

### F. L''indivision

#### Définition
**Pluralité de propriétaires** sur un même bien.

#### Origine
- Succession (avant partage)
- Achat en commun

#### Gestion
**Article 815 et s. C. civ.** : règles spéciales.

#### *« Nul n''est tenu de rester dans l''indivision »* (`art. 815`)
**Possibilité** de demander le partage à tout moment.

### G. Le partage

#### Modalités
- **Amiable** entre héritiers
- **Judiciaire** en cas de désaccord

#### Effet déclaratif (`art. 883`)
Chaque héritier est **réputé** être propriétaire **depuis le décès**.

### H. Quelques aspects pratiques

#### La déclaration de succession
**Dans les 6 mois** du décès, déclaration aux services fiscaux.

#### Les **droits de succession**
Variables selon le lien de parenté :
- **Conjoint** : exonération totale (depuis `2007`)
- **Enfants** : abattement de `100 000 €` puis barème progressif
- **Frères et sœurs** : abattement réduit, taux élevé
- **Tiers** : barème très lourd (`60 %`)

#### La **réserve** et la **réduction**
Si les libéralités du défunt **dépassent** la quotité disponible, elles sont **réductibles** (`art. 920 et s.`).

## III. Les liens entre régime matrimonial et succession

### A. La liquidation du régime au décès

#### Avant le partage successoral
**Liquider** le régime matrimonial (récupération des biens propres, partage des biens communs).

### B. Les droits du conjoint survivant

#### Sur les biens communs
- **Reprise** de sa part de communauté

#### Sur les biens propres du défunt
- Droits successoraux (voir supra)

### C. La protection du conjoint

#### Les avantages matrimoniaux
- **Clause** d''attribution de la communauté
- **Préciput**

#### La donation au dernier vivant
**Augmente** les droits du conjoint.

## À retenir

**Régimes matrimoniaux** :
- **Régime légal** (par défaut) : communauté réduite aux acquêts (`art. 1400`)
- **Conventionnels** : séparation de biens, communauté universelle, participation aux acquêts (loi `1965`)
- **Contrat de mariage** : acte notarié avant le mariage
- **Changement** possible (`art. 1397`)

**Communauté réduite aux acquêts** :
- **Biens propres** : antérieurs + reçus à titre gratuit + caractère personnel
- **Biens communs** : acquêts + gains et salaires + revenus des propres
- **Gestion** : cogestion pour les actes graves
- **Liquidation** : reprise des propres + partage des communs

**Successions** :
- **Ouverture** au décès, au dernier domicile
- **Héritiers réservataires** : descendants, conjoint (à défaut)
- **Réserve** : part minimale (1/2, 2/3 ou 3/4 selon le nombre d''enfants)
- **Quotité disponible** : librement transmissible

**Testament** :
- **Olographe** : entièrement manuscrit, daté, signé (`art. 970`)
- **Authentique** : devant notaire (`art. 971`)

**Conjoint survivant** : amélioration majeure des droits par la **loi du 3 décembre 2001**. Exonération totale des droits de succession (depuis `2007`).

**Donations** : acte solennel notarié, irrévocable (sauf cas légaux).'
from public.subjects where name = 'Droit civil de la famille';
