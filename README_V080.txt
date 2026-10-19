NINJA SALES TERMINAL V0.80
Base: ZIP V0.79 proporcionado por el usuario.

ACTUALIZACIÓN
Reemplaza los archivos de tu sitio por los de esta carpeta. Conserva la misma URL de la aplicación. El service worker usa ninja-sales-v080 y elimina las caches anteriores de Ninja.
No requiere SQL nuevo: usa la etapa existente y el JSON estructurado de observaciones, como los campos de probabilidad, cierre y contactos de V0.79. No agrega columnas ni modifica permisos.

USO
Abre o crea una oportunidad, elige Nurturing y completa motivo y fecha de reactivación. El motivo permite elegir una sugerencia o escribir texto libre.
PIPELINE muestra [NURTURING] // N separado y colapsado inicialmente.
Nurturing no suma al importe activo ni a contadores de oportunidades activas; tampoco aparece entre las oportunidades de HOY, próximos 7 días o vencidas.
VENCIDAS conserva la regla V0.79: solo tareas. Las tareas explícitas asociadas a una oportunidad siguen siendo tareas independientes.
HOY muestra REACTIVAR OPORTUNIDADES desde 30 días calendario antes de fecha_reactivacion, inclusive. El aviso permanece después de esa fecha hasta cambiar la etapa; no reactiva automáticamente ni crea tareas. Sin fecha no hay aviso.
Para reactivar, edita la oportunidad y cambia su etapa a Lead, Discovery u otra etapa activa.
Las tarjetas Nurturing muestran motivo, fecha y último toque ligado a esa oportunidad cuando existe.
La búsqueda universal incluye nombre, empresa, etapa, motivo y fecha ISO (AAAA-MM-DD).
Los campos motivo_nurturing y fecha_reactivacion se conservan al cambiar de etapa. Al editar, también se preservan las claves adicionales existentes en observaciones.

VALIDACIÓN
Sintaxis JSX y service worker: correcta.
Pruebas en Edge con Supabase simulado: ventana de 30/31 días y fechas pasadas/sin fecha; exclusión de totales y agenda; sección colapsada; guardar/leer campos; preservación de metadatos; búsqueda; volver a etapa activa; viewport 390 px sin desborde; sin errores de ejecución.
No se realizaron escrituras ni pruebas contra la base de datos real.
