const CACHE='ninja-sales-v076';
const SHELL=['./','./index.html','./manifest.webmanifest','./favicon-32.png','./apple-touch-icon.png','./icon-192.png','./icon-512.png','./ninja-header-portrait.png','./ninja-sales-terminal.png'];
self.addEventListener('install',e=>{e.waitUntil(caches.open(CACHE).then(c=>c.addAll(SHELL)));self.skipWaiting();});
self.addEventListener('activate',e=>{e.waitUntil(caches.keys().then(keys=>Promise.all(keys.filter(k=>k!==CACHE&&k.startsWith('ninja-sales-')).map(k=>caches.delete(k)))));self.clients.claim();});
self.addEventListener('fetch',e=>{const u=new URL(e.request.url);if(u.hostname.includes('supabase.co'))return;if(e.request.method!=='GET')return;e.respondWith(fetch(e.request).then(r=>{const copy=r.clone();caches.open(CACHE).then(c=>c.put(e.request,copy));return r;}).catch(()=>caches.match(e.request)));});
