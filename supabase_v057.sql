-- Ninja Sales Terminal v0.56 // Iniciativas Comerciales + atribución de actividad
-- SCRIPT AUTOSUFICIENTE E IDEMPOTENTE.
-- Puede ejecutarse aunque supabase_v055.sql NO se haya ejecutado.
-- No elimina datos existentes.

-- 1) Función updated_at (por si una instalación anterior no la creó)
create or replace function public.set_updated_at()
returns trigger
language plpgsql
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

-- 2) Tabla de iniciativas comerciales
create table if not exists public.iniciativas (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  empresa_id uuid not null references public.empresas(id) on delete cascade,
  contacto_id uuid null references public.contactos(id) on delete set null,
  nombre text not null,
  tipo text not null default 'Sales Play',
  objetivo text null,
  fecha_inicio date null,
  proximo_status date null,
  estado text not null default 'Activa',
  cuentas jsonb not null default '[]'::jsonb,
  statuses jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_iniciativas_user
  on public.iniciativas(user_id);
create index if not exists idx_iniciativas_empresa
  on public.iniciativas(empresa_id);
create index if not exists idx_iniciativas_contacto
  on public.iniciativas(contacto_id);
create index if not exists idx_iniciativas_status
  on public.iniciativas(proximo_status);

alter table public.iniciativas enable row level security;
revoke all on public.iniciativas from anon;
grant select, insert, update, delete on public.iniciativas to authenticated;

do $$
begin
  if not exists (
    select 1 from pg_policies
    where schemaname='public' and tablename='iniciativas'
      and policyname='iniciativas_own'
  ) then
    create policy iniciativas_own
      on public.iniciativas
      for all to authenticated
      using (auth.uid() = user_id)
      with check (auth.uid() = user_id);
  end if;
end $$;

drop trigger if exists set_updated_at on public.iniciativas;
create trigger set_updated_at
before update on public.iniciativas
for each row execute function public.set_updated_at();

-- 3) Relación Actividad -> Iniciativa
alter table public.actividades
  add column if not exists iniciativa_id uuid null;

do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conname = 'actividades_iniciativa_id_fkey'
      and conrelid = 'public.actividades'::regclass
  ) then
    alter table public.actividades
      add constraint actividades_iniciativa_id_fkey
      foreign key (iniciativa_id)
      references public.iniciativas(id)
      on delete set null;
  end if;
end $$;

create index if not exists idx_actividades_iniciativa_id
  on public.actividades(iniciativa_id);
