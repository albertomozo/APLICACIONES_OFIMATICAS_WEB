## Filosofía de la Documentación Dual: "Mismo Concepto, Distinta Herramienta"

Tu documentación debe tener una sección principal para el **Concepto (El "Qué" y el "Por qué")**, que es 99% idéntico en ambas plataformas. Luego, tendrás sub-secciones para la **Implementación (El "Cómo")**.

**Estructura de cada tema:**

1.  **Concepto:** ¿Qué es una referencia absoluta? (Es universal).
2.  **Implementación:**
    * 🔵 **[Excel]:** Así se aplica (ej. atajo F4).
    * 🟢 **[Google Sheets]:** Así se aplica (ej. atajo F4).
3.  **Diferencia Clave (Si existe):** *En Google Sheets, además, puedes hacer esto...*

---

## Estructura Modular Dual (Excel y Google Sheets) - 50 Horas

### Módulo 1: Fundamentos (Aprox. 6 horas)

* **Concepto:** ¿Qué es una celda, fila, columna, hoja? (Idéntico).
* **Enfoque Dual: La Interfaz**
    * 🔵 **[Excel]:** La "Cinta de Opciones" (Ribbon). Mostrar captura.
    * 🟢 **[Google Sheets]:** La "Barra de Menús" (más clásica). Mostrar captura.
* **Concepto:** Introducción de datos (Texto, Números, Fechas) (Idéntico).
* **Enfoque Dual: El "Alcance" - Colaboración vs. Escritorio**
    * 🔵 **[Excel]:** Foco en el trabajo *offline* y potencia de escritorio. (Aunque Excel Online existe).
    * 🟢 **[Google Sheets]:** Foco en la **colaboración** en tiempo real. Este es su ADN. Debe ser el primer ejemplo práctico de Sheets (compartir un archivo y editarlo dos personas a la vez).

### Módulo 2: Fórmulas y Funciones Básicas (Aprox. 8 horas)

* **Concepto:** `SUMA`, `PROMEDIO`, `MAX`, `MIN`, `CONTAR`, `CONTARA`.
* **Enfoque Dual:** ¡Ninguno! **Estas funciones son 100% idénticas.**
    * `=SUMA(A1:A10)` funciona exactamente igual en ambas.
    * Las referencias Relativas (A1) y Absolutas ($A$1) y el atajo F4 son idénticos.
* **Ejemplo Práctico:** El "Boletín de Notas" o "Gastos Mensuales" se construye igual en las dos.

### Módulo 3: Formato y Presentación (Aprox. 6 horas)

* **Concepto:** Formato de moneda, porcentaje, bordes, alineación (Idéntico).
* **Enfoque Dual: Formato Condicional**
    * El concepto es el mismo ("si > 100, pintar en rojo").
    * **Implementación:** Los menús para configurarlo son diferentes. Aquí necesitas dos mini-tutoriales con capturas de pantalla lado a lado.
        * 🔵 **[Excel]:** *Inicio -> Formato Condicional -> Reglas...*
        * 🟢 **[Google Sheets]:** *Formato -> Formato Condicional -> Se abre panel lateral...*

### Módulo 4: Gestión de Datos (Aprox. 8 horas)

* **Concepto:** Ordenar y Filtrar (Idéntico).
* **Enfoque Dual: La Gran Diferencia**
    * 🔵 **[Excel]:** El poder de **"Formato como Tabla" (Ctrl+T)**. Esto es fundamental en Excel (rangos dinámicos, referencias estructuradas).
    * 🟢 **[Google Sheets]:** No tiene un "Formato como Tabla" equivalente. Su fortaleza son las **"Vistas de Filtro" (Filter Views)**, que permiten a un usuario filtrar datos sin afectar lo que ven los demás colaboradores. Esto es clave para el trabajo en equipo.
* **Enfoque Dual: Validación de Datos**
    * Concepto idéntico (crear listas desplegables).
    * Implementación: Los menús son diferentes. Requiere capturas de ambos.

### Módulo 5: Funciones Intermedias (El "Alcance") (Aprox. 10 horas)

Aquí es donde el enfoque dual se vuelve más importante.

