-- =====================================================================
-- JurisPrép - Setup : Responsabilité civile (L2 S2)
-- 1) Rename existing subject "Introduction au droit des obligations..."
--    into a dedicated "Responsabilité civile" subject in S2
-- 2) Clear old generic fiches to be replaced by course-based fiches (015)
-- =====================================================================

-- Update the existing subject : it becomes "Responsabilité civile" en S2
update public.subjects
set
  name = 'Responsabilité civile',
  slug = 'l2-responsabilite-civile',
  semester = 'S2',
  category = 'matiere_principale',
  description = 'Responsabilité civile extracontractuelle : conditions communes (préjudice), faits générateurs (faute, choses, autrui), régimes spéciaux (Badinter, produits défectueux).',
  color = '#DC2626',
  icon = 'scale',
  "order" = 406
where name = 'Introduction au droit des obligations et obligations extracontractuelles'
   or slug = 'l2-introduction-obligations';

-- Make sure the subject exists even if it was missing
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Responsabilité civile', 'l2-responsabilite-civile', 'L2', 'S2', 'matiere_principale',
       'Responsabilité civile extracontractuelle : conditions communes (préjudice), faits générateurs (faute, choses, autrui), régimes spéciaux (Badinter, produits défectueux).',
       '#DC2626', 'scale', 406
where not exists (
  select 1 from public.subjects where slug = 'l2-responsabilite-civile'
);

-- Remove the old generic fiches : they will be replaced by course-based ones in 015
delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-responsabilite-civile');
