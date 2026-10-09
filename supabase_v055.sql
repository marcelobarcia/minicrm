-- Ninja Sales Terminal v0.55 // Iniciativas Comerciales / Sales Plays
create table if not exists public.iniciativas (
 id uuid primary key default gen_random_uuid(),
 user_id uuid not null references auth.users(id) on delete cascade,
 empresa_id uuid not null references public.empresas(id) on delete cascade,
 contacto_id uuid null references public.contactos(id) on delete set null,
 nombre text not null, tipo text not null default 'Sales Play', objetivo text,
 fecha_inicio date, proximo_status date, estado text not null default 'Activa',
 cuentas jsonb not null default '[]'::jsonb, statuses jsonb not null default '[]'::jsonb,
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create index if not exists idx_iniciativas_user on public.iniciativas(user_id);
create index if not exists idx_iniciativas_empresa on public.iniciativas(empresa_id);
create index if not exists idx_iniciativas_status on public.iniciativas(proximo_status);
alter table public.iniciativas enable row level security;
grant select,insert,update,delete on public.iniciativas to authenticated;
do $$ begin
 if not exists(select 1 from pg_policies where schemaname='public' and tablename='iniciativas' and policyname='iniciativas_own') then
  create policy iniciativas_own on public.iniciativas for all to authenticated using (auth.uid()=user_id) with check (auth.uid()=user_id);
 end if;
end $$;
drop trigger if exists set_updated_at on public.iniciativas;
create trigger set_updated_at before update on public.iniciativas for each row execute function public.set_updated_at();
