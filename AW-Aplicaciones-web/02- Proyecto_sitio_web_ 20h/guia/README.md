## 🎯 **Tema 1: Preparación del Entorno y Conceptos Base de WordPress**

Este tema introduce dónde y cómo trabajar con WordPress, sentando las bases del proyecto.

### **1.1. Conceptos Fundamentales del Entorno**

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Instalación Local vs. Hosting** | **Local:** Trabajar en tu PC (usando **LocalWP** o XAMPP/MAMP). Es rápido, gratuito y seguro para pruebas. **Hosting:** Trabajar en un servidor real online (como InfinityFree). Permite que el sitio sea público inmediatamente. El proyecto debe ser implementado en **uno de los dos**. |
| **`wp-admin`** | Es la URL de acceso al **Panel de Administración** de WordPress. Es el *back-end* del sitio, donde se gestionan contenidos, apariencia, plugins y usuarios. |
| **Base de Datos (DB)** | WordPress usa una base de datos (generalmente **MySQL**) para almacenar **todo el contenido dinámico**: entradas, páginas, comentarios, ajustes de usuarios y configuraciones de plugins. Si borras la DB, pierdes el contenido, no el código del sistema. |
| **Archivos del Sistema** | El código base de WordPress (PHP, JS, CSS) se almacena en el servidor o en tu PC. Se ubican en carpetas como `wp-content`, `wp-includes`, etc. |

-----

### **1.2. El Rol del Tema (Theme)**

El **Tema** es la cara visible de tu proyecto. Es una colección de archivos (HTML, CSS, PHP y JavaScript) que definen el diseño y la disposición de tu contenido.

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Tema (Theme)** | Controla la **apariencia general** (colores, tipografía, cabecera, pie de página) y la **estructura** de cómo se muestra el contenido de la DB al usuario. |
| **Temas Ligeros y Flexibles** | **Astra** y **GeneratePress** son *frameworks* de temas. No vienen con un diseño final muy marcado, pero son **rápidos** y se integran perfectamente con constructores visuales si los necesitaras. Son ideales para empezar un proyecto desde cero. |
| **Tema por Defecto** | **Twenty Twenty-Four** (o el que corresponda al año) es el tema oficial de WordPress, excelente para ver cómo funciona el **Editor de Sitio** (Site Editor) basado en bloques. |
| **Tema Hijo (Child Theme)** | Una carpeta separada que hereda las características del tema principal (**Tema Padre**). **Fundamental** si vas a tocar código CSS o PHP. Si modificas directamente el tema padre y este se actualiza, ¡perderás todos los cambios\! |

#### **Implementación Práctica en WordPress**

**Paso 1: Instalación de WordPress**

  * **Opción LocalWP:** Descarga e instala el programa. Haz clic en **"Create a new site"**, nombra tu proyecto, selecciona las credenciales (`admin` es común) y LocalWP hará la instalación automáticamente.
  * **Opción XAMPP:** Instala XAMPP (o MAMP). Descarga WordPress de *wordpress.org* y descomprime los archivos en la carpeta `htdocs` de XAMPP. Crea una base de datos a través de `http://localhost/phpmyadmin/`. Accede a la URL de tu carpeta para iniciar el instalador de WordPress.

**Paso 2: Acceso y Log-in**

1.  Abre tu navegador y ve a la URL de administración:
      * **Local:** `http://nombreproyecto.local/wp-admin`
      * **Remoto:** `https://midominio.com/wp-admin`
2.  Ingresa las credenciales de **Administrador**.

**Paso 3: Instalación y Activación del Tema**

1.  En el menú lateral, ve a **Apariencia → Temas**.
2.  Haz clic en el botón **"Añadir nuevo"**.
3.  Usa la barra de búsqueda para encontrar **Astra** o **GeneratePress**.
4.  Haz clic en **"Instalar"** y luego en **"Activar"**.

**Paso 4: Verificación del Tema Hijo (Opcional)**

  * Si no planeas añadir código personalizado (solo usar plugins y ajustes del tema), este paso es opcional.
  * Si planeas usar estilos personalizados, busca un generador online de **Child Themes** (o usa un plugin como **Child Theme Configurator**) e instálalo para garantizar la seguridad de tus cambios.

