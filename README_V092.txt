NINJA SALES TERMINAL V0.92
Base: V0.91. Sonidos de interfaz sutiles, estilo macOS.

SONIDOS
- Clic suave ("tic") al presionar botones, pestañas, filas, chips y resultados de búsqueda.
- "Pop" ascendente al abrir una ficha, formulario o aviso; descendente al cerrarlo.
- Acorde de dos notas al guardar correctamente y al marcar una tarea como hecha.
- No suena si hubo error o falta un dato.
- Se generan en el navegador con Web Audio: no hay archivos de audio que descargar, son muy cortos y de volumen bajo.

PREFERENCIA
- DATOS > Preferencias > "Sonidos de interfaz": interruptor para encender/apagar. Se guarda en cada dispositivo (no en Supabase).
- En iPhone, con el modo silencio activado, el sistema puede silenciarlos.

INSTALACIÓN
Sin SQL nuevo. No modifica Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v092.

VALIDACIÓN
Probado en local con Supabase simulado registrando cada tono generado: pestaña (tic), abrir ventana (tic + pop), guardar (acorde + pop de cierre), tarea hecha (tic + acorde); con el interruptor apagado no se genera ningún sonido y la preferencia queda guardada; sin errores.
