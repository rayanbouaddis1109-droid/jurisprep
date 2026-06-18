-- =====================================================================
-- JurisPrép - Setup : Droit de l'Union européenne (L2 S2)
-- =====================================================================

update public.subjects
set
  name        = 'Droit de l''Union européenne',
  semester    = 'S2',
  level       = 'L2',
  category    = 'matiere_principale',
  description = 'Histoire et sources du droit de l''UE, institutions décisionnelles et de contrôle (Conseil européen, Conseil, Parlement, Commission, CJUE), principes structurants (primauté, subsidiarité, proportionnalité), actes de droit dérivé, et voies de recours devant la Cour de justice.',
  color       = '#2563EB',
  icon        = 'globe',
  "order"     = 305
where slug = 'l2-droit-ue-1';

insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select
  'Droit de l''Union européenne',
  'l2-droit-ue-1',
  'L2', 'S2', 'matiere_principale',
  'Histoire et sources du droit de l''UE, institutions décisionnelles et de contrôle (Conseil européen, Conseil, Parlement, Commission, CJUE), principes structurants (primauté, subsidiarité, proportionnalité), actes de droit dérivé, et voies de recours devant la Cour de justice.',
  '#2563EB', 'globe', 305
where not exists (
  select 1 from public.subjects where slug = 'l2-droit-ue-1'
);

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-ue-1');
