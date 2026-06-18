-- =====================================================================
-- JurisPrép - Cours complet : Droit administratif (L2 S1)
-- 8 fiches très approfondies basées sur les 3 thèmes du cours
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-administratif-1');

-- =====================================================================
-- FICHE 1 - NOTION ET HISTOIRE DU DROIT ADMINISTRATIF
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Notion et histoire du droit administratif', 'Thème 1 - Chapitre 1 : Généralités',
       'Définition, autonomie du droit administratif, origines historiques (Ancien Régime, Révolution), séparation des autorités, arrêt Blanco, juridiction retenue puis déléguée.',
       array['Droit administratif', 'Loi des 16-24 août 1790', 'Édit de Saint-Germain 1641', 'Arrêt Blanco 1873', 'Séparation des autorités', 'Justice retenue', 'Justice déléguée', 'Loi du 24 mai 1872', 'Arrêt Cadot 1889', 'Décision exécutoire', 'Privilège du préalable'],
       30, 1,
'# Notion et histoire du droit administratif

## Introduction

Le **droit administratif** est le **droit de la puissance publique dans ses rapports quotidiens avec les particuliers**. Il existe toute une série de règles, **écrites et non écrites**, qui vont s''imposer dans les rapports entre les services publics, la puissance publique, et les particuliers.

> **Citation (Georges Vedel)** : *« Le droit administratif est essentiellement jurisprudentiel. »*

#### Caractéristiques fondamentales
- **Branche du droit public**
- **Essentiellement jurisprudentiel**
- S''appuie sur le **droit constitutionnel**
- Influencé par les **sources internationales et européennes**

### Question centrale
**Le droit civil ne peut pas s''appliquer** aux relations entre l''administration et les administrés → il faut **un droit spécial**, le droit administratif, et un **ordre juridictionnel spécifique**, l''ordre administratif avec à son sommet le **Conseil d''État**.

## I. Les origines de la dualité

### A. Sous l''Ancien Régime

#### La volonté royale
Dès la fin du **XVIIIe siècle**, s''exprime la volonté politique du pouvoir royal de mettre en place un **droit spécial, autonome, distinct du droit privé**.

#### Privilèges du roi
- **Privilège de juridiction** : refus d''être soumis au droit commun
- **Privilège du préalable** (ancêtre de la décision exécutoire) : autorité publique impose unilatéralement des règles sans la volonté des destinataires

#### Édit de Saint-Germain (1641)
Interdiction faite aux **cours judiciaires** d''avoir connaissance des affaires de l''État et de l''administration.

#### Justification
- **Nature** spécifique de l''administration
- **Objectifs** d''intérêt général poursuivis
- Distinction entre **relations privées** (droit civil) et **relations avec l''administration** (droit administratif)

### B. Le principe de séparation pendant la Révolution

#### Affirmation : Loi des 16 et 24 août 1790
> *« Les tribunaux judiciaires et les fonctions judiciaires sont distinctes et demeureront toujours séparées des fonctions administratives. »*

Le **juge judiciaire** ne peut pas s''intéresser aux affaires de l''administration.

#### Confirmation : Décret du 16 fructidor an III (1795)
Réaffirmation du principe.

#### Conséquence
- **Pas d''absence de contrôle** des pouvoirs
- Mais **distinction** des juges selon les sphères

## II. L''évolution de la juridiction administrative

### A. La justice retenue (1799-1872)

#### Création des Conseils
##### Constitution du 22 frimaire an VIII (15 décembre 1799)
- Création du **Conseil d''État**
- Création des **Conseils de préfecture**

#### Fonctionnement
- **Le chef de l''État** statue formellement
- Le Conseil d''État **prépare** la décision
- **« Le ministre juge »** : phase intermédiaire où chaque ministre tranche

#### Justification
- **Pas encore de séparation** complète entre administration et juridiction
- Le **chef de l''État** garde la signature finale

### B. La justice déléguée (depuis 1872)

#### Loi du 24 mai 1872
- **Loi fondamentale** : confère au CE le **pouvoir** de statuer souverainement
- **« Statue souverainement »** : le CE ne propose plus, il décide

#### Arrêt Cadot (CE, 13 décembre 1889)
##### Faits
M. Cadot, employé municipal de Marseille, dont le poste avait été supprimé. Il s''adresse au ministre qui refuse. Le CE accepte de juger directement.

##### Apport
- **Abandon** de la théorie du « ministre juge »
- Le **CE** devient compétent de **plein droit**
- Naissance de la juridiction administrative **moderne**

### C. La consécration : l''arrêt Blanco (TC, 8 février 1873)

#### Faits
Une fillette, Agnès Blanco, est blessée par un wagonnet de la manufacture des tabacs de Bordeaux (service public). Son père engage la responsabilité de l''État.

#### Question
Quelle juridiction est compétente pour connaître de la responsabilité de l''État du fait des services publics ?

#### Solution
> *« La responsabilité, qui peut incomber à l''État, pour les dommages causés aux particuliers par le fait des personnes qu''il emploie dans le service public, ne peut être régie par les principes qui sont établis dans le Code civil, pour les rapports de particulier à particulier ; cette responsabilité n''est ni générale, ni absolue ; elle a ses règles spéciales qui varient suivant les besoins du service et la nécessité de concilier les droits de l''État avec les droits privés. »*

#### Portée
- **Arrêt fondateur** du droit administratif moderne
- Consécration de l''**autonomie** du droit administratif
- **Compétence** du juge administratif pour les litiges impliquant le service public
- **Lien** entre service public et droit administratif

## III. Les caractéristiques du droit administratif

### A. Un droit spécial

#### Justifications
- **Inégalité** entre l''administration et les administrés
- **Intérêt général** poursuivi par l''administration
- **Prérogatives de puissance publique**

### B. Un droit jurisprudentiel

#### Particularité française
- **Construction prétorienne**
- Le **CE** crée les règles
- Influence des **arrêts de principe** (Blanco, Terrier, Thérond, Bac d''Eloka)

### C. Un droit influencé par les sources européennes

#### Influence croissante
- **CESDH** (droit au procès équitable)
- **Droit de l''UE** (marché intérieur, procédures)
- **Convergence** progressive

## IV. Les éléments-clés du droit administratif

### A. La décision exécutoire

#### Notion
Décision prise par une **autorité publique** qui s''impose **tant qu''elle n''est pas annulée** par le juge.

#### Caractéristiques
- **Privilège du préalable**
- **Force exécutoire** immédiate
- **Présomption** de légalité

### B. Le service public

#### Notion (issue de Blanco)
- Activité d''**intérêt général**
- Rattachée à une personne **publique**
- Soumise à un **régime spécial**

### C. Les prérogatives de puissance publique

#### Exemples
- **Pouvoir réglementaire**
- **Pouvoir de police**
- **Expropriation**
- **Décision unilatérale**

## V. Quelques cas pratiques contemporains

### A. Pouvoirs de police du maire

#### Exemple
*« Est-ce qu''un maire peut interdire de façon générale le parapente sur les plages en Corse ? »*

#### Réponse
**Non**. Le maire doit utiliser ses pouvoirs de police mais doit en faire un **usage raisonnable**. Le principe est la **liberté**, l''exception est l''interdiction.

### B. Décisions ministérielles

#### Exemple : Tenues religieuses à l''école
*CE, 7 septembre 2023* : il est possible d''interdire le port d''une tenue qui manifeste **ostensiblement** une appartenance religieuse dans les établissements publics.

### C. Dissolution d''associations

#### Exemple : Soulèvements de la Terre
*CE, 11 août 2023* : suspension de la décision de dissolution → **contrôle du juge** sur les décisions gouvernementales.

### D. Comportement des forces de l''ordre

#### Identification individuelle
La **Ligue des droits de l''homme** a saisi le CE → contrôle de l''**application** par l''administration de ses propres règles.

## Conclusion

Le **droit administratif** est :
- Une **branche autonome** du droit français
- Né de la **volonté royale** puis révolutionnaire de soustraire l''administration au juge judiciaire
- **Consacré** par la loi du 24 mai 1872 (justice déléguée), l''arrêt **Cadot** (1889) et l''arrêt **Blanco** (1873)
- **Essentiellement jurisprudentiel**

La **séparation des autorités** administratives et judiciaires (loi des 16-24 août 1790) reste un principe **structurant** du système juridique français. Cette **dualité de juridictions** est une spécificité française, qui s''appuie sur la conception française de la **séparation des pouvoirs**.

Aujourd''hui, le **juge administratif** est incontesté, mais son existence n''est pas universelle : c''est un **choix français** d''avoir cette dualité de juridiction. Le droit administratif continue d''évoluer sous l''influence des **sources européennes** et des **transformations** de l''action publique.'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 2 - L'ORGANISATION DE LA JURIDICTION ADMINISTRATIVE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''organisation de la juridiction administrative', 'Thème 1 - Chapitre 2 : Juridiction',
       'Tribunaux administratifs, cours administratives d''appel, Conseil d''État, principe d''impartialité (Procola, Kress, Sacilor), rapporteur public, procédures.',
       array['Tribunal administratif', 'Cour administrative d''appel', 'Conseil d''État', 'Article L. 121-1 CJA', 'CEDH Procola 1995', 'CEDH Kress 2001', 'CE Sacilor 2006', 'Rapporteur public', 'Théorie des apparences', 'Article 6 CESDH', 'Référé'],
       28, 2,
'# L''organisation de la juridiction administrative

## Introduction

La **juridiction administrative** est une **juridiction de masse** qui rend chaque année **environ 300 000 décisions**. Elle est de plus en plus sollicitée et a du mal à répondre à toutes les sollicitations. L''ordre administratif comprend **trois niveaux** :
- Les **tribunaux administratifs** (TA)
- Les **cours administratives d''appel** (CAA)
- Le **Conseil d''État** (CE)

## I. Les tribunaux administratifs

### A. Création et nombre

#### Histoire
- Anciennement appelés **Conseils de préfecture**
- **Réforme du 30 septembre 1953** : transformation en tribunaux administratifs

#### Nombre
- **42 tribunaux** administratifs sur le territoire

### B. Compétences

#### Juges de droit commun en premier ressort
- **Compétence territoriale** : tribunal de l''endroit où l''autorité a pris la décision
- **Toutes les matières** sauf attribution spéciale

#### Compétence consultative
- Peuvent rendre des **avis** sur demande des préfets

### C. Composition et formations

#### Juridiction collégiale (principe)
- **Trois juges**
- **Délibération** collégiale

#### Juge unique (développement)
- **Procédures d''urgence** : référés
- **Litiges simples**
- **Accélération** de la justice

### D. Types de décisions
**Rendent des jugements**.

## II. Les cours administratives d''appel

### A. Création et nombre

#### Création
**Loi du 31 décembre 1987**.

#### Nombre
- **9 CAA** en France métropolitaine et outre-mer

### B. Compétences

#### Juge d''appel de droit commun
- Connaissent en **appel** des jugements des TA
- **Effet dévolutif** de l''appel

#### Compétence consultative
- Peuvent rendre des **avis**

### C. Composition

#### Formations collégiales
- **Présidées par un conseiller d''État**
- Magistrats administratifs

### D. Types de décisions
**Rendent des arrêts**.

