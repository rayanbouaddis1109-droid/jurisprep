-- =====================================================================
-- JurisPrép — L1 : Quizzes, Flashcards & Exercices enrichis
-- Basés sur les cours : IGD, IHD, Droit constitutionnel, Institutions juridictionnelles
-- =====================================================================

-- ─────────────────────────────────────────────────────────────────
-- QUIZZES
-- ─────────────────────────────────────────────────────────────────

-- ── Introduction générale au droit ──────────────────────────────

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IGD — La règle de droit : caractères et classifications',
       'La règle de droit',
       'facile',
       'Quiz sur les caractères fondamentaux et la classification des règles de droit.',
       '[
         {"question":"Quel caractère distingue fondamentalement la règle de droit des règles morales ?","choices":["Son caractère général","Son caractère obligatoire assorti d''une sanction étatique","Son caractère abstrait","Son caractère permanent"],"correct_index":1,"explanation":"La règle de droit est sanctionnée par l''État (police, tribunaux), ce qui la distingue des règles morales dont la sanction est interne (remords)."},
         {"question":"La règle de droit est dite « générale et abstraite ». Qu''est-ce que cela signifie ?","choices":["Elle s''applique uniquement aux personnes morales","Elle vise des catégories de personnes et non des individus déterminés","Elle n''est applicable que sur l''ensemble du territoire","Elle est rédigée en termes vagues"],"correct_index":1,"explanation":"La règle de droit est générale : elle s''adresse à tous ou à une catégorie abstraite (les locataires, les commerçants…), pas à une personne nommément désignée."},
         {"question":"Comment appelle-t-on les règles auxquelles les parties ne peuvent pas déroger par convention ?","choices":["Règles supplétives","Règles impératives (d''ordre public)","Règles dispositives","Règles facultatives"],"correct_index":1,"explanation":"Les règles impératives s''imposent aux particuliers ; toute clause contraire est nulle. Ex. : règles sur le SMIC."},
         {"question":"Qu''est-ce qu''une règle supplétive ?","choices":["Une règle qui s''impose toujours","Une règle qui s''applique à défaut de convention contraire","Une règle récemment créée","Une règle réservée au commerce"],"correct_index":1,"explanation":"Les règles supplétives (de volonté) comblent le silence des parties. Elles peuvent être écartées par convention."},
         {"question":"La distinction droit public / droit privé repose principalement sur :","choices":["La nature écrite ou orale des règles","La présence ou non de l''État comme partie à la relation juridique","Le montant des litiges en jeu","Le caractère national ou international"],"correct_index":1,"explanation":"Le droit public régit les relations impliquant une personne publique (État, collectivités). Le droit privé régit les relations entre particuliers."},
         {"question":"Lequel de ces éléments N''EST PAS un caractère classique de la règle de droit ?","choices":["Généralité","Abstraction","Gratuité","Obligatoriété"],"correct_index":2,"explanation":"La gratuité n''est pas un caractère de la règle de droit. Ses caractères traditionnels sont : généralité, abstraction, permanence et obligatoriété."},
         {"question":"Qu''est-ce que le droit objectif ?","choices":["Les droits reconnus à un individu en particulier","L''ensemble des règles juridiques en vigueur dans une société","Les décisions judiciaires","Les usages commerciaux"],"correct_index":1,"explanation":"Le droit objectif (Le Droit) = corpus de règles. À distinguer des droits subjectifs (des droits) = prérogatives individuelles."}
       ]'::jsonb
from public.subjects
where name = 'Introduction générale au droit'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IGD — La règle de droit : caractères et classifications'
  );

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IGD — Sources du droit et hiérarchie des normes',
       'Les sources du droit',
       'moyen',
       'Quiz sur la hiérarchie des normes, la loi, le règlement, la coutume et la jurisprudence.',
       '[
         {"question":"Dans la hiérarchie des normes de Kelsen, quel acte se situe au sommet en droit français ?","choices":["La loi ordinaire","La Constitution","Le règlement","Le traité international"],"correct_index":1,"explanation":"La Constitution est la norme suprême de l''ordre juridique français. Toutes les autres normes lui sont subordonnées."},
         {"question":"Quel organe vérifie la conformité des lois à la Constitution en France ?","choices":["La Cour de cassation","Le Conseil d''État","Le Conseil constitutionnel","La Cour des comptes"],"correct_index":2,"explanation":"Le Conseil constitutionnel exerce le contrôle de constitutionnalité des lois (a priori et, depuis 2010, a posteriori via la QPC)."},
         {"question":"Quelles sont les deux conditions cumulatives pour qu''un usage devienne obligatoire (coutume) ?","choices":["Être codifié dans un texte + avoir été pratiqué pendant 50 ans","Pratique répétée/générale (élément matériel) + conviction d''obéir à une règle obligatoire (opinio juris)","Être reconnu par un arrêt de la Cour de cassation + être publié au JO","Être accepté par toutes les parties + être homologué par un juge"],"correct_index":1,"explanation":"La coutume requiert : (1) un usage constant, général et prolongé (élément matériel) ; (2) l''opinio juris — la conviction d''obéir à une règle obligatoire (élément psychologique)."},
         {"question":"La jurisprudence est-elle officiellement source de droit en droit français ?","choices":["Oui, c''est la première source","Non, les juges ne créent pas le droit (art. 5 C. civ.)","En théorie non (interdiction des arrêts de règlement), mais elle joue un rôle normatif important en pratique","Oui, depuis 1958"],"correct_index":2,"explanation":"L''art. 5 C. civ. interdit les arrêts de règlement. Mais la jurisprudence de la Cour de cassation et du Conseil d''État crée de facto des règles générales."},
         {"question":"Qu''est-ce que la QPC ?","choices":["Question Politique de Constitutionnalité","Question Prioritaire de Constitutionnalité (art. 61-1 Const., 2010)","Quotient Parlementaire de Contrôle","Question Préliminaire de Compétence"],"correct_index":1,"explanation":"Introduite en 2010 (art. 61-1 Const.), la QPC permet à tout justiciable de demander l''abrogation d''une loi contraire aux droits garantis par la Constitution."},
         {"question":"Un règlement contraire à une loi est :","choices":["Valide si le gouvernement l''a signé","Illégal et susceptible d''annulation par le juge administratif","Valide car le règlement est supérieur","Valide dans les matières réglementaires"],"correct_index":1,"explanation":"Le règlement est inférieur à la loi. Un règlement contra legem est illégal ; le Conseil d''État peut l''annuler pour excès de pouvoir."},
         {"question":"Que prévoit l''article 55 de la Constitution de 1958 ?","choices":["La révision constitutionnelle","La supériorité des traités régulièrement ratifiés sur les lois","Le contrôle de constitutionnalité","La dissolution de l''Assemblée"],"correct_index":1,"explanation":"Art. 55 : les traités régulièrement ratifiés ou approuvés ont, dès leur publication, une autorité supérieure à celle des lois."}
       ]'::jsonb
from public.subjects
where name = 'Introduction générale au droit'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IGD — Sources du droit et hiérarchie des normes'
  );

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IGD — Droits subjectifs et preuve',
       'Droits subjectifs — La preuve',
       'moyen',
       'Quiz sur les droits subjectifs (réels vs personnels) et le régime de la preuve en droit civil.',
       '[
         {"question":"Que désigne un droit réel ?","choices":["Un droit exercé contre une personne déterminée","Un droit portant sur une chose, opposable à tous (erga omnes)","Un droit issu d''un contrat","Un droit de l''État sur les particuliers"],"correct_index":1,"explanation":"Le droit réel (ex. : propriété, usufruit, servitude) s''exerce directement sur une chose et est opposable à tous."},
         {"question":"Que désigne un droit personnel (droit de créance) ?","choices":["Un droit sur une chose","Un droit contre une personne déterminée (le débiteur)","Un droit exclusivement patrimonial","Un droit éteint par la mort"],"correct_index":1,"explanation":"Le droit de créance lie le créancier à un débiteur précis (ex. : obligation de payer une somme d''argent)."},
         {"question":"À qui incombe la charge de la preuve en droit civil ? (art. 1353 C. civ.)","choices":["Au défendeur","Au demandeur (actori incumbit probatio)","Au juge d''office","Au Ministère public"],"correct_index":1,"explanation":"« Celui qui réclame l''exécution d''une obligation doit la prouver. » C''est le demandeur qui supporte la charge de la preuve."},
         {"question":"En matière civile, quel système de preuve s''applique aux actes juridiques supérieurs à 1 500 € ?","choices":["Preuve libre (tous modes admis)","Preuve légale (écrit exigé — art. 1359 C. civ.)","Preuve par témoins uniquement","Preuve par aveu uniquement"],"correct_index":1,"explanation":"Au-dessus de 1 500 €, la preuve d''un acte juridique exige un écrit (art. 1359 C. civ.). C''est la preuve légale."},
         {"question":"Quelle est la force probante d''un acte authentique ?","choices":["Il est présumé faux jusqu''à preuve contraire","Il fait foi jusqu''à inscription en faux quant aux énonciations de l''officier public","Il peut être contesté par simple témoignage","Il n''a aucune valeur supérieure à un acte sous seing privé"],"correct_index":1,"explanation":"L''acte authentique (notarié, acte d''état civil…) fait foi jusqu''à inscription en faux. Sa contestation impose une procédure spéciale."},
         {"question":"Quelle est la différence entre présomption simple et irréfragable ?","choices":["Simple : non renversable ; irréfragable : renversable","Simple : renversable par preuve contraire ; irréfragable (juris et de jure) : aucune preuve contraire admise","Simple : légale ; irréfragable : judiciaire","Elles sont synonymes"],"correct_index":1,"explanation":"Présomption simple (juris tantum) : peut être combattue. Présomption irréfragable (juris et de jure) : aucune preuve contraire n''est admise. Ex. : autorité de la chose jugée."},
         {"question":"La preuve des faits juridiques est soumise à :","choices":["La preuve littérale obligatoire","La liberté de la preuve (tous modes admis)","L''aveu judiciaire exclusivement","La présomption légale"],"correct_index":1,"explanation":"Les faits juridiques (accidents, naissances…) se prouvent par tous moyens : témoignages, présomptions, expertises… Seuls les actes juridiques sont soumis à la preuve littérale."}
       ]'::jsonb
