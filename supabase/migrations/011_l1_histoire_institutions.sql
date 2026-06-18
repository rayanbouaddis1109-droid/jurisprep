-- =====================================================================
-- JurisPrép - Cours complet : Histoire des institutions (L1 S2)
-- 8 fiches très approfondies avec code couleur
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where name = 'Histoire des institutions');

-- =====================================================================
-- FICHE 1 - LES INSTITUTIONS DE L''ANCIEN RÉGIME
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les institutions de l''Ancien Régime', 'Chapitre 1 - L''Ancien Régime (XVIIe-XVIIIe siècles)',
       'Monarchie absolue, lois fondamentales, organisation politique et administrative, Parlements, États généraux.',
       array['Monarchie absolue', 'Lois fondamentales', 'Loi salique', 'Sacre', 'Conseil du roi', 'Parlements', 'Intendants', 'États généraux', 'Bodin', 'Bossuet', 'Versailles', 'Vénalité des offices'],
       28, 1,
'# Les institutions de l''Ancien Régime

## Introduction

L''**Ancien Régime** désigne la période qui s''étend de la fin du Moyen Âge à la **Révolution française** (`1789`). C''est l''âge d''or de la **monarchie absolue** française, période durant laquelle le pouvoir royal s''est progressivement consolidé jusqu''à atteindre son apogée sous **Louis XIV** (`1643-1715`). Comprendre les institutions de cette époque est essentiel pour saisir les **continuités** et les **ruptures** qu''opère la Révolution, et pour mesurer l''héritage durable de structures administratives encore présentes aujourd''hui (préfectures, codifications, conseil d''État…).

> **Définition** : L''**Ancien Régime** est l''ordre social, économique et politique qui prévalait en France avant la Révolution française, caractérisé par une société d''ordres (clergé, noblesse, tiers état) et une monarchie de droit divin tendant à l''absolutisme.

## I. La conception du pouvoir royal

### A. La monarchie absolue : élaboration doctrinale

#### Jean Bodin (`1530-1596`)
**Ouvrage fondateur** : *Les Six Livres de la République* (`1576`).

##### Définition de la souveraineté
> *« La souveraineté est la puissance absolue et perpétuelle d''une République. »*

##### Caractères posés par Bodin
- **Absolue** : aucune autre autorité au-dessus
- **Perpétuelle** : continuité (« le roi ne meurt jamais »)
- **Indivisible**
- **Inaliénable**

##### Les marques de la souveraineté
- **Faire la loi**
- **Déclarer la guerre et faire la paix**
- **Nommer les magistrats**
- **Battre monnaie**
- **Lever l''impôt**

#### Cardin Le Bret
*De la souveraineté du roi* (`1632`). Reprend et développe Bodin.

#### Bossuet (`1627-1704`)
**Théoricien** de la monarchie de droit divin.

##### Œuvre principale
*Politique tirée des propres paroles de l''Écriture sainte* (publié `1709`, posthume).

##### Citations
> *« Tout l''État est en lui ; la volonté de tout le peuple est renfermée dans la sienne. »*

> *« Le roi tient son pouvoir de Dieu. »*

### B. Les caractères de la monarchie

#### Une monarchie de droit divin
- Le roi est le *« lieutenant de Dieu »* sur terre
- **Sacre** à Reims (cérémonie religieuse)
- **Onction sainte** par l''archevêque
- **Continuité** dynastique

#### Une monarchie héréditaire
- Transmission de la couronne selon les **lois fondamentales**
- *« Le roi ne meurt jamais »* : continuité de la fonction royale

#### Une monarchie absolue
- **Pouvoir** non limité par des contraintes constitutionnelles
- **Source** de toute autorité
- **Concentration** des pouvoirs (législatif, exécutif, judiciaire)

#### Une monarchie tempérée ? Les limites traditionnelles
- **Lois fondamentales** du royaume
- **Droits acquis** des sujets
- **Privilèges** des corps (parlements, villes, provinces, ordres)
- **Coutumes** régionales
- **Religion** et morale

### C. Louis XIV et l''apogée de l''absolutisme

#### Le règne (`1643-1715`)
- **Plus long règne** de l''histoire de France (72 ans)
- **Personnification** du pouvoir absolu

#### Citation attribuée
> *« L''État, c''est moi. »*

(Probablement apocryphe, mais représentative de sa conception du pouvoir.)

#### Mémoires
Dans ses *Mémoires pour l''instruction du Dauphin*, Louis XIV expose sa conception du métier de roi.

#### Versailles (`1682`)
- **Établissement** définitif de la cour
- **Spectacle** quotidien du pouvoir
- **Discipline** de la noblesse à la cour

#### *« Une foi, un roi, une loi »*
- **Unité** religieuse : révocation de l''édit de Nantes (`1685`)
- **Unité** politique : centralisation
- **Unité** juridique : codifications de Colbert

## II. Les lois fondamentales du royaume

### A. Notion

#### Définition
**Règles intangibles** qui s''imposent au roi lui-même, encadrant son pouvoir, et qu''il ne peut pas modifier seul.

#### Origine
- **Coutume**
- **Pratique** politique
- **Doctrine** des juristes (théoriciens du droit public)

#### Caractère
**Une véritable « constitution coutumière »** de l''Ancien Régime, sans texte unique.

### B. Les principales lois fondamentales

#### Les lois successorales

##### La loi salique
**Exclut les femmes** de la succession au trône (et la transmission par les femmes).

###### Origine
- Inspirée d''une disposition de la **loi salique des Francs** sur les successions terriennes
- **Application** à la couronne au XIVe siècle pour exclure Édouard III d''Angleterre

###### Cas d''application
- **`1316`** : succession de Louis X. Sa fille Jeanne écartée au profit de son frère Philippe V
- **`1328`** : avènement de Philippe VI de Valois au détriment d''Édouard III d''Angleterre (origine de la **Guerre de Cent Ans**, `1337-1453`)

##### La règle de primogéniture
**Succession** par ordre de naissance des garçons.

##### La règle de masculinité
**Seuls les hommes** peuvent succéder.

##### La règle de continuité (« le roi ne meurt jamais »)
- *« Le roi est mort, vive le roi »*
- **Pas d''interrègne**
- Succession **immédiate** à la mort du roi

##### La règle d''indisponibilité
- Le roi ne peut **renoncer** à la couronne pour ses descendants
- Cas : renonciation de Philippe V d''Espagne (Utrecht, `1713`)

#### L''inaliénabilité du domaine royal

##### Édit de Moulins (`1566`)
- **Charles IX**
- **Le roi** ne peut aliéner les terres de la couronne
- **Exceptions** très limitées

##### Justification
- **Patrimoine** confié à la fonction royale
- Évolution **publique** du pouvoir

#### La catholicité du roi

##### Origine
- **Résultat** des guerres de religion
- **Conversion** d''Henri IV (`1593`) : *« Paris vaut bien une messe »*

##### Inscription
- **Édit perpétuel** d''Henri IV

##### Conséquences
- Le roi doit être **catholique**
- **Sacre** à Reims

## III. L''organisation du pouvoir central

### A. Le roi

#### Centre de tout
- **Source** de toute autorité
- **Justice retenue** : juge ultime
- **Législation**
- **Administration**

#### La distinction « les deux corps du roi »
**Ernst Kantorowicz**, *Les Deux Corps du roi* (`1957`).
- **Corps physique** : le roi homme, mortel
- **Corps politique** : la fonction, immortelle
- *« Le roi est mort, vive le roi »* exprime cette distinction

### B. Le Conseil du roi

#### Origines médiévales
- **Curia regis** : assemblée des grands du royaume
- **Subdivision** progressive en organes spécialisés

#### Évolution

##### Le Conseil d''État (politique)
- **Présidé** par le roi
- **Princes du sang**, grands officiers
- **Affaires** importantes

##### Le Conseil privé (ou « des parties »)
- **Affaires** judiciaires de cassation

##### Le Conseil royal des finances
- **Présidé** par le contrôleur général des finances
- Affaires fiscales et budgétaires

##### Le Conseil de Conscience
- Affaires ecclésiastiques

##### Conseil des Affaires étrangères, de la guerre, de la marine

#### Caractères
- **Hiérarchie** clarifiée
- **Spécialisation** progressive
- **Bureaucratisation**

### C. Les ministres et secrétaires d''État

#### Origines
- Naissance progressive au XVIe siècle
- **Quatre secrétaires** d''État principaux

#### Les départements
- **Affaires étrangères**
- **Guerre**
- **Marine**
- **Maison du roi** (et religion)

#### Les contrôleurs généraux des finances
- **Apparaît** en `1665` sous Louis XIV
- **Colbert** (`1665-1683`) : figure emblématique
- **Necker, Turgot** sous Louis XVI

#### Les chanceliers et gardes des Sceaux
- **Premier officier** de la couronne
- **Justice**

### D. Les grands officiers de la couronne

- **Connétable** (chef des armées, supprimé en `1626`)
- **Amiral** (marine)
- **Maréchaux de France**
- **Chancelier**

## IV. L''administration locale

### A. Les officiers

#### Distinction officiers / commissaires

##### Officiers
- **Achètent** leur charge (vénalité)
- **Caractère** héréditaire (paulette, `1604`)
- **Difficiles** à révoquer

##### Commissaires
- **Nommés** par le roi
- **Révocables**
- **Représentent** l''autorité royale

#### Les baillis et sénéchaux
- **Représentants** du roi dans les provinces
- **Baillis** au Nord, **sénéchaux** au Sud
- **Compétence** : justice, finances, ordre public
- **Déclin** progressif au profit des intendants

### B. Les intendants

#### Création
**Étape majeure** de la centralisation. Naissent au XVIe siècle.

#### Développement sous Richelieu (`1624-1642`)
- **Cardinal-ministre** de Louis XIII
- **Multiplie** les intendants
- **Outil** de centralisation

#### Caractères
- **Commissaires** révocables
- **Désignés** par le roi
- **Pouvoirs** étendus :
  - **Justice** (intendants de police, justice, finances)
  - **Police**
  - **Finances**
  - **Mobilisation** des ressources

#### Les généralités
- **Découpage** administratif
- **Une trentaine** au XVIIIe siècle
- **Cadre** d''action des intendants

#### Les subdélégués
- **Sous-ordres** des intendants
- **Représentation** locale

### C. Les gouverneurs de province
- **Représentants** militaires du roi
- **Charge** vénale
- **Pouvoirs** politiques affaiblis au profit des intendants

### D. Les officiers seigneuriaux

#### Justices seigneuriales
- **Maintenues** sous l''Ancien Régime
- **Hiérarchie** : haute, moyenne, basse justice
- **Compétence** réduite mais réelle

#### Officiers seigneuriaux
- **Bailli** seigneurial
- **Procureur** fiscal
- **Greffier**

## V. La justice

### A. Principes généraux

#### Justice retenue
- Le **roi** est juge suprême
- **Pouvoir** de retenir une cause à lui-même

#### Justice déléguée
- Le roi **délègue** à des magistrats

#### Vénalité des offices
- **Charges** achetables et transmissibles
- **Paulette** (`1604`) : droit annuel permettant la transmission héréditaire des offices

### B. Les juridictions

#### Le Parlement de Paris
- **La plus importante** des cours souveraines
- **Compétence** sur la moitié nord du royaume
- **Né** au XIIIe siècle, structuré au XIVe

#### Les autres parlements
**Au XVIIIe siècle**, 13 parlements :
- Paris (le plus ancien)
- **Toulouse** (`1443`)
- **Grenoble** (`1453`)
- **Bordeaux** (`1462`)
- **Dijon** (`1477`)
- **Rouen** (`1499`)
- **Aix** (`1501`)
- **Rennes** (`1554`)
- **Pau** (`1620`)
- **Metz** (`1633`)
- **Besançon** (`1676`)
- **Douai** (`1686`)
- **Nancy** (`1775`)

#### Compétences des parlements

##### Compétence juridictionnelle
- **Cours souveraines** : jugement en dernier ressort
- **Appel** des juridictions inférieures
- **Cas royaux** : compétence directe

##### Compétences politiques

###### Enregistrement des édits
- **Tous les édits** doivent être enregistrés par les parlements
- **Sans enregistrement** : pas d''application

###### Droit de remontrances
- **Refus** d''enregistrement motivé par une contrariété avec :
  - Les **lois fondamentales** du royaume
  - Les **intérêts** du royaume
  - Les **anciennes coutumes**
- **Remontrances itératives** : renouvelées
- **Effet suspensif**

###### Les lits de justice
- **Le roi vient en personne** au parlement
- **Impose** l''enregistrement
- **Cérémonie** solennelle
- **Le roi étant présent**, le parlement n''a plus d''autorité contraire

##### Autres compétences
- **Police générale** dans leur ressort
- **Réglementation** locale

### C. Les autres cours souveraines

#### La Cour des aides
- **Contentieux** fiscal

#### La Cour des comptes
- **Contrôle** des comptes publics

#### La Cour des monnaies
- **Régulation** monétaire

#### Le Grand Conseil
- **Affaires** de l''Église, du roi

### D. Le conflit roi/parlements

#### Au XVIIe siècle
- **Fronde parlementaire** (`1648-1653`) : crise majeure
- **Louis XIV** : muselage des parlements

#### Au XVIIIe siècle
- **Multiplication** des conflits
- **Parlements** : opposants à la monarchie absolue
- Refus d''enregistrer les édits fiscaux

#### La réforme Maupeou (`1771`)
- **Suppression** des parlements
- **Création** de nouveaux conseils supérieurs
- **Choc** politique majeur

#### Le rétablissement (`1774`)
- **Louis XVI** rétablit les parlements à son avènement
- Erreur politique majeure (selon certains historiens)

#### La crise pré-révolutionnaire
- **Refus** des parlements d''enregistrer les réformes fiscales (`1787-1788`)
- **Provocation** de la convocation des États généraux

## VI. Les assemblées représentatives

### A. Les États généraux

#### Origine
- **Convoqués** depuis Philippe IV le Bel (`1302`)
- **Représentation** des trois ordres

#### Composition
- **Clergé**
- **Noblesse**
- **Tiers état**

#### Compétences
- **Vote** de l''impôt extraordinaire
- **Doléances**
- **Conseils** au roi

#### Évolution
- **Convoqués** irrégulièrement
- **Dernière convocation** avant 1789 : `1614`
- **Convocation** de mai `1789` : élément déclencheur de la Révolution

### B. Les assemblées provinciales

#### Les États provinciaux
- **Bretagne**, **Bourgogne**, **Languedoc**, **Provence**, **Artois**, **Cambrésis**, **Bigorre**, **Béarn**, **Navarre**
- **Particularismes** régionaux maintenus

#### Compétences
- **Vote** des impôts
- **Administration** locale partielle

#### Les pays d''élection vs pays d''états
- **Pays d''élection** : impôts directement levés par les agents royaux
- **Pays d''états** : impôts négociés avec les états provinciaux

### C. Les assemblées de notables

#### Convocations
- **Réunions** ad hoc
- **Notables** désignés par le roi

#### Cas
- **Assemblée des notables de 1626** sous Louis XIII
- **Assemblées de notables** de `1787` et `1788` sous Louis XVI

## VII. Les finances publiques

### A. Le contrôleur général des finances
- **Création** : `1665` (Colbert)
- **Ministre** central des finances

### B. Les revenus de la couronne

#### Le domaine royal
- **Revenus** des terres de la couronne
- **Déclin** relatif

#### Les impôts

##### La taille
- **Impôt direct** principal
- **Personnelle** au Nord, **réelle** au Sud
- **Pèse** essentiellement sur le tiers état

##### Les aides
- **Impôts indirects** (boissons, denrées…)

##### La gabelle
- **Impôt** sur le sel

