

## 🍴 Ejercicio Práctico: Gestión de Pedidos y Presupuestos (Google Sheets)

### **Título del Ejercicio: Generador de Presupuestos de Catering y Pedidos**

### **Objetivo:**

Crear un sistema en Google Sheets para generar un presupuesto automático para un pedido de catering, donde los precios de los productos pueden variar según el tipo de cliente (Regular, Premium, Evento Especial).

### **Estructura del Archivo (3 Hojas):**

1.  **`Clientes`**: Lista de clientes con su tipo de tarifa asociado.
2.  **`Menú y Precios`**: Catálogo de platos, bebidas y servicios con sus precios base.
3.  **`Presupuesto`**: Plantilla para calcular el coste total del pedido.

### **Procedimiento Paso a Paso:**

#### **Paso 1: Configuración de la Hoja `Clientes`**

* **Crear la Hoja:** Nómbrala **`Clientes`**.
* **Columnas (Mínimo):**
    * **A:** `ID Cliente` (C001, C002...)
    * **B:** `Nombre/Razón Social`
    * **C:** `CIF/NIF`
    * **D:** `Correo Electrónico` (Para el paso de automatización)
    * **E:** `Tipo de Tarifa` (Clasificar en: **A. Regular**, **B. Premium**, **C. Evento**).
* **Contenido:** Rellenar con al menos **5 clientes** que representen los diferentes tipos de tarifa.

#### **Paso 2: Configuración de la Hoja `Menú y Precios`**

* **Crear la Hoja:** Nómbrala **`Menú y Precios`**.
* **Columnas (Mínimo):**
    * **A:** `Referencia` (M101, B202, S303...)
    * **B:** `Descripción del Ítem` (Plato, bebida, servicio extra, etc.)
    * **C:** `Precio Base (€)` (El precio para la Tarifa A. Regular)
    * **D:** `Descuento Tarifa B (%)` (Ejemplo: 10%)
    * **E:** `Recargo Tarifa C (%)` (Ejemplo: 15% o un precio fijo si es más sencillo)
    * **F:** `IVA Aplicable (%)` (Ejemplo: 10%, 21%).
* **Contenido:** Rellenar con al menos **8 ítems** ficticios.

#### **Paso 3: Diseño y Funcionalidad de la Hoja `Presupuesto`**

* **Creación y Diseño:** Diseñar una plantilla clara para el presupuesto (datos del cliente, tabla de detalle del pedido y resumen de costes).

* **Implementación de la Lógica:**

| Sección | Elemento | Requisito / Función a Aplicar | Puntos Clave |
| :--- | :--- | :--- | :--- |
| **Datos del Cliente** | **Nombre del Cliente** | Lista Desplegable para seleccionar el `ID Cliente` de la hoja `Clientes`. | *Validación de Datos.* |
| | **Tipo de Tarifa** | Debe aparecer automáticamente al seleccionar el cliente. | *Usar **`BUSCARV`** o **`INDICE/COINCIDIR`**.* |
| **Detalle del Pedido** | **Ítem (Referencia)** | Listas Desplegables para seleccionar la `Referencia` del ítem de la hoja `Menú y Precios`. | *Validación de Datos.* |
| | **Precio Unitario (Aplicado)** | **Este es el punto crucial:** El precio debe calcularse usando el `Precio Base` del ítem **Y** aplicar el `Descuento/Recargo` según el **`Tipo de Tarifa`** del cliente. | *Usar la función **`SI`** (o anidada) junto con **`BUSCARV`**.* |
| | **Subtotal de Línea** | Calcular el subtotal de cada línea: `Cantidad * Precio Unitario (Aplicado)`. | *Operación básica.* |
| **Totales** | **Base Imponible** | Suma de todos los `Subtotal de Línea`. | *Función **`SUMA`**.* |
| | **IVA Total** | Suma del IVA calculado para cada línea, usando el `IVA Aplicable (%)` traído de la hoja `Menú y Precios`. | *Usar **`BUSCARV`** para traer el IVA y calcularlo, luego sumar.* |
| | **Importe Total** | `Base Imponible + IVA Total`. | *Operación básica.* |

#### **Paso 4: Formato Condicional (Mejora)**

* Aplicar un **Formato Condicional** para que el campo `Tipo de Tarifa` se muestre en colores distintos para cada tipo (Ej: Premium en verde, Evento en naranja).

