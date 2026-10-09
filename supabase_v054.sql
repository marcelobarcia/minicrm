-- Ninja Sales Terminal v0.54 // Licitaciones, contratos y competencia
create table if not exists public.licitaciones (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  empresa_id uuid not null references public.empresas(id) on delete cascade,
  trigger_id uuid null references public.triggers(id) on delete set null,
  nombre text not null,
  estado text not null default 'Publicada',
  participacion text not null default 'Evaluando',
  fecha_publicacion date null,
  presupuesto_total numeric null,
  moneda text not null default 'CLP',
  duracion_meses integer null,
  fecha_inicio date null,
  fecha_fin date null,
  preparar_dias integer not null default 180,
  monto_adjudicado numeric null,
  fuente text null,
  link text null,
  notas text null,
  partidas jsonb not null default '[]'::jsonb,
  adjudicatarios jsonb not null default '[]'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create index if not exists idx_licitaciones_user on public.licitaciones(user_id);
create index if not exists idx_licitaciones_empresa on public.licitaciones(empresa_id);
create index if not exists idx_licitaciones_fin on public.licitaciones(fecha_fin);
alter table public.licitaciones enable row level security;
revoke all on public.licitaciones from anon;
grant select, insert, update, delete on public.licitaciones to authenticated;
do $$ begin
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='licitaciones' and policyname='licitaciones_select_own') then create policy licitaciones_select_own on public.licitaciones for select using (auth.uid()=user_id); end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='licitaciones' and policyname='licitaciones_insert_own') then create policy licitaciones_insert_own on public.licitaciones for insert with check (auth.uid()=user_id); end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='licitaciones' and policyname='licitaciones_update_own') then create policy licitaciones_update_own on public.licitaciones for update using (auth.uid()=user_id) with check (auth.uid()=user_id); end if;
  if not exists (select 1 from pg_policies where schemaname='public' and tablename='licitaciones' and policyname='licitaciones_delete_own') then create policy licitaciones_delete_own on public.licitaciones for delete using (auth.uid()=user_id); end if;
end $$;
drop trigger if exists set_updated_at on public.licitaciones;
create trigger set_updated_at before update on public.licitaciones for each row execute function public.set_updated_at();