from public.subjects
where name = 'Introduction générale au droit'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IGD — Droits subjectifs et preuve'
  );

-- ── Introduction historique au droit ────────────────────────────

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IHD — Le droit romain',
       'Le droit romain',
       'facile',
       'Quiz sur les sources, les institutions et l''héritage du droit romain.',
       '[
         {"question":"Quel est le texte fondateur du droit romain écrit (v. 451-450 av. J.-C.) ?","choices":["Le Code de Justinien","La Loi des XII Tables","Les Institutes de Gaius","Le Digeste"],"correct_index":1,"explanation":"La Loi des XII Tables est la première codification écrite du droit romain. Gravées sur des tables de bronze, elles fixaient le droit civil, pénal et la procédure."},
         {"question":"Qu''est-ce que le Corpus Juris Civilis de Justinien ?","choices":["Un recueil de coutumes germaniques","La codification du droit romain par l''Empereur Justinien au VIe siècle (528-534)","Un traité sur le droit canonique médiéval","Le premier code civil français"],"correct_index":1,"explanation":"Le Corpus Juris Civilis réunit le Code (constitutions impériales), le Digeste (extraits de jurisconsultes), les Institutes (manuel) et les Novelles. Il est la base du droit civil moderne."},
         {"question":"En droit romain, quelle distinction entre personnes était fondamentale ?","choices":["Riches / pauvres","Citoyens romains / non-citoyens ; libres / esclaves","Patriciens / plébéiens uniquement","Prêtres / laïcs"],"correct_index":1,"explanation":"Le droit romain distinguait libres / esclaves (les esclaves étaient des res) et citoyens / non-citoyens (peregrins). Cette distinction conditionnait la capacité juridique."},
         {"question":"Qu''est-ce qu''un jurisconsulte romain ?","choices":["Un magistrat judiciaire","Un juriste qui donnait des consultations (responsa) aux juges et aux particuliers","Un préfet de province","Un sénateur chargé de codifier les lois"],"correct_index":1,"explanation":"Les jurisconsultes romains (Gaius, Ulpien, Papinien…) donnaient des responsa dont les écrits forment l''essentiel du Digeste."},
         {"question":"Que signifie la distinction actio in rem / actio in personam ?","choices":["L''actio in rem porte sur une chose (droit réel) ; l''actio in personam vise une personne déterminée (droit de créance)","L''actio in rem est pénale, l''actio in personam est civile","L''actio in rem est orale, l''actio in personam est écrite","Elles désignent deux procédures pénales différentes"],"correct_index":0,"explanation":"L''actio in rem protège un droit réel (ex. : propriété) opposable à tous. L''actio in personam protège un droit de créance opposable à une personne précise (débiteur)."},
         {"question":"Que signifie « pacta sunt servanda » ?","choices":["Les pactes ne sont pas obligatoires","Les pactes doivent être respectés","Seuls les contrats écrits sont valables","La coutume prime sur les accords privés"],"correct_index":1,"explanation":"« Les pactes doivent être tenus » — principe fondateur de la force obligatoire des contrats, repris par tous les systèmes juridiques modernes."},
         {"question":"Quelle est la tripartition des Institutes de Gaius qui a influencé le Code civil de 1804 ?","choices":["Loi, règlement, coutume","Personae, Res, Actiones (personnes, biens, actions)","Civil, commercial, pénal","Public, privé, mixte"],"correct_index":1,"explanation":"Gaius structure son manuel en personae (personnes), res (biens) et actiones (actions en justice). Cette tripartition est reprise par le Code civil (Livre I, II, III)."}
       ]'::jsonb
from public.subjects
where name = 'Introduction historique au droit'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IHD — Le droit romain'
  );

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IHD — Moyen Âge et Ancien Régime',
       'Du Moyen Âge à l''Ancien Régime',
       'moyen',
       'Quiz sur le pluralisme juridique médiéval et la construction du droit royal.',
       '[
         {"question":"Qu''est-ce que la réception du droit romain en Europe médiévale ?","choices":["La traduction des textes romains en latin médiéval","Le mouvement par lequel les juristes réintroduisirent le Corpus Juris Civilis comme source du droit à partir du XIe siècle (école de Bologne)","L''adoption par les Carolingiens des lois romaines","L''intégration du droit romain dans le Code Napoléon"],"correct_index":1,"explanation":"À partir du XIe siècle, l''école de Bologne (Irnerius) redécouvre le Digeste et diffuse le droit romain savant dans toute l''Europe."},
         {"question":"Quelle différence sépare le « pays de droit écrit » et le « pays de coutumes » en France médiévale ?","choices":["Le pays de droit écrit est au Nord, le pays de coutumes au Sud","Le pays de droit écrit (Sud) applique le droit romain ; le pays de coutumes (Nord) applique des coutumes locales d''origine germanique","Le pays de droit écrit relève du Parlement de Paris uniquement","Il s''agit d''une distinction entre droit civil et droit pénal"],"correct_index":1,"explanation":"La Loire constitue grossièrement la frontière : au Nord prédominent les coutumes (droit coutumier) ; au Sud, le droit romain reste la principale référence."},
         {"question":"Les Parlements sous l''Ancien Régime étaient :","choices":["Des assemblées législatives élues","Des cours de justice souveraines compétentes pour enregistrer les ordonnances royales (et émettre des remontrances)","Des chambres de commerce","Des conseils consultatifs sans pouvoir juridictionnel"],"correct_index":1,"explanation":"Les Parlements (Paris, Bordeaux, Toulouse…) étaient des cours de justice souveraines. Leur pouvoir d''enregistrement et de remontrances leur conférait une influence politique considérable."},
         {"question":"Qu''est-ce que la Coutume de Paris ?","choices":["Un traité royal imposant un droit uniforme","La principale coutume du Nord, rédigée en 1510 et réformée en 1580, qui influença directement le Code civil de 1804","Un recueil de droit canonique","Les décisions compilées du Parlement de Paris"],"correct_index":1,"explanation":"La Coutume de Paris, rédigée officiellement en 1510 puis réformée en 1580, acquit une autorité quasi nationale. Elle influença directement les rédacteurs du Code civil."},
         {"question":"Qu''est-ce que le droit canonique ?","choices":["Le droit des corporations de métiers","Le droit de l''Église catholique, codifié dans le Décret de Gratien (v. 1140), régissant le mariage, la famille, les successions","Le droit des marchands médiévaux","Le droit royal des monarchies féodales"],"correct_index":1,"explanation":"Le droit canonique est le droit de l''Église. Son influence sur le droit civil médiéval fut considérable (mariage sacramental, testament, preuve par serment)."},
         {"question":"L''Ordonnance civile de Colbert (1667) est importante parce qu''elle :","choices":["Abolit le servage en France","Unifia la procédure civile dans tout le royaume","Créa les premières juridictions pénales","Introduisit la codification napoléonienne"],"correct_index":1,"explanation":"L''Ordonnance sur la procédure civile de 1667 (dite « Code Louis ») unifia la procédure civile à l''échelle du royaume, préfigurant l''effort de codification de l''État monarchique."},
         {"question":"Qu''est-ce que la loi salique ?","choices":["Le code pénal des Carolingiens","La loi des Francs Saliens fixée sous Clovis (Ve-VIe s.) qui organisait notamment la compensation pécuniaire (wergeld) et excluait les femmes de la succession à la terre","Un texte de droit romain tardif","Une coutume burgundienne du Xe siècle"],"correct_index":1,"explanation":"La loi salique (Lex Salica) est une loi barbare fixée par écrit sous Clovis. Elle prévoyait le wergeld (composition pécuniaire) et excluait les femmes de la succession aux terres (principe étendu à la succession royale)."}
       ]'::jsonb
