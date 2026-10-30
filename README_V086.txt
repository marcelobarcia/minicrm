NINJA SALES TERMINAL V0.86
Base: V0.85. Estética premium minimalista con identidad visual por entidad, más correcciones de robustez.

IDENTIDAD VISUAL
- Persona: círculo con iniciales (estilo Contactos de Apple).
- Empresa: cuadrado redondeado con monograma.
- Oportunidad ($ verde), Tarea (✓ azul), Trigger (rayo naranja), Iniciativa (diana morada), Radar (turquesa), Licitación (documento amarillo), Nota (gris).
- El color sale del nombre: cada empresa y persona mantiene siempre el mismo color.
- Tarjetas de tareas, triggers, iniciativas y renovaciones muestran empresa, persona y oportunidad como chips tocables que abren su ficha.
- Etapas con color propio (Lead gris, Discovery celeste, Propuesta azul, Negociación naranja, Decisión morado, Ganada verde, Perdida rojo, Nurturing café) en tarjetas, fichas y columnas del pipeline.
- Prioridad Alta/Media marcada en rojo/naranja; fechas relativas (Hoy, Mañana, Ayer, 2 nov) y vencidas en rojo.
- Buscador con el ícono de cada tipo de resultado. Fichas con encabezado grande (avatar + nombre + chip de empresa).
- Empresas muestran su equipo como avatares apilados.

INTERFAZ
- Barra inferior con íconos estilo SF Symbols.
- Encabezado compacto en una línea (ícono del ninja, título, estado Supabase).
- Textos vacíos y de ayuda en estilo oración.

FUNCIONALIDAD
- Guardado sin duplicados: mientras Supabase responde, los toques repetidos en Guardar se ignoran.
- Aviso "✓ Guardado" al guardar correctamente (no aparece si hubo error o falta un dato).
- Librerías con versión fija: React 18.3.1, Babel standalone 8.0.10, supabase-js 2.118.0 (las mismas que la app ya usaba), para que una actualización externa no la rompa.
- Pestaña DATOS simplificada: estado de Supabase, conteo de las 10 tablas y exportar respaldo. Se eliminaron Importar, Restaurar demo y la migración local, que ya no aplicaban.

INSTALACIÓN
Sin SQL nuevo. No modifica tablas, columnas ni permisos de Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v086.

VALIDACIÓN
Probado en local con Supabase simulado, escritorio y móvil (375 px): todas las pestañas sin errores ni desborde; triple envío de una tarea crea un solo registro; aviso Guardado aparece y desaparece; error de validación no muestra aviso y conserva lo escrito; buscador con íconos por tipo; fichas de contacto y oportunidad.
No se realizaron lecturas ni escrituras contra la base de datos real.
