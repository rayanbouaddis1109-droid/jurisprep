-- =====================================================================
-- JurisPrép - Quizzes, Flashcards et Exercices de démarrage
-- =====================================================================

-- =========================
-- QUIZZES
-- =========================
insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Introduction au droit - QCM', 'Sources du droit', 'facile',
       'Quiz de découverte sur les notions fondamentales du droit.',
       '[
         {"question":"Quelle est la norme suprême en droit français ?","choices":["La loi","La Constitution","Le décret","La jurisprudence"],"correct_index":1,"explanation":"La Constitution est au sommet de la hiérarchie des normes en droit français."},
         {"question":"Qu''est-ce qu''un arrêt ?","choices":["Une décision rendue par un tribunal de première instance","Une décision rendue par une juridiction supérieure","Un acte du Parlement","Un décret présidentiel"],"correct_index":1,"explanation":"Un arrêt émane d''une juridiction supérieure (cour d''appel, Cour de cassation, Conseil d''État)."},
         {"question":"Quelle est la principale différence entre le droit public et le droit privé ?","choices":["Le droit public concerne les personnes privées","Le droit privé régit les rapports entre personnes privées, le droit public implique les personnes publiques","Il n''y a pas de différence","Le droit privé est plus important"],"correct_index":1,"explanation":"Le droit privé régit les rapports entre personnes privées ; le droit public implique au moins une personne publique."},
         {"question":"Quel article de la Constitution consacre la primauté des traités sur la loi ?","choices":["Article 34","Article 55","Article 89","Article 61"],"correct_index":1,"explanation":"L''article 55 dispose que les traités régulièrement ratifiés ont une autorité supérieure à celle des lois."},
         {"question":"Qu''est-ce que la QPC ?","choices":["Question Politique Constitutionnelle","Question Prioritaire de Constitutionnalité","Quorum Parlementaire Constitutionnel","Quotité Partielle du Contentieux"],"correct_index":1,"explanation":"La Question Prioritaire de Constitutionnalité permet à un justiciable de contester une loi en vigueur depuis 2010."}
       ]'::jsonb
from public.subjects where name = 'Introduction générale au droit';

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Droit constitutionnel - Les institutions de la Ve République', 'Institutions', 'moyen',
       'Testez vos connaissances sur les institutions de la Ve République.',
       '[
         {"question":"Qui peut engager la responsabilité du Gouvernement devant l''Assemblée nationale ?","choices":["Le Président de la République seul","Le Premier ministre après délibération en Conseil des ministres","Le Président du Sénat","L''Assemblée seule"],"correct_index":1,"explanation":"L''article 49 al. 1 prévoit que le Premier ministre engage la responsabilité du Gouvernement après délibération en Conseil des ministres."},
         {"question":"Quel est le mode d''élection du Président de la République depuis 1962 ?","choices":["Suffrage universel indirect","Suffrage universel direct à deux tours","Élection par le Congrès","Désignation par le Sénat"],"correct_index":1,"explanation":"Depuis la révision de 1962, le Président est élu au suffrage universel direct à deux tours."},
         {"question":"Que prévoit l''article 16 de la Constitution ?","choices":["La dissolution de l''Assemblée","Les pouvoirs exceptionnels du Président en cas de crise grave","Le référendum","La révision constitutionnelle"],"correct_index":1,"explanation":"L''article 16 permet au Président d''exercer les pleins pouvoirs en cas de menace grave et immédiate sur les institutions."},
         {"question":"Combien de membres compte le Conseil constitutionnel ?","choices":["7","9 membres + anciens présidents de la République","11","13"],"correct_index":1,"explanation":"Le Conseil compte 9 membres nommés + les anciens présidents de la République de droit."},
         {"question":"Quelle procédure permet la révision de la Constitution ?","choices":["Article 11","Article 49-3","Article 89","Article 34"],"correct_index":2,"explanation":"L''article 89 prévoit la procédure normale de révision (Congrès ou référendum)."}
       ]'::jsonb
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Droit des obligations - Formation du contrat', 'Formation du contrat', 'moyen',
       'Évaluez votre maîtrise des conditions de validité du contrat après la réforme de 2016.',
       '[
         {"question":"Combien de conditions de validité énonce l''article 1128 du Code civil ?","choices":["2","3","4","5"],"correct_index":1,"explanation":"Article 1128 : consentement, capacité, contenu licite et certain."},
         {"question":"La cause est-elle toujours une condition de validité du contrat ?","choices":["Oui","Non, elle a été supprimée par la réforme de 2016","Uniquement dans les contrats commerciaux","Seulement en matière civile"],"correct_index":1,"explanation":"La réforme du 10 février 2016 a supprimé la notion de cause, tout en en conservant les fonctions."},
         {"question":"Quel vice du consentement résulte de manoeuvres frauduleuses ?","choices":["L''erreur","Le dol","La violence","La lésion"],"correct_index":1,"explanation":"Le dol (art. 1137 C. civ.) résulte de manoeuvres, mensonges ou réticences dolosives."},
         {"question":"Quel est le délai de prescription de l''action en nullité ?","choices":["2 ans","5 ans","10 ans","30 ans"],"correct_index":1,"explanation":"Le délai est de 5 ans (art. 2224 C. civ.)."},
         {"question":"Quelle est la sanction d''une clause qui prive de substance l''obligation essentielle ?","choices":["La clause s''applique","La clause est réputée non écrite (art. 1170)","Le contrat est nul","La clause doit être interprétée restrictivement"],"correct_index":1,"explanation":"Article 1170 (issu de la jurisprudence Chronopost, 1996) : la clause est réputée non écrite."}
       ]'::jsonb