##### La capitation (`1695`)
- **Impôt** par tête (toutes catégories)

##### Le dixième puis le vingtième (XVIIIe)
- **Impôts** sur les revenus

### C. Les privilèges fiscaux
- **Exemptions** de la noblesse et du clergé
- **Cause majeure** de la crise financière
- **Critique** des Lumières

## VIII. L''Église et l''État

### A. Le gallicanisme

#### Doctrine
- **Indépendance** relative de l''Église de France vis-à-vis de Rome
- **Concordat** de Bologne (`1516`) : François Ier

#### Conséquences
- **Le roi** nomme les évêques
- **Limites** à l''autorité pontificale

### B. La place du clergé

#### Le clergé
- **Premier ordre** du royaume
- **Privilèges** considérables

#### Le « don gratuit »
- **Contribution** négociée du clergé
- **Pas d''impôt** ordinaire

### C. La révocation de l''édit de Nantes (`1685`)
- **Édit de Fontainebleau**
- **Fin** de la tolérance pour les protestants
- **Émigration** massive (~200 000 huguenots)
- **Conséquences** économiques et démographiques

## À retenir

**Monarchie absolue** : doctrine de **Jean Bodin** (`1576`), théorisée par **Bossuet** (XVIIe), apogée sous **Louis XIV** (`1643-1715`).

**Lois fondamentales** du royaume (constitution coutumière) :
- **Loi salique** : exclusion des femmes
- **Primogéniture** masculine
- **Continuité** (« le roi ne meurt jamais »)
- **Indisponibilité**
- **Inaliénabilité** du domaine (édit de Moulins, `1566`)
- **Catholicité** du roi

**Conseil du roi** : multiples conseils spécialisés (État, parties, finances…).

**Administration locale** :
- **Officiers** (vénaux, héréditaires) vs **commissaires** (révocables)
- **Intendants** : outil majeur de centralisation sous Richelieu et Louis XIV
- **Généralités** : cadre territorial

**Justice** :
- **Justice retenue** (roi) vs **justice déléguée**
- **Vénalité des offices** (paulette, `1604`)
- **13 parlements** au XVIIIe siècle
- **Parlements** : juridictions souveraines + droit de **remontrances** + **enregistrement** des édits
- **Conflits** récurrents roi/parlements au XVIIIe siècle
- **Réforme Maupeou** (`1771`), retour des parlements en `1774`

**États généraux** : représentation des 3 ordres, dernière convocation avant 1789 datée de `1614`.

**Finances** : taille, gabelle, aides, capitation… Privilèges fiscaux de la noblesse et du clergé = cause majeure de la crise.

**Église** : gallicanisme, concordat de Bologne (`1516`), révocation de l''édit de Nantes (`1685`).'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 2 - LA RÉVOLUTION FRANÇAISE (1789-1799)
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Révolution française et ses institutions', 'Chapitre 2 - La Révolution (1789-1799)',
       'États généraux, Assemblée constituante, Législative, Convention, Directoire : les institutions révolutionnaires.',
       array['États généraux', 'Serment du Jeu de Paume', 'Constituante', 'DDHC', 'Constitution 1791', 'Législative', 'Convention', 'Comité de salut public', 'Robespierre', 'Terreur', 'Thermidor', 'Directoire', 'Constitution 1795', 'Brumaire'],
       30, 2,
'# La Révolution française et ses institutions

## Introduction

La **Révolution française** (`1789-1799`) constitue l''un des bouleversements politiques et institutionnels les plus radicaux de l''histoire moderne. En une décennie, la France passe d''une monarchie absolue à une République en proie aux tourmentes. **Quatre régimes successifs** se succèdent : la **Monarchie constitutionnelle** (`1789-1792`), la **Convention** (`1792-1795`), le **Directoire** (`1795-1799`) et le **Consulat** (`1799`, qui ouvre l''ère napoléonienne). Cette période voit l''invention de nombreux dispositifs institutionnels qui marqueront durablement le droit public français : DDHC, séparation des pouvoirs, principe représentatif, justice élective, codification…

## I. La crise de l''Ancien Régime (`1787-1789`)

### A. Les causes profondes

#### Crise financière
- **Dette** colossale après la **guerre d''Indépendance américaine** (`1775-1783`)
- **Privilèges fiscaux** rendant impossible l''augmentation des impôts
- **Refus** des parlements d''enregistrer les édits fiscaux

#### Crise économique
- **Mauvaises récoltes** (`1788`)
- **Hausse** du prix du pain
- **Misère** populaire

#### Crise politique
- **Faiblesse** de Louis XVI
- **Échec** des réformes (Turgot, Necker, Calonne, Brienne)

#### Crise idéologique
- **Diffusion** des idées des Lumières
- **Critique** des privilèges et de l''absolutisme

### B. L''appel aux notables et aux États généraux

#### L''Assemblée des notables (`1787-1788`)
- **Convoquée** par **Calonne**
- **Échec** : les notables refusent les réformes

#### La convocation des États généraux (`8 août 1788`)
- **Décision** royale
- **Convocation** pour le `1^er^ mai 1789`

#### La préparation
- **Cahiers de doléances** rédigés par chaque ordre dans chaque bailliage
- **Élection** des députés
- **Doublement** du Tiers État (`27 décembre 1788`) : décision de Necker

#### Le pamphlet de Sieyès (janvier `1789`)
*Qu''est-ce que le Tiers État ?*

> *« 1° Qu''est-ce que le Tiers État ? Tout. 2° Qu''a-t-il été jusqu''à présent dans l''ordre politique ? Rien. 3° Que demande-t-il ? À y devenir quelque chose. »*

### C. L''ouverture des États généraux (`5 mai 1789`)

#### À Versailles
- **Cérémonie** solennelle
- **`1 200 députés` environ** (clergé, noblesse, tiers état doublé)

#### La question du vote
- **Par ordre** (favorable aux privilégiés)
- **Par tête** (réclamée par le Tiers État)

#### Le blocage
- **Refus** royal de trancher
- **Tensions** croissantes

## II. La transformation des États généraux en Assemblée nationale

### A. La proclamation de l''Assemblée nationale (`17 juin 1789`)

#### Texte
Sur motion de Sieyès, le Tiers État se proclame **« Assemblée nationale »** représentant *« la presque totalité de la Nation »*.

#### Conséquence
**Rupture** avec la fiction des trois ordres.

### B. Le Serment du Jeu de Paume (`20 juin 1789`)

#### Le contexte
- **Salle des États** fermée (officiellement pour travaux)
- **Députés** se réunissent dans la salle du Jeu de Paume

#### Le serment
> *« Nous jurons de ne jamais nous séparer […] jusqu''à ce que la Constitution du Royaume soit établie et affermie sur des fondements solides. »*

#### Signataires
**Tous sauf un**, Joseph Martin de Saint-Maur.

#### Portée
- **Acte fondateur** d''un **pouvoir constituant**
- **Affirmation** de la souveraineté nationale

### C. L''Assemblée nationale constituante

#### Naissance officielle (`9 juillet 1789`)
- **Mutation** en *« Assemblée nationale constituante »*
- **Mission** : rédiger une Constitution

#### Composition
- **`1 145 députés`** environ
- **Trois ordres** réunis (les premiers et deuxièmes ordres ont rejoint)

#### Compétences
- **Pouvoir constituant**
- **Pouvoir législatif** ordinaire
- **Souveraineté** affirmée

## III. La prise de la Bastille et la Grande Peur

### A. Le `14 juillet 1789`

#### Le contexte
- **Necker renvoyé** le `11 juillet`
- **Concentration** de troupes autour de Paris
- **Crainte** d''une réaction royale

#### L''insurrection parisienne
- **Bourgeoisie** s''arme
- **Création** de la **milice bourgeoise** (future Garde nationale, La Fayette)

#### La prise de la Bastille
- **Recherche** d''armes et de munitions
- **Symbole** : forteresse prison
- **Gouverneur Launay** tué
- **Symbole** de la chute de l''arbitraire

### B. La Grande Peur (été 1789)

#### Phénomène
- **Rumeurs** de complot aristocratique
- **Soulèvements** ruraux
- **Châteaux** pillés, archives détruites

#### Conséquence
- **Pression** sur l''Assemblée pour les réformes

## IV. La nuit du 4 août et la DDHC

### A. La nuit du 4 août 1789

#### L''événement
- **Séance nocturne** mouvementée
- **Abolition** :
  - Des **privilèges féodaux**
  - De la **dîme** ecclésiastique
  - De la **vénalité** des offices
  - Des **privilèges** des provinces et des villes
  - Des **distinctions** d''ordre

#### Date officielle
**`11 août 1789`** : décrets formalisant l''abolition.

#### Portée
**Fin juridique** de la société d''ordres. Naissance d''une société d''**individus égaux en droits**.

### B. La Déclaration des droits de l''homme et du citoyen (`26 août 1789`)

#### Élaboration
- **Débats** intenses
- **17 articles**
- **Inspirations** : DDHC américaines, Lumières, droit naturel

#### Articles fondamentaux
- **Article 1** : *« Les hommes naissent et demeurent libres et égaux en droits. »*
- **Article 2** : droits naturels (liberté, propriété, sûreté, résistance à l''oppression)
- **Article 3** : souveraineté nationale
- **Article 4** : liberté
- **Article 6** : loi expression de la volonté générale, égalité
- **Article 8** : légalité des délits et peines
- **Article 9** : présomption d''innocence
- **Article 16** : séparation des pouvoirs et garantie des droits = Constitution
- **Article 17** : propriété

#### Une révolution juridique
- **Universalisme**
- **Droits naturels** posés
- **Loi** expression de la volonté générale

### C. Sanction royale forcée
- **Marche** des femmes sur Versailles (`5-6 octobre 1789`)
- **Roi** ramené aux Tuileries
- **Sanction** des décrets et de la DDHC

## V. La Constitution du 3 septembre 1791

### A. L''élaboration
- **Travaux** de la Constituante
- **Adoption** le `3 septembre 1791`
- **Acceptée** par le roi le `13 septembre`

### B. Les caractères

#### Une monarchie constitutionnelle
- **Roi** : pouvoir exécutif
- **Assemblée législative unique**
- **Séparation stricte** des pouvoirs

#### Le titre du roi
- *« Louis, par la grâce de Dieu et par la loi constitutionnelle de l''État, roi des Français »*
- **Plus** *« roi de France »* mais *« roi des Français »*

#### Souveraineté nationale
- **Nation** souveraine
- **Assemblée** la représente

### C. L''organisation des pouvoirs

#### Le pouvoir législatif
- **Assemblée nationale législative** : `745 députés`
- **Élection** au suffrage indirect et censitaire

#### Le pouvoir exécutif
- **Roi** des Français
- **Veto suspensif** sur les lois
- **Nomme** les ministres
- **Inviolabilité** sacrée

#### Le pouvoir judiciaire
- **Juges élus**
- **Tribunal de cassation**
- **Jury** populaire

### D. Le suffrage

#### Citoyens actifs et passifs
- **Actifs** : payent un cens (`3 jours` de travail) — droit de vote
- **Passifs** : pas de cens — exclus du vote
- **Discrimination** sociale

#### Suffrage indirect à plusieurs degrés
- Citoyens actifs → grands électeurs → députés

## VI. L''échec de la monarchie constitutionnelle

### A. La fuite de Varennes (`20-21 juin 1791`)

#### L''événement
- **Louis XVI** tente de fuir vers la frontière
- **Arrêté** à Varennes
- **Ramené** à Paris

#### Conséquences
- **Confiance** brisée
- **Apparition** du républicanisme

### B. L''Assemblée législative (`1^er^ octobre 1791 - 20 septembre 1792`)

#### Composition
- **Les Constituants** se sont auto-exclus
- **Nouveaux députés**

#### Groupes politiques
- **Feuillants** : monarchistes constitutionnels
- **Jacobins** : républicains
- **Girondins** : modérés (devenus à gauche)
- **Centre** : indécis

### C. La guerre et la chute de la monarchie

#### Déclaration de guerre à l''Autriche (`20 avril 1792`)
- **Initiative** des Girondins

#### Les défaites
- **Manifeste de Brunswick** (`25 juillet 1792`) : menace de destruction de Paris si attentat au roi
- **Patrie en danger** déclarée

#### La prise des Tuileries (`10 août 1792`)
- **Insurrection** parisienne
- **Roi suspendu** de ses fonctions
- **Famille royale emprisonnée**
- **Fin** de fait de la monarchie constitutionnelle

#### La Commune insurrectionnelle de Paris
- **Pression** sur l''Assemblée
- **Massacres** de septembre (`2-7 septembre 1792`)

## VII. La Convention nationale (`20 septembre 1792 - 26 octobre 1795`)

### A. Naissance

#### Élections (`août-septembre 1792`)
- **Suffrage universel masculin** (théoriquement)
- **Forte abstention**

#### Première séance (`20 septembre 1792`)
- **Abolition de la royauté** (`21 septembre`)
- **Proclamation de la République** (`22 septembre`)
- **An I de la République**

#### Composition (749 députés)

##### La Montagne
- **Robespierre, Danton, Marat, Saint-Just**
- **Sièges** en haut, à gauche
- **Radicaux**

##### La Gironde
- **Brissot, Vergniaud, Roland**
- **Modérés** (par rapport à la Montagne)

##### La Plaine ou le Marais
- **Centre**
- **Majorité**, bascule selon les circonstances

### B. Le procès et l''exécution de Louis XVI

#### Procès (`décembre 1792 - janvier 1793`)
- **Convention** se transforme en tribunal
- **Robespierre** : *« Louis doit mourir parce qu''il faut que la patrie vive »*

#### Verdict
- **Coupable** à l''unanimité (presque)
- **Mort** par `387 voix contre 334` (faible majorité)
- **Exécution** le `21 janvier 1793` à Paris

### C. La Constitution montagnarde (`24 juin 1793`)

#### Caractères
- **Préambule** : nouvelle DDHC
- **Suffrage universel** masculin
- **Droit à l''insurrection** (`art. 35`)
- **Droits sociaux** : travail, instruction, secours publics
- **Référendum** obligatoire

#### Non appliquée
**Mise en suspens** par la Convention. La crise impose un gouvernement révolutionnaire.

### D. Le gouvernement révolutionnaire et la Terreur

#### Comité de salut public
- **Créé** le `6 avril 1793`
- **Robespierre** y entre en juillet `1793`
- **Pouvoir** exécutif réel

#### Comité de sûreté générale
- **Police** politique

#### La Terreur (`septembre 1793 - juillet 1794`)
- **Loi des suspects** (`17 septembre 1793`)
- **Loi de Prairial** (`10 juin 1794`) : procédure simplifiée
- **`~40 000 exécutions`** dans toute la France
- **Tribunal révolutionnaire**

#### Robespierre l''Incorruptible
- **Idéologue** de la Terreur
- **Vertu et terreur** : *« la vertu sans laquelle la terreur est funeste, la terreur sans laquelle la vertu est impuissante »*

### E. Le 9 thermidor an II (`27 juillet 1794`)

#### Le coup
- **Arrestation** de Robespierre et de ses partisans
- **Exécution** le lendemain (`28 juillet 1794`)
- **Fin** de la Terreur

#### La Convention thermidorienne
- **Démantelage** progressif du gouvernement révolutionnaire
- **Élaboration** d''une nouvelle Constitution

## VIII. Le Directoire (`27 octobre 1795 - 9 novembre 1799`)

### A. La Constitution du 5 fructidor an III (`22 août 1795`)

#### Caractères
- **Suffrage censitaire** rétabli
- **Bicamérisme** (peur du pouvoir d''une assemblée unique)
- **Pouvoir exécutif** confié à **5 Directeurs**

### B. L''organisation des pouvoirs

