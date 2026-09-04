create table public.date_responses (
 id uuid primary key,
 phone text not null,
 date date not null,
 time time not null,
 song text,
 food text,
 excitement integer,
 created_at timestamptz default now()
);
alter table public.date_responses enable row level security;
create policy "public insert responses" on public.date_responses for insert to anon with check (true);
-- برای امنیت، SELECT عمومی نکن؛ پنل را با Supabase Auth محافظت کن.