### E. Pouvoirs en appel

#### Annulation et renvoi
La CAA peut annuler le jugement du TA et le **renvoyer** au TA.

#### Annulation et réformation
La CAA peut annuler et **statuer elle-même** sur le fond.

## III. Le Conseil d''État

### A. Histoire

#### Création
- **Constitution du 22 frimaire an VIII** (15 décembre 1799)
- Créé sous **Napoléon**
- **Juridiction suprême** de l''ordre administratif

#### Évolution
- **Justice retenue** initialement (loi du 24 mai 1872)
- **Justice déléguée** depuis 1872
- **Arrêt Cadot** (1889) : compétence directe

### B. Une double mission

#### 1. Conseillers du gouvernement
- **Avis** sur les projets de loi et d''ordonnance
- **Examen** des projets de décrets en CE

#### 2. Contrôleurs (fonction juridictionnelle)
- **Cassation** des arrêts des CAA
- **Premier et dernier ressort** pour certains actes

### C. Composition

#### Présidence
- Le CE est **présidé** par le **vice-président** du CE
- Aujourd''hui : **M. Tabuteau** (Didier-Roland Tabuteau)
- *Article L. 121-1 CJA* : *« La présidence du Conseil d''État est assurée par le vice-président. »*

#### Membres
- Environ **300 membres**
- **Carrière à l''ancienneté**
- Souvent membres du gouvernement (« le CE est le siège du pouvoir »)

#### Indépendance
- *Article L. 141-2 CJA* : *« Les membres du CE exercent leur fonction en toute indépendance. »*
- **Inamovibilité** garantie

### D. Sections

#### Section du contentieux
- Examine les **recours**
- **Fonction juridictionnelle**

#### Sections administratives
- Rendent des **avis**
- **Ne tranchent pas** les litiges
- **Section** de l''intérieur, des finances, des travaux publics, etc.

### E. Compétences juridictionnelles

#### Juge de cassation
- Cassation des **arrêts** des CAA

#### Juge en premier et dernier ressort
Pour les actes émanant des **autorités suprêmes de l''État** :
- **Décrets** du président de la République
- **Décrets** du Premier ministre
- **Arrêtés** ministériels d''importance nationale

#### Juge d''appel exceptionnel
- Certains contentieux spécifiques

## IV. L''impartialité du juge administratif

### A. La question fondamentale

#### Dualité de fonction
Depuis l''**an VIII**, le CE exerce une **double fonction** :
- **Conseil** du gouvernement
- **Juge** du gouvernement

#### Compatibilité avec l''article 6 CESDH ?
> **Article 6 CESDH** : *« Toute personne a droit à un procès équitable dans un délai raisonnable par un tribunal indépendant. »*

### B. Les arrêts fondateurs de la CEDH

#### CEDH, 28 septembre 1995, Procola
##### Affaire
Concerne le **Conseil d''État du Luxembourg** (fonctions analogues au CE français).

##### Solution
- **Théorie des apparences**
- *« La justice ne doit pas seulement être rendue, elle doit donner le sentiment qu''elle a été bien rendue. »*
- **Doute** sur le respect du droit au procès équitable
- **Violation** de l''article 6 CESDH

##### Application au CE français ?
Le CE français se considère **non concerné** dans un premier temps.

#### CEDH, 6 mai 2003, Kleyn c/ Pays-Bas
##### Précision
- Ce qui n''est **pas compatible** avec l''article 6 : qu''une **même personne** connaisse successivement d''une **même affaire**
- Au cas par cas

### C. La réaction du CE français

#### CE, 9 novembre 2006, Sacilor
##### Solution
> *« La circonstance que le CE a rendu un avis ou était abordé d''une manière générale et abstraite des questions juridiques relatives au régime des mines ne permet pas de conclure que les membres ayant ensuite siégé au contentieux aient abordé avec préjugé l''examen de cas particulier de la société requérante. »*

##### Position française
- **Pas de violation** automatique
- Examen **au cas par cas**

### D. Les garanties mises en place par le législateur

#### Décret de 2008
> *« Les membres du CE ne peuvent participer au jugement des recours pris après avis du CE. »*

##### Application
Lorsque le CE rend un avis, les personnes ayant **siégé** lors de l''avis ne peuvent pas juger ensuite.

#### Décret du 23 décembre 2011
> *« Les membres du CE qui participent au jugement des recours dirigés contre les actes pris après avis du CE, ne peuvent pas prendre connaissance de ses avis ni des dossiers des formations consultatives relatives à ces avis. »*

##### Renforcement
- **Cloisonnement** strict entre les deux fonctions
- **Protection** de l''impartialité

## V. Le rapporteur public

### A. Notion

#### Définition
**Magistrat indépendant** qui donne un **avis en droit** sur l''affaire qui doit être jugée.

#### Anciennement
**Commissaire du gouvernement** (mais sans rôle d''avocat du gouvernement).

### B. La contestation devant la CEDH

#### CEDH, 7 juin 2001, Kress c/ France
##### Mise en cause
**Existence même** du rapporteur public.

##### Solution
- **Violation** de la CESDH
- Pas de **présentation publique** des conclusions
- **Égalité des armes** non respectée

### C. Les réformes

#### Décret du 7 janvier 2009
##### Réforme principale
- **Communication** avant l''audience du **sens** des conclusions
- Possibilité pour les **parties** de **répliquer**
- **Égalité des armes** rétablie

#### Maintien de l''institution
- **Existence préservée** du rapporteur public
- **Adaptation** des modalités

### D. Le rôle actuel

#### Caractéristiques
- **Magistrat indépendant**
- Donne un **avis** en droit
- **Ne participe pas** au délibéré
- **Communication** du sens des conclusions avant l''audience

#### Effet
- **Aide à la réflexion** du juge
- **Cohérence** de la jurisprudence
- **Transparence** du raisonnement

## VI. Les procédures particulières

### A. Les référés

#### Notion
**Procédures d''urgence** pour obtenir rapidement une décision.

#### Types principaux

##### Référé-suspension (art. L. 521-1 CJA)
- **Suspension** d''une décision administrative
- Conditions : **urgence** + **doute sérieux** sur la légalité

##### Référé-liberté (art. L. 521-2 CJA)
- **Atteinte grave et manifestement illégale** à une **liberté fondamentale**
- **Délai de 48 heures**
- Procédure **rapide**

##### Référé-mesures utiles (art. L. 521-3 CJA)
- **Mesures conservatoires**
- En l''absence d''autre voie de droit

### B. La question prioritaire de constitutionnalité (QPC)

#### Introduction
**Réforme constitutionnelle du 23 juillet 2008**, applicable depuis 2010.

#### Mécanisme
- Le justiciable peut soulever une **inconstitutionnalité** d''une loi
- **Filtre** par le CE (ou la Cour de cassation)
- **Transmission** au Conseil constitutionnel si conditions remplies

### C. Le recours pour excès de pouvoir (REP)

#### Notion
**Recours en annulation** d''un acte administratif pour cause d''illégalité.

#### Particularités
- **Effet** *erga omnes* (envers tous)
- **Procédure** type du droit administratif

## VII. Cours et tribunaux spéciaux

### A. Tribunal des conflits

#### Notion
- Tranche les **conflits de compétence** entre les deux ordres
- Créé en **1872**, réformé en **2015**

#### Composition
- **Paritaire** : juges judiciaires et administratifs

### B. Juridictions spécialisées

#### Exemples
- **Cour nationale du droit d''asile** (CNDA)
- **Conseil supérieur de la magistrature** (CSM) pour la discipline des magistrats
- **Commissions de discipline** des ordres professionnels

## Conclusion

L''**organisation juridictionnelle administrative** française est **structurée à trois niveaux** :
- **42 tribunaux administratifs** (premier degré)
- **9 cours administratives d''appel** (appel)
- **Conseil d''État** (cassation et certains contentieux)

Le **principe d''impartialité** a fait l''objet d''une **évolution majeure** sous l''influence de la **CEDH** (*Procola* 1995, *Kress* 2001) qui a conduit à des **réformes** importantes (décrets de 2008, 2009, 2011) pour préserver la **dualité de fonction** du CE tout en garantissant le **procès équitable**.

Le **rapporteur public** symbolise cette adaptation : maintenu dans son rôle d''**aide à la décision**, mais soumis à des règles renforcées de **transparence** et d''**égalité des armes**.

Les **procédures particulières** (référés, QPC, REP) illustrent la **diversité** des moyens d''action devant le juge administratif et son rôle essentiel dans la **protection des droits** des administrés.'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 3 - LA CONSTITUTION ET SES PROLONGEMENTS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La Constitution et ses prolongements', 'Thème 2 - Chapitre 1 : Sources constitutionnelles',
       'Texte de la Constitution de 1958, prolongements (DDHC, Préambule 1946, Charte de l''environnement, PFRLR, OVC), contrôle de constitutionnalité.',
       array['Constitution 1958', 'DDHC 1789', 'Préambule 1946', 'Charte de l''environnement 2004', 'PFRLR', 'Bloc de constitutionnalité', 'CC Liberté d''association 1971', 'Article 61-1 C.', 'QPC', 'Conformité supra-législative', 'Objectifs à valeur constitutionnelle'],
       30, 3,
'# La Constitution et ses prolongements

## Introduction

La **Constitution** est la **norme suprême** dans la hiérarchie des normes en droit français. Elle constitue la **première source** du droit administratif. Pour l''administration et le juge administratif, le respect de la Constitution est **fondamental**.

> *« La Constitution est la norme suprême. Le respect de la Constitution s''impose à l''administration. »*

## I. Le texte de la Constitution de 1958

### A. Vue d''ensemble

#### Adoption
- **4 octobre 1958**
- **Référendum** approuvant le projet du général de Gaulle

#### Caractéristiques
- **89 articles** initialement (modifiés depuis)
- Texte court mais **fondamental**
- **Souplesse** dans la révision

### B. Dispositions intéressant le droit administratif

#### Article 13 C.
- Le **président de la République** nomme aux **emplois civils et militaires**
- **Décret** : forme normative de ces nominations

#### Article 20 C.
> *« Le Gouvernement détermine et conduit la politique de la Nation. Il dispose de l''administration et de la force armée. »*

##### Conséquences
- Le gouvernement **dispose** de l''administration
- **Tutelle** politique sur l''administration
- **Hiérarchie** administrative

#### Article 21 C.
> *« Le Premier ministre dirige l''action du Gouvernement. Il est responsable de la défense nationale. Il assure l''exécution des lois. Sous réserve des dispositions de l''article 13, il exerce le pouvoir réglementaire et nomme aux emplois civils et militaires. »*

##### Conséquences
- **Exécution des lois**
- **Pouvoir réglementaire** général
- **Nominations**

#### Article 34 C.
**Domaine de la loi** : matières où le législateur seul peut intervenir.

#### Article 37 C.
- **Domaine du règlement** : matières non réservées à la loi
- **Pouvoir réglementaire autonome**

#### Article 72 C.
**Libre administration** des collectivités territoriales.

#### Article 72-2 C.
**Autonomie financière** des collectivités territoriales.

### C. Spécificité du droit administratif

#### Pas de chapitre spécifique
- Pas de chapitre **« administration »**
- Mais **multiples** dispositions intéressant le droit administratif

