-- Parrainage : un mois de formule Étudiant offert au parrain quand le filleul s'abonne.
-- À exécuter une seule fois dans l'éditeur SQL du dashboard Supabase.
-- Aucune écriture n'est possible depuis le navigateur : tout passe par le serveur (clé service).

create table if not exists public.referral_codes (
    user_id uuid primary key references auth.users(id) on delete cascade,
    code text not null unique,
    created_at timestamptz not null default now()
);

create table if not exists public.referrals (
    id uuid primary key default gen_random_uuid(),
    referrer_id uuid not null references auth.users(id) on delete cascade,
    referred_id uuid not null unique references auth.users(id) on delete cascade,
    status text not null default 'pending' check (status in ('pending', 'rewarded', 'capped')),
    created_at timestamptz not null default now(),
    rewarded_at timestamptz,
    check (referrer_id <> referred_id)
);

create index if not exists referrals_referrer_idx on public.referrals (referrer_id);

alter table public.referral_codes enable row level security;
alter table public.referrals enable row level security;

drop policy if exists "referral_codes_select_own" on public.referral_codes;
create policy "referral_codes_select_own" on public.referral_codes
    for select using (auth.uid() = user_id);

drop policy if exists "referrals_select_own" on public.referrals;
create policy "referrals_select_own" on public.referrals
    for select using (auth.uid() = referrer_id);

grant select on public.referral_codes to authenticated;
grant select on public.referrals to authenticated;
grant all on public.referral_codes to service_role;
grant all on public.referrals to service_role;
