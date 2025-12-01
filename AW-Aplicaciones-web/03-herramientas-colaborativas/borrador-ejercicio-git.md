    ¡Absolutamente\! Integrar Git y GitHub es fundamental para el trabajo colaborativo en cualquier proyecto digital, ya sea código, documentación o gestión de *assets*.

Aquí tienes un **Ejercicio Práctico Detallado de GitHub** diseñado para que los alumnos comprendan el **flujo de trabajo profesional** de control de versiones y colaboración, utilizando el proyecto web de WordPress (UD2) como contexto.

-----

## 💻 Ejercicio Práctico UD 3: Control de Versiones y Colaboración con GitHub

**Duración Estimada:** 4 horas (práctica guiada y trabajo individual).

**Contexto del Ejercicio:** Estamos trabajando en equipo en la creación del sitio web de WordPress para la empresa (UD2). Usaremos GitHub para gestionar los archivos de estilos (`.css`) y la documentación del proyecto.

**Objetivos de Aprendizaje:**

1.  Crear un repositorio centralizado.
2.  Aprender a guardar cambios con **Commits**.
3.  Trabajar de forma segura con **Ramas** (*Branches*).
4.  Simular una revisión de trabajo con una **Solicitud de Extracción** (*Pull Request*).
5.  Gestionar un conflicto simple (simulación de trabajo en equipo).

-----

### FASE 1: Preparación del Entorno y Repositorio (Clonar)

En esta fase, crearemos el repositorio central y cada alumno lo "clonará" (descargará) a su máquina.

**Paso 1: Crear el Repositorio Central**

1.  Un alumno (el "Líder del Proyecto") crea un nuevo repositorio en GitHub.
2.  **Nombre del Repositorio:** `proyecto-wordpress-[Iniciales-del-Lider]`
3.  Marcar la casilla: **Initialize this repository with a README**.
4.  Configuración inicial: Elegir una **Licencia** (ej. MIT o sin licencia) y un archivo **.gitignore** (opcional, pero buena práctica para WordPress).

**Paso 2: Clonar el Repositorio a la Máquina Local**

1.  Cada alumno abre la terminal (o el **Git Bash**) en su ordenador.
2.  Va a la carpeta donde quiere guardar el proyecto (ej. `cd Documentos/Cursos`).
3.  Ejecuta el comando para clonar el repositorio creado en el Paso 1:
    ```bash
    git clone [URL-del-Repositorio]
    # Ejemplo: git clone https://github.com/albertomozo/proyecto-wordpress-am.git
    ```
4.  Entra en la carpeta clonada: `cd proyecto-wordpress-[nombre]`

-----

### FASE 2: Añadir Contenido y Guardar Cambios (Commit)

El repositorio está vacío excepto por el `README.md`. Vamos a añadir los archivos CSS de la plantilla de WordPress.

**Paso 3: Añadir el Archivo de Estilos Principal**

1.  Crea un nuevo archivo en la carpeta del proyecto llamado `style.css`.

2.  Añade el siguiente contenido básico (simulando los estilos de un tema de WordPress):

    ```css
    /*
    Theme Name: Mi Tema Personalizado
    Author: Equipo [X]
    Version: 1.0
    */

    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0; /* Color inicial: Gris claro */
        color: #333;
    }
    ```

**Paso 4: Guardar y Subir el Primer Paquete de Cambios**

1.  Informa a Git de que hay un nuevo archivo para rastrear:
    ```bash
    git add style.css
    ```
2.  Guarda el cambio de forma permanente en el historial local (Commit):
    ```bash
    git commit -m "feat: Añadido archivo base style.css para el tema de WordPress"
    ```
3.  Sube el cambio al repositorio central de GitHub (Push):
    ```bash
    git push origin main
    ```
    *Verificar en GitHub que el archivo `style.css` ya aparece en la rama `main`.*

-----

### FASE 3: Desarrollo Seguro (Ramas y Pull Request)

El objetivo es implementar una nueva funcionalidad (un "Modo Oscuro") sin tocar directamente el código principal (`main`).

**Paso 5: Crear una Rama de Trabajo**

1.  Crea una nueva rama para el desarrollo de la nueva funcionalidad y cambia a ella:
    ```bash
    git checkout -b feature/dark-mode
    ```
    *Ahora estamos trabajando en un espacio aislado.*