#### Dispersion
- **Pouvoir réglementaire** : art. 21, 13
- **Décentralisation** : art. 1, 72, 72-2, 72-3, 72-4
- **Services publics** : nombreuses dispositions

## II. Les prolongements de la Constitution

### A. La consécration du bloc de constitutionnalité

#### Décision fondatrice
**Conseil constitutionnel, 16 juillet 1971, Liberté d''association**.

##### Apport
- **Préambule** de 1958 (et donc de 1946) intégré au bloc
- **Référence** à la DDHC de 1789

#### Conséquence
**Élargissement** de la norme de référence du contrôle de constitutionnalité.

### B. La Déclaration des droits de l''homme et du citoyen de 1789 (DDHC)

#### Articles applicables au droit administratif

##### Article 6 - Principe d''égalité
> *« La loi (...) doit être la même pour tous (...). Tous les Citoyens (...) sont également admissibles à toutes dignités, places et emplois publics (...). »*

##### Article 8 - Légalité des délits et peines
**Applicable** aux sanctions administratives.

##### Article 13 - Nécessité de l''impôt
**Égalité** devant les charges publiques.

##### Article 14 - Consentement à l''impôt
**Information** et contrôle de l''emploi des deniers publics.

##### Article 15 - Transparence
> *« La société a le droit de demander compte à tout agent public de son administration. »*

##### Article 16 - Séparation des pouvoirs
> *« Toute société dans laquelle la garantie des droits n''est pas assurée, ni la séparation des pouvoirs déterminée, n''a point de Constitution. »*

##### Article 17 - Propriété
**Inviolabilité** sauf nécessité publique avec **juste et préalable indemnité** (fondement de l''expropriation).

### C. Le Préambule de la Constitution de 1946

#### Caractéristiques
- **Texte** affirmant les droits sociaux et économiques
- **17 alinéas**

#### Principes essentiels
- **Égalité** entre hommes et femmes
- **Droit au travail**, **droit syndical**
- **Droit de grève**
- **Service public** d''enseignement
- **Sécurité sociale**, **santé**
- **Égalité** d''accès à l''instruction
- **Devoir de la Nation** envers la famille

### D. Les Principes fondamentaux reconnus par les lois de la République (PFRLR)

#### Notion
**Principes** dégagés par le **CC** (et le **CE**) à partir des **lois républicaines** antérieures à 1946.

#### Conditions
- **Lois républicaines** (avant 1946)
- **Continuité** dans le temps
- **Importance** suffisante

#### Exemples
- **Liberté d''association** (CC, 16 juillet 1971)
- **Liberté de l''enseignement** (CC, 23 novembre 1977)
- **Indépendance** de la juridiction administrative (CC, 22 juillet 1980)
- **Compétence** spécifique du juge administratif (CC, 23 janvier 1987)

### E. La Charte de l''environnement de 2004

#### Intégration
- **Loi constitutionnelle du 1er mars 2005**
- **Préambule** de la Constitution y fait référence

#### Apports
- **Droit** à un environnement sain
- **Principe de précaution**
- **Devoir de préserver** l''environnement
- **Information** et participation du public

#### Valeur juridique
**Pleine valeur constitutionnelle** (CC, 19 juin 2008).

### F. Les objectifs à valeur constitutionnelle (OVC)

#### Notion
**Buts** que la Constitution assigne au législateur et à l''administration.

#### Exemples
- **Lutte** contre la fraude fiscale
- **Sauvegarde** de l''ordre public
- **Logement** décent
- **Égalité** d''accès aux soins
- **Bonne administration** de la justice

#### Différence avec les droits fondamentaux
- Les **OVC** sont des **directives**, non des droits opposables directement
- Le législateur a une **marge** d''appréciation

## III. Le contrôle de constitutionnalité

### A. Le contrôle a priori - Article 61 C.

#### Procédure
- **Saisine** : 60 députés, 60 sénateurs, président de la République, PM, président des assemblées
- **Avant** la promulgation

#### Effets
- **Censure** si non-conforme
- **Conformité** = promulgation possible

### B. Le contrôle a posteriori - Article 61-1 C. (QPC)

#### Introduction
**Réforme constitutionnelle du 23 juillet 2008**, applicable depuis le **1er mars 2010**.

#### Mécanisme
##### Étape 1 : Soulèvement
Devant une juridiction (judiciaire ou administrative), le justiciable soulève une **QPC**.

##### Étape 2 : Filtrage
- **Filtre** par la juridiction (sérieux, applicable, nouveauté)
- Si conditions remplies : transmission

##### Étape 3 : Filtrage par le CE (ou Cour de cassation)
- Vérifie le **sérieux** et la **nouveauté**

##### Étape 4 : Examen par le CC
- **Décision** dans les 3 mois

#### Effets
- **Abrogation** de la loi déclarée inconstitutionnelle
- Effet **erga omnes**
- **Modulation possible** dans le temps (CC peut différer)

### C. Le contrôle conventionnel et la QPC

#### Articulation
- Le juge administratif **doit** examiner la QPC en **priorité**
- Puis examine la **conventionnalité**

#### Avantages
- **Effet erga omnes** de la QPC
- Abrogation **définitive**

## IV. Les sources constitutionnelles et le juge administratif

### A. Le respect de la Constitution

#### Principe
L''administration **doit** respecter la Constitution dans ses décisions.

#### Sanction par le juge administratif
- **Annulation** des actes administratifs contraires
- Sur le fondement de la **constitutionnalité**

### B. Les principes fondamentaux du droit administratif d''origine constitutionnelle

#### Continuité du service public
- **PFRLR** (CC, 25 juillet 1979)
- Justifie les limitations du droit de grève

#### Égalité devant le service public
- **DDHC, art. 6**
- **Principe** fondamental

#### Liberté du commerce et de l''industrie
- **PFRLR** indirect
- Limite l''**interventionnisme** public

### C. La protection des libertés fondamentales

#### Référé-liberté (art. L. 521-2 CJA)
- **Atteinte grave et manifestement illégale** à une liberté fondamentale
- **48 heures** pour statuer

#### Liberté fondamentale
- Notion **prétorienne**
- Évolution **élargissante**
- Exemples : liberté d''aller et venir, liberté du culte, droit au respect de la vie privée

## V. La place actuelle des sources constitutionnelles

### A. Place croissante

#### Multiplication des textes
- **DDHC**
- **Préambule 1946**
- **Charte de l''environnement**
- **PFRLR** et **OVC** créés par la jurisprudence

#### Impact sur le droit administratif
- **Constitutionnalisation** progressive
- **Convergence** avec les normes européennes

### B. Le contrôle accru

#### QPC depuis 2010
- **Plus de 1 000 décisions** rendues
- **Renouvellement** profond

#### Impact sur les administrations
- **Anticipation** de la QPC
- **Adaptation** des pratiques

## Conclusion

La **Constitution et ses prolongements** constituent la **première source** du droit administratif :
- **Texte** de 1958 avec ses dispositions sur le pouvoir réglementaire, l''administration et les collectivités
- **Bloc de constitutionnalité** consacré en 1971 (Liberté d''association)
- **DDHC** de 1789 (égalité, propriété, séparation des pouvoirs)
- **Préambule** de 1946 (droits sociaux et économiques)
- **Charte de l''environnement** de 2004
- **PFRLR** et **OVC** dégagés par la jurisprudence

Le **contrôle de constitutionnalité**, renforcé par la **QPC** depuis 2010, garantit l''effectivité de ces normes. Le juge administratif est partie prenante de ce contrôle, comme **filtre** mais aussi comme **applicateur** des principes constitutionnels.

La **constitutionnalisation** du droit administratif est une tendance lourde du droit contemporain, qui converge avec l''**européanisation** étudiée dans la fiche suivante.'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 4 - LES SOURCES INTERNATIONALES ET EUROPÉENNES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les sources internationales et européennes', 'Thème 2 - Chapitre 2 : Sources externes',
       'Hiérarchie des normes (art. 55 C.), traités internationaux, CESDH, droit de l''UE, contrôle de conventionnalité (Nicolo, Boisdet, Rothmans).',
       array['Article 55 C.', 'Nicolo 1989', 'Boisdet 1990', 'Rothmans 1992', 'CESDH', 'Droit UE', 'Effet direct', 'Primauté', 'Coutume internationale', 'PGD international', 'Hiérarchie des normes', 'Costa c/ ENEL'],
       28, 4,
'# Les sources internationales et européennes

## Introduction

Les **sources internationales et européennes** occupent une place **croissante** en droit administratif. Le **principe de primauté** du droit international sur les lois ordinaires est consacré par la Constitution.

> **Article 55 C.** : *« Les traités ou accords régulièrement ratifiés ou approuvés ont, dès leur publication, une autorité supérieure à celle des lois, sous réserve, pour chaque accord ou traité, de son application par l''autre partie. »*

## I. Les différentes sources internationales et européennes

### A. Les traités internationaux

#### Procédure
##### Conclusion
- **Article 52 C.** : le président de la République **négocie** et **ratifie** les traités
- Certains traités nécessitent une **autorisation parlementaire** (art. 53)

##### Ratification
- **Acte solennel** du président de la République
- Si autorisation parlementaire requise : **loi de ratification**

##### Publication
- **Indispensable** pour l''opposabilité
- Au **Journal Officiel**

#### Conditions de l''article 55 C.
- **Ratification** ou approbation **régulière**
- **Publication**
- **Réciprocité** (sauf traités multilatéraux et de l''UE)

### B. La Convention européenne des droits de l''homme (CESDH)

#### Origine
- **Convention du 4 novembre 1950**
- **Conseil de l''Europe** (47 États membres)
- **Distinct** de l''Union européenne

#### Mécanisme
- **Cour européenne des droits de l''homme** (CEDH) à Strasbourg
- **Recours individuel** possible après épuisement des voies de recours internes

#### Influence majeure
- **Procès équitable** (art. 6) : *Procola*, *Kress*
- **Droits fondamentaux** : vie privée, liberté d''expression, propriété
- **Jurisprudence** abondante affectant le droit administratif

### C. Le droit de l''Union européenne

#### Sources primaires
- **Traité sur l''Union européenne** (TUE)
- **Traité sur le fonctionnement de l''UE** (TFUE)
- **Charte des droits fondamentaux** (CDFUE)

#### Sources dérivées
- **Règlements** : directement applicables
- **Directives** : à transposer
- **Décisions** : contraignantes pour les destinataires
- **Recommandations** et **avis** : non contraignants

#### Le principe de primauté
##### CJCE, 15 juillet 1964, Costa c/ ENEL
> *« Le droit de l''UE prévaut sur les droits nationaux. »*

##### Effet direct
- **Règlements** : directement applicables
- **Directives** : effet direct en l''absence de transposition (sous conditions)
- **Charte** : effet direct dans le champ du droit de l''UE

### D. La coutume internationale

#### Notion
**Pratique** générale acceptée comme étant le droit.

#### Valeur en droit français
- **Faible** valeur dans le droit administratif
- Acceptation **limitée**

### E. Les principes généraux du droit international

#### Notion
**Principes** communs aux nations civilisées (article 38 du Statut de la CIJ).

#### Application
- **Référence** occasionnelle
- **Influence** sur l''interprétation

