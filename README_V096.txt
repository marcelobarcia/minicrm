NINJA SALES TERMINAL V0.96
Base: V0.95. Navegación entre fichas sin volver al menú principal.

QUÉ CAMBIA
- Las ventanas se apilan como en el iPhone: si desde una ficha (empresa, contacto, oportunidad, radar, iniciativa o licitación) abres otra ficha o un formulario, la anterior queda debajo.
- Guardar, Cancelar, Esc o tocar fuera vuelven a la ficha anterior, en vez de cerrar todo y volver a la pantalla principal.
  Ejemplo: Empresa SMU → mapa de relaciones → Contacto → Editar "Reporta a" → Guardar ⇒ vuelve al Contacto actualizado; Atrás ⇒ vuelve a SMU con el mapa ya actualizado.
- Botón "‹ Nombre" arriba de la ficha para volver sabiendo a dónde (ej. "‹ SMU").
- Al volver, la ficha anterior queda en la misma pestaña (Resumen/Actividad/Tareas/Notas) y en la misma posición de scroll.
- Una ficha nueva siempre abre desde arriba (antes heredaba el scroll de la anterior).
- Si borras un registro, se salta automáticamente la ficha que ya no existe (ej. borrar un contacto desde su edición vuelve a la empresa).
- El menú rápido (+) y los formularios no se apilan: crear una tarea desde el + y guardar cierra la ventana como antes.
- En escritorio con dos paneles, abrir una persona desde una ventana la muestra en el panel y cierra las ventanas.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v096.

VALIDACIÓN
Probado en local con Supabase simulado: empresa → mapa → contacto → editar reporta a → guardar (vuelve al contacto; atrás vuelve a la empresa con scroll restaurado y mapa actualizado); pestaña Tareas recordada al volver desde una oportunidad; cancelar edición; registrar actividad desde contacto; tarea desde menú rápido; borrar contacto desde su edición vuelve a la empresa. Sin errores.
No se realizaron lecturas ni escrituras contra la base de datos real.
