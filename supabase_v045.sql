-- Ninja Sales Terminal v0.45
-- Permite asociar un trigger/señal directamente a un contacto.

ALTER TABLE public.triggers
  ADD COLUMN IF NOT EXISTS contacto_id uuid NULL;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'triggers_contacto_id_fkey'
      AND conrelid = 'public.triggers'::regclass
  ) THEN
    ALTER TABLE public.triggers
      ADD CONSTRAINT triggers_contacto_id_fkey
      FOREIGN KEY (contacto_id)
      REFERENCES public.contactos(id)
      ON DELETE SET NULL;
  END IF;
END $$;

CREATE INDEX IF NOT EXISTS idx_triggers_contacto_id
  ON public.triggers(contacto_id);