-----

## 🧩 **Tema 2: Estructura de Contenidos: Entradas, Páginas y Taxonomías**

Este tema explica la diferencia clave entre los tipos de contenido y cómo organizarlos.

### **2.1. Conceptos Fundamentales del Contenido**

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Entradas (Posts)** | Contenido **dinámico**, diseñado para ser parte de un *blog* o un **catálogo** que cambia frecuentemente. Se organizan por **Categorías** y **Fechas**. Se muestran en el *feed* principal. |
| **Páginas (Pages)** | Contenido **estático**, diseñado para información permanente (ej: *Contacto*, *Aviso Legal*, *Quiénes Somos*). No se organizan por fechas ni categorías. |
| **Taxonomía** | Es la ciencia de la **clasificación**. En WordPress, las taxonomías son las formas de agrupar contenido: **Categorías** y **Etiquetas (Tags)**. |
| **Categorías** | Taxonomía jerárquica y amplia (pueden tener subcategorías). **Obligatorias** para estructurar tu proyecto. |
| **Etiquetas (Tags)** | Taxonomía no jerárquica y específica (descriptores detallados). Complementan a las categorías, facilitando la búsqueda de detalles concretos. |

### **2.2. Implementación Práctica: Creación de Taxonomías y Entradas**

Tu proyecto requiere 6 categorías y 3 entradas por categoría.

**Paso 1: Creación de las Categorías**

1.  Ve a **Entradas → Categorías**.
2.  En el panel de la izquierda, introduce los datos para cada una de tus 6 categorías:
      * **Nombre:** (ej: "Motos Urbanas", "Coches Clásicos").
      * **Slug:** (ej: `motos-urbanas`). Déjalo vacío si quieres que WordPress lo genere automáticamente (recomendado).
      * **Descripción:** (Opcional, pero recomendado para temas compatibles).
3.  Haz clic en **"Añadir nueva categoría"**.

**Paso 2: Creación de las Entradas (Elementos Públicos)**

Aquí usarás el **Editor de Bloques (Gutenberg)**, la herramienta nativa de WordPress.

1.  Ve a **Entradas → Añadir nueva**.
2.  **Título:** Pon el nombre del elemento.
3.  **Descripción y Características (Bloques):**
      * Usa el **Bloque de Párrafo** para la descripción.
      * Usa el **Bloque de Lista** (`<ul>`, `<li>`) para las características.
4.  **Galería de Imágenes (Bloques):**
      * Haz clic en el botón `+` para añadir un nuevo bloque.
      * Busca y selecciona el bloque **"Galería"**.
      * Sube o selecciona tus **mínimo 3 imágenes**.
5.  **Asignación de Categoría:**
      * En la barra lateral derecha, asegúrate de estar en la pestaña **"Entrada"** (no "Bloque").
      * Expande la sección **"Categorías"** y **marca la casilla** de la categoría correspondiente al elemento.
6.  Haz clic en **"Publicar"**.

✔ **Repite este proceso 18 veces** (3 elementos x 6 categorías).

-----

### **2.3. Contenido Restringido y Roles (Memberships)**

Este es un concepto de **seguridad y monetización**. Consiste en restringir el acceso a partes del contenido solo a usuarios que han iniciado sesión (rol **Suscriptor**).

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Restricción de Contenido** | Mecanismo que usa el rol de un usuario para decidir si mostrar o no cierto contenido. |
| **Roles de Usuario** | Define qué puede hacer un usuario. El **Suscriptor** es el rol de acceso más bajo, perfecto para usuarios registrados que solo pueden ver contenido privado. |
| **Shortcodes** | Pequeñas etiquetas que los plugins interpretan para insertar funciones o, en este caso, **lógica**. `[member]...[/member]` le dice al plugin: "Ejecuta esta lógica: si el usuario es miembro, muestra lo de dentro". |

#### **Implementación Práctica: Uso del Plugin "Members"**

**Opción A: Members (Restricción por Bloque)**

