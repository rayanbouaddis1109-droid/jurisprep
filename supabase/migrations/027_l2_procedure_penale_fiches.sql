-- =====================================================================
-- JurisPrép - Cours complet : Procédure pénale (L2 S2)
-- 8 fiches très approfondies basées sur le cours magistral
-- =====================================================================

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-procedure-penale');

-- =====================================================================
-- FICHE 1 - INTRODUCTION À LA PROCÉDURE PÉNALE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Introduction à la procédure pénale', 'Introduction',
       'Définition et enjeux de la procédure pénale, lien avec la souveraineté nationale, évolution historique depuis le Code d''instruction criminelle de 1808, rôle central du procureur de la République et du juge d''instruction.',
       array['Procédure pénale', 'Code d''instruction criminelle 1808', 'Juge d''instruction', 'Procureur de la République', 'Police judiciaire', 'Souveraineté nationale', 'DDHC', 'ENM', 'Affaire Outreau', 'Réforme 2000'],
       25, 1,
$$
# Introduction à la procédure pénale

## I. Définition et enjeux

La **procédure pénale** est l'organisation judiciaire de la poursuite des infractions. Elle remplit plusieurs fonctions :
- **Application matérielle** des règles du droit pénal général
- **Formalisation de la recherche des preuves** pour que celles-ci soient objectivement utilisables
- Garantie que le **procès pénal se déroulera de manière impartiale** et sur des informations fiables

