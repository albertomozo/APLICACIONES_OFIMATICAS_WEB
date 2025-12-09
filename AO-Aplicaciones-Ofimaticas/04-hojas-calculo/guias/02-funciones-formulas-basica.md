# 🧮 MÓDULO 2: Fórmulas, Funciones y Rangos Básicos (Aprox. 8 horas)

> **Objetivo del módulo:** aprender a trabajar con fórmulas esenciales, comprender el concepto de rangos de celdas y dominar referencias relativas, absolutas y mixtas.

---

## 2.1 Introducción a las Fórmulas

**¿Qué es una fórmula?**
Una fórmula realiza un cálculo. Siempre empieza con `=`.

> 🧠 *Ejemplo básico:*
> `=2+2` → Resultado: 4

---

## 2.2 ¿Qué es un Rango de Celdas?

Un **rango** es un grupo de celdas contiguas que se seleccionan como bloque.

### Tipos de rangos:

| Tipo                | Ejemplo       | Explicación                               |
| ------------------- | ------------- | ----------------------------------------- |
| Horizontal          | `A1:D1`       | Celdas de la 1ª fila, columnas A a D      |
| Vertical            | `B2:B8`       | Celdas de la columna B, filas 2 a 8       |
| Rectangular         | `A1:C3`       | Todas las celdas entre A1 y C3            |
| Rangos no contiguos | `A1:A3;C1:C3` | Selección de zonas separadas (solo Excel) |

> 🎯 **Importante:**
> Excel y Google Sheets gestionan los rangos de forma **idéntica**, tanto para selección como para uso en funciones.

---

## 2.3 Funciones Básicas con Rangos

Estas funciones se aplican **directamente sobre rangos** de datos:

| Función    | Uso                      | Ejemplo            |
| ---------- | ------------------------ | ------------------ |
| `SUMA`     | Suma valores             | `=SUMA(A1:A5)`     |
| `PROMEDIO` | Promedio                 | `=PROMEDIO(B2:B6)` |
| `MAX`      | Máximo                   | `=MAX(C1:C10)`     |
| `MIN`      | Mínimo                   | `=MIN(C1:C10)`     |
| `CONTAR`   | Cuenta valores numéricos | `=CONTAR(D1:D20)`  |
| `CONTARA`  | Cuenta celdas no vacías  | `=CONTARA(A1:A10)` |

> 🧪 **Ejercicio práctico 1:**
> Crea un rango de 10 valores numéricos (por ejemplo, A1:A10) y calcula:
>
> * La suma total.
> * El promedio.
> * El valor más alto.
> * El número de celdas no vacías.

---

## 2.4 Referencias de Celdas: Relativas, Absolutas y Mixtas

### 🔁 Relativas

Cambian al copiarse. Ejemplo: `=A1 + B1` se convierte en `=A2 + B2`.

### 📌 Absolutas

No cambian al copiarse. Ejemplo: `=$A$1 + B1` → `$A$1` siempre apunta a A1.

### 🌀 Mixtas

Parte fija, parte variable:

* `A$1` → fila fija
* `$A1` → columna fija

> 💡 **Atajo relevante (idéntico en Excel y Sheets):**
> Usa **F4** para alternar entre las diferentes formas de referencia.

> ✍️ **Ejercicio práctico 2:**
> Crea una tabla de multiplicar del 1 al 10 usando referencias absolutas.

---

## 2.5 Ejemplo Práctico: "Boletín de Notas" y "Gastos Mensuales"

### Boletín de Notas

| Alumno | Nota 1 | Nota 2 | Nota 3 | Promedio           |
| ------ | ------ | ------ | ------ | ------------------ |
| Ana    | 8      | 7      | 9      | `=PROMEDIO(B2:D2)` |
| Lucía  | ...    | ...    | ...    | ...                |

> 📝 Usar rangos: `B2:D2` → rango horizontal de tres notas.

---

### Control de Gastos Mensuales

| Categoría  | Enero | Febrero | Marzo | TOTAL          |
| ---------- | ----- | ------- | ----- | -------------- |
| Comida     | 350   | 380     | 400   | `=SUMA(B2:D2)` |
| Transporte | 45    | 60      | 50    | ...            |

> 💡 Usar rangos rectangulares (`B2:D5`) para el total de gastos.

---

## 2.6 Conclusión del Módulo

| Concepto                         | Excel & Sheets |
| -------------------------------- | -------------- |
| Rangos de celdas                 | Uso idéntico   |
| Sintaxis de funciones básicas    | Igual          |
| Referencias relativas/absolutas  | Igual          |
| Funciones aplicadas sobre rangos | Igual          |

> 🎯 **Clave del módulo:**
> Los rangos son la “base de operaciones” para todas las funciones. Sin ellos, la automatización y el análisis de datos no serían posibles.

## ENLACES

[📖Presentación Funciones](https://gamma.app/docs/Funciones-y-Argumentos-en-Excel-5ko0ub3gsdvdcv8)

[📹 Referencias en Excel](https://www.youtube.com/watch?v=hgST3sdvHOg&list=PLcKbSbJyOGOYVK5ey5vErm19tdvAvQSer&index=13)

[📖 Referencias avanzado](02-referencias-absolutas.md)
