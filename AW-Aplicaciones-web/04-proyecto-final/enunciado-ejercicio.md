## 🤖 Ejercicio de Automatización Web (UD 4 - Aplicaciones Web)

Este ejercicio es la continuación natural ejercicio de AO-04-HOJAS-CALCULO (ENLACE) del anterior y se centra en la aplicación práctica de herramientas de automatización y servicios web (Zapier, Make) para simular un proceso de negocio.

### **Título del Ejercicio: Automatización de Documentos y Comunicación con Apps Script**

### **Objetivo:**

Automatizar el flujo de trabajo de la factura creada en la UD 4 de Hojas de Cálculo, utilizando **Google Apps Script** (el entorno de desarrollo asociado a Google Sheets) para realizar las siguientes acciones de forma automática al ejecutar un botón:

1.  **Generar un PDF** de la factura.
2.  **Guardar un registro** de la transacción.
3.  **Enviar el PDF** por correo electrónico al cliente.

### **Requisitos y Herramientas:**

* **Documento Base:** El archivo de Google Sheets completado en el ejercicio anterior.
* **Herramienta:** **Google Apps Script** (Accesible desde **Extensiones > Apps Script** en Google Sheets).

### **Procedimiento Paso a Paso (Guía Conceptual de Automatización):**

#### **Paso 1: Preparación en Google Sheets**

* **Crear una Hoja de Registro:** En el archivo de facturación, añadir una cuarta hoja llamada **`Registro`**.
* **Columnas de Registro:**
    * `Fecha de Emisión`
    * `Número de Factura` (Un campo en `Factura` para un ID único, que puede ser la concatenación de la fecha y un contador).
    * `ID Cliente`
    * `Importe Total (€)`
    * `Estado (Enviada/Error)`

#### **Paso 2: Desarrollar la Función Apps Script**

Se requiere que los alumnos escriban (o adapten) una función de Google Apps Script llamada, por ejemplo, `generarYEnviarFactura()`, que combine las siguientes tareas:

1.  **Recuperar Datos Clave:**
    * Leer el `ID Cliente`, el `Importe Total` y el `Correo Electrónico` de la hoja `Factura`.

2.  **Generar el PDF y Enviarlo por Correo:**
    * Utilizar las funciones de la librería `DriveApp` o métodos específicos de Sheets para **exportar la hoja `Factura` como un archivo PDF**.
    * Utilizar la función **`MailApp.sendEmail()`** para enviar el PDF generado.
        * **Destinatario:** El correo electrónico del cliente recuperado.
        * **Asunto:** `"Factura [Número de Factura] - [Tu Empresa]"`
        * **Cuerpo:** Un mensaje de cortesía.
        * **Adjunto:** El archivo PDF recién generado.

3.  **Registrar la Transacción:**
    * Obtener la fecha actual.
    * Escribir una nueva fila de datos (`Fecha`, `Nº Factura`, `ID Cliente`, `Importe Total`, `Estado: Enviada`) en la hoja **`Registro`**.

#### **Paso 3: Interfaz de Usuario (El Botón)**

* **Asociar el Script:** Crear un **botón o una forma** en la hoja `Factura`.
* **Asignar la Función:** Asignar la función `generarYEnviarFactura()` al botón, de modo que al hacer clic, se ejecuten todos los pasos anteriores.

### **Instrucciones de Entrega:**

* El archivo de Google Sheets (con la hoja `Registro` y el botón funcional).
* El código de Google Apps Script debe estar comentado y bien estructurado dentro del editor.

---

¿Te gustaría que te ayude a crear un ejemplo de la **fórmula `BUSCARV`** o la estructura básica del **código Apps Script** para que puedas dárselo a tus alumnos como referencia o punto de partida?