---

## 🤖 Ejercicio de Automatización Web Alternativo (Apps Script)

Este módulo es idéntico en su **lógica de automatización** al de facturación, pero adaptado al contexto del presupuesto.

### **Título del Ejercicio: Automatización de Presupuestos y Seguimiento de Pedidos**

### **Objetivo:**

Automatizar el flujo de trabajo del presupuesto creado, utilizando **Google Apps Script** para realizar las siguientes acciones de forma automática al ejecutar un botón:

1.  **Generar un PDF** del presupuesto final.
2.  **Registrar el pedido** y su coste total.
3.  **Enviar el PDF** por correo electrónico al cliente para su aprobación.

### **Requisitos y Herramientas:**

* **Documento Base:** El archivo de Google Sheets completado en el ejercicio anterior.
* **Herramienta:** **Google Apps Script** (Extensiones > Apps Script).

### **Procedimiento Paso a Paso (Guía Conceptual de Automatización):**

#### **Paso 1: Preparación en Google Sheets**

* **Hoja de Pedidos/Registro:** Añadir una cuarta hoja llamada **`Registro Pedidos`**.
* **Columnas de Registro:**
    * `Fecha de Emisión`
    * `ID de Pedido` (Un ID único, similar al número de factura).
    * `ID Cliente`
    * `Tipo de Tarifa Aplicada`
    * `Importe Total (€)`
    * `Estado (Enviado/Pendiente/Confirmado)`

#### **Paso 2: Desarrollar la Función Apps Script**

Se requiere una función (`generarYEnviarPresupuesto()`) que cumpla los siguientes pasos:

1.  **Recuperar Datos Clave:**
    * Leer el `ID Cliente`, el `Importe Total` y el `Correo Electrónico` de la hoja `Presupuesto`.
2.  **Generar el PDF y Enviarlo por Correo:**
    * Utilizar Apps Script para **exportar la hoja `Presupuesto` como un archivo PDF**.
    * Utilizar **`MailApp.sendEmail()`** para enviar el PDF.
        * **Destinatario:** El correo del cliente recuperado.
        * **Asunto:** `"Presupuesto de Catering ID [ID de Pedido] - [Tu Empresa]"`
        * **Adjunto:** El archivo PDF.
3.  **Registrar la Transacción:**
    * Escribir una nueva fila con todos los datos del presupuesto en la hoja **`Registro Pedidos`**, marcando el `Estado` como **Enviado**.

#### **Paso 3: Interfaz de Usuario (El Botón)**

* Crear un **botón/forma** en la hoja `Presupuesto` y asignarle la función de Apps Script.

Este ejercicio alternativo requiere exactamente las mismas habilidades técnicas de hojas de cálculo y automatización que el de facturación, pero bajo un contexto diferente que puede ser más atractivo para algunos alumnos.

¡Por supuesto\! Para que tus alumnos tengan una referencia clara de cómo debe verse el resultado final del ejercicio de **Generador de Presupuestos de Catering**, a continuación te presento un ejemplo de cómo deberían estar estructuradas y funcionar las tres hojas principales.

Usaremos el ejemplo de la fórmula **`SI` anidada** que mencionaste como punto crucial para calcular el precio aplicado.

-----

## 📊 Ejemplo de Resultado en Google Sheets (Catering)

### 1\. Hoja: `Clientes`

Esta hoja es una tabla simple que alimenta de información a la hoja `Presupuesto`.

| ID Cliente | Nombre/Razón Social | Correo Electrónico | Tipo de Tarifa |
| :---: | :--- | :--- | :---: |
| **C001** | Pastelería La Flor S.L. | pasteleria@email.com | **A. Regular** |
| **C002** | Eventos Deluxe S.A. | deluxe@email.com | **B. Premium** |
| **C003** | Fiestas del Pueblo | pueblo@email.com | **C. Evento** |
| **C004** | Restaurante El Gourmet | gourmet@email.com | **A. Regular** |

-----

### 2\. Hoja: `Menú y Precios`

Aquí se definen los precios base y cómo varían según el tipo de tarifa del cliente.

