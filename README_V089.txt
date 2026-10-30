NINJA SALES TERMINAL V0.89
Base: V0.88. Animaciones sutiles estilo macOS. Solo cambio visual.

ANIMACIONES
- Formularios y fichas: suben desde abajo en el celular; aparecen con un leve zoom en escritorio. Fondo se oscurece con fundido.
- Avisos (confirmar, errores): aparecen con zoom suave.
- Cambio de pestaña: el contenido entra con un desvanecido hacia arriba, escalonado por sección.
- Secciones de HOY, grupo de completadas, tareas completadas, iniciativas y Nurturing: el contenido aparece suave al abrir.
- Buscador: los resultados caen suavemente.
- Barra inferior: el ícono de la pestaña activa hace un pequeño "pop".
- Pulso: las barras de las 4 semanas crecen al entrar.
- Botón +: gira al pasar el mouse.
- Pantalla "Sincronizando": el texto respira mientras carga.

Las tarjetas no se animan a propósito: se redibujan seguido y parpadearían.
Si el dispositivo tiene activado "Reducir movimiento" (Mac/iPhone/Windows), todas las animaciones se desactivan automáticamente.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v089.
La capa está en <style id="motion-v089">; quitar ese bloque elimina las animaciones.

VALIDACIÓN
Probado en local con Supabase simulado: animación de hoja, fondo, pestañas, ícono activo, buscador y secciones de HOY; escribir en el buscador no reinicia animaciones ni hace parpadear tarjetas; sin errores.
