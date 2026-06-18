-- =====================================================================
-- JurisPrép - Setup : Finances publiques (L2 S1)
-- Assure que la matière est bien configurée en S1
-- =====================================================================

-- Update the subject if it exists
update public.subjects
set
  name = 'Finances publiques',
  semester = 'S1',
  level = 'L2',
  category = 'matiere_principale',
  description = 'Sources juridiques (Constitution, LOLF, TFUE, TSCG), loi de finances et budget, dette publique, procédure budgétaire, contrôle des gestionnaires publics.',
  color = '#CA8A04',
  icon = 'calculator',
  "order" = 304
where slug = 'l2-finances-publiques';

-- Insert if missing
insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Finances publiques', 'l2-finances-publiques', 'L2', 'S1', 'matiere_principale',
       'Sources juridiques (Constitution, LOLF, TFUE, TSCG), loi de finances et budget, dette publique, procédure budgétaire, contrôle des gestionnaires publics.',
       '#CA8A04', 'calculator', 304
where not exists (
  select 1 from public.subjects where slug = 'l2-finances-publiques'
);

-- Remove old fiches to be replaced
delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-finances-publiques');
