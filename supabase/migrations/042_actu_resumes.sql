-- Résumés de la page Actualité juridique (écrits et lus uniquement par le serveur).
create table if not exists public.news_summaries (
    link text primary key,
    summary text not null,
    created_at timestamptz not null default now()
);

alter table public.news_summaries enable row level security;

grant all on public.news_summaries to service_role;
