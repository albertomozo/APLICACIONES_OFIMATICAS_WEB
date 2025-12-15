## 💡 Ejercicios de Automatización de Datos con CSV y Listas Desplegables

### 1. 🌍 Ejercicio Básico: Datos Geográficos y Conversión

Este ejercicio se centra en la **importación directa**, la **limpieza básica** y la **creación de la lista desplegable más simple**.

#### **Enunciado:**

**Título:** **Análisis de Códigos ISO de Países**

**Objetivo:** Crear una herramienta de referencia rápida que use datos estandarizados de internet para validar entradas de usuario.

**Pasos a Seguir:**

1.  **Fuente de Datos:** Busca en internet un archivo CSV que contenga una lista de países, sus códigos de dos letras (ISO-alpha-2) y sus códigos de tres letras (ISO-alpha-3). (Sugerencia: "ISO 3166-1 country codes CSV").
2.  **Hoja de Importación (`Datos_Países`):**
    * Crea una nueva hoja de cálculo llamada `Datos_Países`.
    * Utiliza una fórmula o *script* de importación (como `IMPORTDATA` en Google Sheets o un conector de datos si usas Excel/otras herramientas) para cargar el CSV directamente en esta hoja.
    * Limpia la tabla para que solo queden tres columnas: `Nombre del País`, `Código Alfa-2`, y `Código Alfa-3`.
3.  **Hoja de Trabajo (`Conversor`):**
    * Crea una segunda hoja llamada `Conversor`.
    * En la celda **A2**, crea una **lista desplegable** que muestre todos los **Nombres de País** disponibles. La lista debe alimentarse dinámicamente de la columna de nombres en la hoja `Datos_Países`.
    * En las celdas **B2** y **C2**, usa la función de búsqueda (`BUSCARV`, `VLOOKUP`, o `INDICE` / `MATCH`) para mostrar automáticamente el **Código Alfa-2** y el **Código Alfa-3** correspondiente al país seleccionado en A2.

---

### 2. 📈 Ejercicio Intermedio: Datos Financieros y Filtrado Condicional

Este ejercicio introduce la necesidad de un **pre-procesamiento de datos** (filtrado, transformación) y el uso de **listas desplegables dependientes** o con **validación de entrada**.

#### **Enunciado:**

**Título:** **Explorador de Criptomonedas Históricas**

**Objetivo:** Crear un panel que permita al usuario seleccionar una criptomoneda y luego solo ver sus fechas de cotización disponibles.

**Pasos a Seguir:**

1.  **Fuente de Datos:** Busca un archivo CSV de datos históricos de cotización de criptomonedas (ej. de un sitio como Kaggle, o un *API* que ofrezca descarga en CSV). El archivo debe contener, como mínimo, columnas para `Símbolo` (ej. BTC, ETH, SOL), `Fecha`, y `Precio de Cierre`.
2.  **Hoja de Importación (`Datos_Brutos`):**
    * Importa el CSV a esta hoja.
3.  **Hoja de Preparación (`Monedas_Únicas`):**
    * Crea una hoja auxiliar.
    * Utiliza una función (ej. `UNIQUE` o una tabla dinámica) para generar una lista **única** y **ordenada** de todos los `Símbolos` de criptomonedas presentes en el archivo.
4.  **Hoja de Panel (`Análisis`):**
    * Crea la hoja `Análisis`.
    * En la celda **A2**, crea una **lista desplegable** alimentada por la lista de símbolos únicos de la hoja `Monedas_Únicas`.
    * En la celda **B2**, crea una **lista desplegable CONDICIONAL/DEPENDIENTE** que solo muestre las `Fechas` que corresponden a la criptomoneda seleccionada en A2. (Esto suele requerir funciones avanzadas como `FILTER`, `QUERY`, o la gestión de rangos dinámicos/nombrados).
    * En la celda **C2**, calcula el **Precio de Cierre** (o usa una búsqueda) para la `Moneda` y `Fecha` seleccionadas.

---

### 3. 🧪 Ejercicio Avanzado: Datos de Investigación y Concatenación

Este ejercicio exige la **manipulación de texto**, la **concatenación de datos** y la gestión de **múltiples categorías** para una selección detallada, simulando una base de datos de ítems.

#### **Enunciado:**

**Título:** **Inventario Químico del Laboratorio**

**Objetivo:** Crear una herramienta que permita seleccionar un compuesto químico basándose en su categoría y que muestre su fórmula, utilizando una clave de identificación generada automáticamente.

**Pasos a Seguir:**

1.  **Fuente de Datos:** Busca un CSV que contenga una lista de compuestos químicos, con columnas para `Categoría` (ej. Ácido, Base, Sal), `Nombre del Compuesto`, y `Fórmula Química`. (Sugerencia: bases de datos educativas o de referencia química).
2.  **Hoja de Importación (`Datos_Químicos`):**
    * Importa el CSV a esta hoja.
3.  **Generación de Clave Única:**
    * En la hoja `Datos_Químicos`, añade una columna nueva llamada `Clave_ID`.
    * En esta columna, crea una clave única y legible para cada compuesto, **concatenando** la `Categoría` y el `Nombre del Compuesto` (ej. `Ácido-Sulfúrico`, `Base-Hidróxido_de_Sodio`).
4.  **Hoja de Selección (`Búsqueda`):**
    * Crea la hoja `Búsqueda`.
    * En la celda **A2**, crea una **lista desplegable** que solo contenga los valores **únicos** de la columna `Categoría` (Ácido, Base, Sal, etc.).
    * En la celda **B2**, crea una **lista desplegable CONDICIONAL** que solo muestre los **Nombres del Compuesto** que pertenecen a la `Categoría` seleccionada en A2.
    * En la celda **C2**, calcula automáticamente el valor de la `Clave_ID` para el compuesto seleccionado.
    * En la celda **D2**, usa la `Clave_ID` (C2) como clave de búsqueda para encontrar y mostrar la **Fórmula Química** correspondiente.