from public.subjects where name = 'Droit des contrats';

-- Quizzes Anglais juridique
insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Anglais juridique - Vocabulaire de base', 'Vocabulaire fondamental', 'facile',
       'Les termes essentiels en anglais juridique : tribunaux, parties, contrats.',
       '[
         {"question":"How do you say ''avocat'' (qui plaide) in English?","choices":["Notary","Barrister","Solicitor","Judge"],"correct_index":1,"explanation":"''Barrister'' désigne l''avocat qui plaide devant les tribunaux supérieurs (UK). ''Solicitor'' désigne celui qui conseille et rédige."},
         {"question":"Quel est le terme anglais pour ''arrêt'' (décision de justice) ?","choices":["Bill","Ruling / Judgment","Statute","Treaty"],"correct_index":1,"explanation":"''Ruling'' ou ''Judgment'' désignent une décision rendue par un tribunal."},
         {"question":"Comment traduit-on ''plaignant'' en anglais ?","choices":["Defendant","Plaintiff","Witness","Counsel"],"correct_index":1,"explanation":"''Plaintiff'' = plaignant / demandeur. ''Defendant'' = défendeur."},
         {"question":"Que signifie ''breach of contract'' ?","choices":["Conclusion d''un contrat","Violation d''un contrat","Renouvellement d''un contrat","Interprétation d''un contrat"],"correct_index":1,"explanation":"''Breach of contract'' = manquement / violation d''une obligation contractuelle."},
         {"question":"Quel mot anglais signifie ''preuve'' (en matière judiciaire) ?","choices":["Proof","Evidence","Testimony","Charge"],"correct_index":1,"explanation":"''Evidence'' est le terme générique pour les preuves produites en justice."},
         {"question":"Que désigne ''tort'' en common law ?","choices":["Une infraction pénale","Un délit civil (responsabilité extracontractuelle)","Un contrat","Une saisie"],"correct_index":1,"explanation":"Le ''tort'' est l''équivalent anglo-saxon du délit civil."},
         {"question":"Comment traduit-on ''législation'' en anglais ?","choices":["Lawsuit","Legislation","Litigation","Hearing"],"correct_index":1,"explanation":"''Legislation'' = législation. ''Lawsuit'' = procès."},
         {"question":"Que veut dire ''guilty'' ?","choices":["Innocent","Coupable","Témoin","Avocat"],"correct_index":1,"explanation":"''Guilty'' = coupable. L''opposé est ''not guilty''."}
       ]'::jsonb