**Paso 6: Implementar el Cambio y Subirlo a la Rama**

1.  Modifica el archivo `style.css` **solo en la nueva rama**:
    ```css
    /* ... (contenido anterior) ... */

    /* Nueva funcionalidad: Modo Oscuro */
    .dark-mode {
        background-color: #333; /* Ahora es oscuro */
        color: #f0f0f0; /* Letras claras */
    }
    ```
2.  Guarda los cambios en la nueva rama:
    ```bash
    git add style.css
    git commit -m "feat: Implementación inicial de la clase dark-mode"
    ```
3.  Sube la nueva rama con los cambios a GitHub:
    ```bash
    git push origin feature/dark-mode
    ```

-----

### FASE 4: Revisión Colaborativa (Pull Request)

El *Pull Request* (PR) es la herramienta de colaboración. Permite que otro compañero revise el código antes de que se fusione con el proyecto principal.

**Paso 7: Crear una Solicitud de Extracción (Pull Request)**

1.  Ve a la página de GitHub del repositorio. GitHub detectará la nueva rama subida.
2.  Haz clic en el botón **"Compare & pull request"** o en la pestaña **"Pull requests"**.
3.  **Título del PR:** "Implementación del Modo Oscuro (Feature/dark-mode)".
4.  **Descripción:** Explica lo que se ha hecho.
5.  **Asigna a un compañero** (o al "Líder del Proyecto") como **Revisor**.

**Paso 8: Revisar y Fusionar (Merge)**

1.  El compañero asignado revisa los cambios. Puede dejar un **comentario** (simulando una corrección).
2.  Una vez aprobado (o simulando la aprobación), el Líder del Proyecto hace clic en **"Merge pull request"**.
3.  Confirma la fusión.

**Paso 9: Sincronizar la Rama Principal**

1.  Vuelve a la rama principal (`main`) en tu terminal:
    ```bash
    git checkout main
    ```
2.  Descarga los cambios que se acaban de fusionar en GitHub:
    ```bash
    git pull origin main
    ```
    *¡Felicidades\! Los cambios del modo oscuro ya están en el código principal (`main`) y el historial está limpio.*

-----

### ⚠️ FASE 5: Simulación de Conflictos (El Mantenimiento Complicado)

Aquí se introduce el concepto de que el trabajo en paralelo sin comunicación o sin entender el código lleva a errores.

**Paso 10: Crear un Conflicto Intencional**

1.  **Alumno A** (en la rama `main`) modifica la **LÍNEA 5** del `README.md` con: `El proyecto fue iniciado por el Alumno A.`
2.  **Alumno B** (en la rama `main`) modifica la **misma LÍNEA 5** del `README.md` con: `El proyecto está liderado por el Alumno B.`

**Paso 11: Subir los Cambios (Alumno A gana la carrera)**

1.  **Alumno A** sube su cambio primero:
    ```bash
    git add README.md
    git commit -m "docs: Actualización de autoría (Alumno A)"
    git push origin main
    ```

**Paso 12: Generar y Resolver el Conflicto (Alumno B pierde la carrera)**

1.  **Alumno B** intenta subir su cambio:
    ```bash
    git push origin main
    # Git fallará y dirá: "Updates were rejected"
    ```
2.  **Alumno B** intenta descargar los cambios para fusionarlos con los suyos:
    ```bash
    git pull origin main
    # ¡Aparece el temido CONFLICTO!
    ```
3.  **Alumno B** abre el `README.md` y ve las marcas de conflicto (`<<<<<<<`, `=======`, `>>>>>>>`).
4.  **Resolución:** El alumno debe decidir qué versión es la correcta, borrar las marcas de conflicto y guardar el archivo.
5.  **Finalización:**
    ```bash
    git add README.md
    git commit -m "fix: Resuelto conflicto de autoría y fusionado con Alumno A"
    git push origin main
    ```

-----

**Conclusión del Ejercicio:**

Pide a los alumnos que analicen el historial (*History*) de commits en GitHub. Deben ver cómo el historial de la rama `main` cuenta una historia de trabajo revisada y cómo el conflicto de la Fase 5 generó un *Commit* adicional, demostrando que **trabajar sin ramas ni comunicación (o sin entender el código) complica el mantenimiento y la historia del proyecto**.