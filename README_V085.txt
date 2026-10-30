NINJA SALES TERMINAL V0.85
Base: V0.84. Cambio solo visual: estética premium estilo macOS (modo oscuro, acento azul del sistema).

QUÉ CAMBIA
- Tipografía del sistema: SF Pro en Mac/iPhone; Segoe UI Variable o Inter en Windows.
- Superficies tipo macOS: encabezado y barra inferior translúcidos con desenfoque, tarjetas redondeadas, bordes finos.
- Acento azul macOS (#0A84FF) en botones principales, pestaña activa, enlaces, foco y gráficos; rojo y verde del sistema para borrar y estado.
- Buscador estilo Spotlight con lupa; resultados resaltados en azul.
- Botones, etiquetas de formulario y pestañas en estilo oración (Guardar, Editar, Hoy) en lugar de MAYÚSCULAS. Los datos (nombres, empresas) no se modifican.
- Títulos de sección pequeños estilo Finder; se quitan los prefijos ">" y los separadores "//" pasan a "·".
- Formularios en ventana centrada en escritorio y hoja inferior en móvil. Controles nativos (fechas, selects) en modo oscuro.
- Indicador Supabase en verde cuando está conectado.

INSTALACIÓN
Sin SQL nuevo. No modifica tablas, columnas ni permisos de Supabase.
Reemplaza index.html y sw.js en el sitio. Caché del service worker actualizada a v085.
La capa visual está en <style id="mac-premium-v085"> al final del <head>; quitar ese bloque devuelve los colores ámbar (los "·" y la ausencia de ">" se mantienen).

VALIDACIÓN
Revisado en local con Supabase simulado en escritorio y móvil (375 px): todas las pestañas, ficha de oportunidad, formulario de contacto, pantalla de acceso; sin errores ni desborde horizontal.
No se realizaron lecturas ni escrituras contra la base de datos real.
