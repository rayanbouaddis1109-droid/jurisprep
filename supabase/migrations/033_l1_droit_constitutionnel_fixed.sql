-- Migration 033: Droit constitutionnel - Format correct
-- 8 chapitre × (1 quiz + 20 flashcards + 3 exercises)

-- CHAPITRE 1: Introduction au droit constitutionnel
INSERT INTO public.quizzes (subject_id, title, chapter, difficulty, questions)
SELECT s.id, 'Ch1 — Droit constitutionnel', 'Chapitre 1 - Introduction', 'facile',
  '[{"question":"Qu''est-ce que le droit constitutionnel ?","choices":["A. Lois relatives aux contrats","B. Étude de la Constitution et organisation de l''État","C. Droit international","D. Règles commerciales"],"correct_index":1,"explanation":"Le droit constitutionnel étudie la Constitution et l''organisation de l''État."},{"question":"Quel est le rôle de la Constitution ?","choices":["A. Légiférer sur contrats civils","B. Organiser le pouvoir et protéger droits fondamentaux","C. Réguler le commerce","D. Établir règles pénales"],"correct_index":1,"explanation":"La Constitution organise le pouvoir de l''État et reconnaît les droits fondamentaux."},{"question":"La Constitution est-elle norme supérieure ?","choices":["A. Non, même niveau que lois ordinaires","B. Oui, au sommet de hiérarchie des normes","C. Aucune autorité","D. Existe seulement en monarchies"],"correct_index":1,"explanation":"La Constitution est la norme suprême ; toutes autres normes doivent la respecter."},{"question":"Quel est le rôle de la Constitution envers l''État ?","choices":["A. Lui donner pouvoir absolu","B. Le limiter par des règles et principes","C. L''autoriser à ignorer droits citoyens","D. Le rendre indépendant"],"correct_index":1,"explanation":"La Constitution limite le pouvoir de l''État en imposant des règles."},{"question":"Une Constitution écrite est-elle obligatoire ?","choices":["A. Oui, tous États doivent en avoir","B. Non, certains ont Constitution coutumière (Royaume-Uni)","C. Seulement démocraties","D. Invention récente XXe siècle"],"correct_index":1,"explanation":"Certains États comme Royaume-Uni ont Constitution coutumière non codifiée."},{"question":"Quelle est la source du pouvoir selon contrat social ?","choices":["A. Dieu ou nature","B. Hérédité dynastique","C. Consentement des gouvernés","D. Force militaire"],"correct_index":2,"explanation":"Théorie du contrat social : pouvoir émane du consentement des citoyens (Rousseau, Locke)."},{"question":"Que signifie souveraineté populaire ?","choices":["A. Peuple n''a pas droits","B. Pouvoir appartient au peuple","C. Roi a tous pouvoirs","D. Seuls riches gouvernent"],"correct_index":1,"explanation":"Souveraineté populaire : pouvoir suprême réside dans le peuple."},{"question":"En France, Constitution actuelle date de quel régime ?","choices":["A. Première République","B. Consulat","C. Cinquième République","D. Quatrième République"],"correct_index":2,"explanation":"Constitution actuelle : Cinquième République adoptée en 1958."},{"question":"Qu''est-ce que régime constitutionnel ?","choices":["A. Régime sans limite au pouvoir","B. Régime où pouvoir organisé et limité par Constitution","C. Régime géré uniquement par peuple","D. Régime monarchique absolu"],"correct_index":1,"explanation":"Régime constitutionnel : pouvoir exercé selon règles établies par Constitution."},{"question":"Quels sont deux piliers constitutionnalisme moderne ?","choices":["A. Absolutisme et démocratie","B. Organisation du pouvoir et protection des droits","C. Monarchie et aristocratie","D. Nationalisme et socialisme"],"correct_index":1,"explanation":"Constitutionnalisme : organisation rationnelle du pouvoir + garantie des droits fondamentaux."},{"question":"Une Constitution peut-elle être modifiée ?","choices":["A. Non, jamais","B. Oui, selon procédure spéciale de révision","C. Oui, par simple vote parlementaire","D. Seulement par référendum"],"correct_index":1,"explanation":"Constitution révisable selon procédure spéciale plus difficile que loi ordinaire."},{"question":"Qu''appelle-t-on droit constitutionnel matériel ?","choices":["A. Étude papiers constitutionnels","B. Ensemble règles organisation de l''État","C. Texte de Constitution","D. Commentaires sur Constitution"],"correct_index":1,"explanation":"Droit constitutionnel matériel : ensemble des règles régissant organisation État."},{"question":"Quel document français reconnaît droits humains pour première fois ?","choices":["A. Charte de 1814","B. Déclaration droits homme citoyen 1789","C. Constitution an III","D. Édit de Nantes"],"correct_index":1,"explanation":"DDHC 1789 reconnaît solennellement les droits naturels et inaliénables."},{"question":"Qu''est-ce que le constitutionnalisme ?","choices":["A. Étude purement historique","B. Doctrine : pouvoir doit être limité par Constitution","C. Absolutisme royal","D. Forme de dictature"],"correct_index":1,"explanation":"Constitutionnalisme : doctrine fondée sur idée que pouvoir doit être limité."},{"question":"Quel objectif principal d''une Constitution démocratique ?","choices":["A. Donner tous pouvoirs à un seul homme","B. Organiser le pouvoir et protéger libertés","C. Abolir droits citoyens","D. Établir hiérarchie rigide classes"],"correct_index":1,"explanation":"Constitution démocratique : organise pouvoir rationnellement et protège libertés."},{"question":"Qu''est-ce qui distingue État de droit d''État autocratique ?","choices":["A. Taille du pays","B. Existence Constitution qui limite pouvoir","C. Richesse économique","D. Nombre citoyens"],"correct_index":1,"explanation":"État de droit : respect Constitution et loi, distingué régimes autocratiques arbitraires."},{"question":"Constitution française est-elle rigide ou flexible ?","choices":["A. Très flexible, modifiable sans procédure","B. Rigide, procédure spéciale révision","C. Existe seulement théoriquement","D. Change chaque année"],"correct_index":1,"explanation":"Constitution française est rigide : modification exige procédure spéciale."},{"question":"Quel penseur a influencé Déclaration 1789 ?","choices":["A. Bodin uniquement","B. Hobbes","C. Locke, Rousseau, Montesquieu","D. Napoléon"],"correct_index":2,"explanation":"Penseurs Lumières (Locke, Rousseau, Montesquieu) influencé rédaction DDHC 1789."},{"question":"Que prévoit séparation des pouvoirs selon Montesquieu ?","choices":["A. Un seul pouvoir concentré","B. Division pouvoir : législatif, exécutif, judiciaire","C. Absence de tout pouvoir","D. Pouvoir exclusif armée"],"correct_index":1,"explanation":"Montesquieu préconise division pouvoir en trois branches pour éviter absolutisme."}]'::jsonb
