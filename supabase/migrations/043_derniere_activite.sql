-- Dernière activité des utilisateurs connectés (écrite et lue uniquement par le serveur).
create table if not exists public.user_activity (
    user_id uuid primary key references auth.users(id) on delete cascade,
    last_seen timestamptz not null default now()
);

alter table public.user_activity enable row level security;

grant all on public.user_activity to service_role;
