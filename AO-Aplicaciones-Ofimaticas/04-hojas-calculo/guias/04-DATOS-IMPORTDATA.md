## 🛠️ Guía Paso a Paso: Uso de la Fórmula `IMPORTDATA`

La función `IMPORTDATA` es sencilla y solo requiere un argumento: la URL del archivo de datos.

### 1\. Entender la Sintaxis

La sintaxis básica de la fórmula es:

$$=IMPORTDATA("URL\_del\_archivo")$$

  * **`URL_del_archivo`**: Debe ser la dirección web **completa** (que empieza por `http://` o `https://`) que apunta directamente al archivo CSV o TSV.

### 2\. Conseguir la URL Correcta

Este es el paso más crucial y a menudo el que más errores genera en los principiantes.

1.  **Buscar el Archivo:** El alumno debe buscar en Google (ej: "ISO country codes CSV file").
2.  **Verificación:** Cuando encuentre un enlace que parezca ser el archivo, **debe hacer clic derecho sobre el enlace y seleccionar "Copiar dirección del enlace"** (o similar).
3.  **Comprobación (Recomendado):** Para asegurarse de que la URL es correcta, el alumno debe pegarla en una nueva pestaña del navegador. Si el navegador automáticamente descarga el archivo o muestra el texto plano del CSV, la URL es correcta. Si lo lleva a una página web de descarga o a una página de presentación, la URL es incorrecta y no funcionará con `IMPORTDATA`.

> **Ejemplo de URL Funcional:** `https://raw.githubusercontent.com/datasets/country-codes/main/data/country-codes.csv`

### 3\. Aplicar la Fórmula en Google Sheets

1.  **Abrir la Hoja de Cálculo:** Abre la hoja de cálculo de Google Sheets donde deseas importar los datos (en el ejercicio, la hoja `Datos_Países`).

2.  **Seleccionar la Celda:** Selecciona la celda donde quieres que comiencen los datos. Generalmente, es la celda **A1**.

3.  **Introducir la Fórmula:** Pega la URL que conseguiste en el paso anterior dentro de la fórmula, usando comillas dobles.

    > **Ejemplo:**
    > `=IMPORTDATA("https://raw.githubusercontent.com/datasets/country-codes/main/data/country-codes.csv")`

4.  **Ejecutar:** Presiona **Enter**.

El programa comenzará a cargar los datos y, después de unos segundos, la tabla de datos aparecerá en la hoja, comenzando desde A1.

([https://example.com/data.csv](https://www.google.com/search?q=https://example.com/data.csv))") in A1, showing the resulting imported data filling several columns and rows below it]

### 4\. Solución de Problemas Comunes (Debugging)

Es vital que los alumnos aprendan a diagnosticar por qué la fórmula no funciona:

| Problema Común | Descripción del Error | Solución para los Alumnos |
| :--- | :--- | :--- |
| **Error \#N/A** | La celda muestra `#N/A` o un mensaje como "Recurso no encontrado" o "Error al analizar". | La **URL no es la correcta**. No apunta directamente al archivo CSV. Vuelve al Paso 2 y verifica la URL en el navegador. |
| **Error de Carga** | La celda muestra "Cargando..." por mucho tiempo y luego falla. | El archivo es **demasiado grande** (demasiadas filas o columnas) para que Sheets lo maneje, o el servidor está caído. Deben buscar una fuente de datos más pequeña o estable. |
| **Datos Mal Separados** | Todos los datos aparecen en la Columna A, en lugar de estar en diferentes columnas. | El archivo es un **CSV** (Valores Separados por Coma) pero usa otro delimitador (como punto y coma, `;`). La función solo funciona con coma (CSV) o tabulación (TSV). Si el delimitador es diferente, necesitarán herramientas de *scripting* o importarlo a Excel primero. **Para la tarea, deben buscar un CSV estándar.** |
| **Error de Permisos** | El sitio web requiere un *login* o no es de acceso público. | `IMPORTDATA` solo funciona con archivos **públicos**. Deben buscar una fuente de datos que no requiera autenticación. |

-----

**Ejercicio 1: Análisis de Códigos ISO de Países**

Aquí tienes una URL de un archivo CSV público que contiene los códigos de países más comunes, ideal para usar con `IMPORTDATA`:

### 🔗 URL para el Ejercicio 1

**Fuente de Datos:** Lista de Códigos de Países (del repositorio "datasets/country-codes" de GitHub)

**URL (Apta para `IMPORTDATA`):**

```
https://raw.githubusercontent.com/datasets/country-codes/main/data/country-codes.csv
```

### 📋 Pasos de Práctica para el Alumno

Los alumnos pueden seguir estos pasos para completar la primera parte del ejercicio:

#### Paso 1: Importar los Datos

1.  Abre Google Sheets y crea una hoja llamada `Datos_Países`.

2.  En la celda **A1**, introduce la siguiente fórmula:

    ```
    =IMPORTDATA("https://raw.githubusercontent.com/datasets/country-codes/main/data/country-codes.csv")
    ```

#### Paso 2: Filtrar y Limpiar la Tabla

El CSV importado tendrá muchas columnas. Los alumnos deben usar las herramientas de hojas de cálculo (o funciones como `QUERY` si ya tienen ese nivel) para aislar solo las tres columnas requeridas:

1.  **Nombre del País** (Columna `CLDR display name` o similar)
2.  **Código Alfa-2** (Columna `ISO3166-1-Alpha-2`)
3.  **Código Alfa-3** (Columna `ISO3166-1-Alpha-3`)

#### Paso 3: Crear la Lista Desplegable (Validación de Datos)

1.  Crea una nueva hoja llamada `Conversor`.
2.  Selecciona la celda **A2** en la hoja `Conversor`.
3.  Ve al menú **Datos** \> **Validación de datos** (o **Reglas de validación de datos**).
4.  Como **Criterio**, selecciona **"Lista a partir de un intervalo"**.
5.  Para el intervalo, selecciona toda la columna que contiene los **Nombres de País** en la hoja `Datos_Países` (ej. `Datos_Países!B:B`).

#### Paso 4: Usar la Búsqueda

Una vez que la lista desplegable funcione en **A2** de la hoja `Conversor`, los alumnos deben usar una función de búsqueda (como `BUSCARV` en español o `VLOOKUP` en inglés) para rellenar automáticamente las celdas **B2** y **C2**.

**Ejemplo de BUSCARV (asumiendo que los nombres de país están en la columna 2 del rango importado):**

  * En **B2** (para el Código Alfa-2):

    ```
    =BUSCARV(A2; Datos_Países!A:Z; índice_columna_alfa_2; FALSO)
    ```

    (Donde `índice_columna_alfa_2` es el número de la columna que contiene el Código Alfa-2 dentro del rango `Datos_Países!A:Z`).

Este ejercicio práctico les enseñará el ciclo completo de obtención de datos, limpieza y uso interactivo.

-----

¿Te gustaría que preparemos ahora un ejemplo de solución (la fórmula `BUSCARV` completa) para el **Paso 4** usando la URL de ejemplo?