1.  Instala y activa el plugin **Members**.
2.  Ve a la entrada donde quieres añadir el contenido privado y añádelo (texto, imágenes, etc.).
3.  Selecciona el **Bloque** o grupo de bloques que contienen la información privada.
4.  En la barra lateral de ajustes del bloque, busca la sección de visibilidad o permisos que añade el plugin **Members**.
5.  Configura la visibilidad para que **SÓLO** se muestre a usuarios con el rol **"Suscriptor"** (o el que desees).
6.  Guarda la entrada.

> ⚠️ **Prueba:** Para verificar, abre la entrada en una ventana de incógnito (no logueado). El contenido debe estar oculto. Luego, inicia sesión como usuario **mfrances** (Suscriptor) y verifica que el contenido es visible.

-----

## 🖼️ **Tema 3: Gestión Visual: Galerías, Sliders y Widgets**

Este tema aborda cómo presentar las imágenes de forma atractiva y cómo usar zonas comunes del diseño para publicidad.

### **3.1. Conceptos Fundamentales de Elementos Visuales**

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Slider (Carrusel)** | Componente de diseño que muestra una serie de imágenes o contenidos que rotan automáticamente o por interacción del usuario. Mejora la presentación visual en espacios reducidos. |
| **Galería** | Conjunto de imágenes dispuestas en cuadrícula. El bloque **"Galería"** de WordPress es simple, pero los plugins ofrecen más efectos y control. |
| **Widget** | Pequeño módulo que contiene contenido o funcionalidad (ej: un banner, una lista de entradas recientes, un buscador). Se colocan en **Áreas de Widget** predefinidas por el tema (Sidebar, Footer). |
| **Sidebar (Barra Lateral)** | Un área de widget común para mostrar contenido complementario al artículo principal. |

### **3.2. Implementación Práctica: Slider y Banners**

**Paso 1: Instalación del Plugin Slider (Smart Slider 3)**

1.  Ve a **Plugins → Añadir nuevo**.
2.  Busca y activa **Smart Slider 3** (o similar).

**Paso 2: Creación del Slider**

1.  Ve al panel de **Smart Slider 3** (nuevo menú lateral).
2.  Haz clic en **"New Project"** y luego en **"Create a New Slider"**.
3.  Sube las **mínimo 3 fotos** de un elemento.
4.  Configura el tamaño y la transición.
5.  Una vez guardado, el plugin te dará un **Shortcode** (ej: `[smartslider3 slider="X"]`).

**Paso 3: Inserción del Slider en la Entrada**

1.  Edita la entrada de tu elemento.
2.  Busca la sección donde estaba la galería simple.
3.  Añade un bloque de **"Shortcode"** y pega el código que te dio el plugin (ej: `[smartslider3 slider="X"]`).

**Paso 4: Creación de Banners Publicitarios (Widget)**

1.  Ve a **Apariencia → Widgets**.
2.  Localiza el área de widget donde quieres el banner (ej: **Sidebar** o **Footer Superior**).
3.  Haz clic en el `+` para añadir un nuevo bloque en esa área.
4.  Añade un bloque de **"HTML Personalizado"** si quieres control total, o un bloque de **"Imagen"**.

<!-- end list -->

  * **Si usas HTML Personalizado, pega el siguiente código:**

    ```html
    <a href="URL_DEL_ANUNCIANTE" target="_blank">
      <img src="URL_DE_LA_IMAGEN_DEL_BANNER" alt="Publicidad de Nuestro Patrocinador" style="width: 100%; height: auto;">
    </a>
    ```

<!-- end list -->

5.  Guarda los widgets para que el banner aparezca en tu sitio.

-----

## 📝 **Tema 4: Formularios, Interacción y Lógica Condicional**

Los formularios son la herramienta principal de interacción. Un plugin de formularios como **WPForms** no solo los crea, sino que también gestiona su envío y almacenamiento.