## II. La place des sources internationales en droit interne

### A. Le contrôle de constitutionnalité des traités

#### Article 54 C.
- **Saisine** du Conseil constitutionnel
- **Avant** la ratification
- Si **clause inconstitutionnelle** → révision constitutionnelle nécessaire

#### Exemples
- **Traité de Maastricht** → révision (création de l''article 88-1)
- **Traité de Lisbonne** → révision
- **CDFUE**

### B. Le contrôle de conventionnalité par le juge administratif

#### Évolution jurisprudentielle

##### Position antérieure : CE, Semoules de France, 1968
- **Refus** de contrôler la conformité d''une loi postérieure à un traité
- **Auto-limitation** du CE

##### Revirement : CE, Ass., 20 octobre 1989, Nicolo
###### Faits
M. Nicolo conteste la conformité d''une loi française au traité CE.

###### Solution
> *« Le juge administratif peut contrôler la conformité d''une loi postérieure à un traité international. »*

###### Portée
- **Abandon** de la jurisprudence Semoules
- **Alignement** sur la Cour de cassation (*Jacques Vabre*, 1975)
- **Consécration** de la primauté du droit international

##### Extension : CE, Ass., 24 septembre 1990, Boisdet
- Application au **droit dérivé** de l''UE (règlements)

##### Précision : CE, Ass., 28 février 1992, Rothmans
- Application aux **directives** européennes
- Contrôle de la **transposition**

### C. La hiérarchie des normes après l''arrêt Nicolo

#### Ordre hiérarchique
1. **Bloc de constitutionnalité**
2. **Traités et droit international**
3. **Lois ordinaires**
4. **Règlements**

#### Exception
- Le **droit de l''UE** prime sur la **loi** mais pas sur la **Constitution** (position française)
- Position **CJUE** : primauté **absolue** du droit UE

### D. La résolution des conflits entre la Constitution et un traité

#### Principe en droit interne français
**La Constitution** est la norme suprême → si conflit, le **traité** doit être révisé ou la **Constitution** modifiée.

#### Conflit avec le droit de l''UE
- **CE, 8 février 2007, Arcelor** : pour les directives, le CE accepte de contrôler par référence aux **droits constitutionnels** (avec un détour par le **droit de l''UE**)
- **Dialogue des juges** : compromis entre les approches

### E. La QPC et le contrôle de conventionnalité

#### Articulation
- **QPC** : examinée en **priorité**
- **Contrôle de conventionnalité** : examen postérieur

#### Décision CC du 12 mai 2010
- Confirmation de l''**absence** d''obstacle à l''examen subséquent de la conventionnalité

## III. L''influence de la CESDH sur le droit administratif

### A. Le procès équitable - Article 6 CESDH

#### Applications majeures
- **Procola** (1995) : dualité fonctionnelle du CE
- **Kress** (2001) : rapporteur public
- **Sacilor** (2006) : adaptation française

### B. Le droit au respect de la vie privée - Article 8

#### Applications
- **Vidéosurveillance**
- **Fichiers administratifs**
- **Vie privée des agents publics**

### C. La liberté d''expression - Article 10

#### Applications
- **Liberté de la presse**
- **Réglementation** des manifestations
- **Liberté syndicale**

### D. Le droit de propriété - Protocole 1, Article 1

#### Applications
- **Expropriation**
- **Réquisition**
- **Confiscations** administratives

### E. La non-discrimination - Article 14

#### Applications
- **Égalité** dans l''accès aux fonctions publiques
- **Égalité** devant le service public

## IV. L''influence du droit de l''UE

### A. Sur l''organisation administrative

#### Marché intérieur
- **Concurrence** : limite l''interventionnisme public
- **Libre circulation** : adaptation des règles nationales

#### Procédure
- **Marchés publics** : directives 2014
- **Concessions** : directive 2014
- **Aides d''État** : contrôle communautaire

### B. Sur les services publics

#### Notion européenne
- **Services d''intérêt économique général** (SIEG)
- **Service universel**
- **Obligations de service public**

#### Convergence
- **Adaptation** des SP français
- **Maintien** des spécificités

### C. Sur les libertés fondamentales

#### Charte des droits fondamentaux (CDFUE)
- **Application** dans le champ du droit de l''UE
- **Renforcement** des droits

#### Exemples
- **Protection des données personnelles**
- **Bonne administration** (art. 41 CDFUE)
- **Recours effectif** (art. 47)

## V. Les juges et les sources internationales

### A. Le juge administratif

#### Rôle de contrôle
- **Conventionnalité** des actes administratifs
- **Application** des traités
- **Refus** d''appliquer un acte contraire au droit international

#### Coopération avec la CJUE
- **Question préjudicielle** (art. 267 TFUE)
- **Dialogue** institutionnel

### B. Le juge constitutionnel

#### Contrôle des traités
- **Article 54 C.**
- **Examen** avant ratification

#### QPC et droit international
- La QPC vise la **constitutionnalité**, pas la conventionnalité
- **Distinction** maintenue

### C. La CEDH et la CJUE

#### Articulation
- **Pas de subordination** réciproque
- **Convergence** progressive
- **Adhésion** de l''UE à la CESDH (encore en discussion)

## VI. Cas pratiques

### A. Les directives non transposées

#### Effet direct
- **Conditions** (CJCE, *Van Duyn*, 1974) : clarté, précision, inconditionnalité
- **Verticale** : applicable contre l''État
- **Horizontale** : non applicable entre particuliers

### B. Les actes communautaires devant le juge administratif

#### Recours possibles
- **REP** contre un acte de transposition
- **Renvoi préjudiciel** pour interpréter

#### Limites
- **Pas de contrôle** du droit dérivé par le juge national
- Le **CJUE** est seul compétent

## Conclusion

Les **sources internationales et européennes** sont devenues **incontournables** en droit administratif français. La consécration de la **primauté** par l''arrêt **Nicolo** (1989), l''ouverture au droit dérivé (**Boisdet**, **Rothmans**) et l''influence majeure de la **CESDH** et du **droit de l''UE** structurent désormais le droit administratif.

Le **juge administratif** est devenu **garant** de la conventionnalité, avec un rôle de **filtre** et d''**applicateur**. Il dialogue avec les juridictions européennes (CEDH, CJUE) dans un **système intégré** mais respectueux des **spécificités** nationales.

La **hiérarchie des normes** intègre désormais :
- **Constitution** (suprême)
- **Traités** internationaux (incluant CESDH et droit UE)
- **Lois** ordinaires
- **Règlements**

Avec quelques **nuances** : la position française maintient la **primauté constitutionnelle** sur les traités, en dialogue constant avec la CJUE.'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 5 - LA LOI, LE RÈGLEMENT ET LES PGD
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La loi, le règlement et les principes généraux du droit', 'Thème 2 - Chapitres 3-5 : Sources législatives et PGD',
       'Catégories de lois (organiques, ordinaires, ordonnances), règlements (autonomes/d''application), principes généraux du droit (PGD techniques et normatifs).',
       array['Article 34 C.', 'Article 37 C.', 'Loi organique', 'Loi ordinaire', 'Ordonnance', 'Article 38 C.', 'Règlement autonome', 'Règlement d''application', 'PGD', 'Aramu 1945', 'Dame Lamotte 1950', 'Mme Peynet 1973', 'Continuité du service public'],
       28, 5,
'# La loi, le règlement et les principes généraux du droit

## Introduction

Après la **Constitution** et les **sources internationales**, le droit administratif puise dans :
- La **loi** (organique, ordinaire, ordonnance)
- Le **règlement** (autonome, d''application)
- Les **principes généraux du droit** (PGD)

> *« Les PGD sont des règles non écrites dégagées par le juge administratif et appliquées aux activités administratives. »*

## I. Les catégories et le régime juridique des lois

### A. La répartition entre loi et règlement

#### Article 34 C.
> *« La loi fixe les règles concernant... »* (énumération)

##### Matières réservées (liste limitative)
- **Droits civiques** et garanties fondamentales
- **Nationalité**, état des personnes, capacité, mariage
- **Régime électoral**
- **Détermination des crimes et délits**
- **Assiette, taux, recouvrement** des impositions
- **Régime de la propriété**, droits réels
- **Création** de catégories d''établissements publics
- **Nationalisation** d''entreprises
- **Garanties** fondamentales accordées aux fonctionnaires
- **Garanties** au service public

##### Matières où la loi détermine les principes
- **Organisation générale** de la défense nationale
- **Libre administration** des collectivités territoriales
- **Enseignement**
- **Droit du travail**
- Etc.

#### Article 37 C.
> *« Les matières autres que celles qui sont du domaine de la loi ont un caractère réglementaire. »*

#### Procédure de déclassement
- **Article 37 al. 2** : un texte de forme législative peut être modifié par décret après avis du CC
- **Permet** le retour au pouvoir réglementaire

### B. Les lois organiques

#### Notion
- **Précisent** ou **complètent** la Constitution
- Adoption selon une **procédure renforcée**

#### Caractéristiques
- **Référence** dans la Constitution
- **Contrôle obligatoire** du CC
- **Majorité absolue** des membres de l''AN en lecture définitive

#### Place dans la hiérarchie
- **Supérieures** aux lois ordinaires
- **Inférieures** à la Constitution
- **Norme** de contrôle des lois ordinaires

#### Exemples
- **LOLF** (2001)
- **LOLFSS** (2005)
- **LOPGFP** (2012)
- Lois organiques sur les juridictions

### C. Les lois ordinaires

#### Procédure
- **Initiative** : gouvernement (projets) ou parlementaires (propositions)
- **Vote** par les deux chambres
- **Procédure** : navette, CMP, dernière lecture AN

#### Application au droit administratif
- **Multiples** matières concernées
- **Codification** : CRPA (relations entre le public et l''administration), CGCT, CGPPP, etc.

### D. Les ordonnances - Article 38 C.

#### Notion
> *« Le Gouvernement peut, pour l''exécution de son programme, demander au Parlement l''autorisation de prendre par ordonnances, pendant un délai limité, des mesures qui sont normalement du domaine de la loi. »*

#### Procédure
##### 1. Loi d''habilitation
- **Adoption** par le Parlement
- **Délimitation** du champ et de la durée

##### 2. Adoption en Conseil des ministres
- **Avis** du Conseil d''État
- **Signature** par le président de la République

##### 3. Ratification
- **Loi de ratification** dans le délai prévu
- **Sans ratification** : caducité (ou valeur réglementaire jusqu''à la décision du CC)

#### Statut juridique
##### Avant ratification
- **Valeur réglementaire**
- **Soumises** au contrôle du juge administratif

##### Après ratification
- **Valeur législative**
- **Hors** du contrôle du juge administratif

#### Décision du CC du 28 mai 2020
- **Évolution** : les ordonnances ont valeur **législative** dès l''**expiration du délai** d''habilitation, sans attendre la ratification

### E. Les lois référendaires

#### Article 11 C.
- **Soumis au peuple** par référendum
- **Loi** au sens classique

#### Décision CC, Marche verte, 6 novembre 1962
- **Refus** de contrôler une loi référendaire
- **Expression directe** de la souveraineté

## II. Les règlements

### A. Les types de règlements

