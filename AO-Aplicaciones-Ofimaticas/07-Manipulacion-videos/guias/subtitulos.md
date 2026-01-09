# GUÍA INTEGRAL PARA LA CREACIÓN DE SUBTÍTULOS

Esta guía cubre desde la transcripción automática hasta la gestión técnica de archivos de subtítulos para usos científicos o técnicos.

---

## 1. Métodos de Generación (Según el tipo de video)

### A. Para videos con audio (Transcripción Automática)

* **CapCut (PC/Móvil):** La opción más rápida. Usa la función "Subtítulos automáticos" para que la IA escuche y sincronice el texto.
* **YouTube Studio:** Ideal para resultados profesionales gratuitos. Sube el video como privado y edita la transcripción que YouTube genera automáticamente.
* **Riverside.fm:** Excelente herramienta web para obtener un archivo `.srt` de alta precisión basado en la tecnología Whisper de OpenAI.

### B. Para videos sin audio (Capturas de pantalla o Fototrampeo)

Dado que no hay voz que detectar, el proceso es manual o asistido:

* **Anotación Manual (CapCut):** Añadir bloques de texto manualmente y arrastrar su duración en la línea de tiempo para que coincidan con la acción visual.
* **Software de Precisión (Aegisub):** Permite crear subtítulos con tiempos exactos (milisegundos), ideal para registros científicos o técnicos.
* **Truco de "Narración Espejo":** Graba tu voz describiendo lo que pasa, genera subtítulos automáticos con esa voz y luego elimina el audio. El texto quedará perfectamente sincronizado.

---

## 2. Tipos de Subtítulos y Formatos

### Formatos de Archivo

* **`.SRT` (SubRip):** El formato universal. Es un archivo de texto plano que contiene el tiempo de inicio, fin y el texto. Compatible con casi todos los reproductores y plataformas sociales.
* **`.ASS` (Advanced Substation Alpha):** Permite personalización avanzada: colores, fuentes específicas, efectos y posicionamiento exacto en cualquier parte de la pantalla (no solo abajo).

### Modos de Visualización

* **Incrustados (Hardcoded):** El texto se "quema" en el video durante la exportación. No se pueden desactivar. Ideal para Instagram, TikTok o tutoriales rápidos.
* **Opcionales (Softcoded):** Se guardan como un archivo aparte o dentro de un contenedor (como .mkv). El usuario puede activarlos o desactivarlos desde el reproductor (VLC, YouTube, Netflix).

---

## 3. Implementación Técnica y Reproducción

Para que los subtítulos funcionen correctamente en reproductores como **VLC** o televisiones:

1. **Regla del Nombre Identificador:** El archivo de video y el de subtítulos deben llamarse igual y estar en la misma carpeta.
* Ejemplo: `Lince_001.mp4` y `Lince_001.srt`.


2. **Uso de VLC:** Al abrir el video, haz clic derecho > *Subtítulos* > *Pista* para seleccionar el idioma o archivo correspondiente.
3. **Contenedores:** Si quieres un solo archivo que incluya los subtítulos opcionales, usa **MKVToolNix** para empaquetar el video y el `.srt` en un archivo `.mkv`.

---

## 4. Ideas Creativas para Videos sin Sonido

* **Subtítulos como Metadatos:** En fototrampeo, incluye datos como temperatura, fase lunar o comportamiento detectado entre corchetes (ej: `[Marcaje territorial]`).
* **Guías Visuales:** En tutoriales de pantalla, usa el subtítulo para describir la acción física: `*Doble clic en el icono de red*`.
* **Código de Colores:** Usa diferentes colores para identificar distintas especies o tipos de eventos técnicos.
* **Traducción Eficiente:** Al ser archivos de texto, puedes traducir un `.srt` completo usando ChatGPT o DeepL para compartir tus hallazgos con expertos internacionales manteniendo la sincronización.

---

### ¿Cuál es el siguiente paso?

Si tienes un archivo de video ahora mismo, **¿te gustaría que te redactara una plantilla de ejemplo de cómo debería verse el texto de un archivo `.srt` para que puedas crear uno manualmente en un Bloc de Notas?**

