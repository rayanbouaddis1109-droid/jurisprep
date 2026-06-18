-- =====================================================================
-- JurisPrép - Setup : Droit administratif II (L2 S2)
-- =====================================================================

update public.subjects
set
  name = 'Droit administratif II',
  semester = 'S2',
  level = 'L2',
  category = 'matiere_principale',
  description = 'Action administrative (AAU, contrats, police, service public) et contentieux administratif (compétence, REP, responsabilité pour faute et sans faute).',
  color = '#7C3AED',
  icon = 'scale',
  "order" = 303
where slug = 'l2-droit-administratif-2';

insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Droit administratif II', 'l2-droit-administratif-2', 'L2', 'S2', 'matiere_principale',
       'Action administrative (AAU, contrats, police, service public) et contentieux administratif (compétence, REP, responsabilité pour faute et sans faute).',
       '#7C3AED', 'scale', 303
where not exists (
  select 1 from public.subjects where slug = 'l2-droit-administratif-2'
);

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-administratif-2');