from public.subjects where name = 'Anglais juridique';

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Anglais juridique - Procédure et tribunaux', 'Court systems and procedure', 'moyen',
       'Vocabulaire des juridictions et de la procédure judiciaire en common law.',
       '[
         {"question":"Que désigne ''Supreme Court'' aux États-Unis ?","choices":["Tribunal de première instance","Cour d''appel","Cour suprême","Cour internationale"],"correct_index":2,"explanation":"La Supreme Court est la plus haute juridiction des États-Unis."},
         {"question":"Que signifie ''jury'' ?","choices":["Juge unique","Groupe de citoyens jugeant les faits","Greffier","Procureur"],"correct_index":1,"explanation":"Le jury est composé de citoyens chargés d''apprécier les faits."},
         {"question":"Comment dit-on ''appel'' (recours juridictionnel) ?","choices":["Lawsuit","Appeal","Trial","Verdict"],"correct_index":1,"explanation":"''Appeal'' = recours / appel."},
         {"question":"Que signifie ''damages'' en droit ?","choices":["Dommages matériels physiques","Dommages-intérêts","Sanctions pénales","Frais de justice"],"correct_index":1,"explanation":"''Damages'' (au pluriel) = compensation financière accordée à la victime."},
         {"question":"Que désigne ''subpoena'' ?","choices":["Une condamnation","Une assignation à comparaitre","Une amende","Une grace"],"correct_index":1,"explanation":"''Subpoena'' est une assignation obligatoire à comparaitre."},
         {"question":"Qui est le ''prosecutor'' ?","choices":["Avocat de la défense","Procureur (ministère public)","Juge","Président du tribunal"],"correct_index":1,"explanation":"Le ''prosecutor'' est le procureur."},
         {"question":"Que signifie ''plea bargain'' ?","choices":["Une transaction pénale","Une amnistie","Un sursis","Un huis clos"],"correct_index":0,"explanation":"Le ''plea bargain'' est un accord entre le procureur et l''accusé."}
       ]'::jsonb
from public.subjects where name = 'Anglais juridique';

-- Quizzes Culture générale juridique
insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Culture générale juridique - Grandes figures et dates', 'Histoire et figures du droit', 'facile',
       'Les grands juristes, philosophes du droit et dates fondatrices.',
       '[
         {"question":"Qui a rédigé ''De l''esprit des lois'' en 1748 ?","choices":["Rousseau","Montesquieu","Voltaire","Locke"],"correct_index":1,"explanation":"Montesquieu a théorisé la séparation des pouvoirs dans ''De l''esprit des lois''."},
         {"question":"Quelle année marque la promulgation du Code civil français ?","choices":["1789","1799","1804","1815"],"correct_index":2,"explanation":"Le Code civil a été promulgué le 21 mars 1804."},
         {"question":"Qui est considéré comme le père de la pyramide des normes ?","choices":["Kelsen","Carbonnier","Gény","Duguit"],"correct_index":0,"explanation":"Hans Kelsen a théorisé la hiérarchie des normes."},
         {"question":"Quelle déclaration est intervenue en 1789 ?","choices":["Déclaration universelle des droits de l''homme","Déclaration des droits de l''homme et du citoyen","Déclaration de Philadelphie","Déclaration Schuman"],"correct_index":1,"explanation":"La DDHC du 26 août 1789 fait partie du bloc de constitutionnalité."},
         {"question":"Qui a institué la Ve République en 1958 ?","choices":["Vincent Auriol","René Coty","Charles de Gaulle","Georges Pompidou"],"correct_index":2,"explanation":"Charles de Gaulle a fait adopter la Constitution du 4 octobre 1958."},
         {"question":"En quelle année la France a-t-elle aboli la peine de mort ?","choices":["1968","1975","1981","1995"],"correct_index":2,"explanation":"La peine de mort a été abolie le 9 octobre 1981 sous Robert Badinter."},
         {"question":"Qui est l''auteur du ''Contrat social'' (1762) ?","choices":["Voltaire","Diderot","Rousseau","Montesquieu"],"correct_index":2,"explanation":"Rousseau y théorise la souveraineté populaire."},
         {"question":"Que désigne l''expression ''Nul n''est censé ignorer la loi'' ?","choices":["Un proverbe sans valeur","Une fiction juridique fondamentale","Une règle récente","Un principe étranger"],"correct_index":1,"explanation":"Cet adage romain signifie que nul ne peut s''exonérer en invoquant son ignorance de la loi."}
       ]'::jsonb