| Referencia | Descripción del Ítem | Precio Base (€) | Descuento Tarifa B (%) | Recargo Tarifa C (%) | IVA Aplicable (%) |
| :---: | :--- | :---: | :---: | :---: | :---: |
| **M101** | Tarta de Manzana (Unidad) | 12.00 | 10% | 15% | 10% |
| **B201** | Botella de Vino Reserva | 25.00 | 8% | 20% | 21% |
| **S302** | Servicio de Meseros (Hora) | 18.00 | 0% | 0% | 21% |
| **M105** | Bandeja de Mini Sándwiches | 35.00 | 10% | 15% | 10% |

-----

### 3\. Hoja: `Presupuesto`

Esta es la hoja de trabajo donde ocurre la magia de las fórmulas.

| Celda | Etiqueta | Contenido | Fórmula de Ejemplo |
| :---: | :--- | :--- | :--- |
| **B5** | **ID Cliente Seleccionado** | **C002** | *Lista desplegable (Validación de datos)* |
| **B6** | Nombre del Cliente | Eventos Deluxe S.A. | `=BUSCARV(B5; Clientes!A:D; 2; FALSO)` |
| **B7** | **Tipo de Tarifa** | **B. Premium** | **Punto crucial:** `=BUSCARV(B5; Clientes!A:E; 5; FALSO)` |

#### **Tabla de Detalle del Pedido**

| | A | B | C | D | E | F | G |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| **10** | **Cantidad** | **Referencia** | **Descripción** | **Precio Base (€)** | **Precio Unitario Aplicado (€)** | **IVA (%)** | **Subtotal (€)** |
| **11** | 5 | M105 | Bandeja de Mini Sándwiches | 35.00 | **31.50** | 10% | 157.50 |
| **12** | 2 | B201 | Botella de Vino Reserva | 25.00 | **23.00** | 21% | 46.00 |

#### **Fórmulas Clave a Implementar (Fila 11):**

  * **Celda D11 (Precio Base):**
    $$=BUSCARV(B11; 'Menú y Precios'!A:C; 3; FALSO)$$

  * **Celda E11 (Precio Unitario Aplicado) - ¡La fórmula crucial\!**

    Esta fórmula debe revisar la Tarifa del cliente (celda **B7**) y aplicar el cálculo correspondiente:

    $$=SI(B7="B. Premium"; D11*(1-BUSCARV(B11; 'Menú y Precios'!A:D; 4; FALSO)); SI(B7="C. Evento"; D11*(1+BUSCARV(B11; 'Menú y Precios'!A:E; 5; FALSO)); D11))$$

      * **Explicación:**
        1.  `SI(B7="B. Premium"; ...)`: Si la Tarifa es Premium, aplica el descuento del 10% (el `BUSCARV` trae el valor del descuento).
        2.  `SI(B7="C. Evento"; ...)`: Si no es Premium, revisa si es Evento y aplica el recargo del 15% (el `BUSCARV` trae el valor del recargo).
        3.  Si no es ninguna de las anteriores, devuelve el precio base (`D11`) (para la Tarifa A. Regular).

  * **Celda G11 (Subtotal):**
    $$=A11*E11$$

#### **Totales del Presupuesto**

| Celda | Etiqueta | Valor | Fórmula de Ejemplo |
| :---: | :--- | :--- | :--- |
| **D20** | **Base Imponible** | 203.50 | `=SUMA(G11:G18)` |
| **D21** | **IVA Total** | 22.18 | *Debe sumar el IVA calculado por línea.* Ejemplo de cálculo: `(G11*0.1) + (G12*0.21)` |
| **D22** | **Importe Total (€)** | **225.68** | `=D20+D21` |

-----

## 💾 Ejemplo de la Automatización (Apps Script)

Para el ejercicio de la UD 4 de Aplicaciones Web, el resultado es la existencia de una función de Apps Script que se ejecuta al pulsar un botón.

### **Estructura del Código (Apps Script):**