from public.subjects
where name = 'Introduction historique au droit'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IHD — Moyen Âge et Ancien Régime'
  );

-- ── Droit constitutionnel ────────────────────────────────────────

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'DC — Désignation des gouvernants et référendum',
       'La désignation des gouvernants',
       'moyen',
       'Quiz sur les modes de désignation des gouvernants, le suffrage et le référendum.',
       '[
         {"question":"Quelle est la principale critique adressée au tirage au sort comme mode de désignation ?","choices":["Son coût excessif","Il ne sélectionne pas sur la compétence et peut produire des gouvernants incompétents","Il viole le principe d''égalité","Il est interdit par la Constitution française"],"correct_index":1,"explanation":"Le tirage au sort (procédé démocratique athénien) ne filtre pas la compétence. L''élection est censée sélectionner les plus aptes via le suffrage."},
         {"question":"Quel article de la Constitution organise le référendum législatif ?","choices":["Article 3","Article 11","Article 49-3","Article 89"],"correct_index":1,"explanation":"L''article 11 permet au Président de la République, sur proposition du gouvernement ou des assemblées, de soumettre au référendum certains projets de loi."},
         {"question":"Le référendum constituant de l''article 89 se distingue du référendum de l''article 11 car :","choices":["L''article 89 peut être déclenché par tout citoyen","L''article 89 porte sur la révision de la Constitution et peut être remplacé par un vote du Congrès à 3/5e","L''article 11 permet de modifier la Constitution","L''article 89 n''existe plus depuis 2008"],"correct_index":1,"explanation":"L''art. 89 organise la révision constitutionnelle : adopté par les deux chambres en termes identiques, le projet est soumis au référendum OU au Congrès (majorité des 3/5e)."},
         {"question":"Le suffrage universel féminin en France a été établi en :","choices":["1789","1848","1944","1962"],"correct_index":2,"explanation":"Le suffrage universel masculin date de 1848. Les femmes obtiennent le droit de vote par l''ordonnance du 21 avril 1944."},
         {"question":"Qu''est-ce qu''une mutation constitutionnelle (Jellineck) ?","choices":["Une révision formelle de la Constitution","Un changement de fait du contenu d''une norme constitutionnelle sans modification du texte","Un coup d''État","Une dissolution de l''Assemblée nationale"],"correct_index":1,"explanation":"Les mutations constitutionnelles (Verfassungswandlung) désignent les transformations pratiques de la Constitution sans modification de son texte : par la coutume, la jurisprudence ou la pratique des institutions."},
         {"question":"La responsabilité politique du gouvernement devant l''Assemblée se traduit principalement par :","choices":["La dissolution automatique","La motion de censure (art. 49 al. 3) qui peut renverser le gouvernement","Un référendum obligatoire","L''intervention du Conseil constitutionnel"],"correct_index":1,"explanation":"L''Assemblée nationale peut voter une motion de censure à la majorité absolue de ses membres. Si adoptée, le Premier ministre doit remettre la démission du gouvernement."},
         {"question":"Qu''est-ce que le mandat représentatif (par opposition au mandat impératif) ?","choices":["L''élu représente uniquement ses électeurs directs","L''élu représente la Nation entière et vote librement, sans instruction ni recall","L''élu est révocable à tout moment par ses électeurs","L''élu est lié par les instructions de son parti"],"correct_index":1,"explanation":"Le mandat représentatif (art. 27 Const. interdit le mandat impératif) : l''élu représente la Nation, pas ses électeurs directs. Il vote selon sa conscience."}
       ]'::jsonb
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'DC — Désignation des gouvernants et référendum'
  );

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'DC — Révision et mutation constitutionnelles',
       'Les mutations constitutionnelles',
       'difficile',
       'Quiz approfondi sur la révision constitutionnelle, ses procédures et ses limites.',
       '[
         {"question":"Quelles sont les limites matérielles à la révision de la Constitution de 1958 ?","choices":["Les droits fondamentaux ne peuvent être modifiés","La forme républicaine du gouvernement ne peut faire l''objet d''une révision (art. 89 al. 5)","Toute révision requiert un référendum","La révision est impossible en période de cohabitation"],"correct_index":1,"explanation":"L''article 89 al. 5 pose une limite absolue : « La forme républicaine du gouvernement ne peut faire l''objet d''une révision. » Il existe aussi une limite temporelle (art. 89 al. 4) : pas de révision en cas d''atteinte à l''intégrité du territoire."},
         {"question":"De Gaulle a utilisé l''article 11 pour réviser la Constitution en 1962. Est-ce constitutionnellement orthodoxe ?","choices":["Oui, l''article 11 permet toute révision","Non, la révision doit emprunter la voie de l''article 89 ; l''usage de l''art. 11 est constitutionnellement contesté","Oui, le Conseil constitutionnel l''a validé explicitement","Non, et cela a entraîné la nullité de la réforme"],"correct_index":1,"explanation":"En 1962, De Gaulle contourne l''art. 89 en utilisant l''art. 11. Le Conseil constitutionnel s''est déclaré incompétent pour contrôler les lois référendaires. Cette pratique reste une controverse doctrinale majeure."},
         {"question":"Le pouvoir constituant originaire se caractérise par :","choices":["Sa limitation par la Constitution en vigueur","Sa nature illimitée juridiquement : il crée la Constitution en rupture avec l''ordre précédent","Sa compétence pour réviser les lois ordinaires","Sa dépendance au Parlement"],"correct_index":1,"explanation":"Le pouvoir constituant originaire (ex. : Constituante de 1789, Assemblée de 1958) crée ex nihilo une nouvelle Constitution. Il n''est pas lié par les règles de l''ordre constitutionnel antérieur."},
         {"question":"La procédure de révision constitutionnelle (art. 89) comporte trois étapes. Lesquelles ?","choices":["Proposition — Vote — Exécution","Initiative — Adoption par les deux chambres en termes identiques — Ratification (référendum ou Congrès à 3/5e)","Délibération — Approbation — Promulgation","Consultation — Référendum — Entrée en vigueur"],"correct_index":1,"explanation":"Art. 89 : (1) Initiative (Président sur proposition du PM, ou membres du Parlement) ; (2) Adoption par les deux assemblées en termes identiques ; (3) Ratification par référendum OU par le Congrès à 3/5e."},
         {"question":"La cohabitation est un exemple de :","choices":["Révision constitutionnelle formelle","Mutation constitutionnelle : pratique institutionnelle non prévue par le texte qui en modifie l''équilibre réel","Crise constitutionnelle","Application stricte de la Constitution de 1958"],"correct_index":1,"explanation":"La cohabitation (gouvernement issu d''une majorité opposée au Président) n''est pas prévue par la Constitution mais elle transforme l''équilibre des pouvoirs dans les faits. C''est une mutation constitutionnelle par la pratique."}
       ]'::jsonb
from public.subjects
where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'DC — Révision et mutation constitutionnelles'
  );