from public.subjects where name = 'Culture générale juridique';

insert into public.quizzes (subject_id, title, chapter, difficulty, description, questions)
select id, 'Culture générale juridique - Jurisprudences emblématiques', 'Arrêts fondateurs', 'moyen',
       'Reconnaître les grandes décisions qui ont façonné le droit français.',
       '[
         {"question":"Quel arrêt est considéré comme l''acte de naissance du droit administratif moderne ?","choices":["Arrêt Cadès","Arrêt Blanco (TC, 1873)","Arrêt Nicolo (CE, 1989)","Arrêt GISTI (CE, 1990)"],"correct_index":1,"explanation":"L''arrêt Blanco (TC, 8 février 1873) consacre l''autonomie du droit administratif."},
         {"question":"Quel arrêt consacre la primauté du droit international sur la loi en matière administrative ?","choices":["Arrêt Jacques Vabre","Arrêt Nicolo (CE, 1989)","Arrêt Costa c/ ENEL","Arrêt Bosman"],"correct_index":1,"explanation":"L''arrêt Nicolo (1989) marque l''abandon de Semoules."},
         {"question":"Quel arrêt a consacré la responsabilité du fait des choses inanimées ?","choices":["Arrêt Costedoat","Arrêt Jand''heur (1930)","Arrêt Clément-Bayard (1915)","Arrêt Bertrand (1997)"],"correct_index":1,"explanation":"L''arrêt Jand''heur consacre un régime général et autonome."},
         {"question":"L''arrêt Perruche (Cass. 2000) concerne :","choices":["La responsabilité médicale et le préjudice de l''enfant né handicapé","Le droit de la concurrence","Le statut des fonctionnaires","L''expropriation"],"correct_index":0,"explanation":"L''arrêt Perruche admet la réparation du préjudice de l''enfant né handicapé."},
         {"question":"Quelle juridiction a rendu l''arrêt Costa c/ ENEL en 1964 ?","choices":["Cour de cassation","Conseil d''État","CJCE (devenue CJUE)","CEDH"],"correct_index":2,"explanation":"Arrêt fondateur du principe de primauté du droit communautaire."},
         {"question":"Quel arrêt reconnaît le recours pour excès de pouvoir comme garantie fondamentale ?","choices":["Arrêt Dame Lamotte (CE, 1950)","Arrêt Benjamin","Arrêt Cadot","Arrêt KPMG"],"correct_index":0,"explanation":"L''arrêt Dame Lamotte consacre le REP comme PGD."}
       ]'::jsonb
from public.subjects where name = 'Culture générale juridique';

-- =========================
-- FLASHCARDS - Droit constitutionnel
-- =========================
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit constitutionnel - Notions clés', 'Bloc de constitutionnalité',
       'Ensemble des normes de valeur constitutionnelle comprenant : la Constitution de 1958, le Préambule de 1946, la DDHC de 1789, la Charte de l''environnement de 2004 et les PFRLR.',
       'facile', array['constitutionnel','hiérarchie']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit constitutionnel - Notions clés', 'QPC',
       'Question Prioritaire de Constitutionnalité (art. 61-1 C.) : procédure permettant à tout justiciable de soutenir qu''une disposition législative porte atteinte aux droits et libertés garantis par la Constitution. Introduite en 2008.',
       'moyen', array['constitutionnel','contrôle']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit constitutionnel - Notions clés', 'Article 49 al. 3',
       'Permet au Premier ministre d''engager la responsabilité du Gouvernement sur le vote d''un texte : le texte est adopté sauf si une motion de censure est déposée et adoptée.',
       'moyen', array['constitutionnel','gouvernement']
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';

