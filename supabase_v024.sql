-- MiniCRM v0.24 - Triggers / señales comerciales manuales
create table if not exists public.triggers (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  empresa_id uuid null references public.empresas(id) on delete set null,
  oportunidad_id uuid null references public.oportunidades(id) on delete set null,
  fecha date not null default current_date,
  tipo text not null default 'Otro',
  titulo text not null,
  descripcion text null,
  relevancia text not null default 'Media',
  fuente text null,
  estado text not null default 'Nuevo',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_triggers_user_id on public.triggers(user_id);
create index if not exists idx_triggers_empresa_id on public.triggers(empresa_id);
create index if not exists idx_triggers_oportunidad_id on public.triggers(oportunidad_id);
create index if not exists idx_triggers_estado on public.triggers(estado);

alter table public.triggers enable row level security;
revoke all on public.triggers from anon;
grant select,insert,update,delete on public.triggers to authenticated;

drop policy if exists "triggers_select_own" on public.triggers;
drop policy if exists "triggers_insert_own" on public.triggers;
drop policy if exists "triggers_update_own" on public.triggers;
drop policy if exists "triggers_delete_own" on public.triggers;

create policy "triggers_select_own" on public.triggers for select to authenticated using ((select auth.uid())=user_id);
create policy "triggers_insert_own" on public.triggers for insert to authenticated with check ((select auth.uid())=user_id);
create policy "triggers_update_own" on public.triggers for update to authenticated using ((select auth.uid())=user_id) with check ((select auth.uid())=user_id);
create policy "triggers_delete_own" on public.triggers for delete to authenticated using ((select auth.uid())=user_id);

drop trigger if exists trg_triggers_updated_at on public.triggers;
create trigger trg_triggers_updated_at before update on public.triggers
for each row execute function public.set_updated_at();
