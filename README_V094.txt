NINJA SALES TERMINAL V0.94
Base: V0.93. Ajuste al ancho del iPhone.

CORRECCIONES
1. Zoom automático de iOS: Safari amplía la página al tocar un campo con letra menor a 16 px, y luego la pantalla queda corrida hacia el lado. En celulares, todos los campos (buscador, filtros, formularios, notas) usan ahora 16 px.
2. Contenido más ancho que la pantalla: títulos, URLs y correos largos sin espacios (ej. títulos de licitación, links de Mercado Público) empujaban la ficha hasta ~600 px en un iPhone de 390 px. Ahora el texto largo se corta en varias líneas y la página nunca se desplaza hacia el lado.
3. Las etiquetas junto a títulos largos (Alta, etapa, prioridad) ya no se comprimen en vertical.
- Se mantienen los desplazamientos laterales intencionales (línea de tiempo de toques, organigrama).
- Se desactiva el ajuste automático de tamaño de letra de iOS al girar el teléfono.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v094.
En el iPhone, si tenías la app instalada en la pantalla de inicio, ábrela y recarga una vez para tomar la versión nueva.

VALIDACIÓN
Probado en local a 390 px (iPhone 14/15) con datos de texto largo: todas las pestañas, ficha de contacto (4 pestañas), ficha de empresa con nombre largo y formulario de actividad sin ningún elemento fuera del ancho; campos a 16 px. La misma prueba sobre la versión anterior mostraba la ficha a 612 px y campos a 14 px.
No se realizaron lecturas ni escrituras contra la base de datos real.
