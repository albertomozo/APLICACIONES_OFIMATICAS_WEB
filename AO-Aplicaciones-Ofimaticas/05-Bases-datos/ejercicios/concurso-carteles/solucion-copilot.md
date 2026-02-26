Suena a proyecto muy chulo para la ciudad y, bien montado, te puede quedar un “mini producto digital” muy profesional. Vamos a armarlo por piezas, usando solo el ecosistema Microsoft 365 que ya tienes: Forms + OneDrive/SharePoint + Power Automate (+ opcionalmente Power Apps/Power BI).

---

## 1. Arquitectura general del ecosistema

**Objetivo:**  
Un flujo completo desde que el participante sube el cartel hasta que el jurado lo ve, lo valora y se decide el ganador.

**Piezas:**

- **Microsoft Forms:**  
  - Formulario público/interno para inscripciones y subida de carteles.
- **OneDrive / SharePoint:**  
  - Carpeta/biblioteca donde se almacenan los archivos de los carteles.
- **SharePoint List o Library:**  
  - “Base de datos” con los metadatos: autor, título, seudónimo, estado, puntuaciones, etc.
- **Power Automate:**  
  - Flujos para:
    - Guardar archivos del formulario en OneDrive/SharePoint.
    - Crear/actualizar registros con estados.
    - Gestionar aprobaciones (jurado, comité, etc.).
- **Capa visual (galería):**
  - Página de SharePoint con webparts de galería.
  - O una app sencilla en Power Apps con vista tipo “galería de arte”.

---

## 2. Formulario en Microsoft Forms con subida de carteles

1. **Crear el formulario:**
   - Preguntas típicas:
     - **Nombre y apellidos** (o seudónimo si el concurso es anónimo).
     - **Correo electrónico**.
     - **Teléfono** (opcional).
     - **Título del cartel**.
     - **Aceptación de bases legales / RGPD**.
   - Pregunta de tipo **“Cargar archivo”**:
     - Limitar a **1 archivo**.
     - Tipo: imagen (JPG/PNG) o PDF según bases.
     - Tamaño máximo según lo que permita Forms.
     - Importante: solo funciona para usuarios de la organización; si quieres abierto al público general, habría que valorar alternativas (por ejemplo, subir a través de otra herramienta o permitir solo participantes con cuenta).

2. **Configuración:**
   - Definir si el formulario es:
     - **Solo organización** (más controlado, necesario para upload).
     - O abierto (pero entonces el upload tiene limitaciones).
   - Activar **notificación por correo** al recibir respuesta (opcional).

---

## 3. Almacenamiento de carteles en OneDrive/SharePoint

Aunque Forms guarda los archivos en una carpeta propia, lo ideal es **centralizar**:

1. **Crear carpeta/biblioteca destino:**
   - En **OneDrive** o mejor en un **sitio de SharePoint** del concurso (por ejemplo: “Concurso Carteles Semana Grande”).
   - Dentro, carpeta “Carteles 2026”.

2. **Estructura recomendada:**
   - Nombre de archivo estándar, por ejemplo:
     - `AÑO_IDRespuesta_Titulo.ext`  
       Ej.: `2026_1234_MareaDeColores.jpg`
   - Esto lo puedes construir en Power Automate.

---

## 4. Power Automate: flujo para capturar respuestas y archivos

Crea un flujo automático del tipo:

1. **Disparador:**
   - “Cuando se envía una respuesta nueva” en Microsoft Forms.
   - Acción siguiente: “Obtener detalles de la respuesta”.

2. **Obtener archivo(s) subidos:**
   - Acción “Obtener contenido del archivo” usando el ID del archivo que devuelve Forms.

3. **Guardar en OneDrive/SharePoint:**
   - Acción “Crear archivo” en la carpeta/biblioteca que has creado.
   - Nombre del archivo:
     - Combina campos del formulario (por ejemplo, título + ID de respuesta).