-- Flashcards Droit des contrats
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit des contrats - Vocabulaire', 'Dol',
       'Vice du consentement résultant de manoeuvres, mensonges ou réticences dolosives (art. 1137 C. civ.). Sanctionné par la nullité relative + dommages-intérêts.',
       'facile', array['contrats','vices']
from public.subjects where name = 'Droit des contrats';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit des contrats - Vocabulaire', 'Pacte de préférence',
       'Contrat par lequel une personne s''engage, pour le cas où elle se déciderait à contracter, à offrir par priorité au bénéficiaire (art. 1123).',
       'moyen', array['contrats','avant-contrat']
from public.subjects where name = 'Droit des contrats';

-- Flashcards Responsabilité civile
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Responsabilité civile - Notions clés', 'Préjudice réparable',
       'Préjudice certain, direct, personnel et licite. Il peut être matériel, moral ou corporel, actuel ou futur.',
       'facile', array['responsabilité','préjudice']
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Responsabilité civile - Notions clés', 'Gardien de la chose',
       'Celui qui a l''usage, la direction et le contrôle de la chose (Cass., Franck, 1941). Présomption sur le propriétaire. Distinction garde de la structure/du comportement (Oxygène liquide, 1956).',
       'moyen', array['responsabilité','fait des choses']
from public.subjects where name = 'Introduction au droit des obligations et obligations extracontractuelles';

-- Flashcards Droit administratif
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit administratif - Notions fondamentales', 'Service public',
       'Activité d''intérêt général, exercée par une personne publique ou sous son contrôle, soumise à un régime exorbitant. Trois lois de Rolland : continuité, mutabilité, égalité.',
       'facile', array['administratif','service public']
from public.subjects where name = 'Droit administratif I';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit administratif - Notions fondamentales', 'Recours pour excès de pouvoir (REP)',
       'Recours contentieux visant l''annulation d''un acte administratif pour illégalité. Ouvert sans texte (CE Dame Lamotte, 1950). Quatre cas : incompétence, vice de forme, violation de la loi, détournement de pouvoir.',
       'moyen', array['administratif','contentieux']
from public.subjects where name = 'Droit administratif I';

-- Flashcard Droit pénal
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Droit pénal - Notions fondamentales', 'Principe de légalité des délits et des peines',
       'Nullum crimen, nulla poena sine lege (art. 111-3 C. pénal). Seule la loi peut définir les crimes et délits. Principe à valeur constitutionnelle et conventionnelle.',
       'facile', array['pénal','principes']
from public.subjects where name = 'Droit pénal général';

-- Flashcards Anglais juridique
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Lawsuit',
       'Procès, action en justice (civile). Une partie introduit un ''lawsuit'' contre une autre devant un tribunal.',
       'facile', array['anglais','procédure']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Liability',
       'Responsabilité (civile, pénale, contractuelle). Ex: ''product liability'' = responsabilité du fait des produits.',
       'facile', array['anglais','responsabilité']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Tort',
       'Délit civil (responsabilité extracontractuelle en common law). ''Law of torts'' = droit de la responsabilité délictuelle.',
       'moyen', array['anglais','responsabilité']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Statute',
       'Loi écrite (texte législatif). À distinguer de ''case law'' (jurisprudence) et ''common law'' (droit non écrit).',
       'facile', array['anglais','sources']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Plaintiff vs Defendant',
       'Plaintiff = demandeur (celui qui agit). Defendant = défendeur / accusé (celui contre qui l''action est dirigée).',
       'facile', array['anglais','parties']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Damages',
       'Dommages-intérêts (toujours au pluriel en anglais juridique). Ex: ''punitive damages'' = dommages punitifs.',
       'facile', array['anglais','responsabilité']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Consideration',
       'Contrepartie / cause en droit anglais des contrats. Élément essentiel à la formation d''un contrat valide en common law.',
       'moyen', array['anglais','contrats']
