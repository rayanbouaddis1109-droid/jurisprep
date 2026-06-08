-- =====================================================================
-- JurisPrép - Données initiales
-- 29 matières L1-L3 (BLOC 1 maquette officielle) + 2 sections transverses
-- + contenu démo (fiches d'arrêts, fiches de révision, quiz, flashcards, exercices)
-- =====================================================================

-- =========================
-- MATIÈRES L1
-- =========================
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order") values
('Introduction générale au droit', 'l1-introduction-generale-au-droit', 'L1', 'S1', 'matiere_principale', 'Sources du droit, juridictions, raisonnement juridique, divisions fondamentales du droit.', '#4F46E5', 'book-open', 101),
('Introduction au droit constitutionnel', 'l1-introduction-droit-constitutionnel', 'L1', 'S1', 'matiere_principale', 'Notions fondamentales : État, Constitution, souveraineté, régimes politiques.', '#2563EB', 'landmark', 102),
('Introduction historique au droit', 'l1-introduction-historique-droit', 'L1', 'S1', 'matiere_principale', 'Histoire du droit français depuis l''Antiquité jusqu''à la codification.', '#9333EA', 'scroll', 103),
('Institutions juridictionnelles', 'l1-institutions-juridictionnelles', 'L1', 'S1', 'matiere_principale', 'Organisation des juridictions françaises (ordre judiciaire, administratif, constitutionnel).', '#B91C1C', 'gavel', 104),
('Droit civil de la famille', 'l1-droit-civil-famille', 'L1', 'S2', 'matiere_principale', 'Mariage, PACS, divorce, filiation, autorité parentale.', '#DB2777', 'heart', 201),
('Droit constitutionnel', 'l1-droit-constitutionnel', 'L1', 'S2', 'matiere_principale', 'Constitution de 1958, institutions de la Ve République, contrôle de constitutionnalité.', '#1D4ED8', 'landmark', 202),
('Histoire des institutions', 'l1-histoire-institutions', 'L1', 'S2', 'matiere_principale', 'Évolution des institutions politiques et administratives françaises.', '#7C3AED', 'scroll', 203),
('Institutions administratives', 'l1-institutions-administratives', 'L1', 'S2', 'matiere_principale', 'Organisation de l''administration : État, collectivités, établissements publics.', '#EA580C', 'building-2', 204);

-- =========================
-- MATIÈRES L2
-- =========================
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order") values
('Introduction au droit des obligations et obligations extracontractuelles', 'l2-introduction-obligations', 'L2', 'S1', 'matiere_principale', 'Théorie générale des obligations + responsabilité civile extracontractuelle.', '#059669', 'handshake', 301),
('Droit administratif I', 'l2-droit-administratif-1', 'L2', 'S1', 'matiere_principale', 'Sources, organisation, principes du droit administratif.', '#EA580C', 'building-2', 302),
('Droit pénal général', 'l2-droit-penal-general', 'L2', 'S1', 'matiere_principale', 'Infraction, responsabilité pénale, peines.', '#DC2626', 'gavel', 303),
('Droit des finances publiques', 'l2-finances-publiques', 'L2', 'S1', 'matiere_principale', 'Budget de l''État, lois de finances, principes du droit budgétaire.', '#CA8A04', 'calculator', 304),
('Droit des contrats', 'l2-droit-des-contrats', 'L2', 'S2', 'matiere_principale', 'Formation, exécution et inexécution du contrat depuis la réforme de 2016.', '#10B981', 'file-signature', 401),
('Droit administratif II', 'l2-droit-administratif-2', 'L2', 'S2', 'matiere_principale', 'Service public, actes administratifs, responsabilité administrative.', '#C2410C', 'building-2', 402),
('Procédure pénale', 'l2-procedure-penale', 'L2', 'S2', 'matiere_principale', 'Enquête, instruction, jugement, voies de recours.', '#EF4444', 'search', 403),
('Droit de l''UE I', 'l2-droit-ue-1', 'L2', 'S2', 'matiere_principale', 'Institutions et sources du droit de l''Union européenne.', '#1D4ED8', 'flag', 404),
('Droit des affaires I', 'l2-droit-affaires-1', 'L2', 'S2', 'matiere_principale', 'Droit commercial général, commerçants, fonds de commerce.', '#0F766E', 'briefcase', 405);

-- =========================
-- MATIÈRES L3
-- =========================
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order") values
('Droit international public', 'l3-droit-international-public', 'L3', 'S1', 'matiere_principale', 'Sources, sujets et responsabilité en droit international.', '#0EA5E9', 'globe-2', 501),
('Droit administratif des biens', 'l3-droit-administratif-biens', 'L3', 'S1', 'matiere_principale', 'Domaine public, expropriation, travaux publics.', '#C2410C', 'building', 502),
('Libertés fondamentales', 'l3-libertes-fondamentales', 'L3', 'S1', 'matiere_principale', 'Droits et libertés, contrôles de constitutionnalité et de conventionnalité.', '#4338CA', 'shield', 503),
('Droit civil des biens', 'l3-droit-civil-biens', 'L3', 'S1', 'matiere_principale', 'Propriété, possession, démembrements, indivision, servitudes.', '#A16207', 'home', 504),
('Droit international privé', 'l3-droit-international-prive', 'L3', 'S1', 'matiere_principale', 'Conflits de lois, conflits de juridictions, nationalité.', '#0369A1', 'map', 505),
('Droit social', 'l3-droit-social', 'L3', 'S1', 'matiere_principale', 'Droit du travail et droit de la sécurité sociale.', '#F59E0B', 'hard-hat', 506),
('Droit fiscal général', 'l3-droit-fiscal-general', 'L3', 'S2', 'matiere_principale', 'Principes du droit fiscal, IR, IS, TVA, procédures fiscales.', '#CA8A04', 'calculator', 601),
('Droit de l''Union européenne II', 'l3-droit-ue-2', 'L3', 'S2', 'matiere_principale', 'Marché intérieur, libertés de circulation, droit matériel de l''UE.', '#1D4ED8', 'flag', 602),
('Droit des sûretés', 'l3-droit-suretes', 'L3', 'S2', 'matiere_principale', 'Sûretés personnelles et réelles, garanties.', '#831843', 'lock', 603),
('Droit approfondi des sociétés', 'l3-droit-societes', 'L3', 'S2', 'matiere_principale', 'Constitution, fonctionnement et dissolution des sociétés.', '#14B8A6', 'building', 604),
('Procédure civile', 'l3-procedure-civile', 'L3', 'S2', 'matiere_principale', 'Action en justice, compétence, instance, voies de recours.', '#B45309', 'scale', 605),
('Contentieux administratif', 'l3-contentieux-administratif', 'L3', 'S2', 'matiere_principale', 'Recours, procédure, juridictions administratives.', '#C2410C', 'file-text', 606);

-- =========================
-- SECTIONS TRANSVERSES
-- =========================
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order") values
('Anglais juridique', 'transverse-anglais-juridique', 'Transverse', 'Annuel', 'anglais_juridique', 'Vocabulaire et expressions essentielles de l''anglais juridique : tribunaux, contrats, infractions, procédure.', '#6366F1', 'languages', 700),
('Culture générale juridique', 'transverse-culture-generale', 'Transverse', 'Annuel', 'culture_generale', 'Grandes figures, dates clés, jurisprudences emblématiques, principes fondateurs.', '#EC4899', 'brain', 800);

-- =========================
-- FICHES D'ARRÊTS
-- =========================
insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Blanco', 'Autre', '1873-02-08', 'TC, 8 février 1873', 'Agnès Blanco c/ État',
       'Une fillette, Agnès Blanco, est blessée par un wagonnet de la manufacture des tabacs de Bordeaux (service public). Son père engage la responsabilité de l''État.',
       'Conflit de compétences entre juge judiciaire et juge administratif, tranché par le Tribunal des conflits.',
       'Quelle juridiction est compétente pour connaître de la responsabilité de l''État pour les dommages causés par un service public ?',
       'La responsabilité de l''État du fait des services publics relève du juge administratif et obéit à des règles spéciales, distinctes de celles du Code civil.',
       'Arrêt fondateur du droit administratif moderne : il consacre l''autonomie du droit administratif et la compétence du juge administratif pour les litiges impliquant le service public.',
       array['Loi des 16-24 août 1790']
from public.subjects where name = 'Droit administratif I';

insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Nicolo', 'Conseil d''État', '1989-10-20', 'CE, Ass., 20 octobre 1989, n° 108243', 'M. Nicolo c/ Élections européennes',
       'Recours contre les élections européennes de 1989. M. Nicolo contestait l''application aux DOM-TOM de la loi française qu''il estimait contraire au traité CE.',
       'Recours porté directement devant le Conseil d''État statuant en premier et dernier ressort.',
       'Le juge administratif peut-il contrôler la conventionnalité d''une loi postérieure à un traité international ?',
       'Le Conseil d''État accepte de contrôler la conformité des lois aux traités internationaux, même postérieurs.',
       'Revirement majeur : le CE abandonne sa jurisprudence Semoules (1968) et s''aligne sur la Cour de cassation (Jacques Vabre, 1975). Consécration de la primauté du droit international sur la loi.',
       array['Article 55 de la Constitution']
from public.subjects where name = 'Droit administratif I';

insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Perruche', 'Cour de cassation', '2000-11-17', 'Cass., Ass. plén., 17 novembre 2000, n° 99-13.701', 'Consorts Perruche c/ Médecin et laboratoire',
       'Une femme enceinte contracte la rubéole. Suite à une erreur de diagnostic, l''enfant naît lourdement handicapé. Il demande réparation de son propre préjudice.',
       'Après plusieurs renvois, l''Assemblée plénière est saisie.',
       'L''enfant né handicapé peut-il demander réparation du préjudice résultant de son handicap, alors que les fautes médicales ont empêché sa mère d''exercer un avortement thérapeutique ?',
       'Oui, l''enfant peut réclamer la réparation du préjudice résultant de son handicap lorsque les fautes ont empêché sa mère de recourir à une IVG.',
       'Arrêt retentissant. Réaction législative : loi Kouchner du 4 mars 2002 (art. L114-5 CASF) interdisant cette action en réparation pour l''enfant.',
       array['Article 1240 du Code civil', 'Loi du 4 mars 2002']
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Chronopost', 'Cour de cassation', '1996-10-22', 'Cass. com., 22 octobre 1996, n° 93-18.632', 'Société Banchereau c/ Chronopost',
       'La société Banchereau confie à Chronopost deux plis contenant des soumissions. Livraison tardive entraînant la perte d''un marché. Chronopost invoque une clause limitative de responsabilité.',
       'Appel puis pourvoi en cassation.',
       'Une clause limitative de responsabilité peut-elle s''appliquer lorsqu''elle contredit l''obligation essentielle du contrat ?',
       'Non : la clause limitative de responsabilité qui contredit la portée de l''engagement essentiel du débiteur doit être réputée non écrite.',
       'Fondement jurisprudentiel repris par l''article 1170 du Code civil (réforme 2016) : nulle est la clause qui prive de substance l''obligation essentielle du débiteur.',
       array['Article 1170 du Code civil']
from public.subjects where name = 'Droit des contrats';

insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Jand''heur', 'Cour de cassation', '1930-02-13', 'Cass. ch. réunies, 13 février 1930', 'Lise Jand''heur',
       'Une fillette est blessée par un camion. La victime invoque la responsabilité du gardien fondée sur l''article 1384 al. 1 (actuel 1242).',
       'Pourvoi devant les chambres réunies.',
       'La présomption de responsabilité du gardien de la chose est-elle une présomption simple ou une responsabilité autonome ?',
       'La responsabilité du fait des choses repose sur une présomption de responsabilité qui ne peut être renversée que par la preuve d''un cas fortuit, d''une force majeure ou d''une cause étrangère.',
       'Consacre un régime général de responsabilité du fait des choses, indépendamment de toute faute du gardien. Base du droit moderne de la responsabilité.',
       array['Article 1242 du Code civil (anc. 1384 al. 1)']
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Costa c/ ENEL', 'CJUE', '1964-07-15', 'CJCE, 15 juillet 1964, aff. 6/64', 'Flaminio Costa c/ ENEL',
       'Un avocat italien, actionnaire d''une société nationalisée, conteste la loi italienne de nationalisation de l''électricité comme contraire au traité CEE.',
       'Question préjudicielle adressée à la CJCE.',
       'Le droit communautaire prime-t-il sur le droit national, y compris postérieur ?',
       'Oui : issu d''une source autonome, le droit communautaire ne peut se voir opposer un texte interne quel qu''il soit, sans perdre son caractère communautaire.',
       'Arrêt fondateur de la primauté du droit de l''Union européenne sur le droit national. Principe confirmé par Simmenthal (1978).',
       array['Traité CEE']
from public.subjects where name = 'Droit de l''UE I';

insert into public.case_law_sheets (subject_id, title, jurisdiction, decision_date, reference, parties, facts, procedure, legal_question, solution, portee, related_articles)
select id, 'Arrêt Clément-Bayard', 'Cour de cassation', '1915-08-03', 'Cass. req., 3 août 1915', 'Coquerel c/ Clément-Bayard',
       'Le voisin de Clément-Bayard (fabricant de dirigeables) installé sur son terrain des carcasses de bois surmontées de tiges de fer, uniquement pour nuire aux ballons dirigeables.',
       'Action en responsabilité pour abus de droit.',
       'L''exercice d''un droit peut-il constituer une faute lorsqu''il est motivé par la seule volonté de nuire ?',
       'Oui : un propriétaire commet une faute lorsqu''il use de son droit dans le seul but de nuire à autrui, sans utilité personnelle.',
       'Consacre la théorie de l''abus de droit. Un droit, même absolu comme la propriété, peut être limité par l''interdiction de nuire.',
       array['Article 544 du Code civil', 'Article 1240 du Code civil']
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- =========================
-- FICHES DE RÉVISION
-- =========================
insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, content)
select id, 'La hiérarchie des normes', 'Sources du droit constitutionnel',
       'Présentation de la pyramide de Kelsen adaptée au droit français : bloc de constitutionnalité, bloc de conventionnalité, loi, règlement.',
       array['Pyramide de Kelsen', 'Bloc de constitutionnalité', 'Article 55 C', 'Contrôle de constitutionnalité', 'Contrôle de conventionnalité'],
       12,
       '# La hiérarchie des normes

