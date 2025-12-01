# 🔄 MÓDULO 7: Tablas Dinámicas

**Duración estimada:** 6 horas

> **Objetivo del módulo:**
> Aprender a resumir grandes volúmenes de datos de forma flexible mediante tablas dinámicas y comprender las diferencias entre Excel y Google Sheets en su creación y edición.

---

# 7.1 ¿Qué es una tabla dinámica?

Una tabla dinámica es una herramienta que permite:

* **Resumir** grandes conjuntos de datos.
* **Agrupar** información por categorías.
* **Reorganizar** los datos en segundos (arrastrar/soltar).
* **Aplicar cálculos automáticos** como suma, promedio, conteo.
* **Filtrar** y **segmentar** datos de forma visual.

> **Idea clave:**
> Una tabla dinámica NO altera los datos originales; solo muestra un resumen dinámico.

---

# 7.2 Componentes de una tabla dinámica (idénticos en Excel y Sheets)

Todas las tablas dinámicas tienen:

* **Filas:** categorías principales (ej. vendedores, productos).
* **Columnas:** subcategorías (ej. meses, regiones).
* **Valores:** cálculos (suma, promedio, conteo).
* **Filtros:** para incluir/excluir categorías.
* **Segmentadores/Slicers:** filtros visuales (botones).

Ejemplo de estructura típica:

```
Filas: Vendedor
Columnas: Mes
Valores: Suma de Ventas
Filtros: Región
```

---

# 7.3 Crear una tabla dinámica

## Pasos comunes (Excel y Sheets)

1. Seleccionar el rango de datos.
2. Ir a **Insertar → Tabla dinámica**.
3. Elegir:

   * Nueva hoja
   * Hoja existente
4. Añadir campos a las áreas: Filas, Columnas, Valores, Filtros.

---

# 7.4 Enfoque Dual: Diferencias entre Excel y Google Sheets

---

## 🔵 Excel: Panel de Campos de Tabla Dinámica

Excel utiliza un panel a la derecha de la pantalla con áreas claramente organizadas:

* **Filtros**
* **Columnas**
* **Filas**
* **Valores**

Además, incorpora:

* Diseño tabular
* Estilos rápidos
* Actualización automática
* Cambiar el cálculo (suma, promedio, etc.)
* Agrupación por fechas (años, trimestres, meses)
* Segmentadores visuales muy avanzados

📘 **Ventaja:** Excel es más potente para análisis profesional, contabilidad, BI básico y grandes volúmenes.

---

## 🟢 Google Sheets: Editor lateral simplificado

Sheets abre un panel lateral con dos secciones:

### **1) Configurar**

* Rango de datos
* Filas
* Columnas
* Valores
* Filtros

### **2) Sugerencias (IA integrada)**

Sheets propone automáticamente:

* “Total por categoría”
* “Promedio por mes”
* “Productos más vendidos”

📘 **Ventaja:** Muy intuitivo, ideal para estudiantes principiantes y trabajo colaborativo.

---

# 7.5 Segmentadores / Slicers

Ambas plataformas permiten añadir **segmentadores**, que son filtros visuales.

### ✔️ En Excel

Insertar → Segmentación de datos
Permite:

* Filtrar por botón
* Combinar varios segmentadores
* Estilos visuales avanzados

### ✔️ En Google Sheets

Datos → Añadir Segmentador
Permite:

* Filtrar por valores
* Conectarse a la tabla dinámica o al rango original
* Funciona muy bien en entornos colaborativos

---

# 7.6 Agrupación de datos (Excel vs. Sheets)

| Acción                        | Excel                             | Sheets                           |
| ----------------------------- | --------------------------------- | -------------------------------- |
| Agrupar fechas por año/mes    | ✔️ Automático al arrastrar fechas | ✔️ Manual mediante “Agrupar por” |
| Agrupar números en intervalos | ✔️ Muy potente                    | ✖️ Limitado                      |
| Expandir/contraer categorías  | ✔️ Sí                             | ✔️ Sí                            |

---

# 7.7 Casos prácticos paso a paso

---

## ✔️ Caso 1: Resumen de ventas por vendedor

Dado un rango con columnas: Fecha – Vendedor – Producto – Importe

**Configurar:**

* Filas → Vendedor
* Valores → Suma del Importe

---

## ✔️ Caso 2: Ventas por mes y producto

* Filas → Producto
* Columnas → Mes
* Valores → Suma del Importe

Excel agrupará las fechas automáticamente.
Sheets permite agruparlas desde el panel lateral.

---

## ✔️ Caso 3: Filtro por región

* Filtros → Región
* Comprobar cómo cambia el resumen según la región seleccionada.

---

## ✔️ Caso 4: Segmentador visual (Slicer)

(Excel)
Insertar → Segmentación → Seleccionar “Vendedor”.

(Sheets)
Datos → Añadir segmentador → Conectar con la tabla dinámica.

---

## ✔️ Caso 5: Analizar solo los 5 productos más vendidos

* Añadir una columna auxiliar “Ventas Totales” (si fuera necesario).
* Ordenar dentro de la tabla dinámica.
* Filtrar por “Top 5”.

---

# 7.8 Ejercicios del módulo

### 📝 Ejercicio 1

Crea una tabla dinámica que muestre las ventas totales por producto.

### 📝 Ejercicio 2

Muestra la suma de ventas por vendedor y mes.

### 📝 Ejercicio 3

Añade un filtro de fecha para ver solo las ventas del último trimestre.

### 📝 Ejercicio 4

Inserta un segmentador para filtrar por producto.

### 📝 Ejercicio 5

En Google Sheets, crea una tabla dinámica usando **Sugerencias**, y describe qué te ha generado la IA.

---

# 7.9 Conclusión del módulo

| Tema             | Excel                        | Sheets                          |
| ---------------- | ---------------------------- | ------------------------------- |
| Complejidad      | Muy alto                     | Medio                           |
| Potencia         | Superior (análisis avanzado) | Excelente para uso colaborativo |
| Panel de control | Muy completo                 | Simple, intuitivo               |
| Segmentadores    | Muy potentes                 | Modernos y colaborativos        |

> 🎯 **Idea clave:**
> Excel es la referencia profesional para análisis con tablas dinámicas; Google Sheets es ideal para practicidad, rapidez y trabajo en equipo.


