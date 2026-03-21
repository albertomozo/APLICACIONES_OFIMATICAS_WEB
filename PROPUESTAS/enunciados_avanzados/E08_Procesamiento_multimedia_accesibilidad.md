# Ejercicio 8 — Procesamiento multimedia para web y accesibilidad (Imágenes + Video + Optimización)

**Objetivo:**
Tomar material multimedia bruto (imágenes y videos), editarlo y optimizarlo para publicación web, generando variantes, subtítulos y metadatos accesibles.

**Entregables:**
- Carpeta `originales/` y `optimizado/` con versiones entregables.
- Subtítulos y transcripciones (`.srt` y `.txt`).
- Script de procesamiento automatizado (`procesa_media.sh` o `procesa_media.py`).
- Fichas de accesibilidad para cada recurso.

**Pasos sugeridos:**
1. Seleccionar material bruto y definir requerimientos de salida.
2. Recorte, corrección de color y normalización de audio.
3. Transcodificación a H.264/VP9 y generación de thumbnails.
4. Generación de subtítulos y transcripciones (manual o asistida por IA).
5. Crear variantes de imágenes (WebP/AVIF/JPEG) y medir tiempos de carga.

**Restricciones:**
- Tiempo de carga objetivo: <3s en móvil simulado.
- Subtítulos en español y transcripciones con timestamps.

**Rúbrica (30 pts):**
- Calidad técnica del procesado (10 pts).
- Accesibilidad (subtítulos, transcripciones, alt) (8 pts).
- Reducción de tamaño y tiempos de carga (6 pts).
- Automatización y reproducibilidad del pipeline (6 pts).

**Extensión (+4 pts):** pipeline en CI/CD que procese carpetas nuevas automáticamente.