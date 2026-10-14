create table public.luteal_leads (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null,
  comfort_food text,
  ip_hash text,
  source text default 'luteal',
  created_at timestamptz default now()
);
create unique index luteal_leads_email_idx on public.luteal_leads (lower(email));
alter table public.luteal_leads enable row level security;  -- and no policies