#### Règlements autonomes
##### Fondement
**Article 37 C.** : matières non réservées à la loi.

##### Caractéristiques
- **Initiative** propre du gouvernement
- **Pas de loi** d''application requise
- Souvent appelés « décrets autonomes »

#### Règlements d''application
##### Fondement
- **Article 21 C.** : le PM assure l''exécution des lois
- **Texte législatif** à appliquer

##### Caractéristiques
- **Précisent** la loi
- **Subordonnés** à la loi
- **Indispensables** dans certains cas

### B. La hiérarchie des règlements

#### Décrets
##### Décret du président de la République
- **Pris en Conseil des ministres**
- **Article 13 C.**

##### Décret du Premier ministre
- **Article 21 C.**
- **Plus fréquent**

##### Décret en Conseil d''État
- **Avis obligatoire** du CE
- **Importance** particulière

#### Arrêtés
- **Arrêtés ministériels**
- **Arrêtés interministériels**
- **Arrêtés préfectoraux**
- **Arrêtés municipaux**

### C. Le pouvoir réglementaire des autorités locales

#### Maires
- **Article L. 2212-1 CGCT**
- **Police municipale**

#### Préfets
- **Police générale** dans le département

#### Présidents de collectivités
- **Pouvoir réglementaire** propre depuis 2003

### D. Le contrôle des règlements

#### REP (recours pour excès de pouvoir)
- **Annulation** des règlements illégaux
- **Délai** : 2 mois

#### Exception d''illégalité
- **Inapplicabilité** d''un règlement illégal dans un cas particulier
- **Imprescriptible**

## III. Les principes généraux du droit (PGD)

### A. Notion

#### Définition
**Règles non écrites** dégagées par le **juge administratif** (et reprises par d''autres juges) et appliquées aux activités administratives.

#### Caractéristiques
- **Non écrites**
- **Jurisprudentielles**
- **Valeur** infralégislative mais supraréglementaire

#### Justification
- **Sécurité juridique**
- **Égalité**
- **Continuité** du service public

### B. Origine

#### CE, 26 octobre 1945, Aramu
##### Faits
M. Aramu, ancien commissaire de police, contestait une révocation prononcée sans qu''il ait pu se défendre.

##### Solution
> *« Il résulte des principes généraux du droit applicables même en l''absence de texte... »*

##### Apport
- **Première référence** explicite aux PGD
- **Principe** des droits de la défense

#### CE, 17 février 1950, Dame Lamotte
##### Faits
Une décision administrative s''affirmait insusceptible de tout recours.

##### Solution
> *« Le recours pour excès de pouvoir est ouvert même sans texte contre tout acte administratif. »*

##### Apport
- Consécration du **droit au recours**
- PGD essentiel

### C. La valeur juridique des PGD

#### Valeur infralégislative
- **Inférieurs** à la loi
- **La loi peut les écarter**

#### Valeur supraréglementaire
- **Supérieurs** aux règlements
- **L''administration doit les respecter**

#### Le « bloc des PGD »
- **Pas d''harmonisation** stricte
- **Création** continue par le juge

### D. Les principales catégories

#### PGD techniques
- **Procédure** : droits de la défense, principe du contradictoire
- **Recours** : Dame Lamotte
- **Délais** : raisonnables

#### PGD normatifs
- **Égalité** : devant les charges publiques, devant le service public
- **Continuité** du service public
- **Liberté** : du commerce, du travail
- **Sécurité juridique**

## IV. Les PGD techniques

### A. Les droits de la défense

#### Origine
**CE, Aramu, 1945**.

#### Contenu
- **Information** des griefs
- **Possibilité** de se défendre
- **Communication** du dossier
- **Délai** raisonnable de réponse

#### Champ d''application
- **Sanctions** administratives
- **Procédures** disciplinaires
- **Mesures** défavorables

### B. Le droit au recours

#### Origine
**CE, Dame Lamotte, 1950**.

#### Contenu
- **REP** ouvert même sans texte
- **Contre tout acte** administratif
- **Imprescriptibilité** théorique du recours

### C. Le contradictoire

#### Notion
- **Toutes les parties** doivent pouvoir s''exprimer
- **Échange** des arguments

#### Application
- **Procédures** juridictionnelles
- **Procédures** administratives complexes

### D. Le principe d''impartialité

#### Notion
- **Juges** et **administration** impartiaux
- **Apparence** d''impartialité

#### Sanction
- **Annulation** des décisions partiales

### E. La sécurité juridique

#### Reconnaissance
- **CE, KPMG, 24 mars 2006** : consécration

#### Contenu
- **Stabilité** des règles
- **Prévisibilité** du droit
- **Non-rétroactivité**

## V. Les PGD normatifs

### A. L''égalité

#### Égalité devant la loi
- **Source** : article 6 DDHC
- **Reprise** comme PGD

#### Égalité devant le service public
- **Égal accès** aux services publics
- **Tarification** non discriminatoire
- **Conditions identiques** pour situations comparables

#### Égalité dans la fonction publique
- **Recrutement** sur concours
- **Article 6 DDHC** : *« également admissibles à toutes dignités, places et emplois publics »*

### B. La continuité du service public

#### Reconnaissance
- **CE, Winkell, 7 août 1909** : limitation du droit de grève
- **CC, 25 juillet 1979** : valeur constitutionnelle

#### Conséquences
- **Limitation** du droit de grève
- **Service minimum**
- **Obligations** des agents

### C. La liberté du commerce et de l''industrie

#### Origine
- **Décret d''Allarde** (2-17 mars 1791)
- **PGD** consacré par le CE

#### Application
- **Limites** à l''interventionnisme public
- **Cadre** de la création de SPIC

### D. Égalité entre hommes et femmes

#### CE, 15 mai 1973, Mme Peynet
- **Application** du principe d''égalité aux femmes enceintes (interdiction du licenciement)

#### Évolution
- **Convergence** avec le droit de l''UE
- **Renforcement** constitutionnel

### E. La proportionnalité

#### Notion (influence européenne)
- **Adéquation** entre la mesure et le but
- **Nécessité** de la mesure
- **Proportion** stricte

#### Application
- **Sanctions** administratives
- **Mesures de police**
- **Restrictions** aux libertés

## VI. La création des PGD

### A. Les méthodes

#### Inspiration constitutionnelle
- **DDHC** et Préambule
- **Constitutionnalisation** de certains PGD

#### Inspiration européenne
- **CESDH**
- **Droit de l''UE**

#### Inspiration jurisprudentielle
- **Tradition** juridique française
- **Évolution** des mœurs

### B. La concurrence avec les PFRLR et les OVC

#### Distinction
- **PGD** : valeur supraréglementaire (juge administratif)
- **PFRLR** : valeur constitutionnelle (Conseil constitutionnel)
- **OVC** : objectifs constitutionnels

#### Convergence
- **Mêmes contenus** parfois (égalité, continuité)
- **Niveaux différents** dans la hiérarchie

## Conclusion

Les **lois** et **règlements** sont les sources **écrites** classiques du droit administratif :
- **Lois organiques** : précisent la Constitution
- **Lois ordinaires** : matières de l''article 34
- **Ordonnances** : article 38 C.
- **Règlements** : autonomes (art. 37) ou d''application (art. 21)

Les **PGD** sont une **création majeure** du juge administratif depuis **Aramu** (1945) :
- **Valeur** infralégislative et supraréglementaire
- **Variété** des principes (techniques, normatifs)
- **Source** d''adaptation et de modernisation du droit

La **création prétorienne** des PGD illustre le **rôle créateur** du juge administratif et sa capacité à **adapter** le droit aux besoins. Les **PGD techniques** (droits de la défense, droit au recours, contradictoire) protègent les **garanties procédurales**. Les **PGD normatifs** (égalité, continuité, liberté du commerce) structurent l''action administrative.

L''influence des **sources européennes** enrichit progressivement les PGD, sans les remplacer : la **proportionnalité**, par exemple, devient un PGD français à la fois sous influence européenne et par évolution autonome du juge administratif.'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 6 - L'ADMINISTRATION D'ÉTAT ET LES AAI
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'L''administration d''État et les AAI', 'Thème 3 - Chapitres 1-2 : État',
       'Services centraux, services déconcentrés, préfet, AAI (raisons, multiplication, statut, contrôle), loi du 20 janvier 2017.',
       array['Administration centrale', 'Premier ministre', 'Ministre', 'Cabinet ministériel', 'Préfet', 'Décret 2004-374', 'Déconcentration', 'AAI', 'API', 'Loi 20 janvier 2017', 'CNIL', 'Défenseur des droits', 'ARCOM', 'AMF', 'Autorité de la concurrence'],
       30, 6,
'# L''administration d''État et les AAI

## Introduction

L''**administration d''État** est l''ensemble des organes par lesquels l''État exerce ses missions. Elle se divise en :
- **Administration centrale** (Paris)
- **Administration déconcentrée** (territoires)
- **Autorités administratives indépendantes** (AAI)

> Les AAI sont des « **anomalies** » au regard de l''article 20 C. (le gouvernement dispose de l''administration) qui ont été consacrées pour répondre à des **besoins** spécifiques.

## I. Les services centraux (administration centrale)

### A. Le sommet : le pouvoir exécutif

#### Le président de la République
##### Compétences administratives
- **Nominations** aux emplois civils et militaires (art. 13)
- **Décrets** en Conseil des ministres
- **Présidence** du Conseil des ministres

#### Le Premier ministre
##### Article 21 C.
- **Direction** de l''action du gouvernement
- **Exécution des lois**
- **Pouvoir réglementaire** général
- **Nominations** civiles et militaires

##### Services placés sous son autorité
- **Secrétariat général du gouvernement** (SGG)
- **Conseil d''État** (administrativement)
- **Cabinet** du PM

### B. Les ministres

#### Rôle politique et administratif
- **Membres** du gouvernement
- **Chefs** de leur ministère
- **Pouvoir hiérarchique** sur leurs services

#### Pouvoir réglementaire
- **Principe** : pas de pouvoir réglementaire général (CE, *Jamart*, 1936)
- **Exception** : pouvoir d''organisation de leurs services
- **Délégation** possible

#### Compétences
- **Mise en œuvre** des politiques
- **Représentation** internationale
- **Nominations** dans leur ministère

### C. Les cabinets ministériels

#### Composition
- **Membres** désignés par le ministre
- **Proches** politiques ou techniques

#### Limitation (loi de moralisation)
- **Maximum 10 membres** par cabinet
- **15 membres** pour le Premier ministre
- **Limitation** des pratiques anciennes

### D. Les directions générales d''administration centrale

#### Organisation
- **Hiérarchie** ministérielle
- **Directeurs** d''administration centrale
- **Sous-directeurs**, **chefs de bureau**

#### Rôles
- **Conception** des politiques
- **Mise en œuvre** sous l''autorité du ministre
- **Coordination** avec les services déconcentrés

### E. Le Conseil d''État (fonction administrative)

#### Avis
- **Avis obligatoire** sur les projets de loi
- **Avis** sur les projets d''ordonnance
- **Avis** sur les décrets en Conseil d''État

#### Sections administratives
- **Intérieur**
- **Finances**
- **Sociale**
- **Travaux publics**

### F. Les Inspections générales