### **4.1. Conceptos Fundamentales de Formularios**

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Frontend vs. Backend** | El formulario que el usuario ve es el **Frontend**. El código que procesa el envío, valida los datos, y manda el email es el **Backend** (gestionado por el plugin). |
| **Validación** | El proceso de verificar que los datos cumplen los requisitos (ej: el campo Email tiene formato correcto, el campo Nombre no está vacío). Se gestiona marcando un campo como **"Obligatorio"** o **"Requerido"**. |
| **Campo Desplegable (Dropdown)** | Un campo que permite al usuario seleccionar **una sola opción** de una lista predefinida (ideal para seleccionar una categoría). |

### **4.2. Implementación Práctica: WPForms**

**Paso 1: Instalación de WPForms Lite**

1.  Ve a **Plugins → Añadir nuevo**.
2.  Busca y activa **WPForms Lite**.

**Paso 2: Formulario de Satisfacción (Público)**

1.  Ve a **WPForms → Añadir nuevo**.
2.  Nombra el formulario (ej: "Encuesta de Satisfacción").
3.  Usa los campos de tipo **"Rating"** (estrellas) o **"Checkbox"** para preguntas de valoración.
4.  En los ajustes del formulario, ve a **"Notificaciones"** para configurar a qué email deben llegar los resultados (generalmente el email del administrador).
5.  Copia el **Shortcode** que aparece al final o en la lista de formularios (ej: `[wpforms id="123"]`).
6.  Crea la **Página** "Encuesta" y pega el Shortcode.

**Paso 3: Formulario de Contacto Obligatorio**

1.  Crea un segundo formulario en WPForms (ej: "Contacto Principal").
2.  Añade los campos solicitados:
      * **Nombre:** (Campo "Simple Text" o "Name"). **Marca Requerido.**
      * **Email:** (Campo "Email"). **Marca Requerido.**
      * **Selección de Categoría/Elemento:** Añade un campo **"Dropdown"** (Lista desplegable). Rellena las opciones con las 6 categorías de tu proyecto.
      * **Mensaje:** (Campo "Paragraph Text").
3.  Copia el Shortcode del formulario.
4.  Crea la **Página** "Contacto" y pega el Shortcode.

**Paso 4: Formulario para Usuarios Registrados (Restricción)**

1.  Decide si quieres usar el formulario de contacto del paso 3 o crear uno nuevo.
2.  Crea la **Página** "**Zona de Usuarios**".
3.  Pega el Shortcode del formulario en esta página.
4.  **Aplica la restricción:** Usa el plugin **Members** (o similar) para que **toda la página** "**Zona de Usuarios**" (incluido el formulario) solo sea visible para el rol **Suscriptor**.

-----

## 🧭 **Tema 5: Navegación y Estructura Lógica (Menús)**

El menú es el mapa del sitio. Su correcta configuración es crucial para la usabilidad.

### **5.1. Conceptos Fundamentales de Navegación**

| Concepto | Explicación Detallada |
| :--- | :--- |
| **Menú Principal (Primary Menu)** | La barra de navegación principal, generalmente en la cabecera del sitio. Contiene los enlaces más importantes. |
| **Enlaces Personalizados** | Permiten añadir enlaces a URLs externas o a secciones específicas de tu web que no son páginas ni categorías. |
| **Submenús (Menús Desplegables)** | Se crean **anidando** elementos del menú (arrastrando un elemento ligeramente a la derecha bajo el elemento principal). |
| **Ubicación del Menú** | Cada tema define diferentes lugares donde se puede mostrar un menú (ej: "Header", "Footer", "Mobile Menu"). Debes asignar el menú que creas a la ubicación correcta. |

### **5.2. Implementación Práctica: Creación del Menú Principal**

**Paso 1: Creación y Asignación del Menú**

1.  Ve a **Apariencia → Menús**.
2.  En la parte superior, introduce un **Nombre del menú** (ej: "Menu Principal") y haz clic en **"Crear menú"**.
3.  En la sección **"Ajustes del menú"**, marca la casilla que corresponde a la **Ubicación** del menú principal de tu tema (ej: "Menú principal" o "Primary Menu").

**Paso 2: Añadir Elementos al Menú**

1.  En el panel izquierdo, bajo **"Añadir elementos del menú"**, expande las secciones:
      * **Páginas:** Añade "Inicio", "Encuesta", "Contacto" y "Zona de Usuarios".
      * **Categorías:** Añade tus 6 categorías.
      * **Enlaces Personalizados:** (Si necesitas enlazar a un blog externo o a una URL específica).