## Introduction
La hiérarchie des normes est un principe structurant du système juridique français. Théorisée par Hans Kelsen, elle organise les règles de droit selon leur autorité relative.

## I. Le bloc de constitutionnalité (sommet)
- Constitution du 4 octobre 1958
- Préambule de 1946
- Déclaration des droits de l''homme et du citoyen de 1789
- Charte de l''environnement de 2004
- Principes fondamentaux reconnus par les lois de la République (PFRLR)

## II. Le bloc de conventionnalité
- Traités internationaux régulièrement ratifiés (art. 55 C)
- Droit de l''Union européenne (primauté, CJCE Costa c/ ENEL, 1964)
- Convention européenne des droits de l''homme

## III. La loi
- Lois organiques (entre Constitution et loi ordinaire)
- Lois ordinaires (art. 34 C)
- Ordonnances ratifiées (art. 38 C)

## IV. Le règlement
- Règlements autonomes (art. 37 C)
- Règlements d''application
- Actes administratifs individuels

## V. Les contrôles
- **Contrôle de constitutionnalité** : Conseil constitutionnel (a priori + QPC depuis 2008)
- **Contrôle de conventionnalité** : juges ordinaires (Cass. Jacques Vabre 1975, CE Nicolo 1989)

## À retenir
La hiérarchie n''est pas toujours stricte : certains débats subsistent sur la place du droit de l''UE par rapport à la Constitution (CE Arcelor 2007, CC 2004).'
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, content)
select id, 'La formation du contrat', 'Théorie générale du contrat',
       'Les conditions de formation du contrat depuis la réforme de 2016 : consentement, capacité, contenu licite et certain.',
       array['Consentement', 'Offre et acceptation', 'Vices du consentement', 'Capacité', 'Contenu licite et certain'],
       15,
       '# La formation du contrat

