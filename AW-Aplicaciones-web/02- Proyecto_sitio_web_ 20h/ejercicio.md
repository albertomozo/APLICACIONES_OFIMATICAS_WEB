# ✅ **GUÍA DE APOYO PARA REALIZAR EL PROYECTO EN WORDPRESS**

Esta guía está pensada para que los alumnos puedan implementar paso a paso todos los requisitos usando WordPress sin necesidad de programar, más allá de conocer HTML básico para retoques puntuales.

---

# 🎯 **1. Preparación del entorno**

### **1.1. Instalación de WordPress**

Pueden usar:

* **LocalWP (recomendado para principiantes)**
* XAMPP + WordPress
* Hosting gratuito (por ejemplo infinityfree.com)

### **1.2. Configuración inicial**

* Acceder a `http://localhost/…/wp-admin` (local)
             `https://midominio.infinityfreeapp.com/wp-admin` (remoto en hosting gratuito)
* Ir a **Apariencia → Temas**
* Instalar un tema sencillo y flexible:

  * **Astra**
  * **GeneratePress**
  * **Twenty Twenty-Four**
* Instalar un tema hijo si quieren personalizar estilos, pero no es obligado para principiantes.

---

# 🧩 **2. Estructura de Contenidos (Categorías, entradas y páginas)**

El proyecto pide **mínimo 6 categorías** y **mínimo 3 elementos por categoría**.

## ✔ **2.1. Crear las categorías**

Ir a:
**Entradas → Categorías**

Crear estructuras como:

* Categoría 1
* Categoría 2
* Categoría 3
* Categoría 4
* Categoría 5
* Categoría 6

(reemplazando los nombres según el tema elegido)

En cada categoría rellenar:

* Nombre (Denominación principal)
* Descripción (aparecerá pública en temas compatibles)

---

## ✔ **2.2. Crear los elementos públicos**

Ir a:
**Entradas → Añadir nueva**

Cada entrada debe incluir:

* **Descripción principal**
* **Características del elemento** (lista HTML)
* **Galería** (mínimo 3 imágenes)
  → Insertar galería desde “Añadir medios”

Asignar la categoría correspondiente.

✔ Repetir hasta tener **3 elementos por categoría**.

---

## ✔ **2.3. Contenidos privados (solo para usuarios registrados)**

Opciones más sencillas:

### 🔹 **Opción A: Usar plugin “Members”**

Permite ocultar contenido según roles.

Pasos:

1. Instalar plugin **Members**.
2. Editar cada entrada.
3. En el bloque final de la entrada, añadir un bloque **“Contenido solo para miembros”**
   con la información extra (texto, fotos, datos sensibles, etc.).
4. Configurar visibilidad → Solo usuarios registrados.

### 🔹 **Opción B: Usar plugin “Paid Memberships Pro” (gratuito)**

Permite ocultar zonas completas con shortcodes:

```
[member]Contenido visible solo para usuarios registrados[/member]
```

---

# 🖼️ **3. Galerías y sliders**

Para las galerías de 3 fotos mínimo por elemento, usar plugins fáciles:

* **Smart Slider 3**
* **MetaSlider**
* **Soliloquy Lite**

Pasos:

1. Instalar plugin
2. Crear slider → Añadir las 3 fotos
3. Insertar el slider en la entrada (con shortcode o botón del editor)

---

## Esquema de proyecto

![Categorias](materiales/categorias.png)

---

# 📰 **4. Banners Publicitarios**

Crear un **widget** de imagen o HTML con un banner.

Pasos:

1. Ir a **Apariencia → Widgets**
2. Añadir widget:

   * Imagen con enlace publicitario
   * O HTML propio si quieren practicar:

   ```html
   <a href="#">
     <img src="URL_DEL_BANNER" alt="Publicidad">
   </a>
   ```
3. Colocar el widget en:

   * Sidebar
   * Footer superior

---

# 📝 **5. Formularios**

## ✔ 5.1. Formulario de satisfacción (usuarios públicos)

Plugins recomendados:

* **WPForms Lite**
* **Google Forms incrustado**

Para WPForms:

1. Crear formulario → Tipo encuesta
2. Añadir preguntas de satisfacción
3. Insertar con shortcode en una página “Encuesta”

## ✔ 5.2. Formulario de contacto obligatorio

Debe incluir:

* Datos personales
* Tema o elemento del que desea información

En WPForms:

* Campos:

  * Nombre (obligatorio)
  * Email (obligatorio)
  * Selección de categoría o elemento (lista desplegable)
  * Mensaje

---

# 💬 **6. Contacto para usuarios registrados**

Crear una página:

* “Zona de usuarios”
* Añadir formulario WPForms visible solo para registrados
  usando el plugin **Members**:

  * Visibilidad → Solo “Subscribers / Registered users”

---

# 🧭 **7. Menú principal**

Ir a:
**Apariencia → Menús**

Crear menú con:

* Inicio
* Categoría 1
* Categoría 2
* ...
* Encuesta
* Contacto
* Zona de Usuarios (solo registrada)

---

# 👥 **8. Gestión de usuarios (Requisitos administrativos)**

Ir a:
**Usuarios → Añadir nuevo**

Crear:

1. **admin** → contraseña **root** → Rol **Administrador**
2. **mfrances** → contraseña **mfrances** → Rol **Suscriptor** (usuario registrado)
3. Usuario Autor → Rol **Autor**
4. Usuario Editor → Rol **Editor**
5. Usuario Supervisor o Publisher
   → El rol equivalente es **Publicador** (se crea con plugin “Members” si el tema lo pide)

---

# 🎁 **9. Revisión final: Checklist del proyecto**

### ✔ Contenidos

* [ ] 6 categorías
* [ ] 3 elementos por categoría
* [ ] Galería con 3 imágenes por cada elemento
* [ ] Contenidos privados para usuarios registrados
* [ ] Página de encuesta
* [ ] Página de contacto

### ✔ Diseño

* [ ] Presentación atractiva
* [ ] Slider o carrusel en cada elemento
* [ ] Banners configurados

### ✔ Usuarios

* [ ] admin (root)
* [ ] mfrances (mfrances)
* [ ] Autor
* [ ] Editor
* [ ] Supervisor/Publisher

---

# 🎨 **10. Temas sugeridos para que los alumnos desarrollen su proyecto**

Los temas deben tener suficientes categorías y elementos.

## **Tema 1 — Rutas Turísticas por Gipuzkoa** (encaja muy bien con tus ejercicios anteriores)

Categorías posibles:

* Playas
* Montañas
* Pueblos
* Parques naturales
* Senderos
* Miradores

## **Tema 2 — Guía de Mascotas**

Categorías:

* Perros
* Gatos
* Aves
* Reptiles
* Pequeños mamíferos
* Peces

## **Tema 3 — Tecnología para principiantes**

Categorías:

* Ordenadores
* Móviles
* Redes sociales
* Seguridad digital
* Aplicaciones ofimáticas
* Nube y almacenamiento

## **Tema 4 — Cocina Internacional**

Categorías:

* Italiana
* Japonesa
* Mexicana
* India
* Española
* Árabe


