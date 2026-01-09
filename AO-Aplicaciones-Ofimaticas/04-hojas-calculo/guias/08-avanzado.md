# 🚀 MÓDULO 8: Scripts y Automatización Avanzada

**Duración estimada:** 8 horas

> **Objetivo del módulo:**
> Aprender a automatizar procesos complejos en hojas de cálculo mediante scripts. Entender las diferencias entre Google Apps Script (Google Sheets) y VBA (Excel), y cuándo utilizarlos.

---

# 8.1 ¿Qué es un script?

Un script es un **pequeño programa** que automatiza tareas repetitivas en tu hoja de cálculo:

* **Generar reportes automáticamente.**
* **Validar y limpiar datos.**
* **Enviar emails con información de las celdas.**
* **Crear menús personalizados.**
* **Integrar datos de otras aplicaciones (APIs).**
* **Ejecutar acciones programadas** en momentos específicos.

> **Idea clave:**
> Los scripts permiten hacer cosas que las fórmulas no pueden: **lógica compleja, integración con servicios externos, e interacción con el usuario.**

---

# 8.2 Comparativa: Google Apps Script vs. VBA de Excel

| Aspecto | 🟢 Google Apps Script | 🔵 VBA (Excel) |
|---------|----------------------|-----------------|
| **Lenguaje** | JavaScript (moderno) | Visual Basic (clásico) |
| **Dónde se guarda** | En la nube (Google Drive) | En el archivo Excel |
| **Acceso** | Web: `Tools → Script editor` | Escritorio: `Alt+F11` (Editor de VBA) |
| **Ejecución** | En servidores Google (nube) | Localmente en tu PC |
| **Funcionalidad principal** | Automatizar + integración web | Automatizar + análisis intensivo |
| **Curva de aprendizaje** | Moderada (JavaScript familiar) | Media-Alta (Visual Basic anticuado) |
| **Integración con APIs** | ⭐⭐⭐ Excelente | ⭐ Limitada |
| **Velocidad** | Depende de internet | Muy rápida (local) |
| **Seguridad** | Administrada por Google | Depende de configuración de PC |
| **Compatibilidad** | Solo Google Sheets | Solo Excel (y LibreOffice Calc) |

---

# 8.3 Google Apps Script (Google Sheets)

## 8.3.1 ¿Qué es Google Apps Script?

Google Apps Script es un **servicio basado en la nube** que permite:

* Automatizar tareas en Google Sheets, Docs, Gmail, Calendar, etc.
* Integrar Sheets con servicios externos (APIs).
* Crear aplicaciones web simples.
* Ejecutar scripts de forma **programada** (triggers).

**Lenguaje:** JavaScript (con extensiones propias de Google).

---

## 8.3.2 Acceder al Editor de Scripts

1. Abre tu hoja de cálculo en Google Sheets.
2. Ve a **Herramientas (Tools) → Editor de secuencias de comandos (Script editor)**.
3. Se abrirá una pestaña nueva con el editor.

```
Herramientas
    ↓
Editor de secuencias de comandos
    ↓
Editor de Google Apps Script (nueva pestaña)
```

---

## 8.3.3 Primer Script: "Hola Mundo"

En el editor, verás una función de ejemplo:

```javascript
function myFunction() {
  // Escribe tu código aquí
}
```

Reemplázala con:

```javascript
function holaMundo() {
  const sheet = SpreadsheetApp.getActiveSheet();
  const celda = sheet.getRange("A1");
  celda.setValue("¡Hola Mundo desde Script!");
}
```

**Explicación:**
* `SpreadsheetApp.getActiveSheet()`: Obtiene la hoja activa.
* `getRange("A1")`: Selecciona la celda A1.
* `setValue()`: Asigna un valor a la celda.

**Ejecutar:** Haz clic en ▶ (Ejecutar) o presiona `Ctrl+Enter`.

---

## 8.3.4 Leer y Escribir Datos

### Escribir valores en celdas

```javascript
function escribirDatos() {
  const sheet = SpreadsheetApp.getActiveSheet();
  
  // Escribir en una celda individual
  sheet.getRange("B2").setValue("Valor nuevo");
  
  // Escribir en un rango
  sheet.getRange("A1:C3").setValues([
    ["A1", "B1", "C1"],
    ["A2", "B2", "C2"],
    ["A3", "B3", "C3"]
  ]);
}
```

### Leer valores desde celdas

```javascript
function leerDatos() {
  const sheet = SpreadsheetApp.getActiveSheet();
  
  // Leer una celda
  const valor = sheet.getRange("A1").getValue();
  Logger.log("El valor en A1 es: " + valor);
  
  // Leer un rango
  const datos = sheet.getRange("A1:C3").getValues();
  Logger.log(datos);
}
```

