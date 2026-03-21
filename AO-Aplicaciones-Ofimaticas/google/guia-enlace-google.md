
## 🛠️ Anatomía de un Enlace de Google
Casi todos los archivos de Google tienen esta estructura de URL:
`https://docs.google.com/tipo/d/ID_DEL_ARCHIVO/edit`

El secreto está en borrar el final (desde `/edit` en adelante) y sustituirlo por los comandos que verás a continuación.

---

## 1. Comandos Universales (Todos los archivos)
Estos funcionan para **Docs, Sheets, Slides y Forms**.

| Comando | Qué hace | Ideal para... |
| :--- | :--- | :--- |
| **`/copy`** | Abre una pantalla que obliga al usuario a hacer una copia en su Drive para poder verlo. | Compartir plantillas evitando que editen tu original. |
| **`/copy?copyComments=true`** | Igual que el anterior, pero **mantiene los comentarios** que tú hayas hecho en el original. | Trabajo colaborativo o feedback educativo. |
| **`/template/preview`** | Muestra una vista previa del documento con un botón azul de "Usar plantilla". | Dar un aspecto más profesional y opcional a la copia. |
| **`/preview`** | Muestra el contenido "limpio", sin barras de herramientas, menús ni bordes. | Presentar informes o dossieres que solo deben leerse. |

---

## 2. Google Forms (Formularios)
Los formularios tienen sus propias reglas porque tienen dos "caras": la del editor y la del que responde.

* **`/viewform`**: El enlace estándar para que la gente responda.
* **`/viewanalytics`**: Permite que otros vean los gráficos de resumen de las respuestas (debes activarlo antes en la pestaña "Configuración" del formulario).
* **Enlace pre-rellenado**: No es un comando simple, sino una opción en el menú de los 3 puntos (`Obtener enlace previamente rellenado`). Te permite enviar un formulario donde algunas respuestas ya están marcadas.

---

## 3. Google Docs (Documentos de texto)
Puedes forzar la descarga de tu documento en diferentes formatos sin que el usuario tenga que entrar al menú "Archivo".

> **Sustituye `/edit` por:**
* **`/export?format=pdf`**: Descarga directa en **PDF**.
* **`/export?format=docx`**: Descarga directa en **Word**.
* **`/export?format=odt`**: Descarga directa en formato OpenDocument.
* **`/export?format=txt`**: Descarga como texto plano.

---

## 4. Google Sheets (Hojas de cálculo)
Muy útil para enviar datos listos para procesar en otros programas.

> **Sustituye `/edit` por:**
* **`/export?format=xlsx`**: Descarga directa en **Excel**.
* **`/export?format=pdf`**: Descarga directa en **PDF** (ojo: a veces el formato de página se descuadra).
* **`/export?format=csv`**: Descarga solo la **primera hoja** en formato CSV (ideal para bases de datos).
* **`/export?format=tsv`**: Descarga en valores separados por tabuladores.

---

## 5. Google Slides (Presentaciones)
Perfecto para enviar presentaciones a clientes o alumnos sin que vean el desorden de las diapositivas laterales.

> **Sustituye `/edit` por:**
* **`/present`**: Abre la presentación directamente en **modo pantalla completa**.
* **`/export/pdf`**: Descarga toda la presentación en **PDF**.
* **`/export/pptx`**: Descarga directa en **PowerPoint**.

---

### ⚠️ El "Checklist" de seguridad antes de enviar
Para que cualquiera de estos trucos funcione, debes cumplir estos dos requisitos:

1.  **Permisos de acceso:** Haz clic en el botón **Compartir** y asegúrate de que el acceso general esté en **"Cualquier persona con el enlace"**. 
2.  **Rol de Lector:** Con que tengan permiso de **Lector** es suficiente para que `/copy` o `/export` funcionen. No hace falta darles permiso de editor (¡así proteges tu trabajo!).


![Google Drive links anatomy guide showing URL structure and command examples](https://drive.google.com/file/d/1NMbPEbyZ5MXFMAPTXarCjoWGYJPSJu7F/preview)

> **Consejo extra:** Si el enlace te queda muy largo (especialmente los de exportar), pásalo por un acortador como **Bitly** o **TinyURL**. Quedará mucho más elegante.

