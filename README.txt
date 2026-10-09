Ninja Sales Terminal v0.36

NUEVO: RADAR
- Nueva entidad independiente para organizaciones todavía no activadas comercialmente.
- Guarda sector, sistema inferido, confianza, estado, notas e historial de evidencias.
- Cada evidencia puede guardar fecha, hallazgo, fuente y link (ideal para Mercado Público).
- Ficha RADAR con [ACTIVAR COMO EMPRESA →].
- Al activar, crea la Empresa y conserva/vincula el registro RADAR como ACTIVADO.
- Si ya existe una empresa con el mismo nombre, Ninja avisa y permite vincularla en vez de duplicarla.
- Un RADAR activado permite [VER EMPRESA →].
- RADAR participa del Buscador Universal.
- Acción rápida + RADAR.

INSTALACIÓN
1. Ejecutar supabase_v036.sql UNA VEZ en Supabase > SQL Editor.
2. Subir todos los archivos al root de GitHub Pages reemplazando los existentes.
3. Verificar PERSONAL SALES CRM // v0.36 PWA.

v0.56
- Iniciativa Comercial generalizada: Sales Play, Prospección, Partner, Reactivación, Evento, Campaña, Territorio y Otro.
- Actividades pueden atribuirse opcionalmente a una iniciativa.
- Oportunidades pueden atribuirse a una iniciativa (guardado en observaciones; no requiere columna nueva).
- PULSO muestra origen de actividad por iniciativa en últimos 30 días, con drilldown.
- Ficha de iniciativa muestra actividades, oportunidades y cuentas movidas.
- El STATUS usa actividad/oportunidades atribuidas a esa iniciativa para evitar mezclar movimientos de otras estrategias.
- Ejecutar supabase_v056.sql una vez antes de usar esta versión.

IMPORTANTE V0.56
----------------
El archivo supabase_v056.sql es autosuficiente: crea public.iniciativas si todavía no existe y luego agrega la relación desde actividades. No es necesario ejecutar supabase_v055.sql previamente.
