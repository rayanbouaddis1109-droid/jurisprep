-- =====================================================================
-- JurisPrép - Schéma initial Supabase
-- Crée toutes les tables et active la Row Level Security (RLS).
-- =====================================================================

create extension if not exists "pgcrypto";

-- ============================================================
-- TABLE : subjects (matières)
-- ============================================================
create table if not exists public.subjects (
    id uuid primary key default gen_random_uuid(),
    name text not null,
    slug text not null unique,
    level text not null check (level in ('Lycéen', 'L1', 'L2', 'L3', 'Transverse')),
    semester text check (semester in ('S1', 'S2', 'Annuel')),
    category text default 'matiere_principale' check (category in (
        'matiere_principale', 'anglais_juridique', 'culture_generale', 'methodologie'
    )),
    description text,
    color text,
    icon text,
    "order" integer default 0,
    is_published boolean default true,
    created_at timestamptz default now()
);

create index subjects_level_idx on public.subjects(level);
create index subjects_category_idx on public.subjects(category);
create index subjects_slug_idx on public.subjects(slug);

-- ============================================================
-- TABLE : revision_sheets (fiches de révision)
-- ============================================================
create table if not exists public.revision_sheets (
    id uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    title text not null,
    chapter text,
    summary text,
    content text not null,
    key_concepts text[] default '{}',
    estimated_read_time integer,
    "order" integer default 0,
    is_published boolean default true,
    created_at timestamptz default now()
);

create index revision_sheets_subject_idx on public.revision_sheets(subject_id);

-- ============================================================
-- TABLE : case_law_sheets (fiches d'arrêts)
-- ============================================================
create table if not exists public.case_law_sheets (
    id uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    title text not null,
    jurisdiction text,
    decision_date date,
    reference text,
    parties text,
    facts text,
    procedure text,
    legal_question text,
    solution text,
    portee text,
    related_articles text[] default '{}',
    is_published boolean default true,
    created_at timestamptz default now()
);

create index case_law_sheets_subject_idx on public.case_law_sheets(subject_id);

-- ============================================================
-- TABLE : videos
-- ============================================================
create table if not exists public.videos (
    id uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    title text not null,
    description text,
    video_url text not null,
    thumbnail_url text,
    duration_seconds integer,
    chapter text,
    transcript text,
    "order" integer default 0,
    is_published boolean default true,
    created_at timestamptz default now()
);

create index videos_subject_idx on public.videos(subject_id);

-- ============================================================
-- TABLE : quizzes
-- ============================================================
create table if not exists public.quizzes (
    id uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    title text not null,
    chapter text,
    difficulty text check (difficulty in ('facile', 'moyen', 'difficile')),
    description text,
    -- questions : tableau JSONB [{question, choices[], correct_index, explanation}]
    questions jsonb not null default '[]',
    is_published boolean default true,
    created_at timestamptz default now()
);

create index quizzes_subject_idx on public.quizzes(subject_id);

-- ============================================================
-- TABLE : flashcards
-- ============================================================
create table if not exists public.flashcards (
    id uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    deck_name text,
    front text not null,
    back text not null,
    difficulty text check (difficulty in ('facile', 'moyen', 'difficile')),
    tags text[] default '{}',
    is_published boolean default true,
    created_at timestamptz default now()
);

create index flashcards_subject_idx on public.flashcards(subject_id);
create index flashcards_deck_idx on public.flashcards(deck_name);

-- ============================================================
-- TABLE : exercises
-- ============================================================
create table if not exists public.exercises (
    id uuid primary key default gen_random_uuid(),
    subject_id uuid not null references public.subjects(id) on delete cascade,
    title text not null,
    type text check (type in ('cas_pratique', 'commentaire_arret', 'dissertation', 'commentaire_article', 'qrc')),
    difficulty text check (difficulty in ('facile', 'moyen', 'difficile')),
    statement text not null,
    methodology_tips text,
    correction text,
    estimated_time_minutes integer,
    is_published boolean default true,
    created_at timestamptz default now()
);

create index exercises_subject_idx on public.exercises(subject_id);

-- ============================================================
-- TABLE : user_progress (suivi de progression)
-- ============================================================
create table if not exists public.user_progress (
    id uuid primary key default gen_random_uuid(),
    user_id uuid not null references auth.users(id) on delete cascade,
    item_type text not null check (item_type in (
        'revision_sheet', 'case_law_sheet', 'video', 'quiz', 'flashcard', 'exercise'
    )),
    item_id uuid not null,
    status text default 'not_started' check (status in (
        'not_started', 'in_progress', 'completed', 'mastered'
    )),
    score numeric,
    time_spent_seconds integer default 0,
    notes text,
    last_viewed_at timestamptz default now(),
    created_at timestamptz default now(),
    unique (user_id, item_type, item_id)
);

create index user_progress_user_idx on public.user_progress(user_id);

-- ============================================================
-- TABLE : profiles (rôle et infos utilisateurs)
-- ============================================================
create table if not exists public.profiles (
    id uuid primary key references auth.users(id) on delete cascade,
    full_name text,
    role text default 'user' check (role in ('user', 'admin')),
    level text check (level in ('Lycéen', 'L1', 'L2', 'L3')),
    created_at timestamptz default now()
);

-- Trigger : crée automatiquement un profil quand un utilisateur s'inscrit.
create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
    insert into public.profiles (id, full_name)
    values (new.id, coalesce(new.raw_user_meta_data->>'full_name', new.email));
    return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
    after insert on auth.users
    for each row execute function public.handle_new_user();

-- ============================================================
-- ROW LEVEL SECURITY
-- ============================================================

-- Lecture publique des contenus publiés (subjects, fiches, quizzes, etc.)
alter table public.subjects enable row level security;
alter table public.revision_sheets enable row level security;
alter table public.case_law_sheets enable row level security;
alter table public.videos enable row level security;
alter table public.quizzes enable row level security;
alter table public.flashcards enable row level security;
alter table public.exercises enable row level security;
alter table public.user_progress enable row level security;
alter table public.profiles enable row level security;

-- subjects
create policy "subjects_select_published" on public.subjects
    for select using (is_published = true);

-- revision_sheets
create policy "revision_sheets_select_published" on public.revision_sheets
    for select using (is_published = true);

-- case_law_sheets
create policy "case_law_sheets_select_published" on public.case_law_sheets
    for select using (is_published = true);

-- videos
create policy "videos_select_published" on public.videos
    for select using (is_published = true);

-- quizzes
create policy "quizzes_select_published" on public.quizzes
    for select using (is_published = true);

-- flashcards
create policy "flashcards_select_published" on public.flashcards
    for select using (is_published = true);

-- exercises
create policy "exercises_select_published" on public.exercises
    for select using (is_published = true);

-- profiles : chacun voit son profil, l'admin voit tout
create policy "profiles_select_own" on public.profiles
    for select using (auth.uid() = id);
create policy "profiles_update_own" on public.profiles
    for update using (auth.uid() = id);

-- user_progress : chacun gère sa propre progression
create policy "user_progress_select_own" on public.user_progress
    for select using (auth.uid() = user_id);
create policy "user_progress_insert_own" on public.user_progress
    for insert with check (auth.uid() = user_id);
create policy "user_progress_update_own" on public.user_progress
    for update using (auth.uid() = user_id);
