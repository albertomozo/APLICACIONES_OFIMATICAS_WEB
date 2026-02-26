Perfecto, Alberto. Te dejo **un modelo completo de formulario** listo para que lo puedas recrear directamente en tu pestaña de *Microsoft Forms* (la que tienes abierta ahora mismo). Está pensado específicamente para el **Concurso de Carteles de la Semana Grande de Donostia**, con todos los campos necesarios para que luego puedas automatizar el flujo en Power Automate y gestionar los carteles en OneDrive/SharePoint.

---

## 📝 Modelo de formulario para el Concurso de Carteles

### **Título del formulario**
**Concurso de Carteles – Semana Grande de Donostia 2026**

### **Descripción**
Participa enviando tu propuesta de cartel para la Semana Grande de Donostia 2026.  
Rellena los datos solicitados y adjunta tu obra en formato JPG, PNG o PDF.  
La participación implica la aceptación de las bases del concurso.

---

## 📌 Campos recomendados

### **1. Datos del participante**
- **Nombre y apellidos** (Respuesta corta)  
- **Seudónimo artístico** (Respuesta corta)  
  *Útil si el concurso requiere anonimato para el jurado.*
- **Correo electrónico** (Respuesta corta)  
- **Teléfono de contacto** (Opcional)

---

### **2. Datos del cartel**
- **Título del cartel** (Respuesta corta)  
- **Descripción breve de la obra** (Párrafo, opcional)  
- **Subida del archivo del cartel** (Pregunta tipo *Cargar archivo*)  
  - Tipos permitidos: JPG, PNG, PDF  
  - Límite: 1 archivo  
  - Tamaño máximo: el que permita Forms  
  - Carpeta automática: Forms creará una carpeta, pero luego Power Automate lo moverá a OneDrive/SharePoint

---

### **3. Declaraciones y permisos**
- **Confirmación de autoría** (Opción obligatoria)  
  - “Declaro que soy el autor/a original de la obra presentada.”
- **Cesión de derechos para uso en el concurso** (Opción obligatoria)  
  - “Acepto la cesión de derechos de reproducción según las bases del concurso.”
- **Aceptación de bases legales y RGPD** (Opción obligatoria)  
  - “He leído y acepto las bases del concurso y la política de protección de datos.”

---

### **4. Envío**
- Activar **"Enviar recibo de respuesta"** para que el participante reciba confirmación.  
- Activar **"Una sola respuesta por persona"** si quieres evitar duplicados (solo funciona con cuentas identificadas).

---

## 🎨 Opcional: preguntas para facilitar la gestión posterior
- **Categoría** (si hubiera varias)  
- **¿Has participado en ediciones anteriores?**  
- **¿Cómo te enteraste del concurso?** (para estadísticas)

---

## 🔧 Configuración recomendada en Forms
- **Restringir a usuarios de la organización** si quieres permitir subida de archivos sin problemas.  
- Si el concurso es **público**, tendrás que gestionar la subida de archivos con una alternativa (pero si ya lo tenéis interno, perfecto).

---

Si quieres, puedo generarte **el texto exacto para copiar y pegar** en cada pregunta de Forms, o incluso ayudarte a **configurar el flujo de Power Automate** que moverá el archivo a OneDrive y creará el registro en SharePoint.

¿Quieres que prepare también el **flujo automático** paso a paso?