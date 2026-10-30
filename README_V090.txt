NINJA SALES TERMINAL V0.90
Base: V0.89. Pestaña RED y ficha de contacto preparadas para cientos de contactos.

RED
- Vista inicial "Mis contactos": solo los relevantes hoy (actividad en los últimos 90 días, próximo contacto agendado o potencial Alto). "Todos" a un toque. Si no hay ninguno relevante, muestra Todos.
- Filtro inmediato por nombre, empresa, cargo, email o interés; busca en todos los contactos.
- Tres formas de ver:
  · A–Z: agrupado por letra con encabezados fijos e índice lateral A–Z para saltar.
  · Empresa: una fila plegada por empresa (monograma, caras del equipo, cantidad); se despliega al tocar, con acceso a la empresa.
  · Reciente: ordenado por último contacto.
- Filas compactas (~56 px): avatar, nombre, cargo · empresa, "hace N d" y punto de estado (verde al día, naranja recontactar, gris sin seguimiento reciente). Tocar abre la ficha; el "+" registra una actividad.
- Carga de a 50 filas; el resto aparece solo al bajar (o con "Cargar más"). Mantiene la app rápida con 500+ contactos.

FICHA DE CONTACTO
- Arriba fijo: avatar, nombre, cargo, empresa, email/teléfono/LinkedIn y acciones.
- Pestañas: Resumen · Actividad · Tareas · Notas, con contadores.
  · Resumen: datos de relación, último/próximo contacto, intereses, nota, oportunidades, iniciativas, triggers y organigrama (solo los que tienen datos).
  · Actividad: línea de tiempo + detalle de cada actividad con el texto completo (correos estructurados).
  · Tareas: abiertas primero, completadas plegadas.
  · Notas.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v090.

VALIDACIÓN
Probado en local con Supabase simulado y 503 contactos en 120 empresas: Mis contactos (166), Todos, filtro (24 resultados en ~60 ms), A–Z con salto a la última letra, carga automática 50→100→150 al bajar, vista por empresa, Reciente, ficha con sus 4 pestañas; escritorio y móvil 375 px sin desborde ni errores.
No se realizaron lecturas ni escrituras contra la base de datos real.
