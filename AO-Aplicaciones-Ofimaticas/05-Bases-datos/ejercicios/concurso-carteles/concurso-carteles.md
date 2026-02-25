## 🚀 Ejercicio Avanzado: Sistema de Inscripción Low-Code - "Aste Nagusia 2026"

### **Objetivo:**

Desarrollar un ecosistema digital completo para la gestión del **Concurso de Carteles de la Semana Grande de Donostia**. El alumno deberá configurar una base de datos profesional online que permita no solo captar los datos, sino gestionarlos visualmente (flujos de aprobación, galerías de arte y estados de revisión).

### **Herramientas a elegir (Enfoque Triple):**

1. **Airtable:** Para un enfoque puramente relacional y de automatización.
2. **Notion:** Para un enfoque documental y estético (usando *Notion Forms* o integración con *Tally*).
3. 
**Google Sheets + Apps Script:** Para un enfoque basado en programación y fórmulas avanzadas.



---

### **Paso 1: Arquitectura de la Base de Datos**

Define los campos en tu plataforma elegida. A diferencia de una hoja simple, aquí debes asegurar los tipos de datos correctos:

* **Autor:** Nombre (Texto), DNI (Texto con validación), Email (Email).
* **La Obra:** Título (Texto), Lema (Texto largo).
* 
**Archivo Multimedia:** Campo de tipo **Attachment/Archivo** para subir el cartel en alta resolución.


* **Estado de la Propuesta:** Select/Etiqueta (Opciones: *Recibido, En Revisión, Finalista, Descalificado*).
* 
**Fecha de Registro:** Creado automáticamente (Date).



### **Paso 2: Creación del Formulario Dinámico**

Genera la interfaz de entrada de datos:

* **Airtable:** Usa la vista "Form" para crear una URL pública.
* **Notion:** Usa una base de datos en vista de tabla y crea un formulario externo vinculado (ej. Tally.so o formularios nativos).
* 
**Requisito Multimedia:** El formulario debe tener un encabezado con la identidad visual (logo) creada en el ejercicio de la **Empresa 360** para mantener la coherencia de marca.



### **Paso 3: Gestión y Visualización (El valor de la DB)**

No te limites a guardar los datos; crea vistas útiles para el jurado del concurso:

1. **Vista de Galería:** Crea una vista donde se vean las miniaturas de los carteles de forma atractiva.


2. **Vista Kanban:** Organiza las propuestas según su "Estado" (de *Recibido* a *Finalista*).


3. **Filtros Avanzados:** Crea una vista que solo muestre las obras entregadas en las últimas 24 horas.



---

### **Paso 4: Automatización e Interfaz (Bonus)**

* **Notificación:** Configura una automatización para que, cuando entre un nuevo cartel, el autor reciba un correo de confirmación automático (puedes usar las automatizaciones nativas de Airtable o Zapier/Make).


* **Incrustación:** Genera el código para insertar la **Galería de Propuestas** en una página web, permitiendo que el público vea los carteles (pero no los datos privados de los autores).



---