* **Concepto Común:** La lógica `SI` (IF) y `BUSCARV` (VLOOKUP) es idéntica.
* **Concepto Moderno Común:** `BUSCARX` (XLOOKUP) ya existe en ambas plataformas (en Excel 365 y Sheets). Es mejor enseñar esta que `BUSCARV`.
* **Enfoque Dual: Funciones Exclusivas (¡El "Alcance" real!)**
    * 🔵 **[Excel]:** Su poder radica en la integración con **Power Query** (para importar y transformar datos) y funciones más complejas de análisis de datos (que quizás se escapan de 50h, pero hay que mencionarlas).
    * 🟢 **[Google Sheets]:** Tiene funciones únicas que demuestran su "alcance" conectado a la web:
        * `QUERY`: La función "joya de la corona". Permite usar sintaxis de SQL para consultar datos. *Ejemplo: `=QUERY(A1:D100; "SELECT B, SUM(D) WHERE A = 'Ventas' GROUP BY B")`*.
        * `FILTER`: Una forma mucho más sencilla que en Excel (versiones antiguas) de filtrar datos con una fórmula.
        * `GOOGLEFINANCE`: Para traer datos de acciones bursátiles.
        * `IMPORTHTML`, `IMPORTXML`: Para "scrapear" datos (tablas, listas) de páginas web.
        * `GOOGLETRANSLATE`: Para traducir texto entre celdas.

### Módulo 6: Visualización de Datos (Gráficos) (Aprox. 6 horas)

* **Concepto:** Cuándo usar un gráfico de barras, líneas o circular (Idéntico).
* **Enfoque Dual: El Editor de Gráficos**
    * La creación es similar (Seleccionar datos -> Insertar Gráfico).
    * **Implementación:** Los paneles de edición son muy diferentes.
        * 🔵 **[Excel]:** Usa la "Cinta de Opciones" contextual (pestañas de Diseño y Formato) y el símbolo `+` junto al gráfico.
        * 🟢 **[Google Sheets]:** Usa un panel/editor lateral muy intuitivo.
    * *Mini-Exclusiva de Sheets:* Las funciones `SPARKLINE` (minigráficos dentro de una celda) son más directas y fáciles de usar en Sheets.

### Módulo 7: Tablas Dinámicas (Aprox. 6 horas)

* **Concepto:** Resumir grandes volúmenes de datos (Idéntico).
* **Enfoque Dual: El Panel de Control**
    * **Implementación:** El resultado es el mismo, pero la interfaz de creación difiere.
        * 🔵 **[Excel]:** El clásico panel "Campos de Tabla Dinámica" a la derecha, con áreas para arrastrar (Filtros, Columnas, Filas, Valores).
        * 🟢 **[Google Sheets]:** Un panel lateral "Editor de tablas dinámicas" que usa "Sugerencias" (IA) y áreas para "Añadir".
    * Ambas plataformas usan **Segmentación de Datos (Slicers)**, que son filtros visuales.

---

## Tabla Resumen para tu Documentación (El "Alcance")

Te sugiero incluir esta tabla en tu documentación para que los alumnos entiendan el "alcance" de cada una:

| Característica | 🔵 Microsoft Excel | 🟢 Google Sheets |
| :--- | :--- | :--- |
| **Punto Fuerte** | Potencia de cálculo (Big Data), análisis offline, modelado financiero. | **Colaboración** en tiempo real, integración web, facilidad de acceso. |
| **Colaboración** | Posible (con Excel 365/Online) pero menos fluida. | **Nativa y superior**. Es su razón de ser. |
| **Funciones Únicas** | Funciones de Cubo, integración profunda con Power BI y Power Query. | `QUERY`, `FILTER`, `IMPORTHTML`, `GOOGLEFINANCE`, `GOOGLETRANSLATE`. |
| **Tablas de Datos** | **Tablas Estructuradas (Ctrl+T)** son superiores para gestionar datos. | **Vistas de Filtro** son superiores para colaborar sin molestarse. |
| **Rendimiento** | **Superior** para archivos muy grandes (cientos de miles de filas). | Más lento con archivos muy grandes, depende de la conexión a internet. |
| **Costo** | Licencia (Pago) | Gratuito |

Con este enfoque dual, tus alumnos saldrán del curso entendiendo la lógica de la herramienta, dándoles la flexibilidad de usar cualquiera de las dos plataformas profesionalmente.