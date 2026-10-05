-- Ninja Sales Terminal v0.36 - RADAR comercial
CREATE TABLE IF NOT EXISTS public.radar (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL DEFAULT auth.uid() REFERENCES auth.users(id) ON DELETE CASCADE,
  nombre text NOT NULL,
  sector text NOT NULL DEFAULT 'Público',
  sistema_inferido text NULL,
  confianza text NOT NULL DEFAULT 'Media',
  estado text NOT NULL DEFAULT 'Observando',
  notas text NULL,
  evidencias jsonb NOT NULL DEFAULT '[]'::jsonb,
  empresa_id uuid NULL REFERENCES public.empresas(id) ON DELETE SET NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_radar_user_id ON public.radar(user_id);
CREATE INDEX IF NOT EXISTS idx_radar_empresa_id ON public.radar(empresa_id);
ALTER TABLE public.radar ENABLE ROW LEVEL SECURITY;
REVOKE ALL ON public.radar FROM anon;
GRANT SELECT,INSERT,UPDATE,DELETE ON public.radar TO authenticated;
DROP POLICY IF EXISTS "radar_select_own" ON public.radar;
DROP POLICY IF EXISTS "radar_insert_own" ON public.radar;
DROP POLICY IF EXISTS "radar_update_own" ON public.radar;
DROP POLICY IF EXISTS "radar_delete_own" ON public.radar;
CREATE POLICY "radar_select_own" ON public.radar FOR SELECT TO authenticated USING ((select auth.uid())=user_id);
CREATE POLICY "radar_insert_own" ON public.radar FOR INSERT TO authenticated WITH CHECK ((select auth.uid())=user_id);
CREATE POLICY "radar_update_own" ON public.radar FOR UPDATE TO authenticated USING ((select auth.uid())=user_id) WITH CHECK ((select auth.uid())=user_id);
CREATE POLICY "radar_delete_own" ON public.radar FOR DELETE TO authenticated USING ((select auth.uid())=user_id);
DROP TRIGGER IF EXISTS trg_radar_updated_at ON public.radar;
CREATE TRIGGER trg_radar_updated_at BEFORE UPDATE ON public.radar FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();