#### Le pouvoir législatif
- **Conseil des Cinq-Cents** : initiative et discussion
- **Conseil des Anciens** : approbation
- **Suffrage censitaire indirect**

#### Le pouvoir exécutif
- **5 Directeurs**
- **Mandat** de 5 ans
- **Renouvellement** par cinquième tous les ans
- **Élus** par les conseils

#### Le pouvoir judiciaire
- **Juges élus**

### C. L''instabilité chronique

#### Les coups d''État
- **18 fructidor an V** (`4 septembre 1797`) : élimination des royalistes
- **22 floréal an VI** (`11 mai 1798`) : élimination des Jacobins
- **30 prairial an VII** (`18 juin 1799`) : *« coup d''État légal »* du Conseil des Cinq-Cents

#### Les difficultés
- **Inflation** et difficultés économiques
- **Guerre** continuée
- **Royalistes** et Jacobins menaçants
- **Faiblesse** institutionnelle

### D. Le 18 brumaire (`9 novembre 1799`)

#### Le coup d''État
- **Bonaparte** revenu d''Égypte
- **Complicité** de Sieyès, Ducos, Talleyrand
- **Coup d''État** à Saint-Cloud
- **Fin** du Directoire

#### La Constitution de l''an VIII (`13 décembre 1799`)
- **Consulat**
- **3 consuls** : Bonaparte (Premier), Cambacérès, Lebrun
- **Bonaparte** détient l''essentiel du pouvoir
- **Approbation par plébiscite** (`3 011 007 oui` contre `1 562 non`, chiffres officiels)

## IX. La réorganisation administrative

### A. Les départements

#### Création
- **`14 décembre 1789`** : projet
- **`26 février 1790`** : décret
- **`83 départements`** initialement

#### Méthode
- **Découpage rationnel** (cercles autour des chefs-lieux)
- **Noms** : entités géographiques (rivières, montagnes…)

#### Subdivisions
- **Districts** (puis **arrondissements**)
- **Cantons**
- **Communes** (anciennes paroisses)

### B. L''administration locale

#### Élection
**Tous les administrateurs** sont **élus**.

#### Hiérarchie
- **Conseil général** du département
- **Directoire** du département
- **Procureur-syndic**

### C. La justice

#### La loi des 16-24 août 1790
- **Suppression** des parlements
- **Séparation** des autorités administratives et judiciaires
- **Justice** réorganisée

#### Les juridictions
- **Tribunaux de district**
- **Tribunal de cassation** (`27 novembre - 1^er^ décembre 1790`)
- **Juges élus**

#### La justice criminelle
- **Loi du 16 septembre 1791** : Code pénal révolutionnaire

### D. Les finances

#### Suppression des impôts féodaux

#### Création des assignats (`1789`)
- **Papier-monnaie**
- **Gagés** sur les biens nationaux
- **Inflation** catastrophique

#### Les biens nationaux
- **Biens du clergé** (`2 novembre 1789`)
- **Biens de la noblesse émigrée** (plus tard)
- **Vente** progressive

#### La Constitution civile du clergé (`12 juillet 1790`)
- **Réorganisation** de l''Église
- **Évêques** et curés élus
- **Serment** obligatoire
- **Schisme** entre prêtres jureurs et réfractaires

## X. L''héritage institutionnel de la Révolution

### A. Les acquis durables

#### En droit
- **Codification** annoncée
- **Égalité civile**
- **Liberté contractuelle**
- **Propriété** comme droit fondamental

#### En administration
- **Départements** (encore aujourd''hui)
- **Centralisation** administrative

#### En politique
- **Suffrage** (universel ou censitaire) comme fondement
- **Constitution écrite**
- **Souveraineté nationale**

### B. Les échecs

#### La stabilité
- **Quatre régimes** en dix ans
- **Violences** politiques (Terreur)
- **Coups d''État**

#### Les conséquences
- **Préparation** de la dictature napoléonienne
- **Désir** de stabilité

## À retenir

**Chronologie** :
- `5 mai 1789` : ouverture des États généraux
- `17 juin 1789` : proclamation de l''Assemblée nationale
- `20 juin 1789` : Serment du Jeu de Paume
- `14 juillet 1789` : prise de la Bastille
- **`4 août 1789`** : abolition des privilèges
- **`26 août 1789`** : Déclaration des droits de l''homme et du citoyen
- `3 septembre 1791` : Constitution
- `10 août 1792` : prise des Tuileries
- `22 septembre 1792` : proclamation de la République
- `21 janvier 1793` : exécution de Louis XVI
- `24 juin 1793` : Constitution montagnarde (non appliquée)
- `27 juillet 1794` (9 thermidor) : chute de Robespierre
- `22 août 1795` : Constitution de l''an III (Directoire)
- `9 novembre 1799` (18 brumaire) : coup d''État de Bonaparte

**Régimes successifs** :
1. **Monarchie constitutionnelle** (`1789-1792`)
2. **Convention** (`1792-1795`) : République I
3. **Directoire** (`1795-1799`)
4. **Consulat** (à partir du `9 novembre 1799`)

**Innovations institutionnelles** :
- **Constitution écrite** (`1791`)
- **DDHC** (`26 août 1789`) au bloc de constitutionnalité depuis `1971`
- **Justice élective**
- **Code pénal** (`1791`)
- **Départements** (`1790`)
- **Tribunal de cassation** (`1790`)
- **Séparation** des autorités administratives et judiciaires (`16-24 août 1790`)

**Personnalités** : Sieyès, Mirabeau, La Fayette, Robespierre, Danton, Saint-Just, Marat, Talleyrand, Cambacérès, Bonaparte.'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 3 - LE CONSULAT ET L''EMPIRE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le Consulat et l''Empire (1799-1814/1815)', 'Chapitre 3 - L''ère napoléonienne',
       'Bonaparte au pouvoir, codifications, réorganisation administrative, préfets, Conseil d''État, Empire.',
       array['Bonaparte', 'Napoléon', 'Consulat', 'Constitution an VIII', 'Préfets', 'Conseil d''État', 'Code civil', 'Concordat', 'Empire', 'Sénatus-consulte', 'Plébiscite', 'Légion d''honneur'],
       28, 3,
'# Le Consulat et l''Empire (1799-1814/1815)

## Introduction

Le **régime napoléonien** s''étend de `1799` à `1814` (puis brièvement aux **Cent-Jours** en `1815`). En quinze ans, **Napoléon Bonaparte** transforme la France en profondeur. Sur les ruines de l''instabilité révolutionnaire, il construit un **État moderne** organisé, centralisé, codifié. Cette période voit la création d''institutions qui structurent encore la France contemporaine : préfets, Conseil d''État, codes napoléoniens, université impériale, Légion d''honneur, Banque de France. Au-delà des batailles et de l''épopée militaire, l''héritage administratif et juridique de Napoléon est **durable** et façonne les institutions républicaines françaises bien au-delà de sa chute.

## I. Le Consulat (`1799-1804`)

### A. Le 18 brumaire (`9-10 novembre 1799`)

#### Le coup d''État

##### Le contexte
- **Faillite** du Directoire (instabilité, coups d''État)
- **Crise** politique permanente
- **Bonaparte** revenu d''Égypte le `9 octobre 1799`

##### Les conjurés
- **Sieyès** (théoricien)
- **Bonaparte** (chef militaire)
- **Talleyrand** (diplomate)
- **Lucien Bonaparte** (président des Cinq-Cents)
- **Fouché** (police)

##### Le déroulement
- **18 brumaire** : Conseils transférés à Saint-Cloud
- **19 brumaire** : confrontation au Conseil des Cinq-Cents, Bonaparte menacé
- **Évacuation** musclée par les grenadiers
- **Vote** de l''abolition du Directoire et de la création d''un Consulat provisoire

### B. La Constitution de l''an VIII (`13 décembre 1799`)

#### Élaboration
- **Sieyès** prévu comme principal rédacteur
- **Bonaparte** s''impose et modifie le projet
- **Brève** : 95 articles
- **Pas** de Déclaration des droits

#### Une formule de Sieyès
> *« L''autorité doit venir d''en haut, la confiance doit venir d''en bas. »*

#### Les organes

##### Trois consuls
- **Premier consul** : Bonaparte (vraie autorité)
- **Cambacérès** (deuxième consul)
- **Lebrun** (troisième consul)
- **Mandat** : 10 ans

##### Pouvoir législatif éclaté
- **Conseil d''État** : rédige les projets de loi
- **Tribunat** : discute et donne un avis (sans voter)
- **Corps législatif** : vote sans débattre (*« les muets »*)
- **Sénat conservateur** : choisit les législateurs et veille à la constitutionnalité

##### Suffrage universel mais indirect
- **Citoyens** désignent des notables communaux
- **Ceux-ci** désignent des notables départementaux
- **Ceux-ci** des notables nationaux
- **Le Sénat** choisit les législateurs sur cette liste

#### Approbation par plébiscite (février `1800`)
- **`3 011 007` oui** contre **`1 562` non**
- **Chiffres officiels** (largement gonflés selon les historiens : vrais chiffres `~1,5 million`)

### C. La centralisation administrative

#### La loi du 28 pluviôse an VIII (`17 février 1800`)
**Loi fondatrice** de l''administration territoriale française.

#### Les préfets

##### Création
- **Représentants** du pouvoir central dans les départements
- **Nommés** par le Premier consul (puis l''Empereur)
- **Révocables**

##### Inspiration
- **Intendants** de l''Ancien Régime modernisés
- **Bonaparte** : *« Je veux des préfets qui ne soient pas des préfets ; il leur faut faire leur métier »*

##### Pouvoirs
- **Représentent** l''État
- **Pouvoir hiérarchique** sur l''administration départementale
- **Police**
- **Mobilisation** des ressources
- **Surveillance** des élus

##### Hiérarchie administrative
- **Préfet** au département
- **Sous-préfets** dans les arrondissements
- **Maires** nommés (depuis cette loi) dans les communes

#### Les conseils

##### Le conseil général de département
- **Composé** de notables nommés
- **Compétences** consultatives essentiellement

##### Le conseil d''arrondissement
- **Subdivision**

##### Le conseil municipal
- **Composé** de notables
- **Préside** par le maire nommé

#### La persistance jusqu''à aujourd''hui
- **Les préfets** existent toujours (depuis `2003` avec un statut constitutionnel : *« délégué du Gouvernement »*)
- **Les départements** subsistent
- **Cette loi** structure encore l''administration territoriale française

### D. Le Conseil d''État

#### Création
- **`Article 52`** de la Constitution de l''an VIII
- **Établi** le `25 décembre 1799`

#### Composition initiale
- **Membres** nommés par le Premier consul
- **Sections** : législation, intérieur, finances, marine, guerre

#### Compétences

##### Consultative
- **Rédige** les projets de loi
- **Donne** son avis au Gouvernement
- **Travaille** sur les codifications

##### Juridictionnelle (progressivement)
- **Recours** contre les actes de l''administration
- **Justice retenue** : le Premier consul (puis l''Empereur) signe les décisions
- **Mise** en place du droit administratif

#### Postérité
- **Institution centrale** du droit public français
- **Maintenue** sous tous les régimes
- **Justice déléguée** depuis la **loi du 24 mai 1872**

### E. La justice

#### Le tribunal de cassation (renommé Cour de cassation)
- **Maintenu**

#### Les tribunaux civils et criminels
- **Réorganisés**

#### Les juges
- **Nommés** par le Gouvernement (rupture avec l''élection révolutionnaire)
- **Inamovibles** progressivement

### F. La pacification religieuse

#### Le Concordat de 1801

##### Négociation
- **`15 juillet 1801`** : signature
- **Pie VII** et Bonaparte

##### Contenu
- **Catholicisme** : *« religion de la grande majorité des Français »*
- **Évêques** nommés par le Premier consul, investis par le Pape
- **Salaires** des prêtres payés par l''État
- **Biens** du clergé non restitués

##### Les Articles organiques (`8 avril 1802`)
- **Unilatérale** : ajout par Bonaparte
- **Encadrement** strict de l''Église
- **Renforcement** du gallicanisme

#### La paix civile retrouvée
- **Fin** du schisme constitutionnel/réfractaire
- **Catholicisme** restauré comme religion sociale

### G. Le Code civil (`21 mars 1804`)

#### Préparation
- **Commission** de 4 juristes : Tronchet, Bigot de Préameneu, Portalis, Maleville
- **Travaux** entre `1801` et `1804`

#### Adoption
- **`36 lois`** séparées entre `1803` et `1804`
- **Loi du 21 mars 1804** : réunion en un Code

#### Importance
- **Synthèse** entre tradition (coutumes, droit romain) et révolution (égalité civile)
- **Influence mondiale**
- **Toujours** en vigueur

(Voir détails dans le cours d''Introduction historique au droit.)

## II. L''évolution vers l''Empire

### A. Le Consulat à vie (`1802`)

#### Sénatus-consulte du 16 thermidor an X (`4 août 1802`)
- **Consulat** : initialement 10 ans → **à vie** pour Bonaparte
- **Droit** de désigner son successeur
- **Plébiscite** : `3,5 millions` de oui contre `8 000` non

#### Réforme du Sénat conservateur
- **Désignation** de membres directement par Bonaparte

### B. La Constitution de l''an XII (`18 mai 1804`)

#### Sénatus-consulte du 28 floréal an XII
- **Bonaparte** devient **Empereur des Français**

#### Le titre
- *« Empereur des Français »* (pas *« de France »*)

#### Plébiscite
- **`3 572 329` oui** contre **`2 569` non**
- **Approbation massive**

#### Le sacre (`2 décembre 1804`)
- **Notre-Dame de Paris**
- **Pie VII** présent
- **Napoléon** se couronne lui-même puis couronne Joséphine

### C. La nature du régime impérial

#### Continuité avec le Consulat
- **Mêmes institutions** essentiellement
- **Renforcement** du pouvoir personnel

#### Caractères
- **Monarchie** héréditaire
- **Apparence** républicaine maintenue (titre *« Empereur des Français »*)
- **Personnalisation** extrême

#### Le pouvoir personnel
- **Légion d''honneur** (`1802`)
- **Cour** impériale
- **Mariage** avec Marie-Louise d''Autriche (`1810`) après le divorce d''avec Joséphine

## III. Les institutions de l''Empire

### A. L''organisation politique

#### L''Empereur
- **Concentre** tous les pouvoirs
- **Législatif**, **exécutif**, **judiciaire**
- **Pouvoir** absolu, mais légitimé par le plébiscite

#### Le Sénat conservateur
- **Sénatus-consultes** : véritables lois constitutionnelles
- **Veille** à la constitutionnalité
- **Devient** un instrument du pouvoir

#### Le Conseil d''État
- **Renforcé**
- **Rôle central** dans la rédaction des actes

#### Le Tribunat
- **Affaibli** progressivement
- **Supprimé** en `1807`

#### Le Corps législatif
- **Maintenu**, mais sans pouvoir réel

### B. L''administration

#### Les préfets
- **Centralisation** renforcée
- **Outil** du pouvoir impérial

#### Le développement administratif
- **Bureaucratisation**
- **Carrières** ouvertes au talent

#### Les Codes napoléoniens
- **Code civil** (`1804`)
- **Code de procédure civile** (`1806`)
- **Code de commerce** (`1807`)
- **Code d''instruction criminelle** (`1808`)
- **Code pénal** (`1810`)

### C. L''Université impériale (`1808`)

#### Création
- **Décret du 17 mars 1808**

#### Caractères
- **Monopole** de l''enseignement
- **Grand Maître** (à la tête)
- **Centralisation** éducative
- **Persiste** sous des formes différentes (Éducation nationale)

### D. La Légion d''honneur (`19 mai 1802`)

#### Création
- **Ordre** national
- **Récompense** civile et militaire
- **Subsiste** aujourd''hui

