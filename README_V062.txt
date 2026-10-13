NINJA SALES TERMINAL V0.62

Frontend only. No SQL or Supabase schema changes.

Activity save, Cancel, Escape and backdrop restore the original screen/detail and scroll. Company/contact/opportunity/initiative defaults preserved. Duplicate activity submission is blocked while saving. Escape cannot cancel a write already submitted.

PULSO rhythm uses Monday-Sunday calendar weeks; current week ends today. Dates use America/Santiago regardless of device timezone, with refresh every minute and on focus. The other PULSO metrics retain their rolling 30-day window.

Deploy all PWA files together, including sw.js (cache v062). Existing SQL files are unchanged historical references; do not rerun them for this update.

New activity type: Mensaje de LinkedIn. Babel is pinned to major version 7 to retain the PWA classic React runtime.
