NINJA SALES TERMINAL V0.95
Base: V0.94.

CORRECCIÓN
- Fondo quieto con fichas abiertas: al hacer scroll dentro de una ficha (por ejemplo, la pestaña Actividad de un contacto) y llegar al final, el movimiento pasaba a la página de atrás y la lista de contactos se desplazaba. Ahora:
  · Mientras hay una ficha, formulario o aviso abierto, la página de fondo queda fija (técnica compatible con iPhone/Safari, que ignora el bloqueo normal).
  · El scroll de la ficha queda contenido y no se traspasa al fondo.
  · Al cerrar, la página vuelve exactamente a la posición donde estabas.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v095.

VALIDACIÓN
Probado en local con 503 contactos: a 390 px, con la lista desplazada 1500 px, abrir ficha, ir a Actividad y seguir girando la rueda al final de la ficha no movió la lista; al cerrar volvió a 1500 px. A 1360 px con dos paneles, abrir y cerrar una ventana mantuvo la posición y el panel fijo. Sin errores.