#### Philosophie
- **Aristocratie** du talent et du mérite
- **Remplace** les ordres de l''Ancien Régime

### E. La Banque de France (`1800`)

#### Création
- **`18 janvier 1800`**

#### Rôle
- **Émission** des billets
- **Stabilité** monétaire
- **Toujours** en activité (Banque centrale française)

### F. L''Église concordataire
- **Catholicisme** comme religion sociale
- **Encadrement** par l''État
- **Persiste** jusqu''à la loi de séparation de `1905`

## IV. Le système politique impérial

### A. La centralisation et le pouvoir personnel

#### Verticalité
- **Tout part** de l''Empereur
- **Bureaucratie** disciplinée
- **Sénatus-consultes** instrumentés

#### Réseaux familiaux
- **Frères et sœurs** placés sur des trônes (Joseph en Espagne, Louis en Hollande, Jérôme en Westphalie…)
- **Mariages** dynastiques

### B. L''Empire et l''Europe

#### Les conquêtes
- **Annexions** : Belgique, Pays-Bas, départements rhénans, Piémont, Toscane, États pontificaux…
- **`130 départements`** à l''apogée (`1812`)

#### Le Grand Empire
- **France** + États satellites + alliances
- **Diffusion** des institutions napoléoniennes (Code civil, préfets, lycées…)

### C. Les opposants
- **Royalistes** : conspirations
- **Républicains** : silencieux mais présents
- **Catholiques** : conflits avec le Pape (excommunication en `1809`)

## V. La chute de l''Empire

### A. Les défaites militaires

#### Russie (`1812`)
- **Campagne** désastreuse
- **Grande Armée** détruite

#### Allemagne (`1813`)
- **Coalition** générale
- **Défaite** de Leipzig (`octobre 1813`)

#### France (`1814`)
- **Invasion** du territoire
- **Paris** pris (`30-31 mars 1814`)

### B. La première abdication (`1814`)

#### Abdication de Fontainebleau (`6 avril 1814`)
- **Conditionnelle** d''abord (au profit de son fils)
- **Sans condition** ensuite (`11 avril`)

#### Traité de Fontainebleau
- **Napoléon** envoyé à l''**île d''Elbe**
- **Souveraineté** sur l''île
- **Pension**

### C. Les Cent-Jours (`mars-juin 1815`)

#### Retour de Napoléon
- **`1^er^ mars 1815`** : débarquement à Golfe-Juan
- **`20 mars`** : entrée triomphale à Paris

#### L''Acte additionnel (`22 avril 1815`)
- **Constitution** plus libérale
- **Approuvée** par plébiscite
- **Tentative** de réconciliation avec les libéraux

#### Waterloo (`18 juin 1815`)
- **Défaite** définitive
- **Abdication** définitive (`22 juin 1815`)

#### Exil à Sainte-Hélène
- **`Octobre 1815`** : départ
- **Mort** à Sainte-Hélène le `5 mai 1821`

## VI. L''héritage napoléonien

### A. Les institutions durables

#### Préfets et départements
- **Structure** territoriale française

#### Conseil d''État
- **Institution majeure** du droit public

#### Codes napoléoniens
- **Code civil** : encore en vigueur
- **Influence mondiale**

#### Légion d''honneur
- **Subsiste**

#### Université
- **Modèle** centralisé persistant

#### Banque de France
- **Continuité**

#### Le système des préfets et des sous-préfets

### B. Les principes administratifs

#### Centralisation
- **Modèle** français

#### Bureaucratie efficace
- **Méritocratique**

#### État de droit
- **Codification**

### C. L''influence à l''étranger

#### Sur les Codes
- **Belgique**, **Pays-Bas**, **Italie**, **Espagne**, **Allemagne**…

#### Sur les institutions
- **Modèle** centralisé adopté/adapté

### D. Le mythe napoléonien

#### Construction
- **Mémorial de Sainte-Hélène** (Las Cases, `1823`)
- **Romantisme** napoléonien

#### Cycle bonapartiste
- **Napoléon III** : retour du bonapartisme (`1848-1870`)

## À retenir

**Chronologie** :
- **9 novembre 1799** (18 brumaire) : coup d''État de Bonaparte
- **13 décembre 1799** : Constitution de l''an VIII (Consulat)
- **17 février 1800** : loi du 28 pluviôse an VIII (préfets)
- **15 juillet 1801** : Concordat
- **4 août 1802** : Bonaparte consul à vie
- **21 mars 1804** : Code civil
- **18 mai 1804** : Empire (Constitution de l''an XII)
- **2 décembre 1804** : sacre à Notre-Dame
- **6 avril 1814** : première abdication (Fontainebleau)
- **20 mars - 22 juin 1815** : Cent-Jours et abdication définitive
- **5 mai 1821** : mort à Sainte-Hélène

**Création majeures** :
- **Préfets** et **sous-préfets** (`17 février 1800`)
- **Conseil d''État** (`25 décembre 1799`)
- **Banque de France** (`18 janvier 1800`)
- **Concordat** (`15 juillet 1801`)
- **Légion d''honneur** (`19 mai 1802`)
- **Code civil** (`21 mars 1804`)
- **Université impériale** (`17 mars 1808`)
- **Autres Codes** napoléoniens : procédure civile (`1806`), commerce (`1807`), instruction criminelle (`1808`), pénal (`1810`)

**Institutions** :
- **Trois consuls** puis **Empereur**
- **Sénat conservateur** (sénatus-consultes)
- **Conseil d''État**
- **Tribunat** (supprimé `1807`)
- **Corps législatif** (« les muets »)

**Héritage** : structures administratives encore présentes (préfets, Conseil d''État, codes…). Modèle français de **centralisation**.'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 4 - LA RESTAURATION ET LA MONARCHIE DE JUILLET
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Restauration et la Monarchie de Juillet (1814-1848)', 'Chapitre 4 - Monarchies parlementaires',
       'Charte de 1814, Restauration (Louis XVIII, Charles X), Trois Glorieuses, Charte de 1830, monarchie de Juillet (Louis-Philippe).',
       array['Charte 1814', 'Louis XVIII', 'Charles X', 'Ordonnances de Saint-Cloud', 'Trois Glorieuses', 'Charte 1830', 'Louis-Philippe', 'Orléanisme', 'Régime censitaire', 'Parlementarisme'],
       24, 4,
'# La Restauration et la Monarchie de Juillet (1814-1848)

## Introduction

Entre `1814` et `1848`, la France connaît une **expérience originale** : celle de la monarchie constitutionnelle, sous deux dynasties successives (Bourbons, puis Orléans). Ces 34 années, malgré leurs ruptures (Cent-Jours en `1815`, Trois Glorieuses en `1830`, révolution de `1848`), constituent un **moment d''apprentissage du parlementarisme** en France. La **Charte octroyée de 1814** puis la **Charte « pactée » de 1830** offrent un cadre constitutionnel inédit, mêlant **héritage de l''Ancien Régime** et **acquis révolutionnaires**. Cette période est marquée par le développement progressif du **régime parlementaire**, l''émergence des **partis politiques modernes** et l''expansion du **droit public**.

## I. La Première Restauration et la Charte de 1814

### A. Le contexte historique

#### Première Restauration (`6 avril 1814 - 20 mars 1815`)
- **Chute** de Napoléon
- **Retour** des Bourbons
- **Louis XVIII** sur le trône

#### Le Sénat conservateur
- **Avait voté** la déchéance de Napoléon (`2 avril 1814`)
- **Voté** un projet de Constitution républicaine
- **Mais** Louis XVIII préfère octroyer une Charte

### B. La Charte du 4 juin 1814

#### Élaboration
- **Rédigée** par les royalistes et les ministres de Louis XVIII
- **Octroyée** par le roi (non pas votée)

#### Le terme « charte »
- **Référence** médiévale (Magna Carta…)
- **Tradition** monarchique
- **Octroi** par la grâce du roi

#### Structure
- **Préambule** historique
- **`74 articles`**
- **8 titres**

### C. Le contenu de la Charte de 1814

#### Le préambule
- **Continuité** affirmée avec l''Ancien Régime
- **Roi par la grâce de Dieu**
- **Datée** : *« de notre règne le dix-neuvième »* (depuis la mort de Louis XVI)

#### Les libertés et l''égalité (titre I)

##### Égalité
- **Article 1** : *« Les Français sont égaux devant la loi, quels que soient d''ailleurs leurs titres et leurs rangs. »*

##### Libertés
- **Article 4** : liberté individuelle
- **Article 5** : liberté religieuse (mais catholicisme = religion d''État)
- **Article 6** : ministres de tous les cultes payés par l''État
- **Article 8** : liberté de presse (encadrée)

##### Propriété
- **Article 9** : propriété inviolable
- **Article 10** : *« L''État peut exiger le sacrifice d''une propriété pour cause d''utilité publique légalement constatée »*

#### Le pouvoir royal (titre II et III)

##### Le roi
- **Chef suprême** de l''État
- **Personne sacrée et inviolable** (`art. 13`)
- **Détient seul** le pouvoir exécutif
- **Initiative** des lois
- **Sanction** des lois (veto absolu)
- **Promulgation**

##### Les ministres
- **Nommés** et **révoqués** par le roi
- **Responsables** des actes contresignés
- **Pas de responsabilité politique** explicitement prévue

#### Les chambres (titre IV)

##### La Chambre des Pairs
- **Désignés** par le roi
- **Héréditaire** ou à vie
- **Inspiration** anglaise (House of Lords)

##### La Chambre des Députés des départements
- **Élus** au **suffrage censitaire** très restreint
- **Cens** : payer `300 francs` de contribution directe pour voter, `1 000 francs` pour être éligible
- **~ 90 000 électeurs** sur `30 millions` d''habitants
- **Mandat** : 5 ans (renouvellement par cinquième chaque année)

#### Les fonctions des chambres
- **Vote** des lois (partage avec le roi)
- **Vote** des impôts
- **Adresses** au roi
- **Pas** de contrôle direct du Gouvernement

#### La justice (titre VI)

##### Principes
- **Indépendance**
- **Inamovibilité** des juges
- **Justice rendue au nom du roi**

##### Garanties
- **Procès** équitable
- **Présomption** d''innocence

#### Le reste de la Charte
- **Reconnaissance** des biens nationaux acquis
- **Code civil** et autres codes maintenus
- **Légion d''honneur** maintenue
- **Conseil d''État** maintenu

### D. La nature du régime

#### Une « monarchie limitée »
- **Roi** détient l''essentiel du pouvoir
- **Chambres** consultatives et législatives
- **Pas de régime parlementaire** stricto sensu

#### Une « monarchie tempérée »
- **Garanties** des libertés (limitées)
- **Préservation** des acquis révolutionnaires

#### Une Constitution sui generis
- **Octroyée** (rappelant l''Ancien Régime)
- **Mais** garantissant des droits modernes
- **Compromis** entre tradition et modernité

## II. Les Cent-Jours et la Seconde Restauration

### A. Les Cent-Jours (`mars-juin 1815`)
Voir fiche précédente. **Acte additionnel** du `22 avril 1815`.

### B. La Seconde Restauration (`juillet 1815 - juillet 1830`)

#### Retour de Louis XVIII
- **Bruxelles** puis Paris
- **Charte** maintenue

#### Phase 1 : la « Terreur blanche » (`1815-1816`)
- **Répression** anti-bonapartiste
- **Chambre introuvable** (`1815-1816`) : ultraroyalistes
- **Modération** de Louis XVIII

#### Phase 2 : modérée (`1816-1820`)
- **Décazes**, ministre influent
- **Politique** modérée

#### L''assassinat du duc de Berry (`13 février 1820`)
- **Neveu** de Louis XVIII, héritier potentiel
- **Tueur** : Louvel
- **Conséquence** : virage à droite

#### Phase 3 : ultraroyaliste (`1820-1824`)
- **Villèle** Premier ministre (`1821-1828`)
- **Lois** restrictives sur la presse
- **Indemnisation** des émigrés (« milliard des émigrés », `1825`)

### C. Charles X (`1824-1830`)

#### Accession au trône
- **Mort** de Louis XVIII (`16 septembre 1824`)
- **Charles X** lui succède

#### Le sacre de Reims (`29 mai 1825`)
- **Retour** à la tradition
- **Symbole** ultraroyaliste

#### Politique réactionnaire
- **Lois sur le sacrilège**
- **Loi du milliard** aux émigrés
- **Tentative** de censure

### D. La crise de `1830`

#### Le ministère Polignac (`8 août 1829`)
- **Provocation** des libéraux
- **Tensions** politiques croissantes

#### L''adresse des 221 (`16 mars 1830`)
- **Députés** libéraux contestent le ministère
- **Charles X** dissout la chambre

#### Les élections de juin-juillet 1830
- **Victoire** des libéraux
- **Crise** politique

#### Les Ordonnances de Saint-Cloud (`25 juillet 1830`)
- **Suspension** de la liberté de presse
- **Dissolution** de la nouvelle chambre (avant qu''elle siège)
- **Modification** du système électoral
- **Convocation** d''une nouvelle chambre selon les nouveaux critères

#### Justification de Charles X
- **Article 14** de la Charte : *« Le roi est le chef suprême de l''État […] et fait les règlements et ordonnances nécessaires pour l''exécution des lois et la sûreté de l''État. »*

## III. Les Trois Glorieuses (`27-29 juillet 1830`)

### A. L''insurrection parisienne

#### Le 27 juillet
- **Journaux libéraux** protestent
- **Saisie** des journaux
- **Mobilisation** parisienne

#### Le 28 juillet
- **Barricades**
- **Combats**
- **Évacuation** de Paris par les troupes royales

#### Le 29 juillet
- **Prise** des Tuileries
- **Victoire** des insurgés

### B. La fin de Charles X

#### Abdication (`2 août 1830`)
- **En faveur** de son petit-fils, le duc de Bordeaux (« Henri V »)
- **Mais** : régence proposée à Louis-Philippe d''Orléans

#### Le rôle de Louis-Philippe
- **Cousin** des Bourbons (branche cadette)
- **Désigné** comme **lieutenant général** du royaume
- **Devient** roi

### C. La nature de la révolution

#### Une révolution courte
- **3 jours** seulement
- **Pas** de transformation sociale radicale

#### Une révolution libérale
- **Bourgeoisie** contre l''absolutisme renaissant
- **Préservation** des libertés
- **Pas** une révolution démocratique

#### Pourquoi un nouveau roi ?
- **Refus** de la République (peur d''une nouvelle Terreur)
- **Refus** d''une Régence Bourbon (compromise)
- **Solution** orléaniste : monarchie libérale

## IV. La Charte de 1830

### A. Élaboration

#### Une charte « pactée »
- **Modifiée** par les Chambres
- **Acceptée** par Louis-Philippe (et non octroyée)
- **Symbolique** : monarchie limitée

#### Adoption
- **`14 août 1830`**

### B. Les modifications par rapport à 1814

#### Le préambule
- **Supprimé** (référence à la grâce de Dieu)
- **Plus** de continuité avec l''Ancien Régime

#### Le titre du roi
- *« Roi des Français »* (et non *« de France »*)
- **Souveraineté nationale** réaffirmée

#### Article 6 (religion)
- **Catholicisme** : *« religion professée par la majorité des Français »* (et non plus *« religion d''État »*)

#### Article 14 (ordonnances)
- **Précisé** : pas de suspension des lois ni de dispense
- **Empêcher** un nouveau coup d''État royal

#### Le drapeau
- **Tricolore** : retour officiel

#### Le pouvoir législatif
- **Initiative** des lois élargie au Parlement
- **Renforcement** des chambres

#### Le cens
- **Abaissé** : `200 francs` (au lieu de `300`)
- **`241 000 électeurs`** environ