4. **Crear/actualizar registro en SharePoint List:**
   - Crea una **lista de SharePoint** llamada, por ejemplo, “Inscripciones Carteles 2026”.
   - Columnas sugeridas:
     - **Título del cartel** (Texto).
     - **Autor / Seudónimo**.
     - **Email**.
     - **Teléfono**.
     - **Enlace al archivo** (Hipervínculo o columna de tipo “Archivo” si usas biblioteca).
     - **Estado** (Choice: “Recibido”, “En revisión”, “Preseleccionado”, “Finalista”, “Ganador”, “Descartado”).
     - **Comentarios del jurado**.
     - **Puntuación media** (Número).
   - En el flujo, añade acción “Crear elemento” en la lista con todos estos datos.

---

## 5. Flujos de aprobación y estados de revisión

Aquí es donde el ecosistema se vuelve “vivo” y visual.

### 5.1. Flujo de aprobación básica

1. **Nuevo flujo en Power Automate:**
   - Disparador: “Cuando se crea un elemento” en la lista de SharePoint (o cuando el estado cambie a “En revisión”).
2. **Acción de aprobación:**
   - “Iniciar y esperar una aprobación”.
   - Asignar a:
     - Miembros del **jurado** o **comisión**.
   - Incluir:
     - Título del cartel.
     - Enlace al archivo.
     - Datos del autor (si no es anónimo).
3. **Resultado de la aprobación:**
   - Si **Aprobado**:
     - Cambiar columna **Estado** a “Preseleccionado” o “Finalista”.
   - Si **Rechazado**:
     - Cambiar **Estado** a “Descartado”.
   - Opcional: enviar correo al organizador con el resultado.

### 5.2. Flujo para varias rondas

Puedes tener varios estados y flujos:

- **Ronda 1:** Estado pasa de “Recibido” a “En revisión” → jurado A.
- **Ronda 2:** Los “Preseleccionados” pasan a “Finalistas” → jurado B.
- **Ronda final:** Selección de “Ganador” y “Accésits”.

Cada cambio de estado puede disparar un flujo distinto o un único flujo que actúe según el valor del estado.

---

## 6. Galerías de arte y visualización

### 6.1. Galería en SharePoint

1. **Crear una página moderna** en el sitio de SharePoint del concurso.
2. Añadir un **webpart de biblioteca de documentos** o **lista**:
   - Vista tipo **mosaico** o **galería**.
   - Mostrar miniaturas de los carteles (si están en biblioteca de documentos con vista de imágenes).
3. Crear **vistas filtradas**:
   - “Todos los carteles”.
   - “En revisión”.
   - “Preseleccionados”.
   - “Finalistas”.
   - “Ganador/es”.
4. Controlar permisos:
   - Vista pública solo con carteles **anónimos** (sin datos personales).
   - Vista privada para jurado con todos los datos.

### 6.2. App en Power Apps (opcional pero muy potente)

- Crear una app tipo **Canvas** conectada a la lista/biblioteca:
  - Pantalla de **galería** con las imágenes.
  - Filtros por estado, búsqueda por título, etc.
  - Pantalla de detalle con:
    - Cartel en grande.
    - Botones para cambiar estado (“Marcar como finalista”, “Descartar”, etc.).
- Esta app la puede usar el jurado en tablet/móvil durante las deliberaciones.

---

## 7. Paneles y estadísticas (opcional)

Si quieres ir un paso más allá:

- Conectar la lista de SharePoint a **Power BI**.
- Crear un informe con:
  - Número de carteles por día.
  - Distribución por estados.
  - Puntuaciones medias.
- Publicar el informe en el mismo sitio de SharePoint.

---

## 8. Roles y permisos

Para que el ecosistema funcione bien:

- **Organización / Admin:**
  - Control total sobre Forms, SharePoint, Power Automate.
- **Jurado:**
  - Lectura de carteles.
  - Edición de campos de estado y comentarios (en lista o app).
- **Público (si procede):**
  - Solo lectura de una galería filtrada y anonimizada.

---

Si quieres, en el siguiente paso podemos bajar al detalle “clic a clic” de algo concreto:  
por ejemplo, cómo configurar exactamente el flujo de Power Automate que coja el archivo de Forms y lo guarde en tu carpeta de OneDrive/SharePoint con el enlace en la lista. ¿Por dónde te apetece seguir, formulario, flujo o galería visual?