**Ver resultados:** `Ver (View) → Registros (Logs)` o `Ctrl+Enter`.

---

## 8.3.5 Automatizar tareas comunes

### Crear un menú personalizado

```javascript
function onOpen() {
  const ui = SpreadsheetApp.getUi();
  ui.createMenu('Mi Menú')
    .addItem('Generar Reporte', 'generarReporte')
    .addSeparator()
    .addItem('Limpiar Datos', 'limpiarDatos')
    .addToUi();
}

function generarReporte() {
  const sheet = SpreadsheetApp.getActiveSheet();
  sheet.getRange("A1").setValue("REPORTE GENERADO: " + new Date());
}

function limpiarDatos() {
  const sheet = SpreadsheetApp.getActiveSheet();
  sheet.clear();
}
```

Al abrir la hoja, aparecerá un menú personalizado llamado "Mi Menú".

---

### Enviar un email basado en datos

```javascript
function enviarEmailAutomatico() {
  const sheet = SpreadsheetApp.getActiveSheet();
  const datos = sheet.getRange("A1:C10").getValues();
  
  const email = "usuario@gmail.com";
  const asunto = "Reporte de Datos";
  const cuerpo = "Se adjunta un resumen de los datos:\n" + 
                 JSON.stringify(datos);
  
  GmailApp.sendEmail(email, asunto, cuerpo);
}
```

---

## 8.3.6 Triggers (Ejecución Programada)

Los triggers permiten ejecutar scripts **automáticamente**:

* **Al abrir la hoja** (`onOpen`).
* **Al editar celdas** (`onEdit`).
* **A una hora específica** (tiempo).
* **Al cambiar la hoja** (`onSelectionChange`).

### Ejemplo: Script que se ejecuta al editar

```javascript
function onEdit(e) {
  const range = e.range;
  const valor = range.getValue();
  
  if (valor > 100) {
    range.setBackground("#ff0000"); // Rojo
  }
}
```

Cada vez que edites una celda, se ejecutará este código.

### Crear un trigger programado

1. En el editor, ve a **Disparadores (Triggers)** en la columna izquierda.
2. Haz clic en **"Crear un disparador ahora"**.
3. Configura:
   * **Función a ejecutar:** `miScript`
   * **Tipo de evento:** `Trigger de tiempo` (Time-driven)
   * **Frecuencia:** `Diariamente`, `Semanalmente`, etc.

---

## 8.3.7 Integración con APIs externas

Google Apps Script puede llamar a **APIs REST** para traer datos externos:

```javascript
function obtenerDatosDeAPI() {
  const url = "https://api.ejemplo.com/datos";
  
  const opciones = {
    method: 'get',
    muteHttpExceptions: true
  };
  
  const response = UrlFetchApp.fetch(url, opciones);
  const json = JSON.parse(response.getContentText());
  
  const sheet = SpreadsheetApp.getActiveSheet();
  sheet.getRange("A1").setValue(JSON.stringify(json));
}
```

---

# 8.4 VBA en Excel (Visual Basic for Applications)

## 8.4.1 ¿Qué es VBA?

VBA es el **lenguaje de programación nativo de Excel**:

* Automatiza tareas repetitivas.
* Accede a objetos de Excel (celdas, hojas, gráficos).
* Se guarda **dentro del archivo Excel**.
* Requiere activar macros para ejecutarse.

**Lenguaje:** Visual Basic (sintaxis antigua, pero poderosa).

---

## 8.4.2 Acceder al Editor de VBA

1. En Excel, presiona **Alt+F11** (abre el Editor de VBA).
2. O ve a **Desarrollador (Developer) → Visual Basic** (si la pestaña no aparece: Archivo → Opciones → Personalizar cinta → Desarrollador).

```
Alt + F11
    ↓
Editor de Visual Basic
```

---

## 8.4.3 Primer Macro: "Hola Mundo"

En el editor VBA, haz clic en **Insertar → Módulo**.

Escribe:

```vb
Sub holaMundo()
    Sheet1.Range("A1").Value = "¡Hola Mundo desde VBA!"
End Sub
```

**Ejecutar:**
* En el editor: Presiona F5 o haz clic en ▶.
* En Excel: `Desarrollador → Macros → Selecciona "holaMundo" → Ejecutar`.

---

## 8.4.4 Leer y Escribir Datos

### Escribir valores