### C. La nature du régime

#### Une monarchie parlementaire ?
- **Évolution** vers le parlementarisme
- **Responsabilité** politique des ministres se développe

#### Une monarchie bourgeoise
- **Régime censitaire**
- **Bourgeoisie** au pouvoir
- *« Enrichissez-vous »* (attribué à Guizot)

## V. La Monarchie de Juillet (`1830-1848`)

### A. Louis-Philippe (`1830-1848`)

#### Profil
- **Duc d''Orléans**, branche cadette des Bourbons
- **Père**, Philippe-Égalité, avait voté la mort de Louis XVI
- **Combat** révolutionnaire à Valmy
- **Profil libéral**

#### Style
- **« Roi-citoyen »**
- **Simplicité** affichée
- **Modernité**

### B. Le régime parlementaire en construction

#### La pratique
- **Ministres** progressivement responsables devant les Chambres
- **Adoption** de pratiques anglaises

#### Les deux interprétations

##### Orléanisme
- **Régime parlementaire dualiste**
- **Confiance** double : roi et Parlement
- **Représenté** par **Guizot**

##### Parlementarisme libéral
- **Régime parlementaire moniste**
- **Confiance** parlementaire seule
- **Représenté** par **Thiers**

### C. Les grandes figures

#### Adolphe Thiers (`1797-1877`)
- **Historien**, ministre, président du Conseil
- **Parlementarisme** libéral

#### François Guizot (`1787-1874`)
- **Historien**, ministre, président du Conseil de `1840` à `1848`
- **Orléanisme**
- **Régime censitaire** maintenu

#### Casimir Perier (`1777-1832`)
- **Banquier**, président du Conseil
- **Stabilisateur**

#### Louis-Philippe lui-même
- **Conserve** des prérogatives royales
- **Pas** un roi de pure façade

### D. Les évolutions

#### Les ministères successifs
- **Très nombreux** (instabilité ministérielle)
- **Apprentissage** du parlementarisme

#### Les crises
- **Tentatives** de coup d''État
- **Attentats** contre Louis-Philippe (Fieschi `1835`, Alibaud `1836`…)
- **Insurrections** populaires (canuts à Lyon `1831` et `1834`, Paris `1832` et `1834`)

#### Les questions sociales
- **Industrialisation** débutante
- **Misère** ouvrière
- **Pas** de réponse politique adaptée

### E. La crise de `1847-1848`

#### La crise économique
- **Mauvaises récoltes**
- **Crise** financière
- **Chômage**

#### La crise politique
- **Refus** de réforme électorale
- **Guizot** intransigeant : *« Suffrage universel ? Jamais. »*

#### La campagne des banquets
- **Mouvement** pour la réforme électorale
- **Banquets** comme moyen de contournement de l''interdiction des réunions politiques
- **Interdiction** du banquet du `22 février 1848`

### F. La révolution de février 1848

#### Le 22 février
- **Manifestations**

#### Le 23 février
- **Fusillade** boulevard des Capucines (`50 morts`)
- **Insurrection** générale

#### Le 24 février
- **Abdication** de Louis-Philippe
- **Proclamation** de la République à l''Hôtel de Ville
- **Fin** de la Monarchie de Juillet

## VI. L''héritage des monarchies censitaires (`1814-1848`)

### A. L''apprentissage du parlementarisme

#### Pratiques
- **Responsabilité** ministérielle progressivement
- **Bicaméralisme** consolidé
- **Pratique** des amendements

#### Théorisation
- **Doctrinaires** : Guizot, Royer-Collard
- **Critique** : Tocqueville (*De la démocratie en Amérique*, `1835-1840`)

### B. Le développement du droit public

#### Le Conseil d''État
- **Renforcement**
- **Justice retenue** mais procédures formalisées

#### L''administration
- **Préfets** maintenus
- **Bureaucratie** professionnalisée

### C. La société

#### La bourgeoisie au pouvoir
- **Régime** des notables
- **Régime censitaire**

#### Les exclus
- **Ouvriers**, **paysans**
- **Femmes** (jamais évoquées)

### D. Les libertés
- **Presse** : libertés et restrictions alternées
- **Association** : encadrée
- **Cultes** : libertés

## À retenir

**Chronologie** :
- **6 avril 1814** : abdication de Napoléon, Première Restauration
- **4 juin 1814** : Charte octroyée de Louis XVIII
- **20 mars - 22 juin 1815** : Cent-Jours
- **8 juillet 1815** : Seconde Restauration
- **16 septembre 1824** : avènement de Charles X
- **25 juillet 1830** : Ordonnances de Saint-Cloud
- **27-29 juillet 1830** : Trois Glorieuses
- **9 août 1830** : Louis-Philippe roi des Français
- **14 août 1830** : Charte modifiée
- **24 février 1848** : abdication de Louis-Philippe, IIe République

**Caractéristiques de la Charte de 1814** :
- **Octroyée** par le roi
- **Article 14** (ordonnances) — source de la crise de 1830
- **Suffrage censitaire** très restreint (`300 francs` de cens)
- **Bicamérisme** : Chambre des Pairs + Chambre des Députés
- **Catholicisme** religion d''État

**Caractéristiques de la Charte de 1830** :
- **Pactée** (acceptée par le roi)
- **Suppression** du préambule
- **« Roi des Français »**
- **Cens abaissé** à `200 francs`
- **Catholicisme** religion de la majorité (et non d''État)
- **Drapeau tricolore**

**Régimes** :
- **Restauration** (`1814-1830`) : Louis XVIII (`1814-1824`), Charles X (`1824-1830`)
- **Monarchie de Juillet** (`1830-1848`) : Louis-Philippe

**Apprentissage du parlementarisme** : pratique progressive de la responsabilité ministérielle, doctrinaires (Guizot, Royer-Collard), opposition entre orléanisme (dualiste) et parlementarisme libéral (moniste).

**Limites** : **régime censitaire** (90 000 puis 240 000 électeurs sur 30 millions de Français), **exclusion** des classes populaires, **misère** ouvrière sans réponse politique.

**Personnalités** : **Louis XVIII**, **Charles X**, **Polignac**, **Louis-Philippe**, **Thiers**, **Guizot**, **Casimir Perier**, **Royer-Collard**, **Tocqueville**.'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 5 - LA IIe RÉPUBLIQUE ET LE SECOND EMPIRE (1848-1870)
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La IIe République et le Second Empire (1848-1870)', 'Chapitre 5 - République et Empire (1848-1870)',
       'Révolution de 1848, suffrage universel masculin, Constitution de 1848, Louis-Napoléon, coup d''État, Empire autoritaire puis libéral.',
       array['Révolution de février 1848', 'Suffrage universel', 'Constitution 1848', 'Louis-Napoléon Bonaparte', 'Coup d''État du 2 décembre 1851', 'Empire autoritaire', 'Empire libéral', 'Constitution 1852', 'Sedan'],
       22, 5,
'# La IIe République et le Second Empire (1848-1870)

## Introduction

Entre `1848` et `1870`, la France traverse une période politique riche en bouleversements : une révolution démocratique (`1848`), l''introduction du **suffrage universel masculin**, une **République** de courte durée (`1848-1852`), puis un **nouveau bonapartisme** sous Napoléon III. Le **Second Empire** lui-même connaît une mutation : d''un Empire autoritaire (`1852-1860`), il évolue vers un **Empire libéral** (`1860-1870`), avant de s''effondrer dans la catastrophe militaire de Sedan. Cette période voit l''invention de la modernité politique française (universalisme du suffrage, État moderne, transformations urbaines hausmaniennes) tout en posant les bases de la **République définitivement instaurée** en `1870`.

## I. La IIe République (`1848-1852`)

### A. La révolution de février 1848

#### La crise de la Monarchie de Juillet
- **Crise** économique (mauvaises récoltes, chômage)
- **Crise** politique (refus de la réforme électorale par Guizot)
- **Campagne** des banquets pour la réforme

#### L''interdiction du banquet du 22 février 1848
- **Provocation** politique

#### Les journées de février
- **22 février** : manifestations
- **23 février** : fusillade boulevard des Capucines (`50 morts`)
- **24 février** : insurrection, abdication de Louis-Philippe, proclamation de la République

### B. Le gouvernement provisoire (`24 février - 4 mai 1848`)

#### Composition
- **Mélange** de républicains modérés (Lamartine, Arago, Marie) et socialistes (Louis Blanc, Albert)
- **Hôtel de Ville** comme siège

#### Les mesures emblématiques

##### Le suffrage universel masculin
- **Décret du 2 mars 1848**
- **Tous les hommes** majeurs (21 ans), `9 millions d''électeurs` (au lieu de `240 000`)
- **Premier vrai suffrage universel** en France

##### L''abolition de l''esclavage
- **Décret du 27 avril 1848** (Victor Schoelcher)
- **Définitive** dans les colonies françaises

##### Le droit au travail
- **Proclamé** mais réalisé dans des « ateliers nationaux » coûteux

##### L''abolition de la peine de mort en matière politique
- **Décret du 26 février 1848**

##### La liberté d''expression
- **Liberté** de réunion, de presse, de pétition

#### Les ateliers nationaux
- **Création** : `25 février 1848`
- **Objectif** : occupation des chômeurs
- **Coût** considérable
- **Tensions** politiques

### C. L''Assemblée constituante (`4 mai 1848 - 26 mai 1849`)

#### Élections (`23-24 avril 1848`)
- **Premier vote au suffrage universel masculin**
- **`84 %`** de participation
- **Victoire** des républicains modérés
- **Désillusion** des socialistes

#### Composition
- **`880 députés`**

#### Les Journées de juin (`23-26 juin 1848`)
- **Fermeture** des ateliers nationaux
- **Insurrection** ouvrière à Paris
- **Répression** sanglante par **Cavaignac** (`3 000 morts`)
- **Fin** des espoirs sociaux

### D. La Constitution du 4 novembre 1848

#### Élaboration
- **Travaux** de la Constituante
- **Adoption** : `4 novembre 1848`

#### Le préambule

##### Idées-forces
- **Reconnaissance** des droits et devoirs
- **Devise** : *« Liberté, Égalité, Fraternité »*

#### La République
- **Article 1** : *« La France est une République démocratique. »*

#### Les organes

##### Un Président de la République
- **Élu au suffrage universel direct**
- **Mandat** : `4 ans` non renouvelable
- **Pouvoir exécutif**

##### Une Assemblée législative unique
- **750 députés** élus au suffrage universel direct
- **Mandat** : 3 ans
- **Innovation** : monocaméralisme

##### Le Conseil d''État
- **Maintenu**

#### Le suffrage
- **Universel masculin direct**
- **21 ans**

#### Les libertés
- **Garanties** explicitement
- **Article IV** du préambule : *« La République a pour principe la Liberté, l''Égalité, la Fraternité ; elle a pour base la Famille, le Travail, la Propriété, l''Ordre public. »*

### E. L''élection présidentielle (`10 décembre 1848`)

#### Candidats
- **Louis-Napoléon Bonaparte** (neveu de Napoléon)
- **Cavaignac** (général)
- **Ledru-Rollin** (gauche)
- **Lamartine** (modéré)
- **Raspail** (extrême gauche)

#### Résultats
- **Louis-Napoléon** : **`74,2 %`** des voix (5,5 millions)
- **Cavaignac** : `19,5 %`
- **Plébiscite** populaire pour le nom de Napoléon

#### Profil de Louis-Napoléon
- **Neveu** de Napoléon
- **Tentatives de coup d''État** ratées (`1836`, `1840`)
- **Emprisonné** au fort de Ham (`1840-1846`), évasion
- **Exil** en Angleterre
- **Retour** en `1848`

### F. La Législative (`28 mai 1849 - 2 décembre 1851`)

#### Élections de mai 1849
- **Victoire** du Parti de l''Ordre (royalistes et conservateurs)
- **Échec** des républicains modérés

#### Les tensions
- **Conservateurs** vs républicains
- **Le Président** et l''Assemblée

#### Les mesures conservatrices
- **Loi Falloux** (`15 mars 1850`) : liberté de l''enseignement (libéralisée en faveur de l''Église)
- **Loi du 31 mai 1850** : restriction du suffrage universel (3 ans de résidence, `~3 millions d''exclus`)
- **Loi du 16 juillet 1850** sur la presse

#### La crise institutionnelle
- **Conflit** entre le Président et l''Assemblée
- **Refus** de réviser la Constitution pour permettre la réélection de Louis-Napoléon

### G. Le coup d''État du 2 décembre 1851

#### Date symbolique
- **Anniversaire** du sacre de Napoléon (`2 décembre 1804`)
- **Anniversaire** d''Austerlitz (`2 décembre 1805`)

#### Le déroulement
- **Arrestations** des opposants (`Thiers, Cavaignac, Changarnier`…)
- **Dissolution** de l''Assemblée
- **Rétablissement** du suffrage universel intégral
- **Convocation** de nouvelles élections

#### La résistance
- **Députés** retranchés à la mairie du Xe arrondissement
- **Résistance** en Province (Sud)
- **Répression** brutale (`1 200 morts`, `27 000 arrestations`)

#### Le plébiscite (`20-21 décembre 1851`)
- **Question** : approbation du coup d''État
- **Résultats officiels** : `7,5 millions` de oui contre `640 000` non
- **Légitimité** plébiscitaire

### H. La Constitution du 14 janvier 1852

#### Caractères
- **Promulgée** par Louis-Napoléon
- **Pas** votée par une assemblée
- **Modèle** césariste

#### Les pouvoirs

##### Le Président de la République
- **Mandat de 10 ans**
- **Concentré** de pouvoirs
- **Responsable devant le peuple**

##### Le Sénat conservateur
- **Membres** nommés par le Président
- **Veille** à la constitutionnalité

##### Le Corps législatif
- **Élu** au suffrage universel
- **Vote** la loi
- **Mais** : initiative refusée, candidatures officielles

##### Le Conseil d''État
- **Rédige** les projets de loi

#### Le suffrage universel
- **Maintenu** mais encadré

## II. Le Second Empire (`1852-1870`)

### A. La proclamation de l''Empire

#### Sénatus-consulte du 7 novembre 1852
- **Rétablissement** de la dignité impériale

#### Plébiscite (`21-22 novembre 1852`)
- **`7,8 millions` de oui** contre `253 000` non

#### Proclamation officielle (`2 décembre 1852`)
- **Louis-Napoléon** devient **Napoléon III, Empereur des Français**
- **Date symbolique**

### B. L''Empire autoritaire (`1852-1860`)

#### Pouvoir personnel
- **Empereur** détient l''essentiel du pouvoir
- **Candidatures officielles** pour les élections
- **Censure** de la presse
- **Surveillance** policière

#### La modernisation économique
- **Crédit Mobilier** (`1852`, Pereire) et Crédit Foncier
- **Chemins de fer** : `3 870 km` en `1852` → `17 460 km` en `1870`
- **Industrialisation**

#### Travaux d''Haussmann (à partir de `1853`)
- **Préfet de la Seine**
- **Transformation** de Paris
- **Boulevards** larges (lutter contre les barricades)
- **Modernisation** urbanistique
- **Coût** considérable

#### Politique extérieure
- **Guerre de Crimée** (`1854-1856`) : succès
- **Campagne d''Italie** (`1859`) : succès (alliance avec Cavour)
- **Annexion** de Nice et de la Savoie (`1860`)

### C. Le tournant libéral (`1860-1870`)

#### Le décret du 24 novembre 1860
- **Réforme** : adresse en réponse au discours du trône
- **Renforcement** du Corps législatif

#### Causes du tournant
- **Critiques** religieuses (Italie)
- **Récession** économique
- **Opposition** libérale renaissante

#### Évolutions

##### Loi du 11 mai 1868 sur la presse
- **Allègement** de la censure

