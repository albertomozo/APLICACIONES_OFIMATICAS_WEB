Aquí tienes el **Módulo 6 completo** siguiendo el índice original, con enfoque dual Excel / Google Sheets, contenido pedagógico, ejemplos prácticos y ejercicios.

---

# 📈 MÓDULO 6: Visualización de Datos (Gráficos)

**Duración estimada:** 6 horas

> **Objetivo del módulo:**
> Aprender a representar datos visualmente mediante gráficos, elegir el tipo adecuado según el propósito y comprender las diferencias entre los editores de gráficos de Excel y Google Sheets.

---

# 6.1 ¿Por qué usar gráficos?

Los gráficos permiten:

* Detectar tendencias.
* Comparar valores.
* Encontrar patrones rápidamente.
* Presentar resultados de forma visual y comprensible.

---

# 6.2 Tipos de gráficos más comunes (idénticos en Excel y Sheets)

| Tipo de gráfico       | Cuándo usarlo                                 |
| --------------------- | --------------------------------------------- |
| **Barras / Columnas** | Comparaciones entre categorías.               |
| **Líneas**            | Evolución en el tiempo (mensual, anual…).     |
| **Circular (tarta)**  | Distribución porcentual.                      |
| **Área**              | Acumulación de valores a lo largo del tiempo. |
| **Dispersión (XY)**   | Relaciones entre variables numéricas.         |

> 🎓 Recomendación didáctica:
> No mezclar demasiados colores, ni usar gráficos 3D (aportan ruido visual y suelen dificultar la lectura).

---

# 6.3 Crear un gráfico: Pasos comunes (Excel y Sheets)

1. Seleccionar los **datos** (encabezados incluidos).
2. Menú **Insertar → Gráfico**.
3. Elegir tipo de gráfico.
4. Aplicar ajustes:

   * Títulos
   * Etiquetas
   * Leyendas
   * Colores
   * Formato

---

# 6.4 Enfoque Dual: El Editor de Gráficos

Aquí aparecen diferencias importantes entre las plataformas.

---

## 🔵 6.4.1 Excel: Cinta de Opciones + Panel contextual

Excel usa una combinación de:

### 1) **Cinta de opciones (pestañas contextualizadas)**

Aparecen nuevas pestañas cuando seleccionas un gráfico:

* **Diseño del gráfico**
* **Formato**

Incluyen herramientas para:

* Cambiar tipo de gráfico
* Seleccionar datos
* Estilos rápidos
* Agregar elementos del gráfico

### 2) **El botón “+” junto al gráfico**

Permite añadir o quitar:

* Títulos
* Etiquetas de datos
* Líneas de tendencia
* Leyenda
* Barras de error

📘 **Ventaja:** Excel ofrece más control de formato y mejor acabado visual profesional.

---

## 🟢 6.4.2 Google Sheets: Panel lateral intuitivo

En Google Sheets, al insertar un gráfico se abre un **panel lateral** dividido en:

### **Configurar**

* Tipo de gráfico
* Rango de datos
* Series
* Eje horizontal / vertical

### **Personalizar**

* Estilo del gráfico
* Etiquetas
* Leyenda
* Series
* Bordes
* Fondo

📘 **Ventaja:** Muy fácil de usar, ideal para aprendizaje rápido y edición colaborativa.

---

# 6.5 Funciones especiales en Google Sheets: Mini-gráficos con SPARKLINE

Google Sheets incluye una función exclusiva:

## `SPARKLINE`

Inserta un pequeño gráfico dentro de una celda.

### Ejemplo:

```
=SPARKLINE(B2:M2)
```

### Tipos compatibles:

* Línea
* Barra
* Ganancias/pérdidas

🎯 **Excelente para dashboards o resumen de tendencias.**

---

# 6.6 Buenas prácticas al crear gráficos

* Usa **títulos claros** (“Ventas por mes 2024”).
* Mantén los colores consistentes (mismo color para la misma categoría).
* No sobrecargues el gráfico de etiquetas.
* Evita la decoración innecesaria.
* Asegúrate de que el gráfico responde a una **pregunta clara**.

---

# 6.7 Casos prácticos paso a paso

## ✔️ Caso 1: Gráfico de barras – Ventas por producto

1. Crear una tabla con productos y ventas.
2. Seleccionar la tabla.
3. Insertar un gráfico de columnas.
4. Añadir título: “Ventas por producto”.
5. Ordenar los datos antes o después según convenga.

---

## ✔️ Caso 2: Gráfico de líneas – Evolución de ingresos

1. Tabla con meses (enero–diciembre) y valores.
2. Insertar gráfico → “Gráfico de líneas”.
3. Personalizar colores.
4. Añadir etiquetas de datos solo si son necesarias.

---

## ✔️ Caso 3: Gráfico circular – Distribución de gastos

1. Tabla con categorías y porcentajes.
2. Insertar gráfico de sectores.
3. Activar las “Etiquetas de porcentaje”.

---

## ✔️ Caso 4: Mini-gráficos SPARKLINE (Sheets)

En una tabla de ventas mensuales por vendedor:

```
Vendedor | Ene | Feb | Mar | ... | Mini-grafico
Ana      | 120 | 140 | 160 | ... | =SPARKLINE(B2:M2)
```

---

# 6.8 Ejercicios del módulo

## 📝 Ejercicio 1: Gráfico de columnas

Crea un gráfico de columnas para comparar las ventas de cinco productos.

## 📝 Ejercicio 2: Gráfico de líneas

Con una tabla mensual, crea un gráfico de líneas que muestre la evolución de ingresos.

## 📝 Ejercicio 3: Gráfico circular

Representa cómo se distribuye un presupuesto mensual entre categorías.

## 📝 Ejercicio 4: Personalización (Excel vs Sheets)

Replica el mismo gráfico en ambas plataformas y describe qué diferencias encuentras en:

* panel de edición
* opciones avanzadas
* estilo final

## 📝 Ejercicio 5 (Sheets): SPARKLINE

Genera un mini-gráfico dentro de una celda con la tendencia de ventas de un vendedor.

---

# 6.9 Conclusión del módulo

| Tema              | Excel                       | Sheets                      |
| ----------------- | --------------------------- | --------------------------- |
| Tipos de gráficos | Idénticos                   | Idénticos                   |
| Editor            | Más profesional y detallado | Más simple e intuitivo      |
| Mini-gráficos     | Menos directos              | `SPARKLINE` integrado       |
| Colaboración      | Compartible                 | Colaboración en tiempo real |

> 🎯 **Idea clave:**
> Dominar los gráficos permite convertir datos en historias. Excel ofrece un acabado profesional; Google Sheets destaca en simplicidad y rapidez.

S