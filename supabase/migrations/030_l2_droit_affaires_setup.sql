-- =====================================================================
-- JurisPrép - Setup : Droit des affaires I (L2 S2)
-- =====================================================================

insert into public.subjects (name, slug, level, semester, category, description, color, icon, "order")
select 'Droit des affaires', 'l2-droit-affaires-1', 'L2', 'S2', 'matiere_principale',
       'Introduction au droit commercial : qualification du commerçant et des professions civiles, instruments de l''activité commerciale (fonds de commerce, bail commercial, entrepreneur individuel), régime spécifique des contrats commerciaux, tribunal de commerce et droit de la concurrence (pratiques anticoncurrentielles et restrictives).',
       '#0891B2', 'briefcase', 306
where not exists (
  select 1 from public.subjects where slug = 'l2-droit-affaires-1'
);

-- Remove any old fiches to be replaced by course-based ones in 031
delete from public.revision_sheets
where subject_id = (select id from public.subjects where slug = 'l2-droit-affaires-1');
