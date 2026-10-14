-- Idées et retours des étudiants (écrits et lus uniquement par le serveur).
create table if not exists public.feedback (
    id uuid primary key default gen_random_uuid(),
    user_id uuid not null references auth.users(id) on delete cascade,
    message text not null check (char_length(message) between 3 and 1000),
    created_at timestamptz not null default now()
);

create index if not exists feedback_created_idx on public.feedback (created_at desc);

alter table public.feedback enable row level security;

grant all on public.feedback to service_role;