## Introduction
La réforme du 10 février 2016 a renouvelé profondément le droit des contrats. L''article 1128 du Code civil énonce désormais trois conditions de validité.

## I. Le consentement des parties

### A. L''échange des consentements
- **Offre** (art. 1113 s.) : ferme et précise
- **Acceptation** : pure et simple (sinon contre-proposition)
- **Période précontractuelle** : bonne foi (art. 1112)

### B. Les vices du consentement (art. 1130 s.)
- **Erreur** (art. 1132) : sur les qualités essentielles
- **Dol** (art. 1137) : manoeuvres, mensonge, réticence dolosive
- **Violence** (art. 1140) : physique, morale, abus de dépendance

## II. La capacité (art. 1145 s.)
- Principe : toute personne peut contracter
- Incapacités de jouissance (rares, spéciales)
- Incapacités d''exercice (mineurs, majeurs protégés)

## III. Un contenu licite et certain (art. 1162 s.)
- **Licite** : conforme à l''ordre public
- **Certain** : déterminé ou déterminable
- **Contrepartie** : l''obligation doit avoir une contrepartie (anc. cause)

## IV. Les sanctions
- **Nullité absolue** : intérêt général, 5 ans
- **Nullité relative** : intérêt privé, 5 ans
- **Caducité** (art. 1186) : disparition d''un élément essentiel