#### Rôle
- **Contrôle** interne des ministères
- **Audit** et évaluation

#### Exemples
- **Inspection générale des finances** (IGF)
- **Inspection générale de l''administration** (IGA)
- **Inspection générale des affaires sociales** (IGAS)

## II. Les services déconcentrés

### A. Notion

#### Distinction déconcentration / décentralisation

##### Déconcentration
- **Transfert** de pouvoirs à des **agents de l''État**
- **Lien hiérarchique** maintenu
- *« C''est le même marteau qui frappe, mais on a raccourci le manche »* (Odilon Barrot)

##### Décentralisation
- **Transfert** à des **collectivités territoriales** distinctes
- **Personnalité juridique** propre
- **Autorités élues**

### B. L''organisation territoriale

#### Décret n° 2004-374 du 29 avril 2004
- **Réforme** de l''organisation territoriale
- **Adaptation** post-2003

#### Niveaux
- **Région** : niveau stratégique
- **Département** : niveau opérationnel
- **Arrondissement** : circonscription du sous-préfet

### C. Le préfet

#### Article 72 al. 6 C.
> *« Dans les collectivités territoriales de la République, le représentant de l''État (...) a la charge des intérêts nationaux, du contrôle administratif et du respect des lois. »*

#### Statuts
- **Préfet de département**
- **Préfet de région**
- **Sous-préfet**

#### Rôles
##### Représentant de l''État
- **Contrôle administratif** sur les CT
- **Coordination** des services
- **Politique** étatique sur le territoire

##### Chef des services déconcentrés
- **Autorité** sur les directions départementales/régionales
- **Hiérarchie** interministérielle dans le département

#### Pouvoirs
- **Pouvoir réglementaire** local
- **Pouvoir de police**
- **Représentation** de l''État

### D. Les directions départementales et régionales

#### Réorganisation (REATE 2010 + RGPP)
- **Fusion** de directions
- **Mutualisation**

#### Exemples
- **Direction départementale des territoires** (DDT)
- **Direction départementale de la cohésion sociale et de la protection des populations** (DDCSPP)
- **Direction régionale de l''environnement** (DREAL)
- **DGFIP** (régions et départements)

### E. La déconcentration aujourd''hui

#### Charte de la déconcentration (2015)
- **Principe** de subsidiarité
- **Renforcement** des pouvoirs préfectoraux

#### Tendance actuelle
- **Maintien** d''une organisation centralisée
- **Déconcentration** comme outil de modernisation

## III. Les autorités administratives indépendantes (AAI)

### A. Origines et notion

#### Origines
- **Premières créations** dans les années **1970-1980**
- **Inspirations** anglo-saxonnes
- **Réponse** à des besoins spécifiques

#### Caractéristiques
- **Autorités** de droit public
- **Indépendantes** du pouvoir exécutif
- **Missions** spécifiques
- Variantes :
  - **AAI** : sans personnalité juridique
  - **API** (autorité publique indépendante) : avec personnalité juridique

### B. Les raisons de leur création

#### Pourquoi des AAI ?

##### 1. Indépendance face au pouvoir politique
- **Régulation** de secteurs sensibles
- **Distance** par rapport au gouvernement

##### 2. Expertise technique
- **Domaines** complexes nécessitant des compétences spécialisées

##### 3. Protection des droits et libertés
- **Vigilance** sur des sujets sensibles

##### 4. Influence européenne
- **Modèle** anglo-saxon
- **Exigences** européennes (régulateurs sectoriels)

### C. Les principales AAI

#### Régulation économique
- **Autorité de la concurrence** (anc. Conseil de la concurrence)
- **Autorité des marchés financiers** (AMF)
- **Autorité de régulation des transports** (ART, anc. ARAFER)
- **Commission de régulation de l''énergie** (CRE)
- **ARCEP** (régulateur télécoms)

#### Audiovisuel et numérique
- **ARCOM** (depuis 2022, fusion CSA + Hadopi)

#### Libertés
- **CNIL** (1978) : protection des données personnelles
- **Défenseur des droits** (autorité constitutionnelle depuis 2008)
- **Contrôleur général des lieux de privation de liberté** (CGLPL)

#### Vie politique
- **HATVP** (Haute Autorité pour la transparence de la vie publique)
- **CNCCFP** (Commission nationale des comptes de campagne)

#### Sécurité
- **CNCTR** (renseignement)

### D. La multiplication et la loi du 20 janvier 2017

#### Avant 2017
- **Multiplication** désordonnée des AAI
- **Statuts** hétérogènes
- **Critiques** de la doctrine

#### Loi du 20 janvier 2017
##### Apports
- **Statut commun** des AAI/API
- **Liste fermée**
- **Limitation** du nombre

##### Contenu
- **Règles** d''indépendance
- **Modalités** de nomination
- **Régime** disciplinaire
- **Contrôle** parlementaire

### E. Les pouvoirs des AAI

#### Pouvoir réglementaire
- **Limité** mais réel (CC, 17 janvier 1989)
- **Conditions** : prévu par la loi, limité au domaine

#### Pouvoir de sanction
- **Sanctions** administratives prévues par la loi
- **Procédure** contradictoire obligatoire
- **Article 6 CESDH** applicable

#### Pouvoir d''enquête
- **Investigations**, perquisitions
- **Demande** d''informations

#### Pouvoir d''avis et de recommandation
- **Avis** aux pouvoirs publics
- **Recommandations** aux acteurs des secteurs

#### Pouvoir d''information
- **Rapports** annuels
- **Information** du public

### F. Les contrôles sur les AAI

#### Contrôle juridictionnel
##### Juge administratif
- **REP** contre les actes des AAI
- **Recours** spécifiques pour certaines sanctions

##### Conseil d''État
- **Compétence** en premier et dernier ressort pour certaines AAI

#### Contrôle parlementaire
- **Auditions**
- **Rapports** parlementaires
- **Loi** du 20 janvier 2017

#### Pas de tutelle ministérielle
- **Indépendance** principale
- **Distinction** AAI / établissements publics

### G. Le statut des membres

#### Garanties d''indépendance
- **Nomination** par diverses autorités (PR, présidents des assemblées)
- **Mandat** de durée déterminée
- **Inamovibilité**
- **Non-renouvelable** ou renouvelable une fois

#### Incompatibilités
- **Avec** des fonctions politiques actives
- **Déclarations** d''intérêts
- **Contrôle** par la HATVP

## IV. Les questions soulevées par les AAI

### A. La conformité à la Constitution

#### Article 20 C.
> *« Le Gouvernement (...) dispose de l''administration. »*

#### Position du CC
- **Pas d''inconstitutionnalité** automatique
- **Conditions** : objectif d''intérêt général, indépendance justifiée
- **CC, 17 janvier 1989** : validation des pouvoirs des AAI

### B. Le déficit démocratique

#### Critique
- **Non élues**
- **Non responsables** politiquement
- **Pouvoirs étendus**

#### Réponses
- **Contrôle parlementaire** renforcé
- **Audiences** publiques
- **Rapports** annuels obligatoires

### C. La coordination entre AAI

#### Problème
- **Multiplication** des AAI
- **Risque** de doublons et de contradictions

#### Solutions
- **Conventions** inter-AAI
- **Coordination** des compétences
- **Loi de 2017** : harmonisation

## V. Quelques fonctions spécifiques

### A. Le Défenseur des droits

#### Statut constitutionnel
- **Article 71-1 C.** (depuis 2008)
- **Autorité constitutionnelle**

#### Missions
- **Défense** des droits et libertés
- **Médiation** avec l''administration
- **Lutte** contre les discriminations
- **Protection** des enfants

#### Compétences
- **Saisine** par tout citoyen
- **Recommandations**
- **Pouvoirs** d''enquête

### B. La CNIL

#### Origine
- **Loi du 6 janvier 1978**
- Une des **premières** AAI

#### Missions
- **Protection** des données personnelles
- **Contrôle** des traitements
- **Sanctions** administratives

#### Évolution
- **Influence** du RGPD (UE) depuis 2018
- **Pouvoirs** renforcés (sanctions jusqu''à 4% du CA mondial)

## Conclusion

L''**administration d''État** s''organise selon une **structure** complexe :
- **Administration centrale** : pouvoir exécutif, ministères, directions
- **Administration déconcentrée** : préfets, directions départementales et régionales
- **AAI/API** : autorités indépendantes pour des missions spécifiques

Les **AAI** sont une **innovation majeure** du droit administratif français, qui a su s''adapter aux besoins de **régulation** technique et de **protection** des libertés tout en posant des **questions constitutionnelles** et démocratiques.

La **loi du 20 janvier 2017** a clarifié leur statut, mais le **débat** continue sur leur **place** dans l''ordre administratif et leur **légitimité** démocratique.

La **modernisation** de l''administration française se fait dans un **équilibre délicat** entre :
- **Centralisation** historique (Jacobinisme)
- **Déconcentration** comme outil de modernisation
- **Décentralisation** (étudiée fiche suivante)
- **Autonomisation** des AAI'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 7 - LES COLLECTIVITÉS TERRITORIALES
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les collectivités territoriales', 'Thème 3 - Chapitres 3-4 : Décentralisation',
       'Principe de libre administration (art. 72 C.), décentralisation (lois Defferre 1982, RC 2003, MAPTAM 2014, NOTRe 2015), commune, département, région.',
       array['Article 72 C.', 'Libre administration', 'Lois Defferre 1982', 'Acte II 2003', 'MAPTAM 2014', 'NOTRe 2015', 'Commune', 'Département', 'Région', 'Subsidiarité', 'Intercommunalité', 'Métropole', 'EPCI'],
       30, 7,
'# Les collectivités territoriales

## Introduction

Les **collectivités territoriales** (CT) sont des **personnes morales de droit public** distinctes de l''État, dotées d''une **autonomie** garantie par la Constitution. La **décentralisation** est l''un des grands chantiers institutionnels depuis 1982.

> **Article 1 C. (depuis 2003)** : *« L''organisation [de la France] est décentralisée. »*

## I. La décentralisation et la libre administration

### A. Le principe de libre administration - Article 72 C.

#### Texte
> *« Les collectivités territoriales de la République sont les communes, les départements, les régions, les collectivités à statut particulier et les collectivités d''outre-mer régies par l''article 74. Toute autre collectivité territoriale est créée par la loi. »*

#### Contenu
- **Personnalité morale** propre
- **Autorités élues**
- **Pouvoir réglementaire** propre
- **Conseil** délibérant et exécutif

### B. La distinction décentralisation / déconcentration

| | Décentralisation | Déconcentration |
|---|---|---|
| **Bénéficiaire** | Collectivités territoriales | Agents de l''État |
| **Personnalité** | Personne morale distincte | Pas de personnalité |
| **Autorités** | Élues | Nommées par l''État |
| **Lien** | Avec l''État : contrôle | Avec l''État : hiérarchique |

### C. Les principes constitutionnels

#### Subsidiarité - Article 72 al. 2 C.
> *« Les collectivités territoriales (...) peuvent prendre les décisions pour l''ensemble des compétences qui peuvent le mieux être mises en œuvre à leur échelon. »*

##### Contenu
- **Compétences** au niveau le plus pertinent
- **Liberté** d''organisation