-- ── Institutions juridictionnelles ──────────────────────────────

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IJ — Organisation et principes directeurs de la justice',
       'Principes d''organisation judiciaire',
       'facile',
       'Quiz sur les grands principes d''organisation et de compétence des juridictions françaises.',
       '[
         {"question":"La France a deux ordres juridictionnels distincts. Lesquels ?","choices":["Ordre civil et ordre pénal","Ordre judiciaire et ordre administratif","Ordre national et ordre européen","Ordre constitutionnel et ordre ordinaire"],"correct_index":1,"explanation":"La dualité de juridictions : l''ordre judiciaire (Cour de cassation au sommet) et l''ordre administratif (Conseil d''État au sommet)."},
         {"question":"Quel est le rôle du Tribunal des conflits ?","choices":["Juger les conflits entre salariés et employeurs","Résoudre les conflits de compétence entre l''ordre judiciaire et l''ordre administratif","Arbitrer les conflits entre les deux chambres du Parlement","Juger les conflits internationaux"],"correct_index":1,"explanation":"Le Tribunal des conflits tranche les conflits de compétence (positifs ou négatifs) entre les juridictions judiciaires et administratives."},
         {"question":"Qu''est-ce que le principe du double degré de juridiction ?","choices":["L''obligation de saisir deux juges simultanément","Le droit pour tout justiciable de faire rejuger son affaire par une juridiction supérieure (appel)","La possibilité de se pourvoir en cassation","L''obligation d''avoir un avocat en première instance et en appel"],"correct_index":1,"explanation":"Le double degré garantit à chaque partie le droit à un réexamen de son affaire en fait et en droit par une juridiction d''appel."},
         {"question":"La Cour de cassation est :","choices":["Un troisième degré de juridiction qui rejuge les faits","Une juridiction de droit qui contrôle uniquement la bonne application de la loi","La juridiction suprême de l''ordre administratif","Un tribunal spécialisé dans les affaires pénales"],"correct_index":1,"explanation":"La Cour de cassation ne juge pas les faits : elle vérifie que les juridictions inférieures ont correctement appliqué le droit. En cas de cassation, l''affaire est renvoyée devant une cour de renvoi."},
         {"question":"Qu''est-ce que la compétence ratione materiae ?","choices":["La compétence géographique d''une juridiction","La compétence définie par la nature de l''affaire (matière civile, commerciale, pénale…)","La compétence fondée sur la personnalité des parties","La compétence en fonction du montant du litige"],"correct_index":1,"explanation":"La compétence ratione materiae (ou d''attribution) désigne la répartition des affaires entre juridictions selon leur nature."},
         {"question":"Depuis la réforme de 2019, quel tribunal a remplacé le TGI et le tribunal d''instance ?","choices":["Le tribunal supérieur civil","Le tribunal judiciaire","Le tribunal de première instance","Le tribunal de droit commun"],"correct_index":1,"explanation":"La loi du 23 mars 2019 a fusionné le TGI et le TI en un seul Tribunal judiciaire (TJ), juridiction de droit commun de première instance."},
         {"question":"Que désigne l''expression « devoir de juger » (non bis in idem) ?","choices":["L''obligation du juge de toujours statuer dans les 6 mois","L''interdiction pour le juge de refuser de statuer sous peine de déni de justice","L''obligation de motiver toutes les décisions","L''interdiction de juger deux fois le même fait"],"correct_index":1,"explanation":"Le juge a l''obligation de trancher le litige dont il est saisi ; le refus de juger constitue un déni de justice (art. 4 C. civ.), passible de sanctions."},
         {"question":"Quel principe garantit que les parties puissent connaître et contester les arguments adverses ?","choices":["Le principe de publicité","Le principe du contradictoire","Le principe d''impartialité","Le principe de collégialité"],"correct_index":1,"explanation":"Le principe du contradictoire (art. 6 CEDH, art. 14 CPC) garantit que chaque partie peut prendre connaissance des pièces et arguments de l''adversaire et y répondre."}
       ]'::jsonb
from public.subjects
where name = 'Institutions juridictionnelles'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IJ — Organisation et principes directeurs de la justice'
  );

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id,
       'IJ — Les juridictions françaises en détail',
       'Les différentes juridictions',
       'moyen',
       'Quiz sur la structure et les compétences des principales juridictions françaises.',
       '[
         {"question":"Le Conseil d''État cumule deux fonctions principales. Lesquelles ?","choices":["Fonction législative et judiciaire","Fonction consultative (avis au gouvernement) et fonction juridictionnelle (juge administratif suprême)","Fonction de police et judiciaire","Fonction d''audit et de révision constitutionnelle"],"correct_index":1,"explanation":"Le Conseil d''État est à la fois le conseiller juridique du gouvernement (avis sur projets de loi et décrets) et la juridiction suprême de l''ordre administratif."},
         {"question":"La Cour d''assises est compétente pour juger :","choices":["Les délits punis de plus de 2 ans","Les crimes (infractions passibles de plus de 10 ans de réclusion)","Les contraventions graves","Les affaires familiales"],"correct_index":1,"explanation":"La Cour d''assises (et le tribunal criminel départemental depuis 2021 pour les crimes punis de 15 à 20 ans) juge les crimes. Elle comprend des magistrats professionnels et un jury populaire."},
         {"question":"Quelle est la différence terminologique entre « jugement » et « arrêt » ?","choices":["Le jugement est rendu en première instance ; l''arrêt est rendu par une cour (appel, cassation, d''assises…)","Le jugement est civil ; l''arrêt est pénal","Le jugement est définitif ; l''arrêt peut être réformé","Il n''y a aucune différence"],"correct_index":0,"explanation":"Les décisions de première instance s''appellent jugements. Les décisions des cours (cours d''appel, Cour de cassation, Conseil d''État…) s''appellent arrêts."},
         {"question":"Qu''est-ce qu''un arrêt de cassation sans renvoi ?","choices":["La Cour de cassation annule et renvoie","La Cour de cassation annule la décision et règle elle-même le litige au fond (art. L. 411-3 COJ), mettant fin au litige","La Cour rejette le pourvoi","La Cour réforme partiellement la décision"],"correct_index":1,"explanation":"L''art. L. 411-3 COJ permet à la Cour de cassation de casser sans renvoi et de statuer au fond lorsque les faits sont suffisamment établis."},
         {"question":"Qu''est-ce que le recours pour excès de pouvoir (REP) ?","choices":["Un recours de plein contentieux demandant une indemnisation","Un recours en annulation permettant à tout intéressé de demander l''annulation d''un acte administratif illégal","Un recours pénal contre un fonctionnaire","Un appel devant le Conseil d''État"],"correct_index":1,"explanation":"Le REP est un recours objectif permettant d''obtenir l''annulation d''un acte administratif illégal (incompétence, vice de forme, violation de la loi, détournement de pouvoir)."},
         {"question":"Le conseil de prud''hommes est compétent pour :","choices":["Les litiges entre commerçants","Les litiges entre employeurs et salariés relevant du contrat de travail","Les litiges de droit administratif","Les affaires pénales liées au travail"],"correct_index":1,"explanation":"Le conseil de prud''hommes (juridiction paritaire composée de conseillers employeurs et salariés) tranche les litiges nés du contrat de travail."}
       ]'::jsonb
from public.subjects
where name = 'Institutions juridictionnelles'
  and not exists (
    select 1 from public.quizzes q
    where q.subject_id = public.subjects.id
      and q.title = 'IJ — Les juridictions françaises en détail'
  );

-- ─────────────────────────────────────────────────────────────────
-- FLASHCARDS
-- ─────────────────────────────────────────────────────────────────

