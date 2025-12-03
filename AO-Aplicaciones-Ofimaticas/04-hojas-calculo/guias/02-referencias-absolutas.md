

* Referencia **absoluta completa** (`$A$1`)
* Referencia **absoluta de columna** (`$A1`)
* Referencia **absoluta de fila** (`A$1`)



---

# 🔧 Referencias Absolutas: explicación + ejemplos de uso

Cuando arrastras una fórmula hacia abajo o hacia la derecha, Excel y Google Sheets **ajustan automáticamente** las referencias (referencia relativa).
Las referencias con `$` permiten **fijar** parte o toda la referencia.

---

# 🧱 1. Referencia Absoluta Completa

## 📌 **`$A$1` → fija columna y fila**

La celda **nunca cambia**, aunque arrastres la fórmula en cualquier dirección.

### 👉 Cuándo usarla

* Usar un valor fijo en toda la tabla (IVA, tipo de cambio, precio unitario fijo…)
* Usar constantes almacenadas en una celda
* Usar parámetros de un cálculo (fecha inicial, presupuesto total, límite máximo)

### 🧪 **Ejemplo práctico 1: IVA fijo**

```
Cantidad    Precio    IVA      Total
   2          10       0,21     =B2*C2 + C2*$D$1
```

Si el IVA está en `D1`, la fórmula del total será:

```
=B2 * $D$1
```

Copies donde copies → siempre tomará el IVA de `D1`.

---

# 🧭 2. Referencia Absoluta de Columna

## 📌 **`$A1` → fija la columna, pero NO la fila**

Es decir:

* Al arrastrar **a la derecha → no cambia la columna A**
* Al arrastrar **hacia abajo → sí cambia la fila**

### 👉 Cuándo usarla

* Cuando una columna representa un **valor de referencia vertical** que debe mantenerse
* Cuando comparas cada fila con un valor de la **misma columna**, pero la fila cambia
* Para cálculos que usan “series verticales” fijas

### 🧪 **Ejemplo práctico 2: Comparar cada valor con un objetivo**

Supongamos:

```
A (Objetivo)   B (Valor)   C (Resultado)
   50             45          
   50             60
   50             70
```

Objetivo está en `A1`, `A2`, `A3` (mismo valor repetido o no).

Fórmula en C2:

```
=B2 > $A2
```

Aquí fijamos **solo la columna A**, porque la columna es donde está el objetivo, pero la fila cambia según cada registro.

### Resultado esperado:

* Fila 2 → 45 > 50 → FALSO
* Fila 3 → 60 > 50 → VERDADERO
* Fila 4 → 70 > 50 → VERDADERO

---

# 🧭 3. Referencia Absoluta de Fila

## 📌 **`A$1` → fija la fila, pero NO la columna**

Es decir:

* Al arrastrar **hacia abajo → no cambia la fila 1**
* Al arrastrar **a la derecha → sí cambia la columna**

### 👉 Cuándo usarla

* Cuando la fila superior contiene **encabezados numéricos** (por ejemplo meses o porcentajes)
* Para usar una fila entera como referencia al crear fórmulas horizontales
* Para cálculos donde cada columna usa un valor fijo de la **fila superior**

### 🧪 **Ejemplo práctico 3: Usar porcentajes de la fila superior**

Supongamos:

```
       B      C      D
      Ene    Feb    Mar
Fila1 0,10   0,12   0,15   ← Porcentajes por mes (fila fija)
Fila2 200    300    500
Fila3 150    250    400
```

En B2 queremos aplicar el porcentaje de la **fila 1**:

En B2:

```
=B2 * B$1
```

Copiamos hacia la derecha, y obtenemos:

* En C2 → `=C2 * C$1`
* En D2 → `=D2 * D$1`

La fila “1” queda fija, porque queremos usar siempre los porcentajes de la fila superior.

---

# 🧩 Resumen Visual Rápido

| Referencia | Fila fija | Columna fija | Cuándo usar                                             |
| ---------- | --------- | ------------ | ------------------------------------------------------- |
| `$A$1`     | ✔️        | ✔️           | Valores totalmente fijos (IVA, tipo cambio, constantes) |
| `$A1`      | ❌         | ✔️           | Comparaciones verticales donde la columna es fija       |
| `A$1`      | ✔️        | ❌            | Usar encabezados de fila superior o series horizontales |

---

# 🧪 Mini–Ejercicio para el Aula

1. Crea una tabla 5×5 con números.
2. En una celda aparte escribe un valor fijo (por ejemplo “10”).
3. Calcula el **módulo** de cada número respecto a ese valor usando `$X$Y`.
4. Luego crea un encabezado de porcentajes en la fila superior y aplica `A$1`.
5. Crea una columna de objetivos y aplica `$A1`.