## À retenir
La réforme a supprimé la notion de « cause » mais maintenu ses fonctions (ex. art. 1170 : obligation essentielle, issu de Chronopost).'
from public.subjects where name = 'Droit des contrats';

insert into public.revision_sheets (subject_id, title, chapter, summary, key_concepts, estimated_read_time, content)
select id, 'La responsabilité du fait des choses', 'Responsabilité extracontractuelle',
       'Régime général de responsabilité fondé sur l''article 1242 alinéa 1 du Code civil, issu de la jurisprudence Jand''heur.',
       array['Gardien', 'Chose', 'Fait actif', 'Garde de la structure', 'Garde du comportement', 'Cause étrangère'],
       13,
       '# La responsabilité du fait des choses

## Introduction
L''article 1242 al. 1 du Code civil (anc. 1384 al. 1) pose un principe général de responsabilité pour les dommages causés par les choses dont on a la garde. L''arrêt Jand''heur (1930) en a fait un régime autonome.

## I. Les conditions

### A. Une chose
- Toute chose corporelle, en mouvement ou inerte
- Exclusions : animaux (art. 1243), bâtiments en ruine (art. 1244), corps humain

### B. Le fait de la chose
- Chose en mouvement : fait causal présumé
- Chose inerte : la victime doit prouver un rôle actif

### C. Un gardien
- **Définition** : celui qui a l''usage, la direction et le contrôle (Franck, 1941)
- **Distinction Oxygène liquide (1956)** : garde de la structure vs garde du comportement
- Présomption de garde sur le propriétaire

## II. Les causes d''exonération
- Force majeure / cas fortuit
- Fait d''un tiers (force majeure)
- Fait de la victime (exonération totale ou partielle)

## III. Les concurrences
- Avec la responsabilité du fait d''autrui (art. 1242 al. 4 s.)
- Avec les régimes spéciaux (loi Badinter 1985 pour les accidents de la circulation)

## À retenir
Ce régime est objectif : pas de faute à prouver. Seule la preuve d''une cause étrangère peut exonérer le gardien.'
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';
