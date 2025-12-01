## 📝 Ejercicio Práctico de Hojas de Cálculo (UD 4)

El objetivo de esta prueba es que los alumnos demuestren su habilidad para manejar referencias entre hojas, aplicar funciones lógicas y de búsqueda (`BUSCARV`, `INDICE+COINCIDIR`, etc.), y utilizar formatos condicionales.

### **Título del Ejercicio: Sistema Básico de Facturación en Google Sheets**

### **Objetivo:**

Crear un sistema de facturación en Google Sheets que permita generar una factura automáticamente al seleccionar un cliente y los productos que este ha consumido, utilizando datos almacenados en diferentes hojas.

### **Estructura del Archivo (3 Hojas):**

1.  **`Clientes`**: Lista de los clientes de la empresa.
2.  **`Productos`**: Catálogo de productos con precios y tipos impositivos.
3.  **`Factura`**: Plantilla para la generación de la factura.

### **Procedimiento Paso a Paso:**

#### **Paso 1: Configuración de la Hoja `Clientes`**

* **Crear la Hoja:** Nómbrala **`Clientes`**.
* **Columnas (Mínimo):**
    * **A:** `ID Cliente` (Valores únicos, por ejemplo: C001, C002...)
    * **B:** `Nombre/Razón Social`
    * **C:** `CIF/NIF`
    * **D:** `Dirección`
    * **E:** `Correo Electrónico` (Fundamental para el ejercicio posterior)
* **Contenido:** Rellenar con al menos **5 clientes** ficticios.

#### **Paso 2: Configuración de la Hoja `Productos`**

* **Crear la Hoja:** Nómbrala **`Productos`**.
* **Columnas (Mínimo):**
    * **A:** `Referencia` (Valores únicos, por ejemplo: P101, P102...)
    * **B:** `Descripción del Producto`
    * **C:** `Precio Unitario (€)` (Sin IVA)
    * **D:** `Tipo IVA (%)` (Utilizar distintos valores, por ejemplo: 21, 10, 4, 0).
* **Contenido:** Rellenar con al menos **8 productos** ficticios.

#### **Paso 3: Diseño y Funcionalidad de la Hoja `Factura`**

* **Creación y Diseño:**
    * Diseñar una plantilla de factura profesional y clara (encabezado con datos de la empresa, sección de datos del cliente, tabla de detalle de productos y sección de totales).

* **Implementación de la Lógica (Fórmulas y Validación de Datos):**

| Sección | Elemento | Requisito / Función a Aplicar | Puntos Clave |
| :--- | :--- | :--- | :--- |
| **Datos del Cliente** | **Nombre del Cliente** | Implementar una **Lista Desplegable** que permita seleccionar el `ID Cliente` de la hoja `Clientes`. | *Usar **Validación de Datos**.* |
| | **CIF, Dirección, Correo** | Al seleccionar el `ID Cliente`, estos campos deben rellenarse automáticamente buscando los datos en la hoja `Clientes`. | *Usar la función **`BUSCARV`** o **`INDICE/COINCIDIR`**.* |
| **Detalle de la Factura** | **Referencia Producto** | Crear **Listas Desplegables** en la columna de referencias para seleccionar productos de la hoja `Productos`. | *Usar **Validación de Datos**.* |
| | **Descripción, Precio Unitario, Tipo IVA** | Rellenar estos campos automáticamente en base a la `Referencia Producto` seleccionada. | *Usar la función **`BUSCARV`** o **`INDICE/COINCIDIR`** (debe manejar diferentes tasas de IVA).* |
| | **Subtotal de Línea** | Calcular el subtotal de cada línea: `Cantidad * Precio Unitario`. | *Operación básica.* |
| **Totales** | **Base Imponible** | Suma de todos los `Subtotal de Línea`. | *Usar la función **`SUMA`**.* |
| | **IVA Total** | Suma del IVA calculado para cada línea. | *Fórmula de línea: `Subtotal de Línea * Tipo IVA / 100`. Sumar todos los resultados.* |
| | **Importe Total** | `Base Imponible + IVA Total`. | *Operación básica.* |

#### **Paso 4: Formato Condicional (Mejora)**

* Aplicar un **Formato Condicional** que resalte en la tabla de detalle aquellas filas donde la `Cantidad` esté vacía o sea cero, para evitar errores en el cálculo.

### **Instrucciones de Entrega:**

* El archivo de Google Sheets debe ser compartido con el profesor con permisos de **Editor**.
* Debe contener las tres hojas con los datos y la lógica funcionando.

---

Este ejercicio es la base del ejercicio de la UD04 de AW

## 🤖 Ejercicio de Automatización Web (UD 4 - Aplicaciones Web)

