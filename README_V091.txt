NINJA SALES TERMINAL V0.91
Base: V0.90. Dos paneles en escritorio para la pestaña RED.

QUÉ CAMBIA
- En pantallas de 1100 px o más, RED se ensancha y muestra la lista a la izquierda y la ficha del contacto a la derecha (como Mail o Contactos en Mac).
- Tocar un contacto lo muestra en el panel derecho, sin abrir ventana. Al entrar se selecciona el primero de la lista.
- Flechas ↑/↓ recorren la lista y actualizan el panel (no actúan mientras escribes ni con una ventana abierta).
- Abrir una persona desde cualquier lugar estando en RED (buscador global, chips, organigrama, jefe/reportes) la selecciona en el panel; la lista carga hasta esa persona y la deja a la vista.
- Oportunidades, empresas y formularios siguen abriéndose en ventana encima del panel.
- El panel derecho tiene su propio scroll y queda fijo mientras recorres la lista.
- Por debajo de 1100 px (tablet, celular) todo funciona como en V0.90.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v091.

VALIDACIÓN
Probado en local con Supabase simulado y 503 contactos: 1360 px con dos paneles (selección inicial, clic, flechas, pestañas en el panel, selección desde buscador global con la fila visible sobre la barra inferior, ventana de empresa encima); 900 px y 375 px sin dos paneles y con la ficha en ventana; sin errores.
No se realizaron lecturas ni escrituras contra la base de datos real.
