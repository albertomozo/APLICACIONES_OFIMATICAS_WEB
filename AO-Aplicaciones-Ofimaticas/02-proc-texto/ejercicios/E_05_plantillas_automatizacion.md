
## 🧩 TEXTO DE PRÁCTICA 5 – CREACIÓN DE PLANTILLAS Y AUTOMATIZACIÓN

**Título del documento:**
*Plantillas, campos y automatización de tareas en procesadores de texto.*

---

### 1. Introducción

Escribe este párrafo y aplícale estilo de cuerpo de texto normal:

> Las plantillas permiten crear documentos con un formato uniforme y profesional sin empezar desde cero.
> Suelen incluir estilos predefinidos, logotipos, márgenes personalizados, numeración de páginas y campos automáticos.
> En entornos de oficina, las plantillas garantizan coherencia en la documentación corporativa.

---

### 2. Crear una plantilla base

1. Crea un documento nuevo y configura:

   * Fuente: Calibri 11 pt.
   * Interlineado 1,5.
   * Márgenes: 2,5 cm.
   * Encabezado con el logotipo del centro o empresa.
   * Pie de página con el texto “Documento generado con plantilla institucional”.

2. Guarda el archivo como **plantilla**:

   * En Word → `.dotx`
   * En Writer → `.ott`
   * En Google Docs → crea una copia del documento base en una carpeta compartida llamada *Plantillas*.

---

### 3. Inserción de campos automáticos

Añade los siguientes campos:

* **Fecha actual** → Insertar → Campo → Fecha.
* **Nombre del autor/a** → Insertar → Propiedades del documento → Autor.
* **Número de página** → Pie de página → Campo → Página actual.
* **Título del documento** → Insertar → Campo → Título.

> Observa cómo se actualizan automáticamente al abrir o guardar el documento.

---

### 4. Campos combinados o personalizados

Crea un pequeño formulario en el documento con los siguientes campos (usa **campos rellenables** o **controles de contenido** si el programa lo permite):

* Nombre del cliente
* Fecha de entrega
* Proyecto
* Observaciones

> Asigna formato negrita a las etiquetas y color de fondo suave a los campos editables.

---

### 5. Inserción de variables automáticas

Crea una tabla de resumen con los siguientes datos:

| Campo             | Valor automático |
| ----------------- | ---------------- |
| Autor             | (Campo Autor)    |
| Fecha de creación | (Campo Fecha)    |
| Título            | (Campo Título)   |

Asegúrate de que los valores se actualicen automáticamente al guardar.

---

### 6. Uso de estilos predefinidos

Aplica estilos coherentes en toda la plantilla:

* Título → tamaño 20 pt, color azul oscuro.
* Subtítulo → 14 pt, cursiva.
* Encabezado 1 → 13 pt, negrita.
* Encabezado 2 → 12 pt, color gris.
* Texto normal → 11 pt.

> Usa los estilos en vez de cambiar el formato manualmente.

---

### 7. Macros simples (solo en Word o Writer)

Crea una **macro sencilla** para insertar automáticamente la fecha y el nombre del autor al pulsar una combinación de teclas o un botón.

Ejemplo de pseudocódigo (no hace falta programar si el entorno no lo permite):

```
InsertarTexto("Documento generado por: ")
InsertarCampo("Autor")
InsertarTexto(" - Fecha: ")
InsertarCampo("Fecha")
```

> Guarda la macro como “InsertarDatosAutor” y asígnale un botón en la barra de herramientas.

---

### 8. Prueba de la plantilla

1. Abre un documento nuevo **basado en la plantilla** que has creado.
2. Verifica que los campos automáticos se actualizan.
3. Cambia algunos estilos y comprueba que no afecta al documento base.
4. Guarda el nuevo archivo como documento normal (`.docx` o `.odt`).

---

### 9. Automatización adicional

Si el programa lo permite, configura que al abrir un nuevo documento basado en la plantilla:

* Se actualice automáticamente la fecha.
* Se inserte un número consecutivo de versión o documento (campo “Nº de versión”).
* Se muestre un cuadro de diálogo solicitando el nombre del autor si está vacío.

---

### 10. Exportación y gestión de plantillas

* Exporta el documento final en **PDF**.
* Guarda la plantilla en una carpeta compartida del grupo.
* Redacta una breve nota explicando:

  > Qué ventajas tiene trabajar con plantillas en equipos que comparten documentos.

---

**Resultado esperado:**
Una plantilla funcional, coherente y lista para reutilizar en informes, cartas, proyectos o formularios.

---