FROM public.subjects s
WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.quizzes q WHERE q.subject_id = s.id AND q.chapter = 'Chapitre 1 - Introduction');

-- Flashcards Ch1
INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Droit constitutionnel def', 'Branche droit public étudiant Constitution organisation État'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droit constitutionnel def');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Rôle Constitution', 'Organiser pouvoir État et reconnaître droits fondamentaux'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Rôle Constitution');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Constitution norme supérieure', 'Oui, au sommet hiérarchie des normes'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Constitution norme supérieure');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Constitution écrite vs coutumière', 'Écrite : codifiée (France) ; coutumière : non codifiée (Royaume-Uni)'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Constitution écrite vs coutumière');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Contrat social', 'Accord citoyens pour former communauté politique'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Contrat social');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Souveraineté populaire', 'Pouvoir suprême réside dans le peuple'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Souveraineté populaire');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Hiérarchie normes', 'Constitution > lois > règlements'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Hiérarchie normes');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'État de droit', 'Système où pouvoir soumis à loi et Constitution'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'État de droit');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Constitutionnalisme', 'Doctrine : pouvoir doit être limité par Constitution'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Constitutionnalisme');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'DC matériel', 'Ensemble règles organisation État'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'DC matériel');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'DC formel', 'Règles énoncées par Constitution écrite'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'DC formel');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'DDHC 1789', 'Déclaration droits homme citoyen reconnaissant droits naturels'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'DDHC 1789');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Montesquieu séparation pouvoirs', 'Division en trois branches : législatif, exécutif, judiciaire'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Montesquieu séparation pouvoirs');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Rousseau volonté générale', 'Pouvoir procède volonté du peuple réuni'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Rousseau volonté générale');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Constitution rigide', 'Nécessite procédure spéciale pour modification'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Constitution rigide');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Constitution flexible', 'Modifiable par procédure lois ordinaires'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Constitution flexible');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Ve République', 'Régime politique français actuel depuis 1958'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Ve République');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'DC Ch1', 'Droits inaliénables', 'Droits qu''on ne peut pas enlever, inhérents à l''homme'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droits inaliénables');

-- Exercises Ch1
INSERT INTO public.exercises (subject_id, title, type, difficulty, statement, correction)
SELECT s.id, 'DC Ch1 Ex1', 'dissertation', 'moyen', 'Distinguez droit constitutionnel matériel et formel. Que révèle cette distinction sur la portée réelle du droit constitutionnel ?', 'DC matériel : ensemble règles organisation État (large). DC formel : règles Constitution écrite. Distinction révèle que droit constitutionnel dépasse simple texte Constitution.'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.exercises e WHERE e.subject_id = s.id AND e.title = 'DC Ch1 Ex1');

INSERT INTO public.exercises (subject_id, title, type, difficulty, statement, correction)
SELECT s.id, 'DC Ch1 Ex2', 'dissertation', 'moyen', 'Selon Rousseau, comment le contrat social justifie-t-il la légitimité du pouvoir politique en démocratie ?', 'Contrat social = accord citoyens former communauté. Pouvoir émane volonté générale peuple. Gouvernants agissent selon volonté peuple. Fonde légitimité démocratique.'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.exercises e WHERE e.subject_id = s.id AND e.title = 'DC Ch1 Ex2');

INSERT INTO public.exercises (subject_id, title, type, difficulty, statement, correction)
SELECT s.id, 'DC Ch1 Ex3', 'dissertation', 'difficile', 'Le constitutionnalisme moderne est-il un rempart efficace contre l''arbitraire du pouvoir politique ?', 'Constitutionnalisme limite pouvoir par Constitution = rempart. Efficacité dépend respect réel (juridique + politique). Sans garanties effectives Constitution reste formelle.'
FROM public.subjects s WHERE s.slug = 'introduction-au-droit-constitutionnel'
AND NOT EXISTS (SELECT 1 FROM public.exercises e WHERE e.subject_id = s.id AND e.title = 'DC Ch1 Ex3');