-- ── Introduction générale au droit ──────────────────────────────

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Règle de droit — fondamentaux',
       'Qu''est-ce que la règle de droit ?',
       'Norme générale, abstraite, obligatoire et sanctionnée par l''État, qui régit les rapports sociaux en assurant l''ordre et la paix sociale.',
       'facile', array['définition', 'fondamentaux']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Qu''est-ce que la règle de droit ?');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Règle de droit — fondamentaux',
       'Différence règle impérative / règle supplétive ?',
       'Impérative (d''ordre public) : s''impose absolument ; toute clause contraire est nulle (ex. SMIC).\nSuplétive (de volonté) : s''applique seulement si les parties n''ont rien prévu ; elles peuvent l''écarter.',
       'facile', array['classification']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Différence règle impérative / règle supplétive ?');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Règle de droit — fondamentaux',
       'Définir le droit objectif et les droits subjectifs.',
       'Droit objectif (Le Droit) = ensemble des règles juridiques en vigueur dans une société.\nDroits subjectifs (des droits) = prérogatives individuelles reconnues par le droit objectif (ex. droit de propriété, de créance).',
       'facile', array['distinction', 'fondamentaux']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Définir le droit objectif et les droits subjectifs.');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Sources du droit',
       'Quelles sont les 4 principales sources formelles du droit français ?',
       '1. La Constitution (norme suprême)\n2. Les traités et accords internationaux (art. 55)\n3. La loi (acte du Parlement)\n4. Le règlement (actes de l''exécutif)\n+ La coutume et la jurisprudence (sources informelles)',
       'facile', array['sources', 'hiérarchie']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Quelles sont les 4 principales sources formelles du droit français ?');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Sources du droit',
       'Qu''est-ce que la pyramide des normes (Kelsen) ?',
       'Théorie selon laquelle les normes s''organisent de façon hiérarchique : chaque norme doit être conforme à la norme supérieure. Pyramide : Constitution > traités > lois > règlements > actes individuels.',
       'moyen', array['Kelsen', 'hiérarchie des normes']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Qu''est-ce que la pyramide des normes (Kelsen) ?');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Sources du droit',
       'Conditions de la coutume comme source de droit',
       'Élément matériel : usage constant, général, répété et ancien.\nÉlément psychologique : opinio juris — la conviction des sujets d''obéir à une règle obligatoire (et non à un simple usage).',
       'moyen', array['coutume', 'opinio juris']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Conditions de la coutume comme source de droit');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droits subjectifs',
       'Différence droit réel / droit personnel (droit de créance)',
       'Droit réel : s''exerce directement sur une chose ; opposable à tous (erga omnes). Ex. : propriété, usufruit, hypothèque.\nDroit personnel (de créance) : droit d''exiger quelque chose d''une personne déterminée (le débiteur). Ex. : créance contractuelle.',
       'moyen', array['droits subjectifs', 'biens']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Différence droit réel / droit personnel (droit de créance)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droits subjectifs',
       'Qu''est-ce que la capacité juridique ? Distinguer jouissance et exercice.',
       'Capacité de jouissance : aptitude à être titulaire de droits (toute personne physique en jouit dès la naissance jusqu''à la mort).\nCapacité d''exercice : aptitude à exercer soi-même ses droits (limitée pour les mineurs et majeurs protégés).',
       'facile', array['capacité', 'personnes']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Qu''est-ce que la capacité juridique ? Distinguer jouissance et exercice.');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'La preuve',
       'Principe « actori incumbit probatio » (art. 1353 C. civ.)',
       'La charge de la preuve incombe au demandeur. Celui qui réclame l''exécution d''une obligation doit la prouver ; celui qui s''en prétend libéré doit justifier le paiement ou le fait extinctif.',
       'facile', array['preuve', 'charge de la preuve']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Principe « actori incumbit probatio » (art. 1353 C. civ.)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'La preuve',
       'Régime de preuve : actes juridiques vs faits juridiques',
       'Actes juridiques (ex. : contrats) : preuve légale — écrit exigé au-dessus de 1 500 € (art. 1359 C. civ.).\nFaits juridiques (ex. : accidents, naissances) : preuve libre — tous moyens admis (témoignages, présomptions, expertises…).',
       'moyen', array['preuve', 'régime']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Régime de preuve : actes juridiques vs faits juridiques');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'La preuve',
       'Différence présomption simple / irréfragable',
       'Simple (juris tantum) : peut être renversée par la preuve contraire.\nIrréfragable (juris et de jure) : aucune preuve contraire n''est admise. Ex. : autorité de la chose jugée (res judicata).',
       'difficile', array['présomption', 'preuve']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Différence présomption simple / irréfragable');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'La preuve',
       'Force probante de l''acte authentique',
       'L''acte authentique (reçu par un officier public compétent : notaire, officier d''état civil…) fait foi jusqu''à inscription en faux quant aux énonciations de l''officier. C''est la plus haute force probante du droit français.',
       'moyen', array['acte authentique', 'preuve']
from public.subjects where name = 'Introduction générale au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Force probante de l''acte authentique');

-- ── Introduction historique au droit ────────────────────────────

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit romain',
       'Qu''est-ce que le Corpus Juris Civilis de Justinien ?',
       'Codification du droit romain (528-534) composée de :\n- Code : constitutions impériales\n- Digeste : extraits des grands jurisconsultes\n- Institutes : manuel d''enseignement\n- Novelles : constitutions postérieures au Code.\nBase du droit civil moderne.',
       'facile', array['Justinien', 'Rome', 'codification']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Qu''est-ce que le Corpus Juris Civilis de Justinien ?');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit romain',
       'Les XII Tables (451-450 av. J.-C.)',
       'Première codification écrite du droit romain, gravée sur des tables de bronze. Elles fixaient le droit civil, pénal et la procédure pour mettre fin à l''arbitraire patricien et permettre aux plébéiens de connaître le droit.',
       'facile', array['XII Tables', 'Rome', 'sources']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Les XII Tables (451-450 av. J.-C.)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit romain',
       'Qui sont les jurisconsultes romains ? Exemples.',
       'Juristes romains qui donnaient des consultations (responsa) aux juges et particuliers ; leurs écrits forment le Digeste. Grands jurisconsultes : Gaius (Institutes), Ulpien, Papinien, Paul, Modestin.',
       'moyen', array['jurisconsultes', 'Rome']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Qui sont les jurisconsultes romains ? Exemples.');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit romain',
       'Tripartition de Gaius (personae, res, actiones)',
       'Structure des Institutes de Gaius : personae (personnes), res (biens), actiones (actions en justice). Cette tripartition a directement inspiré la structure du Code civil de 1804 (Livre I, II, III).',
       'moyen', array['Gaius', 'plan', 'Code civil']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Tripartition de Gaius (personae, res, actiones)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit médiéval',
       'La réception du droit romain au Moyen Âge',
       'Redécouverte et réintégration du Corpus Juris Civilis à partir du XIe siècle, notamment par l''école de Bologne (Irnerius, glossateurs). Le droit romain devient le ius commune européen, utilisé comme droit savant supplétif.',
       'moyen', array['réception', 'Moyen Âge', 'Bologne']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'La réception du droit romain au Moyen Âge');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit médiéval',
       'Pays de droit écrit / pays de coutumes (France médiévale)',
       'Nord de la Loire : pays de coutumes (droit d''origine germanique, Coutume de Paris…).\nSud de la Loire : pays de droit écrit (droit romain comme référence principale).\nFrontière approximative : la Loire.',
       'facile', array['coutumes', 'droit écrit', 'géographie juridique']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Pays de droit écrit / pays de coutumes (France médiévale)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit médiéval',
       'Qu''est-ce que le droit canonique ?',
       'Droit de l''Église catholique. Principal texte : Décret de Gratien (v. 1140). Régissait : mariage (sacrament), famille, successions, prêt (usure), serment. Applicable par les tribunaux ecclésiastiques, il fut une source majeure du droit civil médiéval.',
       'moyen', array['droit canonique', 'Église']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Qu''est-ce que le droit canonique ?');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit médiéval',
       'Le droit féodal : vassal et seigneur',
       'Système juridique médiéval fondé sur la vassalité : le vassal rend l''hommage au seigneur (serment de fidélité), qui lui concède un fief (tenure foncière). Le vassal doit auxilium (aide militaire et financière) et consilium (conseil).',
       'facile', array['féodalité', 'vassal', 'fief']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Le droit féodal : vassal et seigneur');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Ancien Régime',
       'Les Parlements de l''Ancien Régime',
       'Cours de justice souveraines (Paris + 12 en province) ayant le pouvoir d''enregistrer les ordonnances royales et d''émettre des remontrances (refus d''enregistrer). Supprimés par la Révolution (loi des 16-24 août 1790).',
       'moyen', array['Ancien Régime', 'Parlements', 'remontrances']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Les Parlements de l''Ancien Régime');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Ancien Régime',
       'La Coutume de Paris',
       'Principale coutume de la France du Nord, rédigée officiellement en 1510 et réformée en 1580. Acquit une autorité quasi nationale. Jean Domat et Robert-Joseph Pothier l''ont synthétisée avec le droit romain, préparant la codification napoléonienne.',
       'moyen', array['Coutume de Paris', 'Ancien Régime']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'La Coutume de Paris');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Époque franque',
       'La loi salique (Lex Salica)',
       'Loi des Francs Saliens fixée par écrit sous Clovis (Ve-VIe s.). Prévoyait la composition pécuniaire (wergeld) pour les crimes. Son article 59 excluait les femmes de la succession aux terres, principe étendu à la succession royale carolingienne.',
       'facile', array['Francs', 'loi salique', 'wergeld']
from public.subjects where name = 'Introduction historique au droit'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'La loi salique (Lex Salica)');

