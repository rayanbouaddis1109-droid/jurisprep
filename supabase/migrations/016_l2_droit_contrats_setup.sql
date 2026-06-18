-- =====================================================================
-- JurisPrép - Setup : Droit des contrats (L2 S1)
-- Déplace la matière de S2 vers S1 conformément au cursus de l'utilisateur
-- =====================================================================

-- Update the existing subject : it becomes "Droit des contrats" en S1
update public.subjects
set
  semester = 'S1',
  category = 'matiere_principale',
  description = 'Théorie générale du contrat : formation (offre, acceptation, vices du consentement, validité), effets (force obligatoire, exécution, responsabilité contractuelle), nullité, effet relatif et opposabilité.',
  color = '#10B981',
  icon = 'file-signature',
  "order" = 305
where slug = 'l2-droit-des-contrats';

-- Make sure the subject exists even if it was missing
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Droit des contrats', 'l2-droit-des-contrats', 'L2', 'S1', 'matiere_principale',
       'Théorie générale du contrat : formation (offre, acceptation, vices du consentement, validité), effets (force obligatoire, exécution, responsabilité contractuelle), nullité, effet relatif et opposabilité.',
       '#10B981', 'file-signature', 305
where not exists (
  select 1 from public.subjects where slug = 'l2-droit-des-contrats'
);

-- Remove any old fiches to be replaced by course-based ones in 017
delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-des-contrats');