from public.subjects where name = 'Anglais juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Anglais juridique - Common words', 'Indictment',
       'Mise en accusation, acte d''accusation (en matière criminelle). Équivalent français : mise en examen / mise en accusation.',
       'moyen', array['anglais','pénal']
from public.subjects where name = 'Anglais juridique';

-- Flashcards Culture générale juridique
insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Adages', 'Nemo censetur ignorare legem',
       '''Nul n''est censé ignorer la loi'' : fiction juridique selon laquelle la connaissance de la loi est présumée dès sa publication.',
       'facile', array['adages']
from public.subjects where name = 'Culture générale juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Adages', 'Nullum crimen, nulla poena sine lege',
       '''Pas de crime, pas de peine sans loi'' : principe de légalité des délits et des peines (art. 111-3 C. pénal, art. 7 CESDH).',
       'facile', array['adages','pénal']
from public.subjects where name = 'Culture générale juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Adages', 'Pacta sunt servanda',
       '''Les conventions doivent être respectées'' : force obligatoire des contrats (art. 1103 C. civ.).',
       'facile', array['adages','contrats']
from public.subjects where name = 'Culture générale juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Adages', 'In dubio pro reo',
       '''Le doute profite à l''accusé'' : principe fondamental de la présomption d''innocence en matière pénale.',
       'moyen', array['adages','pénal']
from public.subjects where name = 'Culture générale juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Figures historiques', 'Robert Badinter',
       'Garde des Sceaux qui a porté l''abolition de la peine de mort en France (loi du 9 octobre 1981). Ancien président du Conseil constitutionnel.',
       'facile', array['figures']
from public.subjects where name = 'Culture générale juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Figures historiques', 'Hans Kelsen (1881-1973)',
       'Juriste autrichien, père de la ''Théorie pure du droit'' (1934) et de la théorie de la hiérarchie des normes (pyramide de Kelsen).',
       'moyen', array['figures','théorie']
from public.subjects where name = 'Culture générale juridique';

insert into public.flashcards (subject_id, deck_name, front, back, difficulty, tags)
select id, 'Culture générale - Figures historiques', 'Jean Carbonnier',
       'Grand civiliste du XXe siècle, auteur de réformes majeures du Code civil (divorce, filiation, régimes matrimoniaux dans les années 1960-70).',
       'moyen', array['figures','civil']
from public.subjects where name = 'Culture générale juridique';

-- =========================
-- EXERCICES
-- =========================
insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id, 'Cas pratique - Formation du contrat de vente', 'cas_pratique', 'moyen',
       'Madame Dupont, passionnée d''art, repère dans une galerie un tableau qu''elle croit être un authentique Renoir, sur la foi d''une étiquette placée par le galeriste. Elle l''achète pour 80 000 €. Deux mois plus tard, une expertise révèle qu''il s''agit d''une copie de qualité, d''une valeur de 2 000 €. Le galeriste savait que l''authenticité était douteuse mais n''a rien indiqué. Quels recours s''offrent à Madame Dupont ?',
       'Méthodologie en 4 étapes : 1) Qualification juridique des faits ; 2) Problème de droit ; 3) Règles applicables (articles + jurisprudence) ; 4) Application au cas et solution. Pensez à envisager TOUS les fondements possibles (erreur, dol, garanties).',
       '## I. Qualification des faits
Contrat de vente d''oeuvre d''art entre un professionnel (galeriste) et un consommateur. Discordance entre l''objet annoncé et la réalité.

## II. Problème de droit
Quels fondements permettent à l''acheteur d''un tableau supposé authentique de remettre en cause la vente lorsqu''il s''avère être une copie et que le vendeur professionnel connaissait le doute ?

## III. Règles applicables

### A. L''erreur sur les qualités essentielles (art. 1132)
- L''authenticité est une qualité essentielle d''une oeuvre d''art (Cass. 1re civ., 22 février 1978, Poussin)
- Erreur déterminante du consentement
- Erreur excusable

