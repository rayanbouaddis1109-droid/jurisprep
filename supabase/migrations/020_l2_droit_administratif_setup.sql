-- =====================================================================
-- JurisPrép - Setup : Droit administratif I (L2 S1)
-- =====================================================================

update public.subjects
set
  name = 'Droit administratif',
  semester = 'S1',
  level = 'L2',
  category = 'matiere_principale',
  description = 'Notion, historique et juridiction administrative, sources (Constitution, droit international/UE, loi, règlement, PGD), acteurs (État, AAI, collectivités, établissements publics).',
  color = '#EA580C',
  icon = 'building-2',
  "order" = 302
where slug = 'l2-droit-administratif-1';

insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Droit administratif', 'l2-droit-administratif-1', 'L2', 'S1', 'matiere_principale',
       'Notion, historique et juridiction administrative, sources (Constitution, droit international/UE, loi, règlement, PGD), acteurs (État, AAI, collectivités, établissements publics).',
       '#EA580C', 'building-2', 302
where not exists (
  select 1 from public.subjects where slug = 'l2-droit-administratif-1'
);

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-administratif-1');