```javascript
/**
 * Genera el PDF del presupuesto, registra la transacción en 'Registro Pedidos'
 * y envía el PDF por correo al cliente.
 */
function generarYEnviarPresupuesto() {
  const hojaPresupuesto = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('Presupuesto');
  const hojaRegistro = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('Registro Pedidos');

  // 1. OBTENER DATOS CLAVE DEL PRESUPUESTO
  const idCliente = hojaPresupuesto.getRange('B5').getValue();
  const importeTotal = hojaPresupuesto.getRange('D22').getValue();
  const emailCliente = SpreadsheetApp.getActiveSpreadsheet().getSheetByName('Clientes').getRange('E' + idCliente.substring(1) * 1 + 1).getValue(); // Asumiendo estructura simple de Cliente
  
  // Generar ID de Pedido único (Ej: 'PEDIDO-' + timestamp)
  const idPedido = 'PEDIDO-' + new Date().getTime(); 

  // 2. GENERAR PDF Y ENVIAR CORREO (Se requiere URL del archivo para el PDF)
  
  // Este paso es complejo, se simula la generación del PDF.
  // En un script real, aquí iría el código que usa DriveApp o urlFetch para crear el archivo.
  
  // MailApp.sendEmail(emailCliente, 'Presupuesto ID ' + idPedido, 
  //                   'Adjuntamos su presupuesto. Por favor, revíselo.', 
  //                   {attachments: [pdfBlob]}); 

  // 3. REGISTRAR LA TRANSACCIÓN
  const nuevaFila = [
    new Date(), 
    idPedido, 
    idCliente, 
    hojaPresupuesto.getRange('B7').getValue(), // Tipo de Tarifa
    importeTotal, 
    'Enviado/Pendiente'
  ];

  hojaRegistro.appendRow(nuevaFila);
  
  Browser.msgBox('¡Éxito!', 'Presupuesto ' + idPedido + ' registrado y enviado (simulado).', Browser.Buttons.OK);
}
```

El resultado final que vería el alumno es que, al hacer clic en el botón de la hoja **`Presupuesto`**, automáticamente aparecería una nueva fila de datos en la hoja **`Registro Pedidos`**.

--- 

¡Claro! **Zapier** es una plataforma de automatización que actúa como un puente entre diferentes aplicaciones y servicios web, permitiendo que se comuniquen entre sí de forma automática sin necesidad de escribir código.

Su principal utilidad es **simplificar tareas rutinarias** y **mejorar la eficiencia** al eliminar la necesidad de intervención manual en procesos repetitivos. Zapier conecta más de 7,000 aplicaciones.

---

## ⚙️ ¿Cómo Funciona Zapier?

El funcionamiento de Zapier se basa en la creación de **Zaps**, que son flujos de trabajo automatizados. Cada Zap consta de dos partes principales:

1.  **Trigger (Disparador) 🚀:** Es el **evento** que inicia el Zap. Es el "CUANDO" de la automatización.
    * *Ejemplo:* **Cuando** se recibe un nuevo correo en Gmail con un archivo adjunto.

2.  **Action (Acción) ✅:** Es la **tarea** que se realiza automáticamente una vez que se activa el Trigger. Es el "HACER" de la automatización.
    * *Ejemplo:* **Haz** que ese archivo adjunto se guarde automáticamente en una carpeta de Google Drive.



Para automatizaciones más complejas, un Zap puede tener múltiples Acciones, filtros y pasos condicionales (lógica **`SI`**).

---

## 🎯 Ejemplo Práctico: Conexión con Google Sheets

En el contexto de tu curso y el ejercicio de facturación, Zapier podría manejar el proceso de automatización (UD 4 de Aplicaciones Web) de la siguiente manera:

| Proceso | Aplicación | Evento (Trigger o Acción) |
| :---: | :---: | :--- |
| **Paso 1: El Trigger** | **Google Sheets** | **Trigger:** Se añade una nueva fila a la hoja 'Registro' (o se marca una celda como 'Lista para enviar'). |
| **Paso 2: La Acción 1** | **Google Drive** | **Acción:** Generar y crear un nuevo archivo PDF de la hoja 'Factura' de Google Sheets (basado en los datos de la nueva fila). |
| **Paso 3: La Acción 2** | **Gmail** | **Acción:** Enviar un correo electrónico al cliente (tomando el email de la hoja 'Clientes') con el PDF recién generado como archivo adjunto. |

Usar Zapier (o su alternativa Make) en lugar de Google Apps Script es ideal para mostrar a los alumnos una solución **"Sin Código" (No-Code)** y una perspectiva de automatización que es muy popular en el mundo empresarial.

---

El siguiente video te explica cómo usar Zapier para conectar diferentes aplicaciones y automatizar tus tareas fácilmente: [Cómo usar ZAPIER - Crea AUTOMATIZACIONES fácilmente](https://www.youtube.com/watch?v=-Upn6lCHRQU).


http://googleusercontent.com/youtube_content/0