**➡️ El alumno verá claramente qué cambia y qué no al arrastrar.**

--- GEMINI ----
  # CASOS DE USO  

---

## 🤓 Referencia Absoluta Completa: `$A$1`

Una referencia de celda completamente absoluta, como `$A$1`, no cambia su columna ni su fila **nunca** al arrastrar o copiar la fórmula.

### 💰 Caso de Uso Real: Calcular un Impuesto Fijo o Tasa de Cambio

Imagina que tienes una lista de precios de productos y quieres calcular el **IVA (21%)** o aplicar una **tasa de cambio fija** a todos ellos.

| | **A** | **B** | **C** |
| :---: | :---: | :---: | :---: |
| **1** | **Tasa de IVA** | 21% | |
| **2** | **Producto** | **Precio Base (€)** | **Impuesto de IVA** |
| **3** | Silla | 100 | $=B3 * \$B\$1$ |
| **4** | Mesa | 250 | $=B4 * \$B\$1$ |
| **5** | Lámpara | 50 | $=B5 * \$B\$1$ |

**¿Por qué usar `$B$1`?**
* Queremos que, sin importar a qué fila copiemos la fórmula (de la fila 3 a la 4 y 5), **siempre** se refiera a la celda `B1` para obtener la tasa de IVA.
* Al copiar la fórmula de `C3` (que es `=B3 * $B$1`) a `C4`, la parte `B3` cambia a `B4` (referencia relativa), pero `$B$1` permanece **fija** como `$B$1`.
* Esto es útil porque si la tasa de IVA cambia (por ejemplo, a 25%), solo tienes que actualizar la celda `B1` y todos los cálculos se actualizarán automáticamente.

---

## ➡️ Referencia Absoluta de Columna: `$A1`

Una referencia absoluta de columna, como `$A1`, mantiene la **columna fija** al copiar la fórmula horizontalmente (hacia la derecha o izquierda), pero la **fila cambia** si se copia verticalmente (hacia abajo o arriba).

### 🏷️ Caso de Uso Real: Aplicar Descuentos Fijos por Producto

Supongamos que tienes una tabla donde aplicas diferentes porcentajes de descuento a los precios originales.

| | **A** | **B** | **C** | **D** |
| :---: | :---: | :---: | :---: | :---: |
| **1** | **Precio** | **-5% Desc.** | **-10% Desc.** | **-15% Desc.** |
| **2** | 100 | $= \$A2 * 0.95$ | $=\$A2 * 0.90$ | $=\$A2 * 0.85$ |
| **3** | 250 | | | |
| **4** | 50 | | | |

**¿Por qué usar `$A2`?**
* Al copiar la fórmula de `B2` a `C2` y `D2` (horizontalmente), queremos que **siempre** se refiera a la columna `A` para obtener el precio base, pero la fila debe ser la misma (fila 2). Así, `$A2` permanece `$A2`. Si fuese relativa (`A2`), cambiaría a `B2`, luego `C2`, lo cual estaría mal.
* Al copiar la fórmula de `B2` a `B3` (verticalmente), queremos que la referencia al precio **cambie** de la fila 2 a la fila 3. Así, `$A2` se convierte en `$A3`.
* La columna `A` está **bloqueada (`$A`)**, pero la fila **`2` no lo está** y cambia según sea necesario.

---

## ⬇️ Referencia Absoluta de Fila: `A$1`

Una referencia absoluta de fila, como `A$1`, mantiene la **fila fija** al copiar la fórmula verticalmente (hacia abajo o arriba), pero la **columna cambia** si se copia horizontalmente (hacia la derecha o izquierda).

### 📈 Caso de Uso Real: Cálculos Basados en Encabezados Fijos (Ejemplo de Comisiones)

Imagina que tienes una tabla de ventas y quieres calcular la comisión que obtienes por cada venta, donde la **tasa de comisión** está en la fila 1.

| | **A** | **B** | **C** | **D** |
| :---: | :---: | :---: | :---: | :---: |
| **1** | **Tasa** | **10%** | **15%** | **20%** |
| **2** | **Vendedor** | **Monto Venta (€)** | **Comisión** | **Comisión** |
| **3** | Juan | 1000 | | |
| **4** | María | 500 | | |

* Si ponemos en `C3` la fórmula `=B3 * C$1`:
* **Copia Vertical (de `C3` a `C4`):** Queremos que la **fila de la venta cambie** de `B3` a `B4`, pero que la tasa de comisión **se mantenga** en la fila `1`.
    * `B3` cambia a `B4` (relativo).
    * `C$1` permanece `C$1` (fila `1` bloqueada).
    * **Resultado en `C4`:** `=B4 * C$1`