##### Loi du 6 juin 1868 sur les réunions
- **Liberté** de réunion partielle

##### Élections de mai 1869
- **Forte progression** de l''opposition

##### Sénatus-consulte du 8 septembre 1869
- **Pouvoir d''initiative** du Corps législatif
- **Responsabilité** des ministres

#### L''Empire parlementaire (1870)

##### Sénatus-consulte du 20 avril 1870
- **Régime quasi-parlementaire**
- **Olivier** premier ministre (`2 janvier 1870`)

##### Plébiscite du 8 mai 1870
- **`7,3 millions` de oui** contre `1,5 million` de non
- **Approbation** des réformes libérales
- **Apparente** stabilisation

### D. La chute de l''Empire

#### Les causes immédiates

##### La candidature Hohenzollern (juillet 1870)
- **Provocation** prussienne

##### La dépêche d''Ems (`13 juillet 1870`)
- **Manipulation** par Bismarck

##### La déclaration de guerre (`19 juillet 1870`)
- **France** déclare la guerre à la Prusse

#### Les défaites militaires
- **Désastres** successifs
- **Encerclement** de Bazaine à Metz
- **Bataille de Sedan** (`1^er^ - 2 septembre 1870`) : encerclement et capture de Napoléon III

#### La proclamation de la République (`4 septembre 1870`)
- **Annonce** de la défaite
- **Insurrection** à Paris
- **Proclamation** à l''Hôtel de Ville
- **Gouvernement** de la Défense nationale (Gambetta, Jules Favre, Trochu)

## III. L''héritage de la période 1848-1870

### A. Les acquis durables

#### Le suffrage universel masculin
- **Instauré** définitivement en `1848`
- **Jamais abandonné** depuis

#### L''abolition de l''esclavage
- **Définitive** dans les colonies

#### Modernisation économique
- **Industrialisation**
- **Chemins de fer**
- **Banques**

#### Modernisation urbaine
- **Travaux d''Haussmann**
- **Modèle** pour d''autres villes

### B. Les institutions

#### Le Conseil d''État
- **Renforcé** sous le Second Empire
- **Compétences** étendues

#### L''administration
- **Centralisation** poursuivie
- **Préfets** essentiels

### C. La culture politique

#### La République définitivement enracinée
- **Mais** après une parenthèse impériale
- **Septennat** : longue durée pour le Président

#### Le bonapartisme
- **Tradition** politique
- **Plébiscite** comme méthode

## À retenir

**Chronologie** :
- **24 février 1848** : proclamation de la IIe République
- **2 mars 1848** : suffrage universel masculin (`9 millions` d''électeurs)
- **27 avril 1848** : abolition de l''esclavage (Schoelcher)
- **23-26 juin 1848** : Journées de juin (répression sanglante)
- **4 novembre 1848** : Constitution
- **10 décembre 1848** : Louis-Napoléon Bonaparte élu Président (`74,2 %`)
- **2 décembre 1851** : coup d''État
- **14 janvier 1852** : nouvelle Constitution
- **2 décembre 1852** : proclamation de l''Empire (Napoléon III)
- **1860-1870** : Empire libéral
- **1^er^-2 septembre 1870** : Sedan (capture de Napoléon III)
- **4 septembre 1870** : proclamation de la IIIe République

**IIe République** :
- **Régime** présidentiel
- **Assemblée** unique
- **Suffrage universel masculin** (innovation majeure)
- **Constitution** du `4 novembre 1848`

**Second Empire** :
- **Constitution** du `14 janvier 1852` (modèle césariste)
- **Phase autoritaire** (`1852-1860`) : pouvoir personnel
- **Phase libérale** (`1860-1870`) : réformes progressives
- **Phase parlementaire** (`1870`) : sénatus-consulte du `20 avril 1870`

**Suffrage universel** (masculin) : instauré en `1848`, jamais abandonné depuis (étendu aux femmes en `1944`).

**Personnalités** : **Lamartine**, **Louis Blanc**, **Cavaignac**, **Louis-Napoléon / Napoléon III**, **Haussmann**, **Thiers**, **Olivier**, **Gambetta**.

**Héritage** : suffrage universel masculin, abolition de l''esclavage, modernisation économique et urbaine, **transition** vers la IIIe République (définitivement instaurée en `1870`).'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 6 - LA IIIe RÉPUBLIQUE (1870-1940)
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La IIIe République (1870-1940)', 'Chapitre 6 - La IIIe République',
       'Lois constitutionnelles de 1875, crise du 16 mai 1877, parlementarisme absolu, lois républicaines fondatrices, chute de 1940.',
       array['Lois constitutionnelles de 1875', 'Amendement Wallon', 'Crise du 16 mai 1877', 'MacMahon', 'Régime des partis', 'Lois Ferry', 'Loi 1905', 'Vichy', '10 juillet 1940', 'Pétain', 'Plein pouvoir'],
       25, 6,
'# La IIIe République (1870-1940)

## Introduction

La **IIIe République** est la **plus longue** des Républiques françaises (`70 ans`) et la plus longue période républicaine en France. Née dans la défaite de Sedan (`1870`), elle s''est progressivement enracinée et a façonné durablement la culture politique et institutionnelle française : **lois républicaines fondatrices** (école, libertés), **séparation des Églises et de l''État** (`1905`), apprentissage du **régime parlementaire**. Mais elle souffre aussi d''une **instabilité gouvernementale chronique** et a fini par s''effondrer dans la catastrophe de `1940`. Cette fiche présente sa genèse, ses institutions, ses caractères et sa chute.

## I. La genèse de la IIIe République (`1870-1875`)

### A. Le contexte initial (`septembre 1870 - février 1871`)

#### Le gouvernement de la Défense nationale
- **Trochu**, **Gambetta**, **Jules Favre**…
- **Continuation** de la guerre
- **Défaite** progressive

#### Le siège de Paris
- **Septembre 1870 - janvier 1871**
- **Famine, froid**
- **Armistice** : `28 janvier 1871`

#### La capitulation
- **Conditions** désastreuses
- **Alsace-Lorraine** perdue
- **Indemnité** de `5 milliards de francs-or`

### B. L''Assemblée nationale (`8 février 1871`)

#### Élections au suffrage universel masculin
- **Forte participation**
- **Surprise** : majorité **monarchiste** (~`400 députés`)
- **Pourquoi** : les monarchistes étaient pour la paix immédiate ; les républicains pour continuer la guerre

#### Bordeaux puis Versailles
- **Assemblée** se réunit à Bordeaux, puis Versailles

### C. La Commune de Paris (`18 mars - 28 mai 1871`)

#### Causes
- **Mécontentement** populaire
- **Tentative** de désarmement de la Garde nationale
- **Symbolique** : exécution des généraux Lecomte et Clément Thomas

#### Le gouvernement communard
- **Élu**
- **Mesures** : séparation Église/État, élections magistratures, fédéralisme…

#### La répression
- **Semaine sanglante** (`21-28 mai 1871`)
- **`20 000 à 30 000 morts`**
- **Représsion** brutale par Thiers
- **Mythe** politique fondateur (gauche)

### D. Thiers et la République conservatrice

#### Pacte de Bordeaux (`17 février 1871`)
- **Thiers** chef de l''exécutif
- **Forme du régime** : suspendue

#### *« La République sera conservatrice ou ne sera pas »* (Thiers)
- **Stratégie** : rallier les conservateurs

#### Loi Rivet (`31 août 1871`)
- **Thiers** : Président de la République
- **Mais** responsable devant l''Assemblée

#### Le « message au pays » de Thiers (`13 novembre 1872`)
- **Plaide** pour la République conservatrice
- **Tensions** avec les monarchistes

#### Chute de Thiers (`24 mai 1873`)
- **Renversé** par les monarchistes
- **MacMahon** lui succède

### E. Le septennat (`20 novembre 1873`)
- **MacMahon** Président pour `7 ans`
- **Loi** transitoire
- **Espoir** monarchiste : préparer la Restauration

### F. L''échec de la Restauration
- **Désaccord** entre légitimistes (comte de Chambord) et orléanistes (comte de Paris)
- **Drapeau** blanc revendiqué par Chambord (`1873`)
- **Impossible** Restauration

### G. Les lois constitutionnelles de 1875

#### Le contexte
- **Compromis** entre républicains modérés et orléanistes ralliés
- **Trois lois** au lieu d''une Constitution unique
- **Rédaction** minimale

#### L''amendement Wallon (`30 janvier 1875`)
- **Adopté à 1 voix de majorité** (`353` contre `352`)
- **Introduit** le mot **« République »** dans le texte
- **Article** : *« Le Président de la République est élu à la majorité absolue des suffrages par le Sénat et la Chambre des députés réunis en Assemblée nationale. »*
- **Symbolique** : la **République est constitutionnellement instaurée**

#### Les trois lois

##### Loi du 24 février 1875 sur le Sénat
- **300 sénateurs**
- **225** élus au suffrage indirect, **75 inamovibles**
- **Mandat** : `9 ans`, renouvellement par tiers tous les 3 ans

##### Loi du 25 février 1875 sur l''organisation des pouvoirs publics
- **Président** élu pour 7 ans, rééligible
- **Pouvoirs partagés** : droit de message, dissolution
- **Ministres** responsables devant les Chambres

##### Loi du 16 juillet 1875 sur les rapports entre les pouvoirs publics
- **Sessions** parlementaires
- **Initiative** des lois
- **Procédure** des amendements

### H. Une « constitution » réduite

#### Caractères
- **Très brève** (34 articles au total)
- **Pas** de Déclaration des droits
- **Compromis** politique
- **Souple** : facilité de révision

#### Adaptabilité
- **Permet** une longue durée par la souplesse
- **Adaptable** aux pratiques politiques

## II. L''enracinement de la République (`1877-1914`)

### A. La crise du 16 mai 1877

#### Le contexte
- **Élections** de `1876` : majorité républicaine à la Chambre
- **MacMahon** monarchiste, conservateur

#### L''incident
- **`16 mai 1877`** : MacMahon adresse à Jules Simon (Premier ministre républicain) un message le sommant de démissionner
- **Démission** de Jules Simon
- **Nomination** du duc de Broglie (monarchiste)

#### Le conflit constitutionnel
- **Le Président** considère qu''il peut choisir un PM contre la majorité parlementaire
- **Les républicains** : le PM doit avoir la confiance de la Chambre

#### Le « manifeste des 363 »
- **Députés républicains** condamnent le ministère Broglie
- **MacMahon** dissout la Chambre (avec accord du Sénat)

#### Élections d''octobre 1877
- **Victoire républicaine** (`326` contre `208`)

#### La capitulation de MacMahon
- **Loi du 21 novembre 1877** : nomination d''un ministère républicain

#### *« Se soumettre ou se démettre »*
- **Gambetta** (`15 août 1877`) : *« Quand la France aura fait entendre sa voix souveraine, il faudra se soumettre ou se démettre. »*

#### MacMahon démissionne (`30 janvier 1879`)
- **Lui succède** : Jules Grévy (républicain modéré)

### B. La doctrine Grévy
- **Le Président s''efface** politiquement
- **Pas** de dissolution
- **Régime parlementaire moniste**

### C. La République radicale (`1880-1914`)

#### Les lois fondatrices

##### Lois sur la presse
- **Loi du 29 juillet 1881** : grande loi sur la liberté de presse

##### Loi sur les réunions publiques
- **Loi du 30 juin 1881**

##### Lois sur les syndicats
- **Loi Waldeck-Rousseau du 21 mars 1884** : liberté syndicale

##### Lois sur l''enseignement (lois Ferry)
- **Loi du 16 juin 1881** : gratuité de l''enseignement primaire
- **Loi du 28 mars 1882** : obligation et laïcité de l''enseignement primaire

##### Loi sur les associations
- **Loi du 1^er^ juillet 1901** : liberté d''association (Waldeck-Rousseau)

##### Loi sur la séparation des Églises et de l''État
- **Loi du 9 décembre 1905** : laïcité de l''État
- **Article 1** : *« La République assure la liberté de conscience. »*
- **Article 2** : *« La République ne reconnaît, ne salarie ni ne subventionne aucun culte. »*

#### La culture républicaine
- **École laïque, gratuite, obligatoire**
- **Le « hussard noir »** (l''instituteur)
- **Symboles** : 14 juillet (`1880`), Marianne, Marseillaise

### D. Les crises politiques

#### Le boulangisme (`1886-1889`)
- **Général Boulanger**, *« général Revanche »*
- **Risque** de coup d''État
- **Fuite** à Bruxelles, suicide

#### Le scandale de Panama (`1892`)
- **Compagnie** du canal de Panama
- **Corruption** politique

#### L''affaire Dreyfus (`1894-1906`)
- **Capitaine Dreyfus** accusé de trahison
- **« J''accuse »** de Zola (`13 janvier 1898`)
- **Réhabilitation** de Dreyfus
- **Fracture** entre dreyfusards et antidreyfusards

### E. Les caractères du régime

#### Le parlementarisme absolu
- **Hégémonie** parlementaire
- **Le Président** effacé après Mac-Mahon
- **Multiplication** des cabinets ministériels

#### L''instabilité gouvernementale
- **Très nombreux gouvernements**
- **Moyenne** : 8-9 mois par gouvernement
- **Crise** chronique

#### Le multipartisme
- **Pas** de partis structurés à l''origine
- **Émergence** progressive : **Parti républicain radical** (`1901`), **SFIO** (`1905`)

### F. Les Présidents
- **Adolphe Thiers** (`1871-1873`)
- **Patrice de MacMahon** (`1873-1879`)
- **Jules Grévy** (`1879-1887`)
- **Sadi Carnot** (`1887-1894`, assassiné)
- **Jean Casimir-Perier** (`1894-1895`)
- **Félix Faure** (`1895-1899`)
- **Émile Loubet** (`1899-1906`)
- **Armand Fallières** (`1906-1913`)
- **Raymond Poincaré** (`1913-1920`)
- **Paul Deschanel** (`1920`, démission pour maladie)
- **Alexandre Millerand** (`1920-1924`)
- **Gaston Doumergue** (`1924-1931`)
- **Paul Doumer** (`1931-1932`, assassiné)
- **Albert Lebrun** (`1932-1940`)

## III. La Première Guerre mondiale et l''entre-deux-guerres

### A. La Grande Guerre (`1914-1918`)

#### Union sacrée
- **Cohésion** politique
- **Tous les partis** soutiennent la guerre

#### Les civils
- **Mobilisation** de la nation
- **Femmes** dans les usines

#### Les conséquences
- **Victoire** mais saignée démographique (`1,4 million de morts`)
- **Traité de Versailles** (`28 juin 1919`)
- **Retour** de l''Alsace-Lorraine

### B. L''entre-deux-guerres (`1918-1939`)

#### Les années 1920
- **Reconstruction**
- **Stabilité** relative
- **Cartel des Gauches** (`1924-1926`) puis Union nationale

#### Les années 1930
- **Crise économique** (suite à la crise de `1929`)
- **Instabilité** politique
- **Émeutes** du `6 février 1934`

#### Le Front populaire (`1936-1938`)
- **Coalition** PS, PC, radicaux
- **Léon Blum** président du Conseil
- **Réformes** : congés payés, 40 heures
- **Échec** progressif

#### La montée des périls
- **Montée** des fascismes (Italie, Allemagne)
- **Concession** : Munich (`septembre 1938`)
- **Guerre** : `3 septembre 1939`

## IV. La chute (`1940`)

### A. La défaite militaire

#### La drôle de guerre (`septembre 1939 - mai 1940`)
- **Peu d''actions** militaires

#### L''offensive allemande (`10 mai 1940`)
- **Percée** à Sedan
- **Effondrement** du front

#### L''exode
- **`8 millions` de Français** sur les routes