> La PP est du **domaine de la loi** (Constitution de 1958). Elle est directement rattachée aux libertés constitutionnelles : *article 9 DDHC* (présomption d'innocence), *article 7 DDHC* (nul ne peut être arrêté que dans les cas déterminés par la loi).

### Caractère régalien

La PP constitue le **noyau dur de la souveraineté nationale**. Sans justice pénale forte et exclusive à l'État, l'arbitraire domine et la justice privée prend le dessus — destruction de l'État de droit. C'est pourquoi la PP reste essentiellement nationale malgré la construction européenne (Europol, Eurojust, Parquet européen = instruments de coopération, non d'unification).

## II. Évolution historique

### Le modèle napoléonien (Code d'instruction criminelle de 1808)

Napoléon a imprimé sa marque pour les siècles à venir. Le pivot central est le **juge d'instruction**, homme-orchestre tout-puissant :
- Pouvoirs sur les biens, les personnes et les lieux
- Pas d'obligation de motiver la détention
- Soutenu par un personnel de police qui cumulait police administrative, secrète et judiciaire

Jusqu'en 1870, une personne pouvait être placée en **garde à vue 24h sans que famille ni avocat** ne soit prévenu.

### Les crises qui ont provoqué les réformes

**Années 1970–2000** : plusieurs phénomènes ont conduit à réformer profondément la PP :

| Facteur | Effet |
|---|---|
| Création de l'ENM | Jeunes magistrats sur des postes de juge d'instruction dès leur sortie d'école |
| Affaire Ranucci (1976) | Médiatisation extrême, critique du juge d'instruction |
| Affaire du petit Grégory (1984) | Médias polluent la scène de crime ; juge d'instruction discrédité |
| Affaire d'Outreau (années 2000) | Magistrat contraint de comparaître devant l'Assemblée nationale — confusion des pouvoirs |

### Le basculement vers le procureur de la République

Depuis 2000, le **Procureur de la République** est devenu le véritable pivot de la justice pénale. Le juge d'instruction voit son rôle s'atténuer. La loi du 15 juin 2000 renforce les droits de la défense, introduit le **juge des libertés et de la détention (JLD)** et crée l'article préliminaire du CPP.

## III. Déroulement schématique de la procédure

```
Infraction → Enquête de police (OPJ/APJ sous contrôle du Parquet)
           → Décision du Procureur :
               • Classement sans suite
               • Mesure alternative (composition pénale, CJIP…)
               • Poursuite → Instruction (crimes) ou Tribunal correctionnel
                           → JLD (détention provisoire, perquisitions)
                           → Jugement → Voies de recours
```

La **victime** peut engager une *plainte avec constitution de partie civile* pour déclencher les poursuites si le parquet a classé sans suite — mécanisme de verrou de sécurité.
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 2 - LA PRÉSOMPTION D'INNOCENCE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La présomption d''innocence', 'Partie 1 - Chapitre 1',
       'Fondements constitutionnels et conventionnels de la présomption d''innocence, ses effets protecteurs envers les tiers et au cours de la procédure, et les présomptions de culpabilité légales reconnues par la CEDH.',
       array['Présomption d''innocence', 'Article 9 DDHC', 'Loi 15 juin 2000', 'Article préliminaire CPP', 'Mise en examen', 'Témoin assisté', 'Contrôle judiciaire', 'Présomption de culpabilité', 'CEDH Salabiaku 1988', 'Diffamation', 'Fautes journalistiques'],
       30, 2,
$$
# La présomption d'innocence

## I. Fondements et mécanisme

### Fondements textuels

| Source | Disposition |
|---|---|
| *Article 9 DDHC* | « Tout homme étant présumé innocent jusqu'à ce qu'il ait été déclaré coupable… » |
| *Article 7 DDHC* | Nul ne peut être accusé/arrêté que dans les cas déterminés par la loi |
| *Article 8 DDHC* | La loi ne doit établir que des peines strictement nécessaires |
| CEDH, art. 6 § 2 | Droit à un procès équitable |
| *Article préliminaire CPP* | Inséré par la **loi du 15 juin 2000** |

### Mécanisme procédural

La PI est une **présomption légale** au sens de l'article 1354 du Code civil : elle **inverse la charge de la preuve**. Plutôt que d'obliger l'accusé à prouver un fait négatif (son innocence), c'est l'**accusation qui doit prouver un fait positif** (la culpabilité).

Effet : la personne poursuivie est **innocente jusqu'au jugement définitif**, y compris en cas de condamnation en première instance ou en appel.

> ⚠️ L'expression « présumé assassin » est un **contre-sens absolu** — elle contient *culpa* (faute). Depuis 1993, le terme « inculpé » a été remplacé par **mis en examen** (accès au dossier d'instruction sans préjugement), puis par la loi de 2000, un statut intermédiaire a été créé : le **témoin assisté**.

## II. Effets de la présomption d'innocence

### A. Protection contre les tiers et fautes journalistiques

La PI protège la personne contre le regard d'autrui car :
- La procédure peut s'arrêter sans jugement (classement sans suite, non-lieu, relaxe, acquittement)
- La procédure est secrète : seuls 3 à 5 % du dossier peuvent fuiter
- La condamnation est une **prérogative régalienne** exclusive

**Infractions journalistiques créées par la loi du 15 juin 2000** (insérées dans la loi du 29 juillet 1881 sur la liberté de la presse) :
- Interdiction de **présenter une personne identifiable menottée ou entravée** → amende de **15 000 €**
- Interdiction de réaliser/publier un **sondage sur la culpabilité** d'une personne

*Jurisprudence clé :* **Crim. 10 novembre 2009** — reportage présentant des hauts fonctionnaires comme protégés des USA. La CDC censure le reportage pour violation de la PI car les éléments à décharge étaient présentés avant les éléments à charge (présentation faussement contradictoire). La CEDH condamne cependant la France le **21 janvier 2016** pour atteinte au droit à l'information.

### B. Protection au cours de la procédure

**Protection contre les enquêteurs :**
- Les aveux ne suffisent pas sans **preuves corroborantes** (risque de torture, d'aveux pour protéger autrui)
- Interdiction de déduire la culpabilité d'une affaire antérieure non jugée
  - *Crim. 14 octobre 2020* : cassation d'une condamnation pour viol fondée sur des similitudes avec une enquête de 1991 n'ayant pas abouti

**Protection contre l'accusation :**
- *Crim. 8 avril 2010* : la logique automatique de l'instruction (statut → mise en examen → DP) ne viole pas la PI
- *Crim. 29 septembre 2009* : cassation d'une décision motivée par une « émotion légitime » du juge → la PI interdit les convictions personnelles
- La charge de la preuve revient toujours au **ministère public** (Crim. 3 février 2009)

## III. Les présomptions de culpabilité (exception)

### Conditions CEDH (cumulatives)

La **CEDH** a posé les conditions dans lesquelles une présomption de culpabilité est acceptable :
- *CEDH, Salabiaku c/ France, 7 octobre 1988*
- *CEDH, Pham Hoang, 25 septembre 1992*

| Condition | Contenu |
|---|---|
| Simple | Doit pouvoir être renversée par la défense |
| Légale | Seul le législateur peut créer une PC |
| Exceptionnelle | Le principe demeure la PI |
| Proportionnée | Nécessaire à l'efficacité de la poursuite |
| Non criminelle | Impossible en matière criminelle |

**Conditions supplémentaires dégagées par la Cour de cassation** (après CC, 16 septembre 2011) :
- Possibilité d'apporter la **preuve contraire**
- Culpabilité déduite des **circonstances concrètes** (in concreto), non du hasard
- Pas d'atteinte aux **droits de la défense**
- Indices **précis, graves et concordants**

**Exemples légaux de PC :** art. 418 et s. Code des douanes (contrebande), art. 225-5 CP (proxénétisme), art. 324-1 CP (blanchiment), art. 225-12-5 CP (exploitation de la mendicité), art. 35 loi 1881 (diffamation journalistique).
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 3 - LA LIBERTÉ D'ADMISSION DE LA PREUVE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La liberté d''admission de la preuve', 'Partie 1 - Chapitre 2',
       'Principe de liberté de la preuve en matière pénale (art. 427 CPP), intime conviction du juge, limites textuelles, principe du contradictoire, égalité des armes, régularité et valeur probante des procès-verbaux.',
       array['Article 427 CPP', 'Liberté de la preuve', 'Intime conviction', 'Principe du contradictoire', 'Égalité des armes', 'Article 429 CPP', 'Article 430 CPP', 'Article 431 CPP', 'Article 537 CPP', 'Procès-verbal', 'Force probante parfaite', 'Secret professionnel'],
       32, 3,
$$
# La liberté d'admission de la preuve

## I. Le principe (art. 427 CPP)

> *« Hors les cas où la loi en dispose autrement, les infractions peuvent être établies par tout mode de preuve et le juge décide d'après son intime conviction. Le juge ne peut fonder sa décision que sur des preuves qui lui sont apportées au cours des débats et contradictoirement discutées devant lui. »*

**Contenu :** en matière pénale, **tous les modes de preuve sont admissibles**, sans hiérarchie entre eux (contrairement à la procédure civile). Indices matériels, enregistrements audio/vidéo, témoignages, rapports d'expertise — tout peut être présenté.

La recevabilité est contrôlée par la **Cour de cassation**, mais le contenu (appréciation de la valeur de la preuve) relève exclusivement des **juges du fond**.

*Crim. 14 octobre 2009* : une preuve peut être apportée même **pendant le délibéré** à condition d'être soumise au contradictoire.

## II. Les limites textuelles

### A. Caractère d'exception de la poursuite pénale

Le juge ne peut fonder sa décision que sur les éléments de **l'affaire dont il est saisi** et qui lui ont été apportés lors des débats. Il ne peut pas utiliser ses connaissances personnelles.

*Crim. 15 janvier 2014* : un juge d'instruction saisi via entraide judiciaire luxembourgeoise ne peut pas requalifier les faits pour ajouter la fraude fiscale — les pièces ne pouvaient être utilisées que pour l'infraction visée.

### B. Le principe du contradictoire

**Communication des pièces** à toutes les parties **et** possibilité de les **discuter**.

> Le contradictoire n'est **pas continu** tout au long de la procédure pénale française :
> - **Enquête de police** : inquisitoire, secrète, pas de contradictoire (avocat muet, pas d'accès au dossier)
> - **Instruction** : semi-contradictoire (interrogatoire de première comparution, débat sur détention provisoire, contestations de saisies)
> - **Procès** : **contradictoire total**

*Crim. 24 janvier 2023* : une CA qui écarte des pièces produites en appel sans les avoir examinées viole le contradictoire.

### C. L'égalité des armes

Fondement : **art. 6 CEDH** — procès équitable. Chaque partie doit pouvoir développer sa stratégie.

*Crim. 9 avril 2014* : un avocat qui dépose ses conclusions la veille à 14h30 ne peut pas invoquer l'égalité des armes parce que le parquet lui a répondu le lendemain matin — il s'est lui-même placé dans cette situation.

*Crim. 31 octobre 2017* : une confrontation simultanée avec sept accusateurs pendant la GAV ne viole pas l'égalité des armes — on est avant l'engagement des poursuites, le contradictoire ne s'applique pas encore.

## III. La régularité des procès-verbaux (art. 429 CPP)

### Conditions de validité (art. 429)

Un procès-verbal n'a de valeur probante que si :
1. Il est **régulier en la forme** (intitulé PV, objet, date/heure, rédigé en français, sans blanc, relu par la personne, signé sur chaque page, pages numérotées)
2. Son auteur a agi **dans l'exercice de ses fonctions** (compétence matérielle et territoriale)
3. Il porte sur ce que l'auteur **a vu, entendu ou constaté personnellement**

### Valeur probante : simple renseignement (art. 430)

**Principe :** le PV ne vaut **qu'à titre de simple renseignement**. Un arrêt fondé uniquement sur un PV est automatiquement cassé — il faut un faisceau d'indices.

### Exception : force probante parfaite (art. 431 et 537)

Lorsque la loi donne expressément pouvoir à l'auteur du PV de **constater la commission d'une infraction**, le PV fait foi jusqu'à preuve contraire :
- *Crim. 27 mai 2015* : PV de téléphone tenu à la main au volant → fait foi, la relaxe est cassée
- *Crim. 30 janvier 2024* : PV de non-port du masque → fait foi même sans vidéo-surveillance

**Pour renverser** cette force probante (art. 431/537) : preuve contraire **par écrit** (rapport d'une autorité publique) **ou par témoin** (déposant à l'audience sous serment).

> *Crim. 18 janvier 2021* : une **attestation médicale** n'est ni un écrit ni un témoignage au sens du CPP → la relaxe est cassée.

**Limites de l'exception** : le PV fait foi de la **matérialité de l'infraction**, pas des circonstances. On peut attaquer :
- Fiabilité du radar (certificat d'étalonnage)
- Imprécision du PV sur les **éléments constitutifs** de l'infraction
- *Crim. 27 janvier 2016* : PV de non-respect des distances de sécurité ne mentionnant ni la voie ni l'endroit → annulé car insuffisamment précis
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 4 - LES ACTEURS DE L'ENQUÊTE DE POLICE : OPJ, APJ ET AUTORITÉ JUDICIAIRE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les acteurs de l''enquête de police', 'Partie 2 - Chapitre 1',
       'Distinction police judiciaire / administrative, hiérarchie des acteurs (OPJ, APJ, assistants d''enquête, police municipale), pouvoirs respectifs, rôle du procureur de la République et du JLD.',
       array['Police judiciaire', 'Police administrative', 'OPJ', 'APJ', 'Article 12 CPP', 'Article 14 CPP', 'Article 16 CPP', 'Article 20 CPP', 'Article 21 CPP', 'Procureur de la République', 'JLD', 'IGPN', 'IGGN', 'Loi LOPMI 2023', 'Neutralité de l''enquête', 'Art. 39-3 CPP'],
       30, 4,
$$
# Les acteurs de l'enquête de police

## I. Police judiciaire vs police administrative

**Police administrative (PA) :** maintien de l'ordre public, **prévention** des infractions. Donneur d'ordre = le **préfet** (exécutif). Contentieux devant le **juge administratif**. Fondement : Code de la sécurité intérieure.

**Police judiciaire (PJ) :** investigation après commission d'une infraction. Donneur d'ordre = le **procureur de la République** (autorité judiciaire). Contentieux devant le **juge judiciaire**. Fondement : Code de procédure pénale.

> ⚠️ Ce sont les **mêmes personnels** qui cumulent PA et PJ — héritage napoléonien. La **loi LOPMI du 24 janvier 2023** (applicable au 1er janvier 2024) décentralise les pouvoirs au niveau du préfet qui peut engager indistinctement police et gendarmerie.

## II. La hiérarchie des acteurs policiers

### Officiers de police judiciaire (OPJ) — art. 16 CPP

**Pouvoirs propres (art. 17)** :
- Choisir la **forme de l'enquête** (flagrance ou préliminaire)
- Mener tous les actes **nommés dans le CPP** de façon autonome
- Informer **immédiatement** le procureur de la République
- Requérir la **force publique**
- Dresser les procès-verbaux de synthèse

> *Crim. 15 décembre 2016* : un OPJ est considéré **en service** même avant sa prise de poste, dès lors qu'il intervient dans sa circonscription dans le cadre de ses attributions.

**Obligations** :
- Recevoir **toutes les plaintes** (anonymes ou non — art. 17)
- **Neutralité** de l'enquête : art. 39-3 CPP oblige le procureur à veiller à ce que les investigations « tendent à la manifestation de la vérité et soient accomplies **à charge et à décharge** »
- **Loyauté** dans la recherche de la preuve (interdiction de provoquer à l'infraction ou de recourir à un stratagème déloyal)

### Agents de police judiciaire (APJ) — art. 20 CPP

Ils **secondent les OPJ**. Pouvoirs propres : constater des infractions par PV, recevoir les plaintes, transmettre des réquisitions sur délégation.

> *Crim. 18 décembre 2013* : des APJ peuvent mettre en place une surveillance vidéo sur un parking visible depuis la voie publique — pas de perquisition.
> *Crim. 23 mai 2023* : des APJ ouvrant un sac pour vérifier son contenu suite à une fuite d'un individu et une odeur de cannabis ne mènent pas une perquisition — l'OPJ déclare ensuite la flagrance.

### Assistants d'enquête — art. 21-3 CPP (loi LOPMI 2023)

Militaires GN ou personnels administratifs PN. Missions strictement limitées (convocations, notification des droits en GAV, demandes d'interprète, organisation de la visite médicale, retranscription d'écoutes sur habilitation). **Doivent prêter serment** à leur prise de service.

### Agents de police municipale — CSI art. L511-20 s.

Pouvoirs très limités : PV de contraventions à l'ordre public communal (code de la route, outrage sexiste, règlements communaux). **Pas de pouvoir de recevoir les plaintes**. Agissent sous autorité du maire (informations) et du procureur (réquisitions ponctuelles).

## III. L'autorité judiciaire dans l'enquête

### Le procureur de la République (Parquet)

**Pendant l'enquête :** directeur et contrôleur de régularité ; premier OPJ.

**À la clôture :** titulaire de l'**opportunité des poursuites** (classer, mesure alternative, poursuivre).

**Indivisibilité du parquet** — *Crim. 29 janvier 2014* : les membres du parquet sont interchangeables, la présence du même représentant à tous les stades n'est pas requise.

> La CDC a reconnu que le ministère public **n'est pas une autorité judiciaire** au sens de l'art. 5 § 3 CEDH (*Crim. 15 décembre 2010 ; 18 janvier 2011*) en raison de ses liens avec l'exécutif. Depuis la **loi du 25 juillet 2013** (art. 31 CPP), il exerce l'action publique dans le **respect du principe d'impartialité**.

### Le juge des libertés et de la détention (JLD)

Créé par la **loi du 15 juin 2000**. Normalement le président du TJ (délégable).

**Rôle pendant l'enquête :**
- Autorisation des **perquisitions refusées** ou chez des personnes protégées
- Contrôle des **prolongations exceptionnelles de GAV** (au-delà de 48h)
- Autorisation des **géolocalisations**, captations de son et d'image
- **Détention provisoire** (matière principale)

*CC, 19 janvier 2023* : le même JLD peut autoriser une perquisition et statuer sur la contestation des saisies, **sauf** s'il a lui-même exécuté la perquisition (atteinte à l'impartialité).
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 5 - LA LOYAUTÉ DANS L'OBTENTION DE LA PREUVE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'La loyauté dans l''obtention de la preuve', 'Partie 2 - Chapitre 1 (suite)',
       'Obligation de loyauté des OPJ dans la recherche de la preuve, distinction entre stratagème déloyal et provocation policière, définition par l''Assemblée plénière 2019, preuve obtenue par des particuliers.',
       array['Loyauté de la preuve', 'Stratagème déloyal', 'Provocation policière', 'Ass. plén. 9 décembre 2019', 'Contournement de procédure', 'Grief', 'Art. 39-3 CPP', 'Liberté d''admission de la preuve', 'Preuve illicite', 'Particuliers', 'Art. 427 CPP'],
       25, 5,
$$
# La loyauté dans l'obtention de la preuve

## I. Le principe de loyauté des OPJ

Contrairement aux particuliers (bénéficiaires de la liberté d'admission de la preuve même pour des preuves illicites), les **fonctionnaires de police** sont soumis à une **obligation de loyauté** dans la recherche de la preuve.

Le **non-respect** de cette loyauté peut entraîner la **nullité** de l'acte ou de l'enquête entière — mais seulement si un **grief est démontré** (atteinte illégitime aux droits de la défense de la personne poursuivie).

> ⚠️ L'art. 39-3 CPP impose au procureur de veiller à ce que les investigations soient accomplies « à charge et à décharge ». L'OPJ en infraction encourt des **sanctions disciplinaires**.

## II. La provocation à l'infraction (interdit absolu)

Un OPJ **ne peut pas inciter** une personne à commettre une infraction pour ensuite la constater. La provocation policière n'existe que si le policier a eu une **attitude active** dans l'obtention de la preuve.

**Distinction clé :** surveiller passivement une infraction déjà en cours ≠ provoquer l'infraction.

## III. Le stratagème déloyal : définition par l'Assemblée plénière

### Arrêt fondateur : Ass. plén., 9 décembre 2019

*Contexte :* une star du football victime d'un chantage (sextape). Le procureur désigne un OPJ qui se substitue à l'avocat de la victime et négocie par téléphone avec les maîtres chanteurs, les rappelant parfois lui-même.

**Décision :** l'assemblée plénière définit le **stratagème déloyal** comme celui qui :
1. Correspond à un **contournement** ou **détournement** de la procédure
2. A pour effet ou objet de **vicier la recherche de la preuve** et la manifestation de la vérité
3. **Porte atteinte aux droits de la défense** (grief démontré)

> En l'espèce : pas de stratagème car l'OPJ s'est inséré dans un processus déjà engagé (chantage préexistant) et n'a pas provoqué la commission de l'infraction.

### Arrêt antérieur : Ass. plén. sur l'affaire du roi du Maroc (Crim. 20 septembre 2016)

Des journalistes auteurs d'un livre prétendant faire du chantage au roi du Maroc sont surveillés par la police dès que leur avocat les contacte pour un 2nd rendez-vous. Ils sont interpellés avec la rançon.

*1re décision CDC :* stratagème déloyal car la police s'est coordonnée avec l'avocat-intermédiaire.
*Ass. plén., renvoi :* la police **passive** lors du rdv ne constitue pas de provocation ni de stratagème — la preuve est licite.

## IV. Exemples jurisprudentiels de loyauté/déloyauté

| Arrêt | Situation | Solution |
|---|---|---|
| *Crim. 31 mars 2015* | Suspect qui avoue spontanément pendant la pause cigarette à un gendarme étranger à l'enquête | Pas de stratagème — aveu fortuit |
| *Crim. 28 septembre 2022* | Victime rouvre le défilé d'identification sans avocat et demande à voir les manches | **Stratagème** — modification des règles de la confrontation |
| *Crim. 14 avril 2015* | Écoute légale où la personne raccroche mal son téléphone | Pas de déloyauté — captation **fortuite** |
| *Crim. 14 novembre 2017* | Géolocalisation irrégulière mais la personne avait volé et changé l'immatriculation du véhicule | Rejet du pourvoi — pas d'invocation de déloyauté par celui qui était lui-même hors-la-loi |
| *Crim. 25 février 2020* | Policiers qui utilisent la victime d'une séquestration pour surveiller les suspects | Pas de stratagème — pas de contournement de procédure |

## V. La preuve obtenue par des particuliers

La liberté d'admission de la preuve s'applique pleinement aux particuliers. Même une preuve obtenue **illicitement** ou **déloyalement** par un particulier est recevable devant le juge — celui-ci apprécie librement sa valeur.

*Crim. 31 janvier 2012* : le majordome d'une cliente enregistre la conversation entre celle-ci et son avocat et transmet l'enregistrement à la police. L'OPJ retranscrit sur PV → **PV valable** (l'origine frauduleuse de la preuve n'affecte pas sa recevabilité ; le PV ne fait que retranscrire).
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 6 - LES FORMES D'ENQUÊTE POLICIÈRE ET L'ARTICLE 73 CPP
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les formes d''enquête policière et l''article 73 CPP', 'Partie 2 - Chapitre 1 (suite)',
       'Caractères secret, écrit et légal de l''enquête. Enquête de flagrance (art. 53 CPP) et enquête préliminaire (art. 75 CPP). Intervention d''un particulier en flagrance (art. 73 CPP) : conditions cumulatives et jurisprudence.',
       array['Enquête de flagrance', 'Enquête préliminaire', 'Article 53 CPP', 'Article 73 CPP', 'Article 75 CPP', 'Théorie de l''apparence', 'Flagrance temporelle', 'Évidence de l''infraction', 'Proportionnalité', 'Art. 11 CPP', 'Secret de l''enquête', 'Agents de sécurité privée'],
       28, 6,
$$
# Les formes d'enquête policière et l'article 73 CPP

## I. Les caractères de l'enquête de police

### Secret (art. 11 CPP)

L'enquête est **secrète** : les policiers ne peuvent révéler aucun élément d'enquête. Violation = sanctions disciplinaires **et** pénales (1 an d'emprisonnement + amende).

Depuis 2011, l'avocat en GAV est soumis au secret de l'enquête (art. 63-4-4 CPP). La violation du secret par le procureur de la République est possible uniquement pour des **éléments factuels objectifs** (art. 11 al. 3), sans nommer d'auteur ni formuler de suppositions.

*Crim. 10 janvier 2017* : la présence d'un journaliste lors d'une perquisition (même autorisée administrativement) cause un **grief automatique** à la PI si son identité devient visible.

### Écrit

Conséquence du secret : la forme **procès-verbal** est la seule façon de fixer l'enquête. Le PV assure la régularité de la procédure et garantit qu'il n'y a pas eu de fuite ou de modification du contenu.

### Légal

Tous les actes et procédures d'enquête sont **nommés dans le CPP** (Titre II). L'OPJ ne peut choisir qu'une forme d'enquête **prévue par la loi**, sous peine de nullité totale.

## II. Les formes d'enquête

| Forme | Articles | Déclenchement | Pouvoirs |
|---|---|---|---|
| **Enquête de flagrance** | Art. 53 à 72 CPP | OPJ constate une infraction flagrante | Pouvoirs exorbitants (perquisitions sans consentement, GAV...) |
| **Enquête préliminaire** | Art. 75 à 78 CPP | OPJ initie une enquête de fond | Pouvoirs plus limités, consentement souvent requis |
| **Enquêtes spéciales** | Non étudié | Crime organisé, terrorisme | Régime dérogatoire (non traité en cours) |

> En pratique, **98 % des enquêtes** sont menées en **flagrance** (manque de moyens humains pour les enquêtes longues).

## III. L'enquête de flagrance (art. 53 CPP)

### Conditions d'ouverture

**1. Infraction majeure** : crime ou délit puni d'une peine d'emprisonnement (art. 67 CPP).

> **Théorie de l'apparence** : la gravité s'apprécie **au moment où l'OPJ intervient**. Si les faits sont ensuite requalifiés en contravention, la flagrance reste valide.
> *Crim. 3 septembre 2002* : femme au visage ensanglanté → apparence justifiant la flagrance maintenue même si les coups se révèlent contraventionnels.

**2. Flagrance temporelle** : l'infraction se commet **actuellement** ou vient de se commettre, ou la personne est poursuivie par la clameur publique / trouvée avec des traces (art. 53 CPP).

**3. Évidence** : l'infraction est apparente, pas besoin de la rechercher.

## IV. L'intervention d'un particulier : art. 73 CPP

> *Article 73 CPP* : « Dans les cas de crime flagrant ou de délit flagrant puni d'une peine d'emprisonnement, **toute personne** a qualité pour en appréhender l'auteur et le conduire devant l'officier de police judiciaire le plus proche. »

### Conditions cumulatives

| Condition | Contenu |
|---|---|
| **1. Gravité** | Crime ou délit puni d'une peine d'emprisonnement (pas les contraventions) |
| **2. Flagrance stricte** | L'infraction se commet **actuellement** (pas « vient de se commettre ») |
| **3. Évidence** | Pas besoin de rechercher la commission de l'infraction |
| **4. Proportionnalité** | Moyens employés proportionnés à l'objectif (remettre la personne à la police) → plus stricte qu'en légitime défense |

> **Obligation immédiate** : appeler la police et maintenir la personne à disposition (comme si elle était aux mains de la police). Intégrité physique protégée.

### Jurisprudence clé

| Arrêt | Situation | Décision |
|---|---|---|
| *Crim. 1er oct. 2013* | Agents de sécurité qui gifler, étrangler, mettre en décubitus dorsal un voleur → mort | Condamnés — décubitus dorsal = geste létal, interdit (CEDH) |
| *Crim. 28 janv. 2014* | APM poursuivent un scooter avec 3 mineurs non-casqués → scooter se renverse | Valide — mise en danger d'autrui (délit), flagrance, pas de disproportion |
| *Crim. 17 mars 2021* | Agents privés brisent les scellés d'une semi-remorque (sur info gendarmerie) | Annulation — pas d'évidence, pas de délégation ; PV dissimule l'intervention = déloyauté |
| *Crim. 3 avr. 2007* | APM matraque un individu ressemblant au description d'un braqueur | Invalide — infraction déjà commise (pas de flagrance) + disproportion |

### Agents de sécurité privée

Ils n'ont pas de pouvoirs de PJ. Ils invoquent **l'art. 73** sous les mêmes conditions strictes qu'un simple particulier.

*Crim. 16 décembre 2020* : agents de sécurité qui appréhendent une personne dans une zone portuaire fermée au public (faisceau d'indices + fuite) → **art. 73 valide**.
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 7 - LE SECRET PROFESSIONNEL FACE À LA PROCÉDURE PÉNALE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Le secret professionnel face à la procédure pénale', 'Partie 1 - Chapitre 2 (suite)',
       'Protection du secret professionnel des avocats (perquisitions, écoutes, correspondances), secret des sources journalistiques (loi 1881 art. 2), secret médical (art. L1110-4 CSP) et leurs limites face aux nécessités de la procédure.',
       array['Secret professionnel', 'Art. 56-1 CPP', 'Art. 432 CPP', 'Perquisition avocat', 'Bâtonnier', 'Legal privilege', 'Secret des sources', 'Art. 2 loi 1881', 'Impératif prépondérant d''intérêt public', 'Secret médical', 'Art. L1110-4 CSP', 'Art. 226-14 CP', 'Art. 437 CPP'],
       28, 7,
$$
# Le secret professionnel face à la procédure pénale

## I. Le secret professionnel des avocats

### Distinction secret professionnel / confidentialité

| | Secret professionnel | Confidentialité |
|---|---|---|
| Objet | TOUT ce que l'avocat entend et voit dans sa profession | Documents échangés **entre confrères** marqués « confidentiel » |
| Opposabilité | Erga omnes | Uniquement au confrère destinataire |
| Fondement | Règlement intérieur de la profession (valeur légale) | Mention explicite |

### Perquisitions chez un avocat (art. 56-1 CPP)

Conditions **cumulatives** pour perquisitionner chez un avocat :
- **Indices sérieux** d'une commission d'infraction **par l'avocat lui-même**
- Présence obligatoire d'un **magistrat** (pas d'OPJ seul)
- Présence du **bâtonnier** (droit de regard sur les pièces saisies)
- Si le magistrat maintient la saisie malgré l'opposition du bâtonnier → saisine immédiate d'un **juge extérieur à l'affaire**
- **Pas de photographies** des documents — *Crim. 8 juillet 2015*

*Crim. 18 janvier 2022* : deux téléphones saisis lors d'une perquisition chez un avocat et non placés sous scellé → **annulation sans grief à démontrer** (présomption de grief).

### Écoutes téléphoniques d'un avocat

- Autorisation judiciaire requise + indices sérieux
- Seuls les **numéros appelés et la durée** peuvent être retranscrits (pas le contenu)
- Exception si l'avocat est lui-même en train de commettre l'infraction visée

### Identification des pièces saisies

La Cour de cassation refuse le *legal privilege* anglo-saxon (protection absolue) — *Crim. 10 janvier 2023*. L'avocat doit identifier **document par document** (numéro, date) ceux qui relèvent des droits de la défense ou du conseil, et le juge statue pièce par pièce.

## II. Le secret des sources journalistiques (art. 2, loi 29 juillet 1881)

> *« Le secret des sources des journalistes est protégé dans l'exercice de leur mission d'information au public. »*

### Conditions pour lever le secret (cumulatives)

1. **Impératif prépondérant d'intérêt public** : risque imminent d'une atteinte d'une particulière gravité à l'ordre public
2. **Stricte nécessité** : mesures opportunes en fonction de la situation
3. **Proportionnalité** : avec les moyens habituels policiers, l'information ne peut être obtenue dans le délai imparti

La levée du secret est **indirecte** : on ne peut pas obliger le journaliste à révéler sa source directement.

*Crim. 14 mai 2013* : réquisitions des opérateurs téléphoniques des journalistes après la violation du secret d'une perquisition → **annulées** car pas d'impératif prépondérant d'ordre public.

## III. Le secret médical (art. L1110-4 CSP)

### Exceptions légales (art. 226-14 CP)

Le secret médical peut être levé dans les cas suivants :
- **Signes de maltraitance ou d'agression** sur une personne vulnérable → dénonciation au **procureur de la République**
- **Patient sur le point de commettre une infraction grave** ou de se faire du mal → information du **préfet**

### Dilution acceptable entre professionnels de santé

*Crim. 24 novembre 2015* (dopage sportif) : transmission d'un dossier médical à un pharmacien expert → valide car il agit dans le cadre de la recherche du dopage.

*Crim. 16 mars 2021* : un médecin conseil propose le dossier médical de l'assuré à un expert amiable sans accord du patient → **violation** du secret médical.

### Secret médical vs droits de la défense

*Crim. 16 février 2010* : la défense demandait la production de dossiers médicaux de la victime (dépression) pour accréditer la thèse du suicide. Rejeté car les experts médicaux avaient déjà accès aux dossiers. La CDC entérine — à l'époque, le secret médical prévalait sur les droits de la défense.
$$
from public.subjects where slug = 'l2-procedure-penale';

-- =====================================================================
-- FICHE 8 - SYNTHÈSE : LES EXPERTS ET ASSISTANTS TECHNIQUES DANS L'ENQUÊTE
-- =====================================================================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, "order", content)
select id, 'Les experts et assistants techniques dans l''enquête', 'Partie 2 - Chapitre 1 (fin)',
       'Distinction entre assistance technique (enquête de police) et expertise judiciaire (instruction), conditions de désignation, obligation de serment, notion de « sachant », intervention de la médecine légale et de la police scientifique.',
       array['Assistance technique', 'Art. 60 CPP', 'Art. 77-1 CPP', 'Art. 156 CPP', 'Expert judiciaire', 'Serment des experts', 'Sachant', 'Médecine légale', 'ITT', 'Police scientifique', 'IRCGN', 'Listes d''experts', 'Cour d''appel', 'Cour de cassation'],
       25, 8,
$$
# Les experts et assistants techniques dans l'enquête

## I. Distinction assistance technique / expertise

| | Assistance technique | Expertise judiciaire |
|---|---|---|
| Cadre | Enquête de police | Instruction |
| Fondement | Art. 60 CPP (OPJ) / Art. 77-1 CPP (Parquet) | Art. 156 et s. CPP (juge d'instruction) |
| Objectif | Révéler les circonstances de commission, identifier des suspects | Répondre à une question ayant un effet sur la reconnaissance de la culpabilité |
| Prise de position | Non obligatoire | Obligatoire (rapport + conclusions) |

> La Cour de cassation est **stricte** : les deux ont valeur de **renseignement** et non de preuve parfaite. Le juge apprécie librement.

## II. Conditions de désignation de l'assistant technique

### Qualité requise

- Inscrit sur la **liste de la Cour d'appel** ou de la **Cour de cassation**
- À défaut : **niveau d'étude** reconnu + **expérience professionnelle** + **reconnaissance par les pairs**
- En l'absence de discipline académique correspondante : simple **technicien** avec expérience dans le domaine

### Obligation de serment

Toute personne désignée comme assistant technique doit prêter le **serment des experts** (objectivité, impartialité, contribution à la manifestation de la vérité).

> ⚠️ L'absence de serment est une cause **automatique de grief** (atteinte à la fiabilité de la preuve) — *Crim. 11 octobre 2023*.

**Exceptions à l'obligation de serment :**
- Les **APJ** qui interviennent en tant qu'APJ (pas comme expert) ne prêtent pas le serment des experts — art. 20/21 CPP les couvre (*Crim. 27 juin 2001*)
- Un professionnel qui effectue un **acte relevant de sa fonction** sans analyse (ex : prise de sang par un médecin) n'a pas à prêter serment — *Crim. 21 octobre 2015*

### La notion de « sachant »

Personne ne remplissant pas les conditions pour être assistant technique (manque de neutralité ou acte non nommé) mais dont l'OPJ recueille l'avis. Son intervention est fixée sur un **PV de renseignement** uniquement.

*Crim. 30 avril 2014* : techniciens de la marque Louis Vuitton identifiant des contrefaçons → **sachants** (pas de serment possible car employés de la marque), leur déclaration = PV de renseignement.

## III. La médecine légale

### Rôle

- Seule compétente pour déterminer les **ITT** (interruption temporaire/totale de travail) des victimes — déterminant pour la qualification de l'infraction
- **Autopsies** (~8 500/an) et **actes du vivant** (~400 000/an)
- Visite médicale obligatoire lors de tout placement en **garde à vue**
- Expertise psychiatrique des victimes et des suspects au stade de l'enquête (de plus en plus imposée par le CPP)

L'ITT tient compte non seulement de l'état de la victime mais aussi des **circonstances de commission de l'infraction** — le médecin légiste influe ainsi sur la qualification pénale.

## IV. La police scientifique

- **Police Nationale** : Service National de Police Scientifique (ex-IRCPN, réorganisé par la loi LOPMI 2023), décliné en régions
- **Gendarmerie Nationale** : Institut de Recherche Criminelle de la GN (**IRCGN**)

Ces personnels appartenant aux corps de police/gendarmerie interviennent sans les formalités de désignation et de serment applicables aux experts extérieurs — ils agissent dans leurs attributions légales.

## V. Jurisprudence récapitulative

| Arrêt | Question | Solution |
|---|---|---|
| *Crim. 24 juin 2015* | Médecin psychiatre non inscrit sur liste, serment prêté au moment du rapport | Valide — conditions de sérieux remplies dès l'origine |
| *Crim. 27 février 2007* | Technicien qualifié d'expert dans son rapport alors qu'au stade de l'enquête préliminaire | Valide — on ne s'attache pas aux termes du rapport |
| *Crim. 11 oct. 2023* | Fonctionnaires d'une autre administration qui n'ont pas prêté serment lors d'une perquisition | Cassation — absence de serment = grief automatique |
| *Crim. 27 juin 2001* | APJ perquisition informatique sans serment d'expert | Valide — ils agissent comme APJ (art. 20 CPP) |
$$
from public.subjects where slug = 'l2-procedure-penale';
