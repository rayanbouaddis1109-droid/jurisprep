-- Migration 034: Introduction générale au droit - Ch1 only (format correct)

INSERT INTO public.quizzes (subject_id, title, chapter, difficulty, questions)
SELECT s.id, 'IGD — Le phénomène juridique', 'Chapitre 1 - Le phénomène juridique', 'facile',
  '[{"question":"Qu''est-ce que la règle de droit ?","choices":["A. Convention sociale simple","B. Norme générale, obligatoire et sanctionnée","C. Suggestion non contraignante","D. Accord privé entre deux personnes"],"correct_index":1,"explanation":"Règle de droit : norme générale, impersonnelle, obligatoire et sanctionnée par l''État."},{"question":"Quels sont caractères essentiels règle de droit ?","choices":["A. Généralité, impersonnalité, obligatoriété","B. Généralité, obligatoriété, sanction","C. Impersonnalité, flexibilité","D. Unicité, flexibilité"],"correct_index":1,"explanation":"Règle de droit : générale, impersonnelle, obligatoire, sanctionnée."},{"question":"Qu''est-ce qui distingue règle de droit d''une règle morale ?","choices":["A. Rien, identiques","B. Règle morale n''est pas sanctionnée par l''État","C. Règle morale s''impose à tous","D. Règle de droit n''existe qu''en droit privé"],"correct_index":1,"explanation":"Règle morale : sanction interne (conscience) ; règle de droit : sanction étatique."},{"question":"Qu''est-ce qui distingue règle de droit d''une règle religieuse ?","choices":["A. Identiques","B. Règle religieuse vient autorité spirituelle, pas sanction étatique","C. Règle de droit n''existe qu''chez athées","D. Aucune différence"],"correct_index":1,"explanation":"Règle religieuse : autorité religieuse ; règle de droit : autorité État."},{"question":"Qu''est-ce qui distingue règle de droit d''une simple convention ?","choices":["A. Rien","B. Convention volontaire et privée ; règle de droit s''impose obligatoirement","C. Convention plus importante","D. Règle de droit seulement pour riches"],"correct_index":1,"explanation":"Convention : accord privé volontaire ; règle de droit : s''impose à tous obligatoirement."},{"question":"Qu''appelle-t-on l''ordre juridique ?","choices":["A. L''armée","B. Ensemble règles de droit et institutions d''un État","C. La police","D. Les tribunaux"],"correct_index":1,"explanation":"Ordre juridique : ensemble organisé des règles de droit et institutions."},{"question":"Qu''est-ce qu''une sanction juridique ?","choices":["A. Punition morale","B. Conséquence imposée par autorité étatique en cas violation","C. Censure sociale","D. Jugement moral"],"correct_index":1,"explanation":"Sanction juridique : conséquence imposée par l''État pour violation règle de droit."},{"question":"Qu''est-ce qu''une sanction civile ?","choices":["A. Peine de prison","B. Paiement dommages ou exécution forcée","C. Amende","D. Condamnation morale"],"correct_index":1,"explanation":"Sanction civile : dommages-intérêts ou exécution forcée de l''obligation."},{"question":"Qu''est-ce qu''une sanction pénale ?","choices":["A. Amende civile","B. Peine infligée pour violation loi pénale","C. Remboursement","D. Résiliation contrat"],"correct_index":1,"explanation":"Sanction pénale : peine (prison, amende) imposée pour crime ou délit."},{"question":"Qui crée et sanctionne règles de droit ?","choices":["A. Les citoyens","B. L''État par ses institutions","C. Les entreprises","D. Les religions"],"correct_index":1,"explanation":"État, par ses organes, crée et applique les règles de droit."},{"question":"Qu''appelle-t-on droit objectif ?","choices":["A. Droit appartenant à un sujet","B. Ensemble règles de droit applicables","C. Droit subjectif","D. Droit international"],"correct_index":1,"explanation":"Droit objectif : ensemble des règles juridiques objectives applicables."},{"question":"Qu''appelle-t-on droit subjectif ?","choices":["A. Ensemble des règles","B. Droit appartenant à une personne","C. Droit international","D. Droit qui n''existe pas"],"correct_index":1,"explanation":"Droit subjectif : pouvoir, prérogative, droit appartenant à une personne."},{"question":"Qu''est-ce qu''une obligation juridique ?","choices":["A. Simple suggestion","B. Devoir imposé par droit","C. Conseil","D. Recommandation"],"correct_index":1,"explanation":"Obligation juridique : devoir imposé par règle de droit."},{"question":"Qu''est-ce qui caractérise l''autorité règle de droit ?","choices":["A. Force persuasive","B. Caractère obligatoire et possibilité d''imposer sanction","C. Popularité","D. Ancienneté"],"correct_index":1,"explanation":"Autorité règle de droit : caractère obligatoire et sanction imposée."},{"question":"Un contrat peut-il déroger à règle de droit ?","choices":["A. Oui, toujours","B. Non, jamais","C. Seulement règles supplétives","D. Seulement contrats commerciaux"],"correct_index":2,"explanation":"Contrats ne peuvent violer règles impératives ; peuvent déroger règles supplétives."},{"question":"Qu''est-ce qu''une règle impérative ?","choices":["A. Règle optionnelle","B. Règle dont on ne peut pas déroger par contrat","C. Règle internationale","D. Règle ancienne"],"correct_index":1,"explanation":"Règle impérative s''impose à tous, ne peut être écartée par accord privé."},{"question":"Qu''est-ce qu''une règle suppletive ?","choices":["A. Règle sans importance","B. Règle s''appliquant si parties n''en conviennent pas autrement","C. Règle pénale","D. Règle obsolète"],"correct_index":1,"explanation":"Règle suppletive s''applique sauf si parties en conviennent autrement."},{"question":"Qu''appelle-t-on phénomène juridique ?","choices":["A. Un crime","B. Ensemble faits et relations soumis régulation du droit","C. Un jugement","D. Une sanction"],"correct_index":1,"explanation":"Phénomène juridique : tout fait ou relation que droit régule."},{"question":"Le droit est-il universel ou relatif ?","choices":["A. Universel, valant partout","B. Relatif, variant selon États et systèmes","C. Ni l''un ni l''autre","D. Universel mais inégalement appliqué"],"correct_index":1,"explanation":"Droit est relatif : chaque État a son propre système juridique."},{"question":"Quel est fondement ultime du droit ?","choices":["A. Force de l''État","B. Consentement social et légitimité","C. Tradition seule","D. Volonté du monarque"],"correct_index":1,"explanation":"Fondement du droit : légitimité reconnue et acceptation sociale."}]'::jsonb