#### La chute de Paris (`14 juin 1940`)
- **Paris** déclaré ville ouverte

#### L''appel du 18 juin (de Gaulle)
- **Refus** de la défaite
- **France libre**

#### L''armistice (`22 juin 1940`)
- **Signé** à Rethondes (mêmes lieu et wagon qu''en `1918`)
- **France** occupée au Nord, libre au Sud

### B. La loi constitutionnelle du 10 juillet 1940

#### Le contexte
- **Assemblée nationale** réunie à **Vichy** (Hôtel du Parc)
- **Pétain** demande les pleins pouvoirs

#### Le vote
- **`569 voix` pour**
- **`80 voix` contre** (les *« 80 »* qui ont voté contre)
- **17 abstentions**

#### Le texte
> *« L''Assemblée nationale donne tous pouvoirs au gouvernement de la République, sous l''autorité et la signature du maréchal Pétain, à l''effet de promulguer par un ou plusieurs actes une nouvelle Constitution de l''État français. »*

#### Conséquences
- **Pétain** détient les pouvoirs constitutionnels
- **Régime de Vichy** s''installe (`État français`)
- **Suspension de la République**

### C. Le régime de Vichy (`1940-1944`)

#### Les Actes constitutionnels
- **Pétain** se nomme « chef de l''État français »
- **Concentration** des pouvoirs

#### Caractères
- **Régime autoritaire**
- **Devise** : *« Travail, Famille, Patrie »*
- **Lois antisémites** (statut des Juifs `3 octobre 1940`)
- **Collaboration** avec l''Allemagne nazie
- **Pas démocratique**

#### La Résistance
- **France libre** (de Gaulle, à Londres)
- **Résistance intérieure**
- **CNR** (Conseil national de la Résistance, `1943`)

### D. La fin de Vichy et la Libération (`1944`)

#### Le débarquement en Normandie (`6 juin 1944`)

#### La Libération
- **Paris libéré** (`25 août 1944`)
- **De Gaulle** chef du Gouvernement provisoire

#### L''ordonnance du 9 août 1944
- **Sur le rétablissement de la légalité républicaine**
- **Article 1** : *« La forme du gouvernement de la France est et demeure la République. »*
- **Article 2** : *« En droit, celle-ci n''a pas cessé d''exister. »*

## À retenir

**Chronologie** :
- **4 septembre 1870** : proclamation de la République
- **18 mars - 28 mai 1871** : Commune de Paris
- **24 mai 1873** : MacMahon Président
- **30 janvier 1875** : amendement Wallon (« République » inscrit dans le texte)
- **24 février, 25 février, 16 juillet 1875** : trois lois constitutionnelles
- **16 mai 1877** : crise du 16 mai
- **30 janvier 1879** : démission de MacMahon, Grévy lui succède
- **9 décembre 1905** : loi de séparation des Églises et de l''État
- **10 juillet 1940** : pleins pouvoirs à Pétain
- **9 août 1944** : ordonnance de rétablissement de la légalité républicaine

**Les trois lois constitutionnelles de 1875** :
- **24 février 1875** : Sénat (`300 sénateurs`)
- **25 février 1875** : organisation des pouvoirs publics
- **16 juillet 1875** : rapports entre pouvoirs publics

**Caractéristiques** :
- **Bicamérisme** (Chambre des députés + Sénat)
- **Président** élu par les chambres pour `7 ans`
- **Régime parlementaire** : ministres responsables

**Crise du 16 mai 1877** : MacMahon contre la majorité parlementaire. Capitulation républicaine définitive. *« Se soumettre ou se démettre »* (Gambetta).

**Lois républicaines fondatrices** :
- Liberté de **presse** (`29 juillet 1881`)
- **Réunion** (`30 juin 1881`)
- **Syndicats** (`21 mars 1884`)
- **École** : Ferry (`1881-1882`)
- **Association** (`1^er^ juillet 1901`)
- **Laïcité** (`9 décembre 1905`)

**Régime parlementaire absolu** : hégémonie des chambres, effacement du Président, **instabilité** gouvernementale (durée moyenne 8-9 mois).

**Suffrage** : universel masculin maintenu (les femmes seront ajoutées en `1944`).

**Chute** : **10 juillet 1940** à Vichy, pleins pouvoirs à Pétain (`569` voix contre `80`).

**Personnalités** : **Thiers**, **MacMahon**, **Gambetta**, **Grévy**, **Ferry**, **Waldeck-Rousseau**, **Clemenceau**, **Poincaré**, **Blum**, **Pétain**, **De Gaulle**.'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 7 - LA IVe RÉPUBLIQUE (1946-1958)
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La IVe République (1946-1958)', 'Chapitre 7 - La IVe République',
       'GPRF, deux projets constitutionnels, Constitution du 27 octobre 1946, hégémonie parlementaire, instabilité, fin en 1958.',
       array['GPRF', 'De Gaulle', 'Constituante', 'Constitution 1946', 'Préambule 1946', 'Quatrième République', 'Instabilité gouvernementale', '13 mai 1958', 'Discours de Bayeux'],
       22, 7,
'# La IVe République (1946-1958)

## Introduction

La **IVe République** (`1946-1958`) est une République à la **vie brève** (12 ans) et à la **réputation difficile** : marquée par une **instabilité gouvernementale chronique** (24 gouvernements en 12 ans), elle est souvent réduite à son échec final. Pourtant, c''est elle qui a reconstruit la France après la guerre, posé les bases de la **Sécurité sociale**, intégré le **Préambule de 1946** (avec ses droits sociaux), et amorcé la **construction européenne** (CECA, CED). Sa fin, dans la crise du `13 mai 1958`, marque le retour au pouvoir de **Charles de Gaulle** et l''avènement de la Ve République. Cette fiche présente la genèse, les institutions, l''évolution et la chute de la IVe République.

## I. La Libération et le GPRF (`1944-1946`)

### A. La Libération
- **`25 août 1944`** : libération de Paris
- **De Gaulle** entre à Paris

### B. Le Gouvernement provisoire de la République française (GPRF)

#### Composition
- **De Gaulle** chef du Gouvernement
- **Union** entre Résistance intérieure, Forces françaises libres, partis politiques

#### Les réformes majeures

##### Le droit de vote des femmes
- **Ordonnance du 21 avril 1944** (à Alger)
- **Premier vote** des femmes : élections municipales d''avril `1945`
- **Premier vote législatif** : élections d''octobre `1945`

##### Les nationalisations
- **Banques** (Banque de France, BNP, Crédit Lyonnais, Société Générale)
- **Énergie** (EDF-GDF, créés en `1946`)
- **Transports** (Air France, Renault)

##### La Sécurité sociale
- **Ordonnances** d''octobre `1945`
- **Régime général**

##### Le Conseil national de la Résistance (CNR)
- **Programme** (`15 mars 1944`)
- **Inspiration** des réformes

### C. La consultation du peuple (`21 octobre 1945`)

#### Le contexte
- **Élection** d''une assemblée
- **Question** : assemblée constituante ou non ?
- **Si oui** : pouvoirs limités ?

#### Question 1
*« Voulez-vous que l''Assemblée élue ce jour soit constituante ? »* → **`96,4 %` de oui**

#### Question 2
*« Si le corps électoral a répondu “oui” à la première question, approuvez-vous que les pouvoirs publics soient, jusqu''à la mise en vigueur de la nouvelle Constitution, organisés conformément aux dispositions du projet de loi dont le texte figure au dos du présent bulletin ? »* → **`66,5 %` de oui** (limitation des pouvoirs de l''assemblée)

### D. L''Assemblée constituante (`novembre 1945`)

#### Élections du 21 octobre 1945
- **Tripartisme** : PCF, SFIO, MRP
- **Pouvoir** entre ces 3 partis

#### Démission de De Gaulle (`20 janvier 1946`)
- **Désaccord** avec le régime des partis
- **Refus** des institutions parlementaires faibles

### E. Le premier projet de Constitution (`19 avril 1946`)

#### Caractères
- **Monocaméralisme** (une seule assemblée)
- **Inspiration** marxiste
- **Pouvoir** concentré

#### Référendum du 5 mai 1946
- **`53 %` de NON**
- **Premier projet rejeté**

### F. La deuxième Constituante

#### Élections du 2 juin 1946
- **Tripartisme** maintenu

#### Le discours de Bayeux (`16 juin 1946`)
- **De Gaulle** expose sa vision constitutionnelle
- **Exécutif fort**, président arbitre
- **Bicamérisme**

#### Le deuxième projet

##### Compromis
- **Bicamérisme** réintroduit
- **Pouvoir** exécutif mieux organisé

##### Adoption par l''Assemblée (`29 septembre 1946`)

### G. Référendum du 13 octobre 1946

#### Résultats
- **`53,5 %` de oui** sur les votants
- **Forte abstention**
- **Adoption**

### H. Promulgation
- **`27 octobre 1946`**

## II. Les institutions de la IVe République

### A. La Constitution du 27 octobre 1946

#### Le Préambule

##### Caractères
- **Droits économiques et sociaux** :
  - **Droit au travail**
  - **Liberté syndicale**
  - **Droit de grève**
  - **Sécurité matérielle**
  - **Égalité hommes-femmes**
  - **Enseignement gratuit et laïque**
- **Souveraineté nationale**
- **Égalité civile**

##### Postérité
- **Intégré** au bloc de constitutionnalité par le Conseil constitutionnel (`Cons. const., 16 juillet 1971, Liberté d''association`)

### B. L''organisation des pouvoirs

#### Le Président de la République

##### Élu par les chambres
- **Mandat** : `7 ans`
- **Rééligible** une fois (`art. 29`)

##### Pouvoirs
- **Limités**
- **Symbolique**
- **Inaugure les chrysanthèmes**

#### L''Assemblée nationale

##### Composition
- **`627 députés`**
- **Élus** au suffrage universel direct
- **Mandat** : `5 ans`

##### Mode de scrutin
- **Proportionnel**
- **Modifié** en `1951` par la loi des **apparentements** (favoriser les modérés)

##### Pouvoirs
- **Pouvoir législatif** principal
- **Investiture** des gouvernements
- **Motion de censure**

#### Le Conseil de la République

##### Composition
- **`320 conseillers`** environ
- **Élus** au suffrage indirect

##### Pouvoirs
- **Réduits** par rapport au Sénat de la IIIe République
- **Avis** sur les lois
- **Pas** de motion de censure du Gouvernement

#### Le Conseil constitutionnel
- **Inexistant** (innovation de la Ve République)

#### Le Comité constitutionnel
- **Création** par la Constitution de `1946`
- **Pouvoir** limité
- **Rarement** utilisé

### C. Le Gouvernement

#### Le Président du Conseil (PM)
- **Désigné** par le Président de la République
- **Investiture** par l''Assemblée nationale
- **Double investiture** : du PM, puis de son gouvernement

#### La responsabilité

##### Question de confiance (art. 49)
- **Engagement** du Gouvernement
- **Refus** de la confiance entraîne démission

##### Motion de censure (art. 50)
- **Adoption** entraîne démission

## III. L''instabilité chronique

### A. Les caractéristiques

#### Multipartisme éclaté
- **Très nombreux** partis
- **Coalitions** instables
- **Discipline** parlementaire faible

#### Le mode de scrutin proportionnel
- **Émiettement** politique
- **Pas** de majorité claire

#### La procédure d''investiture
- **Difficile**
- **Crises** chroniques

### B. Le bilan chiffré

#### Gouvernements
- **`24 gouvernements`** en 12 ans
- **Durée moyenne** : ~`6 mois`

#### Le record d''instabilité
- **Crises** ministérielles longues
- **Vacance** prolongée du pouvoir

### C. Les PM successifs (sélection)
- **Léon Blum**, **Paul Ramadier**, **Robert Schuman**, **Henri Queuille**, **Georges Bidault**, **René Mayer**, **Joseph Laniel**, **Pierre Mendès France**, **Edgar Faure**, **Guy Mollet**, **Maurice Bourgès-Maunoury**, **Félix Gaillard**, **Pierre Pflimlin**…

## IV. Les réalisations de la IVe République

### A. La reconstruction

#### Plan Marshall (`1948`)
- **Aide** américaine

#### La planification
- **Commissariat général au Plan** (Jean Monnet)
- **`1^er^ Plan` (1947-1952)** : modernisation, équipement

### B. La construction européenne

#### CECA (`1951`)
- **Communauté européenne du charbon et de l''acier**
- **Initiée** par Robert Schuman (`9 mai 1950`)

#### CED (Communauté européenne de défense)
- **Projet** ambitieux
- **Rejeté** par l''Assemblée nationale (`30 août 1954`)

#### CEE (`25 mars 1957`)
- **Traité de Rome**
- **Marché commun**

### C. Les avancées sociales

#### Sécurité sociale
- **Renforcement**

#### Logement
- **Programmes** de construction

#### Salaires
- **SMIG** (salaire minimum, `1950`)

### D. La décolonisation difficile

#### Indochine (`1946-1954`)
- **Guerre** d''Indochine
- **Défaite** de Diên Biên Phu (`7 mai 1954`)
- **Accords** de Genève (`20 juillet 1954`)

#### Tunisie et Maroc
- **Indépendances** (`1956`)

#### Algérie (`1954-1962`)
- **« Événements »** à partir du `1^er^ novembre 1954`
- **Guerre** qui dégénère
- **Cause** principale de la chute de la IVe République

## V. La chute (`1958`)

### A. Le contexte

#### La guerre d''Algérie
- **Coût** humain et financier
- **Tortures** dénoncées (général Massu, Henri Alleg)
- **Division** politique

#### L''impuissance gouvernementale
- **Cabinets** successifs
- **Échec** des politiques

#### Le ministère Pflimlin (`14 mai 1958`)
- **Investi**
- **Provoque** la crise

### B. Le 13 mai 1958

#### À Alger
- **Manifestation** des Français d''Algérie
- **Création** d''un **Comité de salut public** par Massu
- **Appel** au général de Gaulle

#### En métropole
- **Pression** sur Pflimlin
- **Risque** de guerre civile
- **Crainte** d''un coup d''État militaire (opération **Résurrection**)

### C. Le retour de De Gaulle

#### Le 15 mai
- **De Gaulle** se déclare *« prêt à assumer les pouvoirs de la République »*

#### Le 27 mai
- **De Gaulle** annonce avoir entamé *« le processus régulier nécessaire à l''établissement d''un gouvernement républicain »*

#### Le 29 mai
- **René Coty** : message au pays, appelle de Gaulle
- *« Le plus illustre des Français »*

#### Le 1^er^ juin
- **De Gaulle** investi par l''Assemblée (`329 voix contre 224`)

#### Le 3 juin
- **Loi constitutionnelle** autorisant le Gouvernement à rédiger une nouvelle Constitution

### D. La fin de la IVe République

#### Constitution de 1958
- **Référendum** du `28 septembre 1958`
- **`79,25 %` de oui**

#### Promulgation
- **`4 octobre 1958`**

## VI. L''héritage de la IVe République

### A. Les acquis durables

#### Le Préambule de 1946
- **Droits économiques et sociaux**
- **Intégré** au bloc de constitutionnalité (`1971`)

#### Sécurité sociale
- **Permanente**

#### Construction européenne
- **CECA**, **CEE**
- **Fondation** de l''Europe contemporaine

#### Vote des femmes
- **Définitif** (depuis le GPRF mais réalisé sous la IVe)

### B. Les leçons négatives

#### L''instabilité
- **Référence** négative pour les rédacteurs de la Ve

#### La rationalisation
- **Nécessité** de mécanismes anti-instabilité

#### L''exécutif fort
- **Nécessité** d''un président doté de pouvoirs

### C. Une République mal-aimée
- **Image** très négative en mémoire collective
- **Mais** réelles réalisations sous-estimées