#### Libre administration - Article 72 al. 3 C.
> *« Dans les conditions prévues par la loi, ces collectivités s''administrent librement par des conseils élus et disposent d''un pouvoir réglementaire pour l''exercice de leurs compétences. »*

#### Contrôle administratif - Article 72 al. 6 C.
> *« Dans les collectivités territoriales de la République, le représentant de l''État (...) a la charge des intérêts nationaux, du contrôle administratif et du respect des lois. »*

##### Principe
- **Contrôle a posteriori** par le préfet
- **Pas de tutelle** sur les actes (abolie en 1982)
- **Déféré préfectoral** au TA

#### Pas de tutelle entre CT - Article 72 al. 5 C.
> *« Aucune collectivité territoriale ne peut exercer une tutelle sur une autre. »*

##### Application
- **Chef de file** : possibilité de coordination
- **Pas de hiérarchie** stricte

### D. L''autonomie financière - Article 72-2 C.

#### Cinq alinéas
1. **Ressources** dont les CT peuvent disposer librement
2. **Possibilité** d''impositions
3. **Part déterminante** des ressources propres
4. **Compensation** des transferts de compétences
5. **Péréquation**

#### Décision CC 2009
- **Pas d''autonomie fiscale** des CT
- **Monopole** législatif fiscal

## II. La politique de décentralisation

### A. L''Acte I : les lois Defferre (1982-1983)

#### Contexte
- **Loi du 2 mars 1982** : droits et libertés des CT
- **Lois successives** (1983, 1984, 1985, 1986)

#### Apports majeurs
##### Suppression de la tutelle a priori
- **Contrôle** désormais **a posteriori** (déféré préfectoral)
- **Décisions** des CT immédiatement exécutoires

##### Transfert de compétences
- **Région** : développement économique, formation professionnelle
- **Département** : action sociale, collèges
- **Commune** : urbanisme, écoles primaires

##### Élection au suffrage universel
- **Conseils régionaux** (depuis 1986)
- **Conseils départementaux**

##### Création de la région
- **Région** : nouvelle collectivité territoriale (statut depuis 1972, devenue CT en 1982)

### B. L''Acte II (2003-2004)

#### Révision constitutionnelle du 28 mars 2003
##### Apports
- **Inscription** de la décentralisation à l''**article 1**
- **Libre administration** renforcée
- **Référendum** local possible
- **Droit de pétition**
- **Autonomie financière** (art. 72-2)

#### Loi du 13 août 2004
##### Transferts massifs
- **TER** (transports régionaux) aux régions
- **RMI**/RSA aux départements
- **Personnel** TOS dans les collèges et lycées
- **Routes nationales** secondaires

### C. L''Acte III (2014-2015)

#### Loi MAPTAM (Modernisation de l''action publique territoriale et affirmation des métropoles) - 27 janvier 2014
##### Apports
- **Création** de la **métropole**
- **Métropole du Grand Paris**, **Lyon**, **Marseille**
- **Pôles** d''équilibre territoriaux et ruraux

#### Loi NOTRe (Nouvelle organisation territoriale de la République) - 7 août 2015
##### Apports majeurs
- **Suppression** de la clause générale de compétence pour les régions et départements
- **Renforcement** des régions (compétences économiques)
- **Réduction** du nombre de régions : 22 → 13
- **Spécialisation** des CT

### D. Les évolutions récentes

#### Loi 3DS (2022)
- **Différenciation**, décentralisation, déconcentration, simplification

#### Tendance
- **Mouvement permanent** de réforme
- **Adaptation** aux territoires
- **Décentralisation** continue

## III. La commune

### A. La cellule de base

#### Caractéristiques
- **Plus ancienne** des CT
- **Environ 35 000** en France
- **Grande diversité** : de 0 à 2,5 millions d''habitants

#### Importance
- **Échelon** de proximité
- **Premier niveau** de la démocratie locale

### B. L''organisation communale

#### Le conseil municipal
##### Élection
- **Suffrage universel direct**
- **Mandat** de 6 ans
- **Modes de scrutin** différents selon la taille

##### Compétences
- **Délibère** sur les affaires de la commune
- **Vote** le budget
- **Élit** le maire

#### Le maire
##### Statut
- **Élu** par le conseil municipal
- **Mandat** de 6 ans
- **Double fonction** : représentant de l''État et chef de l''administration communale

##### Pouvoirs
- **Représentant de l''État** : état civil, police judiciaire
- **Représentant de la commune** : exécution des délibérations
- **Pouvoir réglementaire**
- **Pouvoir de police** municipale (art. L. 2212-2 CGCT)

#### Les adjoints
- **Élus** par le conseil municipal
- **Délégations** du maire
- **Nombre limité** selon la taille

### C. Les compétences communales

#### Compétences générales
- **Affaires** de la commune
- **Clause générale** maintenue pour les communes (NOTRe)

#### Compétences obligatoires
- **État civil**
- **Cimetières**
- **École primaire**
- **Voirie communale**

#### Compétences facultatives
- **Culture**
- **Sport**
- **Vie associative**

### D. Le budget communal

#### Principes
- **Unité**
- **Universalité**
- **Annualité**
- **Équilibre**

#### Structure
- **Section** de fonctionnement
- **Section** d''investissement

## IV. Le département

### A. Caractéristiques

#### Histoire
- **Création** : Révolution française (loi du 22 décembre 1789)
- **101 départements** en France (96 métropolitains + 5 d''outre-mer)

#### Spécificités
- **Échelon** intermédiaire
- **Solidarités** humaines et territoriales

### B. L''organisation départementale

#### Le conseil départemental (anc. conseil général)
##### Composition
- **Conseillers départementaux**
- **Élus** au scrutin binominal (depuis 2013)
- **Mandat** de 6 ans

#### Le président du conseil départemental
##### Pouvoirs
- **Exécutif** départemental
- **Chef** de l''administration départementale

### C. Les compétences départementales

#### Compétences obligatoires (depuis NOTRe)
- **Action sociale** (aide sociale à l''enfance, RSA, APA)
- **Collèges** (construction, entretien, fonctionnement)
- **Routes** départementales
- **Service d''incendie et de secours** (SDIS)

#### Suppression de la clause générale (2015)
- **Spécialisation**
- **Recentrage** sur les solidarités

## V. La région

### A. Caractéristiques

#### Histoire
- **Création** comme établissement public (1972)
- **CT** depuis 1982 (Loi Defferre)
- **13 régions** après NOTRe (2015)

#### Échelle
- **Stratégique**
- **Développement** économique

### B. L''organisation régionale

#### Le conseil régional
##### Composition
- **Conseillers régionaux**
- **Élus** au scrutin proportionnel à deux tours
- **Mandat** de 6 ans

#### Le président du conseil régional
##### Pouvoirs
- **Exécutif** régional
- **Chef** de l''administration régionale

### C. Les compétences régionales

#### Renforcement post-NOTRe
- **Développement économique** (chef de file)
- **Formation professionnelle**
- **Apprentissage**
- **Transports** (TER, gares routières)
- **Lycées**
- **Aménagement** du territoire

#### Plan régional
- **SRADDET** (schéma régional d''aménagement)

## VI. L''intercommunalité

### A. Notion

#### Définition
**Coopération** entre communes au sein d''**établissements publics de coopération intercommunale** (EPCI).

#### Échelons
- **Communautés de communes**
- **Communautés d''agglomération**
- **Communautés urbaines**
- **Métropoles**

### B. La métropole

#### Création
**Loi MAPTAM 2014**.

#### Statut
- **EPCI** à fiscalité propre
- **Compétences** étendues
- **Métropoles spéciales** : Paris, Lyon (collectivité), Marseille

#### Compétences
- **Développement** économique
- **Politique** de la ville
- **Habitat**
- **Mobilité**

### C. Les EPCI à fiscalité propre

#### Principe
- **Coopération** institutionnelle
- **Compétences** transférées
- **Fiscalité** propre (taxe d''habitation, foncière, etc.)

### D. Les EPCI sans fiscalité propre

#### Exemples
- **Syndicats** intercommunaux à vocation unique (SIVU)
- **Syndicats** intercommunaux à vocation multiple (SIVOM)

## VII. Les collectivités à statut particulier

### A. Notion
**Collectivités** dotées d''un statut **dérogatoire** au droit commun.

### B. Exemples
- **Corse** (collectivité unique depuis 2018)
- **Paris** (statut particulier)
- **Métropole de Lyon** (depuis 2015)
- **Guyane** et **Martinique** (collectivités uniques)

### C. Justifications
- **Spécificités** géographiques
- **Histoire** particulière
- **Évolutions** institutionnelles

## VIII. Les collectivités d''outre-mer

### A. Article 73 C. (Départements et régions d''outre-mer - DROM)
- **Guadeloupe**, Martinique, Guyane, La Réunion, Mayotte
- **Identité** législative
- **Adaptations** possibles

### B. Article 74 C. (Collectivités d''outre-mer - COM)
- **Polynésie française**, Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon, Wallis-et-Futuna
- **Spécialité** législative
- **Statuts** par lois organiques

### C. Article 76 C. (Nouvelle-Calédonie)
- **Statut** *sui generis*
- **Accord** de Nouméa (1998)
- **Référendums** d''autodétermination

## Conclusion

Les **collectivités territoriales** françaises forment un **système complexe** mais structuré autour de :
- Le principe de **libre administration** (art. 72 C.)
- La **dualité** commune / département / région
- L''**intercommunalité** comme outil d''optimisation
- Les **statuts particuliers** (Corse, Paris, métropoles)

La **décentralisation** est un mouvement **continu** depuis 1982 :
- **Acte I** (1982-1983) : suppression de la tutelle, transferts
- **Acte II** (2003-2004) : constitutionnalisation, autonomie financière
- **Acte III** (2014-2015) : métropoles (MAPTAM), spécialisation (NOTRe)
- **Loi 3DS** (2022) : approfondissement

Cette dynamique est **soumise à des contraintes** :
- **Contraintes financières** (autonomie limitée)
- **Contraintes européennes** (déficit, dette)
- **Contraintes démocratiques** (proximité, abstention)

L''**équilibre** entre **unité** de l''État et **diversité** territoriale reste un défi permanent du droit administratif français.'
from public.subjects where slug = 'l2-droit-administratif-1';

-- =====================================================================
-- FICHE 8 - LES ÉTABLISSEMENTS PUBLICS
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les établissements publics', 'Thème 3 - Chapitre 5 : EP',
       'Définition, classification (EPA/EPIC), création, régime, principe de spécialité, autonomie, tutelle, contrôle, GIP.',
       array['Établissement public', 'EPA', 'EPIC', 'Principe de spécialité', 'Personnalité morale', 'Tutelle', 'Contrôle', 'CE Caisse primaire 1938', 'GIP', 'Décentralisation fonctionnelle', 'Université', 'Hôpital'],
       28, 8,
'# Les établissements publics

## Introduction

L''**établissement public** (EP) est une **personne morale de droit public** distincte de l''État et des collectivités territoriales, créée pour gérer une **mission spécialisée** d''intérêt général. Les EP sont au cœur de la **décentralisation fonctionnelle** (par opposition à la décentralisation territoriale).

> **Citation** : *« L''établissement public est le moyen privilégié de la décentralisation fonctionnelle. »*