* **Copia Horizontal (de `C3` a `D3`):** Queremos que la **columna de la tasa cambie** de la columna `C` (15%) a la columna `D` (20%), pero que la fila de la tasa **se mantenga** en la fila `1`.
    * `B3` permanece `B3` (el monto de la venta en la fila 3).
    * `C$1` cambia a `D$1` (columna `C` cambia a `D`, pero fila `1` bloqueada).
    * **Resultado en `D3`:** `=B3 * D$1`

---

## 📌 Resumen para Alumnos

| Tipo de Referencia | Ejemplo | ¿Qué queda **fijo** al copiar? | ¿Cuándo usarla? |
| :---: | :---: | :---: | :---: |
| **Relativa** | `A1` | **Nada** (Columna y Fila cambian) | Para celdas que se mueven con la fórmula (ej: un precio al lado). |
| **Absoluta Completa** | `$A$1` | **Columna y Fila** | Para una **constante única** (ej: IVA, Tasa de Cambio). |
| **Mixta (Columna Absoluta)** | `$A1` | **Columna** (Fila cambia) | Para fijar una columna de **datos de origen** (ej: columna de Precios). |
| **Mixta (Fila Absoluta)** | `A$1` | **Fila** (Columna cambia) | Para fijar una fila de **encabezados/tasas** (ej: fila de Comisiones). |

---

---------------------

## 📑 Referencias a Hojas (Internas)

Una referencia interna se usa cuando quieres vincular datos de una **hoja de cálculo diferente dentro del *mismo* archivo o libro de trabajo**. Este es el tipo de referencia más común.

### 💻 En Excel

El formato es directo y similar al de las referencias externas, pero **sin la parte del nombre del archivo** (los corchetes `[]`).

#### Formato

$$NombreDeLaHoja!CeldaORango$$

#### Reglas Importantes

1.  **Nombre de la Hoja:** Especifica el nombre de la hoja de donde provienen los datos.
2.  **El `!` (Signo de Exclamación):** Siempre separa el nombre de la hoja de la celda o rango.
3.  **Comillas Simples (`''`):** Son **obligatorias** si el nombre de la hoja contiene espacios o caracteres especiales.

#### Ejemplos

| Caso | Fórmula | Significado |
| :--- | :--- | :--- |
| **Hoja simple** | `=Ventas!A1` | Obtiene el valor de la celda A1 de la hoja llamada "Ventas". |
| **Hoja con espacios** | `='Datos 2023'!B5` | Obtiene el valor de la celda B5 de la hoja llamada "Datos 2023". |
| **Rango** | `=SUMA(Resumen!C:C)` | Suma todos los valores de la columna C en la hoja "Resumen". |

-----

### 🌐 En Google Sheets

El formato y la lógica son **exactamente los mismos** que en Excel para las referencias internas.

#### Formato

$$NombreDeLaHoja!CeldaORango$$

#### Reglas Importantes

  * Si el nombre de la hoja tiene espacios, debe estar entre comillas simples (`' '`).

#### Ejemplos

| Caso | Fórmula | Significado |
| :--- | :--- | :--- |
| **Hoja simple** | `=Inventario!H2` | Obtiene el valor de la celda H2 de la hoja "Inventario". |
| **Hoja con espacios** | `='Datos Brutos'!A10` | Obtiene el valor de la celda A10 de la hoja "Datos Brutos". |

-----

## 🌍 Referencias Externas (A otros archivos)

Como repaso, aquí tienes la explicación de cómo vincular datos de **otro archivo** (libro de trabajo o hoja de cálculo) diferente:

### 💻 Referencias Externas en Excel (Otro archivo .xlsx)

Una referencia externa en Excel requiere la ruta completa, incluyendo el nombre del archivo y la extensión, entre corchetes `[]`.

#### Formato de la Referencia

$$='\[NombreDelArchivo.extensión]NombreDeLaHoja'!CeldaORango$$

#### Ejemplo en Excel

```excel
='[InformeMensual.xlsx]Ventas'!A1
```

### 🌐 Referencias Externas en Google Sheets (Otro archivo de Sheets)

En Google Sheets, se usa la función **`IMPORTRANGE`** para vincular datos de una hoja de cálculo completamente diferente (otro archivo en Drive).

#### Función `IMPORTRANGE`

$$=IMPORTRANGE("URL_o_ID_de_la_hoja_de_calculo", "NombreDeLaHoja!CeldaORango")$$

#### Ejemplo en Google Sheets

```excel
=IMPORTRANGE("1a2b3c4d5e6f...", "DatosClientes!A1:B10")
```

(Recuerda que esta función requiere **autorización** la primera vez que se usa entre dos archivos específicos).