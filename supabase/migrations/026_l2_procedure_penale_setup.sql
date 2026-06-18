-- =====================================================================
-- JurisPrép - Setup : Procédure pénale (L2 S2)
-- =====================================================================

update public.subjects
set
  name = 'Procédure pénale',
  semester = 'S2',
  level = 'L2',
  category = 'matiere_principale',
  description = 'Organisation judiciaire de la poursuite des infractions : présomption d''innocence, liberté de la preuve, enquête de police (OPJ, APJ, flagrance, préliminaire), acteurs institutionnels (procureur, JLD, juge d''instruction), régularité des procès-verbaux et déroulement du procès pénal.',
  color = '#DC2626',
  icon = 'gavel',
  "order" = 304
where slug = 'l2-procedure-penale';

insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Procédure pénale', 'l2-procedure-penale', 'L2', 'S2', 'matiere_principale',
       'Organisation judiciaire de la poursuite des infractions : présomption d''innocence, liberté de la preuve, enquête de police (OPJ, APJ, flagrance, préliminaire), acteurs institutionnels (procureur, JLD, juge d''instruction), régularité des procès-verbaux et déroulement du procès pénal.',
       '#DC2626', 'gavel', 304
where not exists (
  select 1 from public.subjects where slug = 'l2-procedure-penale'
);

delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-procedure-penale');
