-- =====================================================================
-- JurisPrép - Setup : Droit pénal général (L2 S1)
-- =====================================================================

update public.subjects
set
  name = 'Droit pénal général',
  semester = 'S1',
  level = 'L2',
  category = 'matiere_principale',
  description = 'Notion, fonctions et sources du droit pénal, principe de légalité, application de la loi pénale, infraction (élément matériel, tentative, élément moral), responsabilité pénale (auteur, complice, personnes morales), causes d''irresponsabilité.',
  color = '#DC2626',
  icon = 'gavel',
  "order" = 303
where slug = 'l2-droit-penal-general';

insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Droit pénal général', 'l2-droit-penal-general', 'L2', 'S1', 'matiere_principale',
       'Notion, fonctions et sources du droit pénal, principe de légalité, application de la loi pénale, infraction (élément matériel, tentative, élément moral), responsabilité pénale (auteur, complice, personnes morales), causes d''irresponsabilité.',
       '#DC2626', 'gavel', 303
where not exists (
  select 1 from public.subjects where slug = 'l2-droit-penal-general'
);

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-penal-general');
