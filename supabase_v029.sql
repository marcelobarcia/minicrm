-- Ninja Sales Terminal v0.29
-- Agrega URL opcional al trigger comercial.
ALTER TABLE public.triggers
  ADD COLUMN IF NOT EXISTS link text NULL;