-- ── Droit constitutionnel ────────────────────────────────────────

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Constitution et révision',
       'Limite absolue à la révision constitutionnelle (art. 89 al. 5)',
       '« La forme républicaine du gouvernement ne peut faire l''objet d''une révision. » (art. 89 al. 5 Const. 1958)\nLimite temporelle (art. 89 al. 4) : pas de révision en cas d''atteinte à l''intégrité du territoire.',
       'moyen', array['révision', 'limites', 'art. 89']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Limite absolue à la révision constitutionnelle (art. 89 al. 5)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Constitution et révision',
       'Procédure de révision — art. 89 Const.',
       '1. Initiative : Président (sur proposition du PM) ou membres du Parlement.\n2. Adoption : les deux chambres en termes identiques.\n3. Ratification : référendum (voie de droit commun) OU Congrès à la majorité des 3/5e des suffrages exprimés.',
       'moyen', array['art. 89', 'révision', 'Congrès']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Procédure de révision — art. 89 Const.');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Constitution et révision',
       'Pouvoir constituant originaire vs pouvoir constituant dérivé',
       'Originaire : illimité juridiquement, crée une Constitution ex nihilo en rupture avec l''ordre précédent (ex. : 1789, 1958).\nDérivé (ou de révision) : pouvoir des organes constitués de modifier la Constitution selon les procédures qu''elle fixe (art. 89).',
       'moyen', array['pouvoir constituant', 'révision']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Pouvoir constituant originaire vs pouvoir constituant dérivé');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Désignation des gouvernants',
       'Suffrage universel direct / indirect',
       'Direct : les citoyens élisent directement leurs représentants (Président depuis 1962, députés).\nIndirect : les citoyens élisent des grands électeurs qui votent à leur tour (ex. : sénateurs français, élus par les grands électeurs).',
       'facile', array['suffrage', 'élection']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Suffrage universel direct / indirect');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Désignation des gouvernants',
       'Référendum d''initiative partagée (art. 11 al. 3 Const., réforme 2008)',
       'Une proposition de loi peut être soumise au référendum si elle est soutenue par 1/5e des membres du Parlement ET 1/10e des électeurs inscrits. En pratique, cette procédure complexe n''a jamais encore abouti à un référendum.',
       'difficile', array['référendum', 'initiative partagée', 'art. 11']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Référendum d''initiative partagée (art. 11 al. 3 Const., réforme 2008)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Responsabilité politique',
       'Motion de censure (art. 49 al. 3 Const.)',
       'L''Assemblée nationale peut renverser le gouvernement. Conditions : signée par 1/10e des membres de l''Assemblée, adoptée à la majorité absolue des membres (pas des suffrages exprimés). Si adoptée : le PM remet la démission du gouvernement.',
       'moyen', array['motion de censure', 'art. 49', 'responsabilité']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Motion de censure (art. 49 al. 3 Const.)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Mutations constitutionnelles',
       'Mutation constitutionnelle (Verfassungswandlung — Jellineck)',
       'Transformation du contenu réel d''une règle constitutionnelle sans modification formelle du texte. Se produit par la pratique institutionnelle, la coutume constitutionnelle ou la jurisprudence. Ex. : la cohabitation, la domination du Président en période non cohabitationnelle.',
       'difficile', array['mutation', 'Jellineck', 'coutume constitutionnelle']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Mutation constitutionnelle (Verfassungswandlung — Jellineck)');

-- ── Institutions juridictionnelles ──────────────────────────────

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Organisation judiciaire',
       'Dualité de juridictions en France : les deux ordres',
       'Ordre judiciaire (Cour de cassation au sommet) : litiges entre particuliers + infractions pénales.\nOrdre administratif (Conseil d''État au sommet) : litiges impliquant l''administration publique.\nEn cas de conflit de compétence : Tribunal des conflits.',
       'facile', array['dualité', 'ordres', 'organisation']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Dualité de juridictions en France : les deux ordres');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Organisation judiciaire',
       'Compétence ratione materiae / ratione loci / ratione personae',
       'Ratione materiae (attribution) : nature de l''affaire (civil, commercial, pénal, administratif).\nRatione loci (territoriale) : ressort géographique de la juridiction.\nRatione personae : personnalité des parties (ex. : CJR pour les ministres).',
       'moyen', array['compétence', 'juridiction']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Compétence ratione materiae / ratione loci / ratione personae');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Organisation judiciaire',
       'Jugement vs arrêt : différence terminologique',
       'Jugement : décision rendue par une juridiction de première instance (tribunal judiciaire, tribunal de commerce, conseil de prud''hommes…).\nArrêt : décision rendue par une cour (cour d''appel, Cour de cassation, Conseil d''État, Cour d''assises).',
       'facile', array['terminologie', 'décision']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Jugement vs arrêt : différence terminologique');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Cour de cassation',
       'Rôle et nature de la Cour de cassation',
       'Juridiction suprême de l''ordre judiciaire. Ne juge pas les faits : elle contrôle uniquement la correcte application du droit par les juridictions inférieures. En cas de cassation, elle renvoie (en principe) devant une cour de renvoi.',
       'facile', array['Cour de cassation', 'cassation', 'droit']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Rôle et nature de la Cour de cassation');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Cour de cassation',
       'Arrêt de cassation avec renvoi vs sans renvoi',
       'Avec renvoi (art. L. 411-1 COJ) : Cour casse la décision et renvoie l''affaire devant une autre juridiction du même degré (cour de renvoi) pour rejugement au fond.\nSans renvoi (art. L. 411-3 COJ) : Cour casse et règle elle-même le litige au fond, mettant fin au procès.',
       'moyen', array['cassation', 'renvoi', 'procédure']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Arrêt de cassation avec renvoi vs sans renvoi');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Principes directeurs',
       'Principe du contradictoire',
       'Chaque partie doit pouvoir prendre connaissance de toutes les pièces et conclusions de l''adversaire et y répondre avant que le juge statue. Garanti par l''art. 6 CEDH (procès équitable) et l''art. 14 CPC.',
       'moyen', array['contradictoire', 'principes directeurs']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Principe du contradictoire');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Principes directeurs',
       'Impartialité du juge (art. 6§1 CEDH)',
       'Impartialité subjective : le juge ne doit pas avoir d''intérêt personnel dans le litige.\nImpartialité objective : les apparences ne doivent pas permettre de douter de sa neutralité.\nMoyens : récusation (par les parties), abstention (par le juge).',
       'moyen', array['impartialité', 'CEDH', 'juge']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Impartialité du juge (art. 6§1 CEDH)');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Ordre administratif',
       'Fonctions du Conseil d''État',
       'Double fonction :\n1. Consultative : donne des avis sur les projets de loi et les projets de décrets les plus importants.\n2. Juridictionnelle : juridiction suprême de l''ordre administratif, juge en premier et dernier ressort pour certaines matières.',
       'moyen', array['Conseil d''État', 'ordre administratif']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Fonctions du Conseil d''État');

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Ordre administratif',
       'Recours pour excès de pouvoir (REP)',
       'Recours contentieux permettant à tout intéressé de demander au juge administratif l''annulation d''un acte administratif illégal. Ouvertures classiques : incompétence, vice de forme, violation de la loi, détournement de pouvoir. Arrêt de référence : CE, Blanco (TC 1873) + CE, Dam''e Lamotte (1950).',
       'difficile', array['REP', 'acte administratif', 'annulation']
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (select 1 from public.flashcards f where f.subject_id = public.subjects.id and f.front = 'Recours pour excès de pouvoir (REP)');

-- ─────────────────────────────────────────────────────────────────
-- EXERCISES
-- ─────────────────────────────────────────────────────────────────

-- ── Introduction générale au droit ──────────────────────────────

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'Dissertation — La règle de droit est-elle nécessairement juste ?',
       'dissertation',
       'moyen',
       'La règle de droit est-elle nécessairement juste ?

Vous traiterez ce sujet sous la forme d''une dissertation juridique rédigée, comportant :
- Une introduction avec accroche, définition des termes, problématique et annonce du plan
- Deux parties équilibrées avec sous-parties (I/II, A/B)',
       '## Méthodologie dissertation

**Introduction :**
- Accroche : citation (ex. Pascal : « Justice, force » / Portalis)
- Définir « règle de droit » ET « juste » (justice formelle ≠ justice substantielle)
- Problématique : La légalité garantit-elle la légitimité ?
- Annonce du plan en 2 parties

**Évitez** le plan descriptif (I. définition, II. caractères). Adoptez un plan analytique-argumentatif.

**Pistes :**
- I. La règle de droit vise la justice mais ne la garantit pas (droit positif injuste : lois de Nuremberg ; positivisme de Kelsen)
- II. Des mécanismes correcteurs permettent de rapprocher légalité et légitimité (contrôle de constitutionnalité, rôle du juge, équité)',
       '## Correction indicative

**Introduction**
Pascal (*Pensées*) : « La justice sans la force est impuissante ; la force sans la justice est tyrannique. » La règle de droit, norme générale, abstraite et sanctionnée par l''État, aspire à la justice mais peut s''en écarter.

**Problématique :** La validité formelle d''une règle de droit suffit-elle à en garantir la justice ?

**I. La règle de droit et la justice : une relation nécessaire mais imparfaite**

A. La règle de droit est fondée sur des valeurs de justice
- Le droit positif puise dans le droit naturel (Locke, Grotius) : il tend à protéger la vie, la propriété, la liberté
- La DDHC (1789) incarne ces valeurs dans l''ordre juridique

