-- Supabase schema for Pokemon TCG Pocket Hub

create table if not exists profiles (
  id uuid primary key default uuid_generate_v4(),
  username text unique,
  level int default 1,
  created_at timestamp default now()
);

create table if not exists decks (
  id uuid primary key default uuid_generate_v4(),
  user_id uuid references profiles(id),
  title text,
  cards jsonb,
  created_at timestamp default now()
);

create table if not exists comments (
  id uuid primary key default uuid_generate_v4(),
  deck_id uuid references decks(id),
  user_id uuid references profiles(id),
  content text,
  created_at timestamp default now()
);

create table if not exists tournaments (
  id uuid primary key default uuid_generate_v4(),
  title text,
  description text,
  format text check (format in ('single_elim','swiss')),
  status text default 'upcoming',
  start_at timestamp default now(),
  created_by uuid references profiles(id)
);

create table if not exists tournament_players (
  id uuid primary key default uuid_generate_v4(),
  tournament_id uuid references tournaments(id),
  user_id uuid references profiles(id),
  deck_snapshot jsonb,
  status text default 'registered',
  approved boolean default false
);