FROM public.subjects s
WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.quizzes q WHERE q.subject_id = s.id AND q.chapter = 'Chapitre 1 - Le phénomène juridique');

-- 20 flashcards Ch1
INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Règle de droit', 'Norme générale, impersonnelle, obligatoire et sanctionnée'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Règle de droit');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Ordre juridique', 'Ensemble règles droit et institutions État'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Ordre juridique');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Droit objectif', 'Ensemble règles juridiques applicables'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droit objectif');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Droit subjectif', 'Droit appartenant à une personne'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droit subjectif');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Sanction civile', 'Dommages-intérêts ou exécution forcée'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Sanction civile');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Sanction pénale', 'Peine imposée pour crime ou délit'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Sanction pénale');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Obligation juridique', 'Devoir imposé par droit'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Obligation juridique');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Règle impérative', 'Règle qu''on ne peut pas écarter par contrat'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Règle impérative');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Règle suppletive', 'Règle s''appliquant si parties n''en conviennent pas autrement'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Règle suppletive');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Phénomène juridique', 'Fait ou relation soumis régulation droit'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Phénomène juridique');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Légitimité du droit', 'Acceptation sociale et reconnaissance de l''autorité'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Légitimité du droit');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Droit vs morale', 'Droit : sanction étatique ; morale : sanction sociale'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droit vs morale');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Droit vs religion', 'Droit : autorité étatique ; religion : autorité spirituelle'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droit vs religion');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Droit vs convention', 'Droit : obligatoire ; convention : volontaire et privée'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Droit vs convention');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Relativité du droit', 'Droit varie selon États et systèmes'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Relativité du droit');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Universalité vs relativité', 'Droit n''est pas universel mais adapté à contextes'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Universalité vs relativité');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Fondement du droit', 'Légitimité reconnue par communauté'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Fondement du droit');

INSERT INTO public.flashcards (subject_id, deck_name, front, back)
SELECT s.id, 'IGD Ch1', 'Caractères règle droit', 'Généralité, impersonnalité, obligatoriété, sanction'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.flashcards f WHERE f.subject_id = s.id AND f.front = 'Caractères règle droit');

-- 3 exercises Ch1
INSERT INTO public.exercises (subject_id, title, type, difficulty, statement, correction)
SELECT s.id, 'IGD Ch1 Ex1', 'dissertation', 'moyen', 'Analysez distinction entre droit et morale. Montrez deux conduites immorales mais non punies juridiquement.', 'Immoralité ne viole pas nécessairement droit. Exemple : mensonge à ami, abandon affectif = immoraux mais pas punissables juridiquement. Droit pénal ne sanctionne que violations graves. Conclusion : droit n''englobe qu''une partie règles morales.'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.exercises e WHERE e.subject_id = s.id AND e.title = 'IGD Ch1 Ex1');

INSERT INTO public.exercises (subject_id, title, type, difficulty, statement, correction)
SELECT s.id, 'IGD Ch1 Ex2', 'dissertation', 'moyen', 'Qu''est-ce qui fait force obligatoire du droit ? Montrez que ce n''est pas seulement menace de sanction.', 'Force droit : 1) sanction étatique 2) acceptation sociale/légitimité 3) utilité pratique 4) tradition. Sans légitimité, même loi bien sanctionnée contestée. Sanction seule n''explique conformité généralisée.'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.exercises e WHERE e.subject_id = s.id AND e.title = 'IGD Ch1 Ex2');

INSERT INTO public.exercises (subject_id, title, type, difficulty, statement, correction)
SELECT s.id, 'IGD Ch1 Ex3', 'dissertation', 'difficile', 'Les contrats doivent-ils toujours respecter l''ordre public ? Justifiez pourquoi certaines clauses sont nulles.', 'Oui, contrats doivent respecter règles impératives. Clauses nulles : esclavage, paiement sans cause, travail forcé. Ces règles impératives protègent intérêt général. Parties ne peuvent déroger même d''accord.'
FROM public.subjects s WHERE s.slug = 'introduction-generale-au-droit'
AND NOT EXISTS (SELECT 1 FROM public.exercises e WHERE e.subject_id = s.id AND e.title = 'IGD Ch1 Ex3');