B. La règle de droit peut être injuste
- Les lois de Nuremberg, les lois de ségrégation : lois formellement valides, matériellement injustes
- Le positivisme juridique (Kelsen) : la validité d''une norme est indépendante de sa valeur morale

**II. Des mécanismes correcteurs pour rapprocher droit et justice**

A. Le contrôle de constitutionnalité
- Le Conseil constitutionnel veille au respect des droits garantis
- La QPC (depuis 2010) permet à tout justiciable de contester l''injustice d''une loi

B. Le rôle du juge
- L''interprétation judiciaire adapte la règle à l''équité
- Mécanismes correcteurs : abus de droit, bonne foi contractuelle, enrichissement sans cause

**Conclusion :** La règle de droit vise la justice sans la garantir. Les ordres juridiques contemporains ont multiplié les garde-fous : constitutionnalisation des droits, contrôle de conventionnalité, pouvoir d''appréciation du juge.',
       180
from public.subjects where name = 'Introduction générale au droit'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'Dissertation — La règle de droit est-elle nécessairement juste ?'
  );

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'QRC — La distinction droit public / droit privé',
       'qrc',
       'facile',
       'Question de cours : Exposez la distinction entre droit public et droit privé et montrez ses limites.

(Réponse attendue : 1 à 2 pages, sans plan apparent mais structurée)',
       '## Méthode QRC

- Pas de plan I/II affiché, mais structurez votre réponse
- Définissez d''abord les deux notions avec précision
- Citez des exemples concrets (branches du droit)
- Montrez les limites : branches mixtes (droit du travail, droit pénal des affaires)
- Concluez sur la relativité de la distinction',
       '## Correction

La summa divisio du droit français oppose le **droit public** et le **droit privé**.

Le **droit public** régit les relations dans lesquelles intervient la puissance publique : organisation de l''État (droit constitutionnel), rapports entre l''État et les particuliers (droit administratif), finances publiques. Il est marqué par l''inégalité des parties (prérogatives exorbitantes) et relève des juridictions administratives.

Le **droit privé** régit les relations entre personnes privées sur un pied d''égalité : droit civil (personnes, famille, contrats, responsabilité, biens), droit commercial, droit du travail (en partie). Il relève des juridictions judiciaires.

**Limites :**
- Branches mixtes : le droit du travail mêle règles publiques (inspection du travail) et privées (contrat de travail)
- L''État peut agir en droit privé (services publics industriels et commerciaux)
- Droits transversaux : droit de la concurrence, droit de l''environnement

La distinction conserve une utilité pédagogique et pratique (compétence juridictionnelle) mais doit être relativisée.',
       30
from public.subjects where name = 'Introduction générale au droit'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'QRC — La distinction droit public / droit privé'
  );

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'Cas pratique — La preuve d''un prêt oral',
       'cas_pratique',
       'moyen',
       'Martin et Sophie sont amis. Le 1er mars, Martin prête oralement 3 000 € à Sophie, sans rédiger d''écrit. Sophie reconnaît avoir reçu la somme mais conteste aujourd''hui l''obligation de remboursement, affirmant qu''il s''agissait d''un don.

Martin vous consulte. Quelle est sa situation au regard du droit de la preuve ? Pourra-t-il prouver l''existence et la nature de ce prêt ?',
       '## Méthode du cas pratique

1. Identifier les faits juridiquement pertinents
2. Qualifier juridiquement : quel contrat ? Quel régime de preuve applicable ?
3. Règle de droit : citer les articles pertinents (C. civ. art. 1359, 1360, 1361)
4. Application : appliquer la règle aux faits
5. Solution : répondre clairement à la question posée

**Textes utiles :**
- Art. 1359 C. civ. : preuve littérale au-dessus de 1 500 €
- Art. 1360 C. civ. : exceptions (impossibilité morale)
- Art. 1361 C. civ. : commencement de preuve par écrit',
       '## Correction

**Faits :** Prêt oral de 3 000 € entre amis. Pas d''écrit. La débitrice conteste l''obligation de remboursement.

**Qualification :** Le prêt est un acte juridique (contrat de prêt, art. 1892 C. civ.). La somme de 3 000 € est supérieure à 1 500 €.

**Règle de droit :**
L''article 1359 C. civ. exige un écrit pour prouver un acte juridique dont la valeur excède 1 500 €. La preuve testimoniale est en principe exclue.

**Application et exceptions :**
- **Aveu judiciaire** (art. 1383 C. civ.) : si Sophie reconnaît le prêt devant le juge, cela suffit. Elle a reconnu avoir reçu 3 000 € mais conteste la nature (don vs prêt) — aveu partiel.
- **Commencement de preuve par écrit** (art. 1361 C. civ.) : tout écrit émanant de Sophie rendant vraisemblable le prêt (SMS mentionnant « remboursement ») permettrait de compléter par témoins.
- **Impossibilité morale** (art. 1360 C. civ.) : les relations d''amitié peuvent justifier l''impossibilité morale de se procurer un écrit, ce que les tribunaux admettent souvent.

**Solution :**
Martin sera en difficulté probatoire s''il n''a aucun écrit. Il devra rechercher un commencement de preuve (messages, emails) ou invoquer l''impossibilité morale. Conseil : toujours rédiger un écrit pour tout prêt supérieur à 1 500 €.',
       60
from public.subjects where name = 'Introduction générale au droit'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'Cas pratique — La preuve d''un prêt oral'
  );

-- ── Introduction historique au droit ────────────────────────────

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'Dissertation — L''apport du droit romain au droit civil français',
       'dissertation',
       'moyen',
       'Dans quelle mesure le droit romain est-il le fondement du droit civil français ?

Vous traiterez ce sujet sous la forme d''une dissertation en deux parties équilibrées.',
       '## Méthodologie

- **Introduction** : montrer la distance temporelle (Rome antique → Code civil 1804) mais aussi la continuité (réception, Justinien, coutumes romano-canoniques)
- **Plan suggéré :**
  - I. La réception et transmission du droit romain : un héritage transformé
  - II. L''empreinte romaine dans les grandes institutions du droit civil français (Code civil de 1804)',
       '## Éléments de correction

**I. La réception et la transmission du droit romain**

A. La redécouverte du Corpus Juris Civilis au XIe siècle
- École de Bologne : Irnerius, glossateurs (XIe-XIIIe s.) puis commentateurs (XIVe-XVe s.)
- Diffusion du ius commune romain dans toute l''Europe savante

B. L''humanisme juridique et la préparation du Code civil
- Cujas (XVIe s.) : retour aux textes romains originaux
- Jean Domat (XVIIe s.) : mise en ordre rationnelle du droit romain
- Robert-Joseph Pothier (XVIIIe s.) : synthèse du droit romain et des coutumes, source directe des rédacteurs du Code civil

**II. L''héritage dans le Code civil de 1804**

A. La structure même : tripartition des Institutes de Gaius
- Personae (Livre I : personnes et famille), Res (Livre II : biens), Actiones/obligations (Livre III)

B. Le droit des obligations
- Consensualisme, pacta sunt servanda, classification des sources d''obligations (contrat, quasi-contrat, délit, quasi-délit — directement issues des categories romaines)

C. Le droit des biens
- Propriété romaine absolue (usus, fructus, abusus), usufruit, servitudes, hypothèque

D. Les limites
- Droit de la famille : influence du droit canonique (mariage) et des coutumes du Nord
- Égalité successorale : influence de la Révolution, non du droit romain

**Conclusion :** Le droit romain, transmis via les juristes médiévaux et les auteurs modernes (Domat, Pothier), constitue l''armature intellectuelle du Code civil. Mais celui-ci est aussi le fruit de la tradition coutumière et des idées révolutionnaires : c''est une synthèse, non une simple réception.',
       180
from public.subjects where name = 'Introduction historique au droit'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'Dissertation — L''apport du droit romain au droit civil français'
  );

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'QRC — La distinction pays de droit écrit / pays de coutumes',
       'qrc',
       'facile',
       'Exposez la distinction entre pays de droit écrit et pays de coutumes dans la France médiévale et sous l''Ancien Régime, et montrez son importance pour comprendre la formation du droit français.',
       '## Méthode QRC

- Définissez précisément chaque notion
- Localisez géographiquement la frontière
- Illustrez avec des exemples de coutumes importantes (Coutume de Paris)
- Montrez le rôle dans la genèse du Code civil',
       '## Correction

La France médiévale se caractérisait par un **pluralisme juridique** marqué : absence de droit national unifié, coexistence de multiples systèmes.

