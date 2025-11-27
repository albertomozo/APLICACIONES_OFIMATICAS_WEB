# 📊 MÓDULO 4: Gestión de Datos (Aprox. 8 horas)

> **Objetivo del módulo:** aprender a ordenar, filtrar y estructurar datos de forma profesional. Entender las diferencias clave entre Excel y Google Sheets en la gestión de datos.

---

# 4.1 Concepto: Ordenar y Filtrar

*(Idéntico en Excel y Google Sheets)*

Ordenar y filtrar datos son dos de las herramientas más utilizadas en cualquier hoja de cálculo.

### 🔢 Ordenación

Permite reorganizar filas según una o varias columnas:

* Orden ascendente (A→Z, menor→mayor).
* Orden descendente (Z→A, mayor→menor).
* Orden personalizado (por ejemplo: “Pendiente → En curso → Finalizado”).

### 🔍 Filtrado

Permite mostrar solo las filas que cumplen una condición.

Ejemplos de filtros comunes:

* “Mostrar solo los valores > 100”
* “Mostrar productos de la categoría Comida”
* “Mostrar las fechas del último mes”

> 📝 **Ejemplo práctico:**
> Realiza un filtro para mostrar únicamente los gastos superiores a 50 €.

---

# 4.2 Enfoque Dual: La Gran Diferencia

Aquí aparece una de las diferencias **más importantes** entre Excel y Google Sheets.

---

## 🔵 Excel: *Formato como Tabla* (Ctrl + T)

Excel incluye una función clave: **Formato como tabla**.

### ¿Qué aporta?

* Rangos **dinámicos** (la tabla se expande automáticamente).
* Filtros integrados en los encabezados.
* Estilos profesionales instantáneos.
* **Referencias estructuradas** → en lugar de `A2:A100`, puedes usar `Ventas[Importe]`.
* Totales automáticos.
* Integración con Power Query.

### ¿Cómo activarlo?

1. Seleccionar un rango con datos.
2. Pulsar **Ctrl + T**.
3. Confirmar “La tabla tiene encabezados”.

📘 **Resultado:** Obtienes una tabla inteligente y flexible, ideal para análisis.

> 💡 **Consejo para alumnos:**
> Si trabajas con grandes volúmenes de datos en Excel… **usa SIEMPRE tablas**.

---

## 🟢 Google Sheets: *Vistas de Filtro*

Google Sheets no tiene un “Formato como tabla”, pero sí una alternativa muy poderosa para equipos:

### ⭐ Vistas de filtro

Permiten que **cada usuario vea sus propios filtros** sin afectar al resto.
Esto es esencial en documentos colaborativos.

### ¿Qué permiten hacer?

* Crear múltiples vistas (por usuario, por periodo, por filtro específico).
* Guardar filtros personalizados.
* Mantener intacta la visión del resto de personas que están editando.

### ¿Cómo crear una?

1. Menú **Datos → Vistas de filtro → Crear nueva vista de filtro**.
2. Aparece un marco oscuro que indica que estás creando tu vista privada.
3. Aplicar filtros sin afectar al resto.

> 💡 **Ideal para trabajos en equipo:**
> Cada alumno puede filtrar su parte de la tabla sin molestar al resto.

---

# 4.3 Enfoque Dual: Validación de Datos (Listas Desplegables)

> El concepto es idéntico: **limitar lo que se puede escribir en una celda**.

Usado para:

* Menús desplegables.
* Controlar que los valores sean correctos.
* Evitar errores al introducir datos.

---

## 🔵 Excel – Validación de Datos

Ruta:
**Datos → Validación de datos**

Opciones comunes:

* Lista de valores
* Número entero / decimal
* Fecha
* Longitud del texto
* Mensaje de entrada
* Mensaje de error

📘 **Ejemplo:**
Crear una lista desplegable con categorías:
“Alimentación, Transporte, Ocio”.

---

## 🟢 Google Sheets – Validación de Datos

Ruta:
**Datos → Validación de datos**

Similitudes:

* Listas
* Intervalos
* Criterios personalizados

Diferencias:

* El panel es lateral y más visual.
* Permite “Mostrar advertencia” en lugar de bloquear el dato.
* Integra mejor con rangos dinámicos en la nube.

---

# 4.4 Ejercicios del Módulo

### ✔️ Ejercicio 1: Ordenación

Ordena una tabla de productos por precio (de mayor a menor) y luego por categoría alfabética.

### ✔️ Ejercicio 2: Filtros básicos

Filtra una lista para mostrar solo los gastos de tipo “Transporte”.

### ✔️ Ejercicio 3 (Excel): Formato como tabla

Convierte un rango de datos en una tabla con **Ctrl + T**.
Aplica un estilo y activa la fila de totales.

### ✔️ Ejercicio 4 (Sheets): Vista de filtro

Crea una vista de filtro llamada “Mis datos” en un archivo compartido.
Filtra solo los registros del mes de enero.

### ✔️ Ejercicio 5: Validación de datos

Crea una lista desplegable con categorías y aplícala a toda una columna.

---

# 4.5 Conclusión del Módulo

| Tema                 | Excel                           | Sheets                      |
| -------------------- | ------------------------------- | --------------------------- |
| Ordenar y filtrar    | Igual                           | Igual                       |
| Herramienta estrella | **Formato como Tabla (Ctrl+T)** | **Vistas de filtro**        |
| Colaboración         | Menos fluida                    | Superior (filtros privados) |
| Listas desplegables  | Validación de datos clásica     | Validación + avisos         |

> 🎯 **Clave del módulo:**
> Excel es imbatible estructurando datos, Sheets es imbatible colaborando. Debes dominar ambas herramientas para un uso profesional.