### B. Le dol par réticence (art. 1137)
- Manoeuvre : silence gardé sur le doute d''authenticité
- Le galeriste, professionnel, avait un devoir d''information renforcé (art. 1112-1)
- Intention de tromper caractérisée

## IV. Solution
Mme Dupont dispose de plusieurs options :
- Nullité pour erreur : remboursement de 80 000 € contre restitution du tableau
- Nullité pour dol + dommages-intérêts : préférable car indemnisation complémentaire
- Action estimatoire : conservation du tableau avec réduction du prix

Le dol est le fondement le plus solide.',
       90
from public.subjects where name = 'Droit des contrats';

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id, 'Commentaire d''arrêt - Arrêt Blanco (TC, 1873)', 'commentaire_arret', 'difficile',
       'Commentez l''arrêt Blanco rendu par le Tribunal des conflits le 8 février 1873, en mettant en évidence sa portée pour le droit administratif français.',
       'Structure classique : fiche d''arrêt détaillée + introduction (accroche, faits, procédure, problème de droit, plan) + plan en 2 parties (I/II, A/B) + titres apparents reflétant la solution et sa portée. Éviter la paraphrase.',
       '## Proposition de plan

### I. L''affirmation de l''autonomie du droit administratif
**A.** Le rejet de l''application du Code civil à la responsabilité de l''État
**B.** La considération du service public comme critère de distinction

### II. La consécration de la compétence du juge administratif
**A.** Le lien entre fond du droit et juge compétent (« bloc de compétence »)
**B.** La portée et les limites d''un arrêt fondateur

## Éléments de commentaire
- Loi des 16-24 août 1790 : principe de séparation des autorités
- Affirmation que la responsabilité de l''État ne peut être régie par les principes du Code civil
- L''autonomie fonde le développement jurisprudentiel du droit administratif
- Portée nuancée : TC 1921 Bac d''Eloka (SPA/SPIC) ; responsabilité sans faute (Cames, 1895)
- Aujourd''hui : critère du service public fragilisé par la contractualisation

## À éviter
- La paraphrase
- Oublier le contexte historique
- L''absence de confrontation avec la jurisprudence postérieure',
       180
from public.subjects where name = 'Droit administratif I';

insert into public.exercises (subject_id, title, type, difficulty, statement, methodology_tips, correction, estimated_time_minutes)
select id, 'Dissertation - La séparation des pouvoirs en France', 'dissertation', 'difficile',
       'La séparation des pouvoirs sous la Ve République : mythe ou réalité ?',
       'Introduction (accroche, définition des termes, enjeux, problématique, plan) + 2 parties équilibrées + conclusion (synthèse + ouverture). Définir d''abord la séparation des pouvoirs (Montesquieu, Locke), distinguer séparation souple / rigide.',
       '## Proposition de plan

### I. Une séparation des pouvoirs formellement organisée
**A.** Un pouvoir exécutif bicéphale (art. 5 et 20 C)
**B.** Un pouvoir législatif encadré (rationalisation : art. 34, 44, 49)

### II. Une séparation réalisée de manière variable en pratique
**A.** La présidentialisation en période de fait majoritaire
**B.** Les contre-pouvoirs : cohabitation, Conseil constitutionnel, autorités indépendantes

## Points clés
- Montesquieu, De l''esprit des lois (1748)
- La Ve République : séparation souple (régime parlementaire)
- Prérogatives présidentielles (art. 8, 12, 16, 18)
- Rationalisation du parlementarisme (ordonnances, 49-3, vote bloqué)
- Pratique : présidentialisation depuis 1962, sauf cohabitations (1986, 1993, 1997)
- Conseil constitutionnel : véritable contre-pouvoir (QPC 2008)

## Conclusion attendue
Séparation ni mythe ni stricte réalité : souple, variable selon le contexte, renouvelée par l''émergence de contre-pouvoirs extra-institutionnels.',
       240
from public.subjects where name = 'Droit constitutionnel' and level = 'L1';
