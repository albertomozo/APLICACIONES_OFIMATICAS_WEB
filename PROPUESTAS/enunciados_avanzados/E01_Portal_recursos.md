# Ejercicio 1 — Portal de recursos didácticos (CMS + Multimedia + IA)

**Objetivo:**
Diseñar e implementar un portal educativo de 6 páginas que organice y publique recursos multimedia (imágenes, videos, documentos) y que utilice un servicio de IA para generación automática de metadatos (títulos, descripciones, etiquetas).

**Entregables:**
- Sitio desplegado (URL o carpeta `site/`).
- Plantilla reutilizable (`template/` o tema del CMS).
- Carpeta `multimedia/` con los archivos origen y versiones optimizadas.
- Script o nota `metadatos_ia.md` explicando el uso de la IA y el pipeline.

**Pasos sugeridos:**
1. Elegir CMS (WordPress/Strapi/Static site con templates) o generar site estático (HTML/CSS/JS).
2. Diseñar estructura de 6 páginas (home, catálogo, detalle recurso, about, contacto, admin mínima).
3. Preparar y optimizar imágenes/videos (WebP/AVIF, H.264/VP9 para video).
4. Integrar un script que llame a un modelo de generación de texto para títulos, descripciones y etiquetas.
5. Implementar búsqueda por metadatos y filtros (tipo, autor, etiqueta).
6. Documentar despliegue y pasos para regenerar metadatos.

**Restricciones:**
- Tamaño máximo por vídeo: 50 MB.
- Imágenes: entregar originales y versión optimizada.
- Cumplir WCAG nivel básico (contraste, alt en imágenes, estructura semántica).

**Rúbrica (40 pts):**
- Arquitectura y despliegue (8 pts): sitio reproducible y accesible.
- Calidad multimedia (8 pts): optimización, formato y calidad visual.
- Automatización IA (10 pts): generación coherente de metadatos y reproducibilidad del script.
- Búsqueda y usabilidad (7 pts): búsquedas y filtros funcionales.
- Documentación (7 pts): instrucciones claras para despliegue y regeneración.

**Extensión opcional (+5 pts):** integrar suscripción por correo y exportación de usuarios a `CSV`.