2.  Haz clic en **"Añadir al menú"**.

**Paso 3: Ordenar y Anidar**

1.  Arrastra y suelta los elementos en el orden deseado.
2.  Para crear un desplegable, arrastra el elemento secundario debajo del principal y muévelo **un poco a la derecha** (verás que se sangra).

**Paso 4: Restricción del Menú (Para Zona de Usuarios)**

1.  El enlace a la página "**Zona de Usuarios**" no debe ser visible para todos.
2.  Si usaste el plugin **Members**, a menudo añade una opción en cada elemento del menú (al expandirlo) para restringir su visibilidad a ciertos **Roles**.
3.  Expande el elemento **"Zona de Usuarios"** y configúralo para que sea visible **SÓLO** para usuarios logueados (Roles: Administrador, Editor, Autor, Suscriptor).
4.  Haz clic en **"Guardar menú"**.

-----

## 👥 **Tema 6: Gestión de Usuarios y Permisos (Roles)**

La gestión de usuarios es esencial para la seguridad y el flujo de trabajo editorial.

### **6.1. Conceptos Fundamentales de Roles**

| Rol | Capacidad Máxima | Ejemplo de Tarea |
| :--- | :--- | :--- |
| **Administrador** | Control total. **Puede** gestionar plugins, temas, código, ajustes y todos los usuarios. | Configuración inicial y mantenimiento del sitio. |
| **Editor** | Gestiona contenido. **Puede** publicar, editar y borrar **TODAS** las entradas y páginas, incluso las de otros. | Revisión y publicación final de contenidos. |
| **Autor** | Contribución. **Puede** escribir, editar y publicar **SUS PROPIAS** entradas. No puede editar las de otros. | Redactor de las entradas de los 6 elementos. |
| **Colaborador** | Redacción. **Puede** escribir y editar **SUS PROPIAS** entradas, pero **NO puede publicarlas**. | Redactor inicial cuyo trabajo debe ser aprobado por un Editor. |
| **Suscriptor** | Mínimo acceso. Solo puede gestionar su propio perfil y acceder a contenido privado. | Usuario **mfrances**, acceso a la "Zona de Usuarios". |
| **Publicador** | Rol no nativo de WP, a menudo creado por plugins como **Members** para dar permisos específicos de publicación. | Rol intermedio para supervisar y publicar contenido. |

### **6.2. Implementación Práctica: Creación de Usuarios**

**Paso 1: Acceso y Creación**

1.  Asegúrate de estar logueado como **Administrador**.
2.  Ve a **Usuarios → Añadir nuevo**.
3.  Rellena los campos para el primer usuario:
      * **Nombre de usuario:** `admin`
      * **Contraseña:** `root` (establece una fuerte en un sitio real).
      * **Rol:** **Administrador** (para el primer usuario).
4.  Haz clic en **"Añadir nuevo usuario"**.

**Paso 2: Creación del Usuario Suscriptor**

1.  Vuelve a **Usuarios → Añadir nuevo**.
2.  Rellena los datos para el usuario de prueba:
      * **Nombre de usuario:** `mfrances`
      * **Contraseña:** `mfrances`
      * **Rol:** **Suscriptor** (Este es tu usuario registrado de prueba).
3.  Añade este nuevo usuario.

**Paso 3: Creación de Roles Editoriales**

1.  Crea los usuarios **Autor** y **Editor**, asegurándote de asignar el rol correcto en la lista desplegable.
2.  Si el proyecto pide un rol **"Supervisor o Publisher"**:
      * Instala el plugin **Members**.
      * Ve a la configuración de **Members** y crea un nuevo rol llamado **"Publisher"** o **"Supervisor"**.
      * Asígnale permisos específicos (ej: puede publicar, pero no borrar plugins).
      * Crea el usuario y asígnale este nuevo rol.

-----

¿Te gustaría que diseñemos un **plan de prueba** para que los alumnos verifiquen si la restricción de contenido y los roles de usuario funcionan correctamente?