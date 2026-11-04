NINJA SALES TERMINAL V0.97
Base: V0.96. Oportunidad desde la cuenta y minuta de reunión.

NUEVO
1. "+ Oportunidad" en la ficha de empresa (con la empresa ya elegida) y en la ficha de contacto (empresa elegida y contacto marcado). Al guardar vuelves a la ficha desde donde la creaste.
2. "+ Minuta" de reunión en la ficha de empresa, de contacto, de oportunidad y en el menú rápido (+):
   - Empresa, fecha y oportunidad (se elige sola si la empresa tiene una sola abierta).
   - Tema / objetivo.
   - Asistentes del cliente: se marcan de la lista de contactos de la empresa; campo para otros asistentes.
   - Asistentes Ataway / internos.
   - Resumen de la reunión.
   - Acuerdos / próximos pasos: texto, responsable y fecha; "+ Acuerdo" para agregar más. Cada acuerdo puede crear su tarea (marcado por defecto).
   - Opción: usar el primer acuerdo con fecha como próxima acción de la oportunidad.
   Al guardar:
   - Se registra una actividad de tipo "Reunión" con la minuta formateada (aparece en el historial de la empresa, de la oportunidad y del primer asistente).
   - Se crean las tareas de los acuerdos, vinculadas a la empresa, al primer asistente y a la oportunidad.
   - El "último contacto" de todos los asistentes avanza a la fecha de la reunión.
   - Vuelves a la ficha desde donde la abriste.
3. Ficha de empresa: botones reordenados. Principales: Minuta, Oportunidad, Actividad, Contacto, Tarea, Nota. Secundarios: Trigger, Licitación, Iniciativa, Editar.
4. Las filas de dos columnas de los formularios (fechas, montos) ahora se ven lado a lado.

INSTALACIÓN
Sin SQL nuevo. No modifica tablas ni permisos de Supabase: usa las tablas existentes de actividades, tareas y oportunidades.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v097.

VALIDACIÓN
Probado en local con Supabase simulado: + Oportunidad desde empresa (empresa preseleccionada, vuelve a la empresa); minuta con 2 asistentes, oportunidad, resumen y 2 acuerdos ⇒ actividad Reunión formateada, 2 tareas con responsable y fecha, próxima acción de la oportunidad actualizada, último contacto de ambos asistentes al día, vuelta a la empresa con aviso Guardado. Sin errores.
No se realizaron lecturas ni escrituras contra la base de datos real.
