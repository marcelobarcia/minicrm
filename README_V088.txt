NINJA SALES TERMINAL V0.88
Base: V0.87.

CAMBIOS
1. Correos y notas estructurados (mejora de V0.87):
   - Cada línea se muestra como párrafo con espacio entre ellas, aunque el texto venga con saltos simples.
   - Un correo dentro de la nota (desde el saludo "Hola…/Estimado…" hasta "Gracias/Saludos/Atte." y la firma) aparece en un recuadro propio con borde azul.
   - Si la línea anterior al correo termina en ":" (ej. "Texto preparado y confirmado como enviado:"), se usa como título del recuadro; si no, dice "Correo".
   - Encabezados De:/Para:/Asunto: justo antes del saludo quedan dentro del mismo recuadro, en negrita.
   - El contexto antes del correo y los comentarios después (ej. "Pendiente de respuesta…") quedan como párrafos aparte.
   - "Ver más" pliega con un degradado suave; se quitó el borde negro que aparecía al tocarlo.
2. Tareas completadas legibles sin reabrir: al tocar una completada se despliega con el texto completo, empresa/persona/oportunidad, fecha y prioridad, y las acciones Reabrir / Editar / Borrar. La tarea sigue completada. Cerrada ocupa una sola línea.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v088.

VALIDACIÓN
Probado en local con Supabase simulado usando el texto real del correo a Hernán Villareal (contexto + texto enviado + firma + comentario de seguimiento) y un correo con encabezados De/Para/Asunto; tarea completada larga desplegada sin cambiar su estado; sin errores.
No se realizaron lecturas ni escrituras contra la base de datos real.
