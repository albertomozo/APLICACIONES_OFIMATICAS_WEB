# GUÍA DOCENTE: Sistema Automatizado de Calificaciones en Google Sheets

## 1. Objetivo del Proyecto

El objetivo es diseñar un libro de cálculo inteligente y escalable para gestionar cursos académicos. El sistema permite:

* Gestionar un número variable de Unidades Didácticas (UD).
* Automatizar la creación de hojas de evaluación personalizadas.
* Centralizar las notas de teoría, práctica y asistencia en un resumen final automático.
* Controlar el cumplimiento del límite de faltas (máximo 20%).

---

## 2. Estructura del Libro (Las Pestañas)

Para que el sistema funcione, el libro debe tener estas hojas obligatorias:

1. **`configuracion`**: Datos generales del curso (Nombre del curso en `B1`).
2. **`alumnos`**: Listado maestro con los nombres de los estudiantes.
3. **`Unidades`**: Tabla con la planificación (ID, Nombre, Horas).
4. **`plantilla UD`**: El modelo que se copiará para cada tema.
5. **`resumen`**: Cuadro de mando final con todas las notas.

---

## 3. Paso a Paso Detallado

### Paso 1: Configuración de la "Plantilla UD"

Es el corazón del sistema. En esta hoja se definen los pesos de la evaluación.

* **Cabecera personalizada**: Reserva celdas para el nombre del curso, ID de la unidad, descripción y horas. Estas serán rellenadas por el script.
* **Fórmulas de cálculo**:
* **Nota Final**: `=(Teórico * 0.4) + (Continua * 0.2) + (Práctico * 0.4)`.
* **Asistencia**: Calcula el porcentaje comparando las "Horas Ausente" con las "Horas Totales" de la cabecera.
* **Validación**: Usa una fórmula `SI` para marcar como "NO APTO" a quien supere el 20% de faltas.



### Paso 2: Automatización con Google Apps Script

Para evitar crear hojas a mano, instalamos un script que lee la lista de la pestaña `Unidades`.

**Instrucciones para el alumno:**

1. Ir a **Extensiones > Apps Script**.
2. Pegar el código que permite:
* Leer el nombre del curso desde `configuracion`.
* Recorrer la lista de unidades.
* Duplicar la plantilla y asignarle el nombre del ID (ej. UD01).
* Escribir en la cabecera de la nueva hoja los datos específicos (Nombre y Horas).


```google scripts
function crearHojasUDPersonalizadas() {
  var ss = SpreadsheetApp.getActiveSpreadsheet();
  var hojaConfig = ss.getSheetByName("configuracion");
  var hojaUnidades = ss.getSheetByName("Unidades");
  var plantilla = ss.getSheetByName("plantilla UD");
  
  // 1. Obtener el nombre del curso desde configuracion
  var nombreCurso = hojaConfig.getRange("B1").getValue();
  
  // 2. Obtener los datos de las Unidades (ID, Nombre, Horas)
  var datosUnidades = hojaUnidades.getRange("A2:D" + hojaUnidades.getLastRow()).getValues();
  
  datosUnidades.forEach(function(fila) {
    var idUD = fila[0];      // Columna A: UD01
    var nombreUD = fila[1];  // Columna B: Instalación...
    var horasUD = fila[3];   // Columna D: 6
    
    // Solo actuar si el ID no está vacío y la hoja no existe
    if (idUD && !ss.getSheetByName(idUD)) {
      // Copiar plantilla y dar nombre de la UD
      var nuevaHoja = plantilla.copyTo(ss).setName(idUD);
      
      // 3. Escribir los datos en la cabecera de la nueva hoja
      // Ajustamos las celdas según el formato de tu archivo 'plantilla UD'
      nuevaHoja.getRange("C2").setValue(nombreCurso); // Celda al lado de "CURSO"
      nuevaHoja.getRange("B3").setValue(idUD);        // Celda al lado de "UD"
      nuevaHoja.getRange("B4").setValue(nombreUD);    // Celda al lado de "Descripcion"
      nuevaHoja.getRange("B5").setValue(horasUD);     // Celda al lado de "Horas"
      
      // Opcional: Proteger la cabecera para no borrarla por error
      // nuevaHoja.getRange("A1:C6").protect();
    }
  });
  
  SpreadsheetApp.getUi().alert("Proceso finalizado: Hojas creadas y personalizadas.");
}
```


### Paso 3: El Resumen Final Inteligente

Aquí usamos dos técnicas avanzadas para que el profesor no tenga que escribir fórmulas nuevas cada vez que añade una unidad.

1. **Transposición Dinámica**: En la fila de encabezados del resumen, usamos `=TRANSPONER(Unidades!A2:A)` para que los nombres de las UD aparezcan automáticamente en horizontal.
2. **La función INDIRECTO**: Para traer la nota de cada pestaña sin saber de antemano cómo se llama la pestaña, usamos:
`=SI.ERROR(BUSCARV($A5; INDIRECTO("'" & B$4 & "'!A:E"); 4; FALSO); "")`
* `B$4` es la celda que contiene el nombre de la UD.
* `INDIRECTO` convierte ese texto en una referencia real a la hoja.



---

## 4. Funciones Especiales de Ofimática Utilizadas

En este curso, los alumnos aprenderán:

* **Referencias Absolutas y Mixtas**: Uso de `$` (ej. `$A5` vs `B$4`) para fijar datos al arrastrar fórmulas.
* **Traspuesta**: Convertir rangos verticales en horizontales de forma dinámica.
* **Validación de Datos**: Creación de listas desplegables combinando dos columnas (`=A2 & " - " & B2`).
* **Formato Condicional**: Resaltar en rojo notas suspensas o estados de "NO APTO".

---

## 5. Guía de Uso Rápido (Manual del Profesor)

1. **Cargar Datos**: Rellena el nombre del curso en `configuracion` y la lista de unidades en `Unidades`.
2. **Generar Hojas**: Pulsa el botón "Generar UD" (vinculado al script). Se crearán todas las pestañas automáticamente.
3. **Calificar**: Introduce las notas en cada pestaña de UD.
4. **Consultar Resumen**: Ve a la pestaña `resumen` para ver el progreso global de los alumnos. El sistema marcará automáticamente quién cumple con la asistencia y quién no.

---

**Nota para el instructor:** Este sistema es ideal para enseñar la potencia de las **funciones de búsqueda** y la **automatización básica**, conceptos clave en cualquier curso de ofimática de nivel medio-avanzado.


(Ejemplo - Haz una copia)[https://docs.google.com/spreadsheets/d/1q8ifQqhgT9mY-yw5nFsFI0xnmpS99Rthc0y_gA2nBT4/edit?usp=sharing]




## HACERLO EN EXCEL ???

Recomiendo hacerlo en Google sheet y luego decargarlo a Excel