**Pays de droit écrit (Sud de la Loire)**
Régions où le droit romain (Corpus Juris Civilis) servait de référence principale. Le droit romain y était appliqué comme droit commun supplétif. Ex. : Provence, Languedoc, Gascogne.

**Pays de coutumes (Nord de la Loire)**
Régions dominées par des coutumes locales d''origine germanique et franque. Ces coutumes étaient d''abord orales, puis mises par écrit à partir du XVe siècle sur ordre royal. La plus importante : la **Coutume de Paris** (rédigée en 1510, réformée en 1580).

**Importance pour le droit français :**
1. La rédaction officielle des coutumes (Ordonnance de Montils-lès-Tours, 1454 — Charles VII) amorce l''unification du droit
2. Jean Domat et Pothier synthétisent droit romain et coutumes
3. Le Code civil de 1804 opère la fusion : il emprunte la structure et les concepts au droit romain, mais intègre la logique coutumière pour la famille et les successions

Cette distinction illustre la richesse des sources du droit français et explique certaines tensions dans la rédaction du Code civil entre les « romanistes » et les « coutumiers ».',
       30
from public.subjects where name = 'Introduction historique au droit'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'QRC — La distinction pays de droit écrit / pays de coutumes'
  );

-- ── Institutions juridictionnelles ──────────────────────────────

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'Cas pratique — Identifier la bonne juridiction',
       'cas_pratique',
       'facile',
       'Pour chacune des situations suivantes, déterminez la juridiction compétente en justifiant votre réponse :

1. M. Dupont, commerçant, est en litige avec son fournisseur (société anonyme) pour un impayé de 15 000 €.

2. Mme Lebrun a été victime d''un accident causé par un véhicule de l''État (voiture de gendarmerie). Elle souhaite obtenir réparation.

3. M. Martin conteste un avis d''imposition à l''impôt sur le revenu qu''il juge erroné.

4. Mme Dupont, salariée, est licenciée et conteste le motif de son licenciement.',
       '## Méthode

Pour chaque hypothèse :
1. Identifier la nature du litige (civil, commercial, administratif, fiscal, travail)
2. Identifier les parties
3. Appliquer les règles de compétence d''attribution
4. Nommer la juridiction compétente

**Textes :** C. com. L. 721-3 ; L. 31 déc. 1957 (véhicules de l''État) ; LPF art. L. 199 (fiscal) ; C. trav. art. L. 1411-1 (prud''hommes)',
       '## Correction

**1. Litige entre commerçants (impayé 15 000 €) :**
Les deux parties sont des commerçants et le litige porte sur un acte de commerce (fourniture de marchandises). Compétence du **tribunal de commerce** (art. L. 721-3 C. com.). Si aucun tribunal de commerce n''existe dans le ressort, c''est le tribunal judiciaire statuant en matière commerciale.

**2. Accident causé par un véhicule de l''État :**
La loi du 31 décembre 1957 attribue aux juridictions judiciaires (et non administratives) le contentieux des dommages causés par tout véhicule appartenant à l''administration publique. **Tribunaux judiciaires** = Tribunal judiciaire compétent.

**3. Contestation d''un avis d''imposition (IR) :**
Le contentieux fiscal portant sur les impôts directs (dont l''IR) relève de l''ordre administratif après réclamation préalable auprès de l''administration fiscale. Si le litige persiste → **Tribunal administratif**.

**4. Licenciement contesté :**
Le litige naît d''un contrat de travail entre employeur et salarié. Compétence exclusive du **Conseil de prud''hommes** (art. L. 1411-1 C. trav.), juridiction paritaire composée de conseillers employeurs et salariés élus.',
       45
from public.subjects where name = 'Institutions juridictionnelles'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'Cas pratique — Identifier la bonne juridiction'
  );

-- ── Droit constitutionnel ────────────────────────────────────────

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'QRC — La procédure de révision constitutionnelle (art. 89)',
       'qrc',
       'moyen',
       'Exposez la procédure de révision de la Constitution française de 1958 prévue à l''article 89 et les limites qui lui sont apportées.',
       '## Méthode QRC

- Citez précisément l''article 89 alinéa par alinéa
- Distinguez les 3 phases : initiative, adoption, ratification
- N''oubliez pas les limites : formelles (temporelles) et matérielles
- Mentionnez la controverse sur l''usage de l''art. 11 à des fins révisionistes',
       '## Correction

La révision de la Constitution de 1958 est organisée par l''**article 89** en trois phases :

**1. L''initiative (art. 89 al. 1)**
L''initiative de la révision appartient concurremment :
- Au Président de la République, sur proposition du Premier ministre (projet de révision constitutionnelle)
- Aux membres du Parlement, à titre individuel (proposition de révision)

**2. L''adoption (art. 89 al. 2)**
Le texte doit être adopté par les deux assemblées (Assemblée nationale et Sénat) **en termes identiques**. C''est une condition potentiellement bloquante en cas de désaccord bicaméral.

**3. La ratification (art. 89 al. 2 et 3)**
Deux voies alternatives :
- **Référendum** (voie de droit commun) : le projet est soumis au vote du peuple
- **Congrès** (voie alternative) : le Président peut décider de soumettre le texte au Congrès (réunion conjointe des deux chambres à Versailles). Adoption à la **majorité des 3/5e des suffrages exprimés**.

**Les limites :**
- **Limite temporelle** (art. 89 al. 4) : aucune révision ne peut être engagée ou poursuivie lorsque l''intégrité du territoire est atteinte
- **Limite matérielle absolue** (art. 89 al. 5) : « La forme républicaine du gouvernement ne peut faire l''objet d''une révision »

**Controverses :** De Gaulle a utilisé l''art. 11 pour réviser la Constitution en 1962 (élection du Président au SUD) en contournant l''art. 89. Le Conseil constitutionnel s''étant déclaré incompétent pour contrôler les lois référendaires, cette pratique reste juridiquement contestée.',
       30
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'QRC — La procédure de révision constitutionnelle (art. 89)'
  );

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id,
       'Dissertation — Le référendum, instrument de démocratie directe ?',
       'dissertation',
       'moyen',
       'Le référendum est-il une véritable expression de la démocratie directe ?

Vous traiterez ce sujet sous la forme d''une dissertation juridique en deux parties équilibrées.',
       '## Méthodologie

- **Définir** : référendum (vote populaire sur un texte), démocratie directe, démocratie représentative
- **Distinguer** les types : référendum législatif (art. 11), constituant (art. 89), local (art. 72-1), d''initiative partagée (art. 11 al. 3)
- **Plan suggéré :**
  - I. Le référendum, instrument constitutionnel de participation directe
  - II. Un instrument limité et problématique dans la pratique de la Ve République',
       '## Éléments de correction

**I. Le référendum, instrument de participation directe du peuple**

A. Fondements constitutionnels et théoriques
- Art. 3 Const. : « La souveraineté nationale appartient au peuple » — le référendum est l''expression directe de cette souveraineté
- Rousseau : le peuple ne peut aliéner sa souveraineté ; le référendum s''en approche
- Instruments constitutionnels : art. 11 (loi), art. 89 (révision), art. 72-1 (local), art. 11 al. 3 (initiative partagée)

B. Légitimité démocratique directe
- Le peuple se prononce directement sur un texte, sans représentants intermédiaires
- Renforce la légitimité des décisions importantes (ex. : référendum sur l''élection du Président au SUD en 1962)

**II. Un instrument problématique dans la pratique**

A. Le référendum plébiscitaire
- De Gaulle a utilisé le référendum pour renforcer sa légitimité personnelle (1962, 1969)
- Le vote devient un vote de confiance sur l''homme, non sur le texte : risque de personnalisation

B. Distorsion et contresens
- Référendum de 2005 sur le TCE : rejet perçu comme un vote de protestation sociale, non comme un choix technique sur le traité
- Abstentionnisme croissant : remet en question la représentativité du vote

C. Utilisation rarissime et instruments peu accessibles
- Depuis 1958 : seulement 9 référendums nationaux
- Référendum d''initiative partagée (art. 11 al. 3, 2008) : procédure très complexe, jamais abouti

**Conclusion :** En théorie, le référendum est l''expression pure de la démocratie directe. En pratique, dans la Ve République, il est rare, dévoyé en plébiscite ou contourné par les gouvernants qui lui préfèrent le Congrès. La Ve République reste fondamentalement une démocratie représentative où le référendum n''est qu''un correctif exceptionnel.',
       180
from public.subjects where name = 'Droit constitutionnel' and level = 'L1'
  and not exists (
    select 1 from public.exercises e
    where e.subject_id = public.subjects.id
      and e.title = 'Dissertation — Le référendum, instrument de démocratie directe ?'
  );