## I. La définition de l''établissement public

### A. Les éléments constitutifs

#### Personne morale de droit public
- **Personnalité juridique** propre
- **Patrimoine** distinct
- **Capacité** d''ester en justice

#### Mission spécialisée
- **Principe de spécialité** (cf. infra)
- **Objet** précis
- **Pas de compétence générale**

#### Rattachement à une personne publique
- **État** (EP nationaux)
- **Collectivités territoriales** (EP locaux)
- **Plusieurs** personnes publiques

#### Service public
- **Gestion** d''un service public
- **Objectif d''intérêt général**

### B. La distinction avec d''autres structures

#### EP vs collectivité territoriale
| | EP | CT |
|---|---|---|
| **Objet** | Spécialisé | Général |
| **Origine** | Création (besoin spécifique) | Constitutionnelle |
| **Autorités** | Souvent nommées | Élues |
| **Spécialité** | Stricte | Clause générale (commune) |

#### EP vs AAI
- **EP** : personnalité morale, principe de spécialité
- **AAI** : pas nécessairement de personnalité morale (mais API oui), missions de régulation

#### EP vs personne privée chargée d''un SP
- **EP** : personne **publique**
- **Personne privée** chargée d''un SP : personne **privée** mais missions publiques

## II. La classification des établissements publics

### A. EPA vs EPIC

#### EPA (établissement public administratif)
##### Caractéristiques
- **Mission** essentiellement **administrative**
- **Financement** principalement public
- **Régime** essentiellement **administratif**
- **Personnel** : fonctionnaires (en principe)

##### Exemples
- **Universités**
- **Hôpitaux** publics
- **Pôle Emploi**
- **CAF**, CPAM (gestion)

#### EPIC (établissement public industriel et commercial)
##### Caractéristiques
- **Mission** essentiellement **commerciale**
- **Financement** par les usagers (redevances)
- **Régime** mixte : public et privé
- **Personnel** : droit privé (en principe)

##### Exemples
- **SNCF** (depuis 2020, devenue SA)
- **RATP** (jusqu''en 2024)
- **CEA** (Commissariat à l''énergie atomique)
- **CNRS** (anc.)

#### Critères de distinction - CE, 16 novembre 1956, USIA
##### Trois critères cumulatifs
1. **Objet** de l''activité (commercial ou non)
2. **Origine** des ressources (redevances ou impôts)
3. **Modalités** de fonctionnement (privé ou public)

### B. Les EP nationaux

#### Caractéristiques
- **Rattachés** à l''État
- **Compétence** nationale ou supranationale
- **Création** : par décret (catégorie déjà existante) ou loi (nouvelle catégorie)

#### Exemples
- **Universités**
- **Bibliothèque nationale**
- **Musées** nationaux
- **Pôle Emploi**

### C. Les EP locaux

#### Caractéristiques
- **Rattachés** à une ou plusieurs CT
- **Compétence** locale

#### Exemples
- **CCAS** (centres communaux d''action sociale)
- **Écoles** spécifiques
- **SDIS** (départemental)

### D. Les EPCI

#### Notion
**Établissements publics de coopération intercommunale** : forme particulière d''EP regroupant des communes.

#### Types
- Communautés de communes, d''agglomération, urbaines
- Métropoles
- Syndicats

### E. Catégorie spéciale : les GIP

#### Groupements d''intérêt public
##### Origine
- **Loi du 15 juillet 1982** (recherche)
- **Loi du 17 mai 2011** : statut commun

##### Caractéristiques
- **Personnes morales de droit public**
- **Cogestion** public/privé
- **Durée** déterminée

##### Exemples
- **Maisons départementales des personnes handicapées** (MDPH)
- **Agences régionales de santé** (régime mixte avant 2010)

## III. Le principe de spécialité

### A. Notion

#### Définition
> *« L''établissement public ne peut exercer que les missions pour lesquelles il a été créé. »*

#### Justification
- **Distinction** avec les collectivités territoriales
- **Garantie** de l''affectation des moyens
- **Limitation** des dérives

### B. Application

#### Strict
- **Compétence d''attribution**
- **Pas de compétence générale**
- **Tout acte hors compétence** : nul

#### Mais évolution
- **CE, 4 décembre 1916, Astruc** : *« La compétence des EP doit être interprétée selon une logique fonctionnelle. »*
- **Tolérance** pour les activités **complémentaires** à la mission principale

### C. Les conséquences

#### Limitation des activités
- **Pas de diversification** abusive
- **Contrôle** du juge

#### Évolution récente
- **Filialisation** possible
- **Création** de structures filles pour des activités secondaires

## IV. La création et l''organisation des EP

### A. La création

#### Compétence
##### Catégorie nouvelle
- **Loi** (article 34 C. : *« création des catégories d''établissements publics »*)

##### Catégorie existante
- **Décret** simple suffit

#### Procédure
- **Texte** de création (statut)
- **Mission** définie
- **Organisation** prévue

### B. L''organisation interne

#### Le conseil d''administration
##### Composition
- **Représentants** de la tutelle
- **Personnalités** qualifiées
- **Représentants** du personnel
- **Représentants** des usagers (parfois)

##### Compétences
- **Délibère** sur les orientations
- **Vote** le budget
- **Élit** ou désigne les dirigeants

#### Le directeur (général)
##### Statut
- **Nommé** par la tutelle (souvent)
- **Représentant** légal

##### Pouvoirs
- **Exécutif** de l''EP
- **Gestion** quotidienne
- **Hiérarchie** sur le personnel

### C. Le personnel

#### EPA
- **Fonctionnaires** en principe
- **Statut** de la fonction publique d''État ou hospitalière

#### EPIC
- **Personnel de droit privé**
- **Code du travail** applicable
- **Conventions collectives**

## V. Le régime juridique des EP

### A. Le régime des actes

#### EPA
- **Actes administratifs** en principe
- **Compétence** du juge administratif

#### EPIC
- **Mixité** : actes administratifs et de droit privé
- **Critère** : nature de l''activité

### B. Le régime des contrats

#### EPA
- **Contrats administratifs** en principe
- **Marchés publics** soumis au code

#### EPIC
- **Contrats de droit privé** souvent
- **Sauf** contrats avec des personnes publiques

### C. La responsabilité

#### EPA
- **Responsabilité administrative**
- **Juge administratif** compétent

#### EPIC
- **Responsabilité** souvent civile (envers tiers)
- **Sauf** prérogatives de puissance publique

### D. Le contentieux

#### EPA
- **Juge administratif** par principe
- **Toutes les actions**

#### EPIC
- **Juge judiciaire** pour les rapports avec les usagers et le personnel
- **Juge administratif** pour les actes administratifs

## VI. L''autonomie et la tutelle

### A. L''autonomie

#### Personnalité juridique
- **Propre patrimoine**
- **Propre budget**
- **Propre personnel**
- **Capacité** d''ester en justice

#### Autonomie administrative
- **Décisions** propres
- **Organisation** interne
- **Gestion** des ressources

### B. La tutelle

#### Notion
**Contrôle** exercé par la personne publique de rattachement sur l''EP.

#### Distinction avec le pouvoir hiérarchique
- **Hiérarchie** : pouvoir d''instruction et de réformation
- **Tutelle** : contrôle limité aux cas prévus par les textes

#### Modalités
##### Contrôle a priori (rare)
- **Approbation** préalable de certains actes

##### Contrôle a posteriori (principe)
- **Annulation** des actes illégaux
- **Saisine** du juge administratif

##### Contrôle financier
- **Budget** soumis à approbation
- **Comptes** contrôlés

#### Contrôle dans l''EP
- **Commissaires** du gouvernement (rare aujourd''hui)
- **Représentants** de la tutelle au CA

### C. La tutelle des EP locaux

#### Spécificité
- **Préfet** pour les EP rattachés aux CT
- **Contrôle** allégé après 1982

### D. La spécialité comme limitation

#### Contrôle du principe
- **Juge administratif** garant
- **Activités** hors spécialité = nul

## VII. Cas particuliers

### A. Les universités

#### Statut
- **EPA** (EPCSCP : établissement public à caractère scientifique, culturel et professionnel)
- **Loi du 26 janvier 1984** (Loi Savary)
- **Loi LRU** (2007) : autonomie renforcée

#### Spécificités
- **Liberté** académique
- **Conseil d''administration** élu
- **Compétences** étendues depuis LRU

### B. Les hôpitaux publics

#### Statut
- **EPA** (établissements publics de santé)
- **Code de la santé publique**

#### Organisation
- **Conseil de surveillance**
- **Directoire**
- **Directeur** général

#### Réforme HPST (2009)
- **Hôpital, patients, santé, territoires**
- **Modernisation** de la gouvernance

### C. La SNCF et la RATP

#### SNCF (jusqu''en 2020)
- **EPIC**
- Devenue **société anonyme** (SA) en 2020 (groupe SNCF)

#### RATP
- **EPIC**
- Transformation en SA prévue **2024**
- **Ouverture** à la concurrence

#### Justification
- **Européanisation** (concurrence)
- **Marchéisation** des transports

### D. Les chambres de commerce et d''industrie

#### Statut
- **EPA** sui generis
- **Mission** : représentation des entreprises

#### Spécificités
- **Élection** par les entreprises
- **Tutelle** ministérielle

## VIII. L''évolution des établissements publics

### A. La transformation en SA

#### Cas
- **France Télécom → Orange**
- **GDF → ENGIE**
- **EDF**
- **SNCF**
- **RATP** (prévu)
- **Aéroports de Paris (ADP)**

#### Justifications
- **Européanisation** (marché unique, concurrence)
- **Privatisations**
- **Souplesse** de gestion

### B. Les nouveaux EP

#### Création récente
- **Société du Grand Paris** (transport)
- **Voies navigables de France**
- **Météo-France**

#### Tendances
- **Spécialisation** accrue
- **Cogestion** avec le secteur privé
- **Performance** et efficacité

### C. Les EP de l''UE

#### Influence
- **Agences européennes** (modèles)
- **Adaptation** des EP nationaux
- **Coopération** transfrontalière

## Conclusion

Les **établissements publics** constituent un **outil souple** d''action administrative :
- **Personnes morales de droit public** spécialisées
- **Décentralisation fonctionnelle** (≠ territoriale)
- **Variété** : EPA, EPIC, GIP

La **classification EPA/EPIC** structure la matière mais connaît des **assouplissements** sous l''influence européenne :
- **Transformations** en sociétés anonymes
- **Concurrence** dans les services publics
- **Mixité** des régimes

Le **principe de spécialité** demeure central mais s''adapte aux **réalités** modernes :
- **Filialisation**
- **Activités complémentaires**
- **Coopérations** multipartites

Les EP sont une **réussite** du droit administratif français : ils permettent à l''**État** et aux **collectivités** de gérer des services publics spécialisés avec une **autonomie** opérationnelle tout en maintenant un **contrôle** politique et financier.

L''**avenir** des EP est lié aux évolutions :
- **Européanisation** (concurrence, marché unique)
- **Modernisation** (performance, agilité)
- **Décentralisation** (proximité)
- **Numérisation** (nouveaux services publics)'
from public.subjects where slug = 'l2-droit-administratif-1';
