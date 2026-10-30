NINJA SALES TERMINAL V0.84
Base: V0.83. Solo correcciones; no agrega funciones.

CORRECCIONES
1. Pantalla en blanco: las fichas de contacto, oportunidad y empresa muestran "NO ENCONTRADO" si el registro fue eliminado (ej. trigger que apunta a una oportunidad borrada). Cualquier otro error de pantalla muestra un aviso con VOLVER AL INICIO en vez de dejar la app en blanco.
2. Formularios que se vaciaban: Licitación, Iniciativa y los selectores Empresa/Contacto/Oportunidad ya no pierden lo escrito cuando la app se redibuja (renovación de sesión, avisos, sincronización). La renovación del token de Supabase ya no recarga todas las tablas.
3. Último contacto: registrar una actividad con fecha pasada o editar una antigua ya no hace retroceder la fecha de último contacto; se conserva siempre la más reciente.
4. Etapas: ETAPA ▶ se detiene en Ganada (antes pasaba a Perdida). Desde Perdida o Nurturing las flechas abren el editor.
5. Fecha de hoy: si la PWA queda abierta pasada la medianoche, HOY / VENCIDAS se actualizan al nuevo día (cada minuto o al volver a la app).
6. Almacenamiento local bloqueado: si el navegador bloquea localStorage (modo privado, vistas previas, URLs data:), la app sigue funcionando; la copia local es solo caché.

INSTALACIÓN
Sin SQL nuevo. No modifica tablas, columnas ni permisos de Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v084.

VALIDACIÓN
Probado en local con Supabase simulado: registro inexistente, pantalla de error y recuperación, formulario de licitación tras renovación de sesión, edición de actividad antigua, avance de etapas, cambio de día, apertura de todos los formularios afectados.
No se realizaron lecturas ni escrituras contra la base de datos real.