```vb
Sub escribirDatos()
    Sheet1.Range("B2").Value = "Nuevo valor"
    Sheet1.Range("A1:C3").Value = Array(Array("A1", "B1", "C1"), _
                                         Array("A2", "B2", "C2"), _
                                         Array("A3", "B3", "C3"))
End Sub
```

### Leer valores

```vb
Sub leerDatos()
    Dim valor As String
    valor = Sheet1.Range("A1").Value
    MsgBox "El valor en A1 es: " & valor
End Sub
```

---

## 8.4.5 Automatizar tareas comunes

### Crear un botón con macro

1. En Excel, ve a **Desarrollador → Insertar** (en Controles de formulario).
2. Dibuja un botón en la hoja.
3. Asigna una macro al botón (clic derecho → Asignar macro).
4. En el módulo, escribe:

```vb
Sub botonCrearReporte()
    Sheet1.Range("A1").Value = "REPORTE: " & Date()
    MsgBox "Reporte creado"
End Sub
```

### Recorrer celdas y aplicar lógica

```vb
Sub procesarDatos()
    Dim fila As Integer
    
    For fila = 1 To 100
        Dim valor As Double
        valor = Sheet1.Range("A" & fila).Value
        
        If valor > 100 Then
            Sheet1.Range("A" & fila).Interior.Color = RGB(255, 0, 0) ' Rojo
        End If
    Next fila
End Sub
```

---

## 8.4.6 Seguridad y Certificación de Macros

En Excel, las macros **pueden contener virus**, por lo que:

* **Habilitar macros:** Al abrir, Excel pide confirmación.
* **Firmar macros:** Para mayor seguridad profesional.

**Aviso importante:** Siempre verifica que las macros provengan de fuentes confiables.

---

# 8.5 Casos de Uso Prácticos

## 🟢 Mejor en Google Apps Script

1. **Generar reportes automáticos y enviarlos por email.**
2. **Integrar datos de un sitio web o API.**
3. **Compartir código entre múltiples usuarios** (guardado en la nube).
4. **Crear formularios web vinculados a Sheets.**
5. **Ejecutar tareas programadas regularmente.**

**Ejemplo:** Script que copia datos de una web y los pega en Sheets cada hora.

---

## 🔵 Mejor en VBA (Excel)

1. **Análisis de datos intensivos** (muy rápido, local).
2. **Crear add-ins personalizados para Excel.**
3. **Automatizar procesos que no necesitan internet.**
4. **Trabajar con múltiples archivos Excel simultáneamente.**
5. **Integración profunda con Windows y otras aplicaciones Office.**

**Ejemplo:** Macro que genera 10,000 reportes simultáneamente en diferentes hojas.

---

# 8.6 Recursos y Comunidad

### 🟢 Google Apps Script

* [Documentación oficial](https://developers.google.com/apps-script)
* [Ejemplos de código](https://github.com/gsuitedevs/apps-script-samples)
* [Comunidad en Stack Overflow](https://stackoverflow.com/questions/tagged/google-apps-script)

### 🔵 VBA en Excel

* [Documentación oficial de Microsoft](https://learn.microsoft.com/en-us/office/vba/api/overview/)
* [Excel VBA Tutoriales](https://www.excel-easy.com/vba.html)
* [Comunidad en Stack Overflow](https://stackoverflow.com/questions/tagged/vba)

---

# 8.7 Buenas Prácticas

1. **Comentar tu código:** `// comentario` (Apps Script) o `' comentario` (VBA).
2. **Usar nombres descriptivos:** `function limpiarDatos()` en lugar de `function f1()`.
3. **Manejar errores:** Implementa try/catch o On Error.
4. **Prueba en una copia:** Siempre trabaja con copias de archivos importantes.
5. **Documentar qué hace:** Incluye un encabezado con descripción.

---

# 8.8 Resumen Comparativo

| Característica | 🟢 Google Apps Script | 🔵 VBA (Excel) |
|----------------|----------------------|-----------------|
| Acceso fácil | ✅ Web directamente | ✅ Alt+F11 |
| Curva aprendizaje | 📈 Moderada | 📈📈 Más pronunciada |
| Velocidad | ⚡ Moderada (nube) | ⚡⚡ Muy rápida (local) |
| Integración web | 🌐 Excelente | 🌐 Limitada |
| Escalabilidad | 📊 Buena | 📊 Limitada |
| Comunidad activa | 👥 Creciente | 👥 Muy grande (legacy) |

---

**Próximos pasos:**
* Practica con scripts pequeños antes de automatizar procesos críticos.
* Explora ejemplos en GitHub y Stack Overflow.
* Considera Google Apps Script para proyectos nuevos (más moderno y web-friendly).
* Usa VBA si necesitas máxima velocidad local o integración Office profunda.