## À retenir

**Chronologie** :
- **21 avril 1944** : droit de vote des femmes (ordonnance)
- **20 janvier 1946** : démission de De Gaulle
- **19 avril 1946** : premier projet de Constitution
- **5 mai 1946** : référendum (NON)
- **16 juin 1946** : discours de Bayeux de De Gaulle
- **13 octobre 1946** : référendum (OUI)
- **27 octobre 1946** : promulgation de la Constitution
- **9 mai 1950** : discours Schuman (CECA)
- **30 août 1954** : rejet de la CED
- **7 mai 1954** : défaite de Diên Biên Phu
- **1^er^ novembre 1954** : début de la guerre d''Algérie
- **25 mars 1957** : Traité de Rome (CEE)
- **13 mai 1958** : crise d''Alger
- **1^er^ juin 1958** : De Gaulle investi
- **3 juin 1958** : loi constitutionnelle

**Constitution du 27 octobre 1946** :
- **Préambule** : droits économiques et sociaux
- **Pouvoir exécutif** faible (Président + PM)
- **Pouvoir législatif** dominant : AN + Conseil de la République
- **Comité constitutionnel** (innovation)
- **Mode de scrutin** : proportionnel (puis apparentements en `1951`)

**Caractéristiques** :
- **Régime parlementaire** quasi-pur
- **Instabilité** : `24 gouvernements` en 12 ans
- **Multipartisme** éclaté
- **Hégémonie** parlementaire

**Réalisations** :
- **Reconstruction** (Plan Marshall, Commissariat au Plan)
- **Sécurité sociale**
- **Vote des femmes**
- **Construction européenne** : CECA (`1951`), CEE (`1957`)
- **Décolonisation** (difficile)

**Chute** : crise d''Alger du `13 mai 1958`, retour de De Gaulle, loi constitutionnelle du `3 juin 1958`, Constitution du `4 octobre 1958`.

**Personnalités** : **De Gaulle**, **Bidault**, **Schuman**, **Mendès France**, **Mollet**, **Pflimlin**, **Coty**.'
from public.subjects where name = 'Histoire des institutions';

-- =====================================================================
-- FICHE 8 - L''ÉVOLUTION DE LA Ve RÉPUBLIQUE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''évolution de la Ve République (1958 - aujourd''hui)', 'Chapitre 8 - L''ère de la Ve République',
       'De De Gaulle à Macron, les présidences successives, l''évolution institutionnelle, les défis contemporains.',
       array['De Gaulle', 'Pompidou', 'Giscard', 'Mitterrand', 'Chirac', 'Sarkozy', 'Hollande', 'Macron', 'Quinquennat', 'Cohabitation', 'Décentralisation', 'Europe', 'QPC', 'Révisions constitutionnelles'],
       22, 8,
'# L''évolution de la Ve République (1958 - aujourd''hui)

## Introduction

La **Ve République**, instaurée en `1958`, fête aujourd''hui ses **65 ans** : c''est l''une des plus longues périodes constitutionnelles françaises et la plus longue depuis la IIIe République. Au fil des **huit présidences** qui se sont succédé (de Gaulle, Pompidou, Giscard, Mitterrand, Chirac, Sarkozy, Hollande, Macron), le régime a connu une évolution continue : **présidentialisation**, **élargissement** de la justice constitutionnelle, **construction européenne**, **décentralisation**, **24 révisions** constitutionnelles. Mais ce système est aujourd''hui en **crise** : crise de la représentation, fragmentation politique, échec relatif de la fonction de l''Élysée à incarner la Nation. Cette dernière fiche présente l''évolution de la Ve République et ses défis contemporains.

## I. La présidence du général de Gaulle (`1959-1969`)

### A. Une présidence fondatrice

#### Premier président de la Ve
- **Élu** indirectement le `21 décembre 1958` (`78,5 %`)
- **Investi** le `8 janvier 1959`

#### Conception de la fonction
- **Pdt** *« au-dessus des partis »*
- **Arbitre** doté de pouvoirs propres
- **Domaine réservé** : affaires étrangères, défense

### B. La guerre d''Algérie (`1959-1962`)

#### Évolution
- **Discours** du « *je vous ai compris* » à Alger (`4 juin 1958`) — ambiguïté
- **Autodétermination** annoncée (`16 septembre 1959`)
- **Putsch des généraux** (`avril 1961`) : utilisation de l''**article 16** (5 mois)
- **Accords d''Évian** (`18 mars 1962`)
- **Indépendance** de l''Algérie (`3 juillet 1962`)

### C. La révision de 1962

#### Le contexte
- **De Gaulle** veut renforcer la fonction présidentielle
- **Élection** au suffrage universel direct

#### La procédure controversée
- **Article 11** (référendum législatif) au lieu de l''article 89
- **Critique** doctrinale forte
- **Motion de censure** contre Pompidou adoptée (`5 octobre 1962`)
- **Dissolution** de l''Assemblée

#### Le référendum du 28 octobre 1962
- **`61,7 %` de oui**

#### Les élections législatives (novembre 1962)
- **Victoire** de l''UNR (gaullistes)
- **Fait majoritaire** émerge

### D. L''élection présidentielle de 1965

#### Premier scrutin au SUD
- **De Gaulle** mis en ballotage
- **Surprise**
- **2^e^ tour** : de Gaulle contre Mitterrand
- **De Gaulle élu** à `55,2 %`

### E. Mai 1968

#### Causes
- **Crise** étudiante (Nanterre puis Sorbonne)
- **Grève générale** (`10 millions de grévistes`)
- **Contestation** politique et sociale

#### Le 30 mai 1968
- **De Gaulle** discours, dissolution de l''Assemblée
- **Manifestation** de soutien aux Champs-Élysées

#### Élections législatives (juin 1968)
- **Triomphe** gaulliste

### F. Le départ (`1969`)

#### Référendum du 27 avril 1969
- **Sénat** et régions
- **`52,4 %` de NON**

#### Démission
- **`28 avril 1969`**
- **De Gaulle** se retire à Colombey
- **Mort** le `9 novembre 1970`

## II. La présidence de Georges Pompidou (`1969-1974`)

### A. Élection
- **Élection** le `15 juin 1969`
- **Contre Alain Poher**
- **`58,2 %`**

### B. Caractéristiques

#### Continuité
- **Gaullisme** mais ouverture

#### Modernisation
- **Politique** industrielle volontariste
- **Concorde**, **TGV**, **Plan calcul**
- **Beaubourg** (Centre Pompidou)

#### Europe
- **Élargissement** au Royaume-Uni, Danemark, Irlande (`1973`)

### C. Maladie et décès
- **`2 avril 1974`** : décès à 62 ans

## III. La présidence de Valéry Giscard d''Estaing (`1974-1981`)

### A. Élection
- **`19 mai 1974`**
- **Très serrée** contre Mitterrand (`50,8 %` contre `49,2 %`)

### B. Caractéristiques

#### Modernité
- **Plus jeune** président (`48 ans`)
- **Style** modernisé

#### Réformes
- **Majorité à 18 ans** (`1974`)
- **Divorce par consentement mutuel** (`1975`)
- **IVG** (loi Veil, `17 janvier 1975`)
- **Saisine du Conseil constitutionnel** par 60 parlementaires (`29 octobre 1974`)

### C. Difficultés
- **Crise** économique (chocs pétroliers `1973`, `1979`)
- **Affaire** des diamants de Bokassa
- **Défaite** électorale de `1981`

## IV. La présidence de François Mitterrand (`1981-1995`)

### A. Élections

#### 1981
- **Premier président de gauche** de la Ve
- **`51,8 %`** contre Giscard

#### 1988
- **Réélection** : `54 %` contre Chirac

### B. Les deux septennats

#### Premier septennat (`1981-1988`)

##### Réformes
- **Abolition** de la peine de mort (`9 octobre 1981`)
- **Décentralisation** (Lois Defferre, `1982`)
- **Nationalisations**
- **5^e^ semaine de congés payés**
- **39 heures** de travail
- **Retraite à 60 ans**

##### Tournant de la rigueur (`1983`)
- **Abandon** du programme commun
- **Politique** monétaire orthodoxe

##### Cohabitation (1986-1988)
- **Premier épisode**
- **Chirac** PM
- **Le Président s''efface** institutionnellement (mais garde le domaine réservé)

#### Second septennat (`1988-1995`)

##### Deuxième cohabitation (`1993-1995`)
- **Édouard Balladur** PM

##### Maastricht
- **Référendum** du `20 septembre 1992`
- **`51,04 %` de oui** (très serré)

##### Maladie
- **Cancer** annoncé
- **Mort** le `8 janvier 1996`

## V. La présidence de Jacques Chirac (`1995-2007`)

### A. Élections

#### 1995
- **`52,6 %`** contre Lionel Jospin
- **Cohabitation** rapide (`1997-2002`)

#### 2002
- **Surprise** : Le Pen au second tour
- **Chirac réélu** à `82,2 %`
- **« Faire barrage »**

### B. Caractéristiques

#### Décentralisation
- **Acte II** : révision du `28 mars 2003`

#### Quinquennat
- **Référendum** du `24 septembre 2000`
- **Adopté** mais faible participation

#### Refus de la guerre en Irak (`2003`)
- **Discours de Villepin** à l''ONU

#### Référendum constitution européenne (`29 mai 2005`)
- **NON** à `54,7 %`
- **Crise** politique

## VI. La présidence de Nicolas Sarkozy (`2007-2012`)

### A. Élection
- **`53 %`** contre Ségolène Royal

### B. Caractéristiques

#### « Présidence hyperactive »
- **Intervention** dans tous les domaines
- **« Hyperprésidence »**

#### Réforme constitutionnelle de 2008
- **Grande révision** du `23 juillet 2008`
- **`37 articles`** modifiés
- **QPC** introduite
- **Limitation** à 2 mandats consécutifs

#### Crise économique (`2008`)
- **G20**, sauvetage des banques
- **Plan de relance**

#### Défaite de 2012
- **Hollande** vainqueur

## VII. La présidence de François Hollande (`2012-2017`)

### A. Élection
- **`51,6 %`** contre Sarkozy

### B. Caractéristiques

#### Réformes
- **Mariage pour tous** (`17 mai 2013`)
- **Loi sur le renseignement** (`2015`)
- **État d''urgence** prolongé (attentats `2015-2016`)

#### Difficultés
- **Crise** économique
- **Chômage** record
- **Tensions** internes au PS

#### Décision historique
- **Premier président** à ne pas se représenter (`1^er^ décembre 2016`)

## VIII. La présidence d''Emmanuel Macron (`2017-`)

### A. Élections

#### 2017
- **Création** d''En Marche !
- **Battu** François Fillon (gauche-droite traditionnelle effondrée)
- **`66,1 %`** contre Marine Le Pen

#### 2022
- **Réélection** à `58,5 %` contre Le Pen

### B. Caractéristiques

#### Recomposition politique
- **Affaiblissement** des partis traditionnels (PS, LR)
- **Bipolarisation** Macron/Le Pen
- **Centre** dominant

#### Réformes
- **Code du travail** par ordonnances
- **SNCF**
- **Retraites** (`2023` : 49.3 et motion de censure échouée)
- **Pass sanitaire**

#### Crises
- **Gilets jaunes** (`2018-2020`)
- **Covid-19** (`2020-2022`)
- **Inflation** (`2022-2023`)
- **Guerre en Ukraine**

#### La dissolution surprise (`9 juin 2024`)
- **Après** les Européennes (RN majoritaire)
- **AN éclatée** en 3 blocs
- **Cohabitation conflictuelle**

#### Instabilité (`2024-2025`)
- **Gabriel Attal** PM (`janvier-juillet 2024`)
- **Michel Barnier** PM (`septembre-décembre 2024`, **censure le 4 décembre 2024**)
- **François Bayrou** PM (depuis `13 décembre 2024`)
- **Crise** institutionnelle

## IX. Les grandes évolutions

### A. La présidentialisation

#### Élection au SUD (`1962`)
- **Bouleversement** majeur

#### Quinquennat (`2000`)
- **Concordance** des majorités favorisée

#### Hyperprésidence (depuis `2002`)
- **Domination** totale en concordance

### B. Les cohabitations

- **1986-1988** : Mitterrand-Chirac
- **1993-1995** : Mitterrand-Balladur
- **1997-2002** : Chirac-Jospin
- **2024-...** : Macron - PM divers (« cohabitation » sans majorité)

### C. La construction européenne

- **Maastricht** (`1992`)
- **Amsterdam** (`1997`)
- **Nice** (`2001`)
- **Lisbonne** (`2007`)
- **Rejet** Constitution européenne (`2005`)
- **Brexit** (`2020`)

### D. La décentralisation

- **Lois Defferre** (`1982`)
- **Révision constitutionnelle** (`28 mars 2003`)
- **Loi NOTRe** (`2015`)

### E. La justice constitutionnelle

- **Décision *Liberté d''association*** (`1971`)
- **Saisine 60 parlementaires** (`1974`)
- **QPC** (`2008`, en vigueur `2010`)

### F. Les libertés

- **Abolition** peine de mort (`1981`)
- **Mariage pour tous** (`2013`)
- **PMA pour toutes** (`2021`)

## X. Les défis de la Ve République aujourd''hui

### A. La crise démocratique

#### Abstention
- **Record** aux législatives (53,8 % au 1^er^ tour de `2022`)

#### Méfiance
- **Envers** les institutions, les partis, les médias

#### Polarisation
- **Populismes**
- **RN, LFI**

### B. La fragmentation politique

#### Tripartisme (depuis `2017`)
- **Macronie/centre**
- **Gauche** (LFI, NUPES, NFP)
- **RN/droite radicale**

#### Difficulté à gouverner
- **Pas** de majorité claire depuis `2022`
- **Cohabitation** sans cohabitation classique

### C. La question européenne

#### Souveraineté
- **Débat** récurrent

#### Identité constitutionnelle
- **Cons. const. 2006**

### D. Le climat
- **Charte de l''environnement** (`2005`)
- **Conventions citoyennes**
- **Affaire du siècle** (`2021`)

### E. La sécurité
- **Terrorisme**
- **Loi SILT** (`30 octobre 2017`)
- **Tension** liberté/sécurité

## À retenir

**Les 8 présidents de la Ve République** :
1. **Charles de Gaulle** (`1959-1969`)
2. **Georges Pompidou** (`1969-1974`, décès)
3. **Valéry Giscard d''Estaing** (`1974-1981`)
4. **François Mitterrand** (`1981-1995`)
5. **Jacques Chirac** (`1995-2007`)
6. **Nicolas Sarkozy** (`2007-2012`)
7. **François Hollande** (`2012-2017`)
8. **Emmanuel Macron** (depuis `2017`)

**Grandes étapes** :
- `1962` : SUD pour la présidentielle
- `1974` : saisine du Conseil constitutionnel par 60 parlementaires
- `1981` : alternance politique
- `1986` : première cohabitation
- `1992` : Traité de Maastricht
- `2000` : quinquennat
- `2003` : décentralisation
- `2008` : grande révision constitutionnelle
- `2010` : entrée en vigueur de la QPC
- `2024` : dissolution surprise, AN éclatée, instabilité

**24 révisions constitutionnelles** depuis `1958`.

**Cohabitations** : 3 classiques (`1986`, `1993`, `1997`), 1 atypique depuis `2024`.

**Défis contemporains** : crise démocratique, fragmentation politique, Europe, climat, sécurité.

**Héritage** : la Ve République dure depuis plus de **65 ans**, longévité inédite. Mais son **adaptation** aux défis du XXIe siècle reste incertaine, et le débat sur une éventuelle **VIe République** ressurgit régulièrement.'
from public.subjects where name = 'Histoire des institutions';
