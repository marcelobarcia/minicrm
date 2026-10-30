NINJA SALES TERMINAL V0.87
Base: V0.86.

CAMBIOS
1. Texto de mails y notas estructurado: las notas de actividades, notas, contexto de oportunidades, descripciones de triggers, licitaciones y resúmenes de status respetan los saltos de línea y párrafos del texto pegado (antes se mostraba todo junto).
   - Encabezados de mail (De:, Para:, Asunto:, From:, Subject:...) en negrita.
   - Líneas citadas (>) en gris.
   - Textos largos se pliegan a 6 líneas con "Ver más" / "Ver menos".
   - Se limpian espacios sobrantes y más de una línea en blanco seguida.
   - El campo de nota en los formularios es más alto para pegar mails cómodamente.
2. Tareas completadas minimizadas: en las fichas de contacto, oportunidad y empresa se muestran primero las tareas abiertas y las completadas quedan en un grupo plegado "N completadas". Cada completada ocupa una sola línea (Reabrir / Borrar); los títulos largos se cortan con "…" y el texto completo aparece al pasar el mouse. En LOG, "Tareas completadas" también queda plegado.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v087.

VALIDACIÓN
Probado en local con Supabase simulado: mail pegado de varias líneas (encabezados, lista numerada, cita), Ver más/menos, grupo de completadas plegado que se mantiene abierto al marcar otra tarea, LOG plegado; sin errores.
No se realizaron lecturas ni escrituras contra la base de datos real.
