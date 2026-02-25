# CREACION DE BD en  ACCESS

Guía  adaptada para **Microsoft Access**, con:

- Creación de tablas  
- Tipos de datos compatibles con Access  
- Claves primarias  
- Relaciones  
- Inserción de datos ampliados  

Access no soporta todas las instrucciones SQL estándar (como `AUTO_INCREMENT`, `DROP TABLE IF EXISTS`, `FOREIGN KEY` explícito en SQL, etc.).  
Por eso este script está **totalmente adaptado** para que puedas:

1. Crear una nueva base de datos en Access  
2. Abrir **Crear → Diseño de consulta → Vista SQL**  
3. Pegar este fichero completo  
4. Ejecutarlo por partes (Access ejecuta SQL por bloques, no todo de una vez)

---

# 📦 **FICHERO SQL COMPLETO PARA ACCESS**  
*(Compatible con Access 2010–2021 y 365)*

> **Nota importante:**  
> Access **no permite crear relaciones mediante SQL**.  
> Las relaciones tendrás que crearlas después desde **Herramientas de base de datos → Relaciones**.  
> Pero **sí permite crear tablas e insertar datos**, que es lo que incluye este fichero.

---

## 🧱 **1. CREACIÓN DE TABLAS**

```sql
CREATE TABLE Categorias (
    ID_Categoria AUTOINCREMENT PRIMARY KEY,
    NombreCategoria TEXT(50) NOT NULL
);

CREATE TABLE Productos (
    ID_Producto AUTOINCREMENT PRIMARY KEY,
    NombreProducto TEXT(100) NOT NULL,
    Precio DOUBLE NOT NULL,
    ID_Categoria LONG NOT NULL
);

CREATE TABLE Clientes (
    ID_Cliente AUTOINCREMENT PRIMARY KEY,
    Nombre TEXT(100) NOT NULL,
    Ciudad TEXT(100)
);

CREATE TABLE Facturas (
    ID_Factura AUTOINCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    ID_Cliente LONG NOT NULL
);

CREATE TABLE DetallesFactura (
    ID_Detalle AUTOINCREMENT PRIMARY KEY,
    ID_Factura LONG NOT NULL,
    ID_Producto LONG NOT NULL,
    Cantidad LONG NOT NULL
);
```

---

## 📥 **2. INSERCIÓN DE DATOS**

### **Categorías**
```sql
INSERT INTO Categorias (NombreCategoria) VALUES
('Bebidas'),
('Snacks'),
('Limpieza'),
('Dulces'),
('Panadería'),
('Lácteos');
```

### **Productos**
```sql
INSERT INTO Productos (NombreProducto, Precio, ID_Categoria) VALUES
('Coca-Cola 33cl', 1.20, 1),
('Agua mineral 1L', 0.80, 1),
('Zumo de naranja 1L', 1.50, 1),
('Patatas fritas', 1.50, 2),
('Nachos', 2.20, 2),
('Detergente líquido', 4.90, 3),
('Lejía 1L', 1.10, 3),
('Chocolate negro 70%', 2.30, 4),
('Galletas de mantequilla', 1.80, 4),
('Pan de molde', 1.40, 5),
('Croissant', 0.90, 5),
('Leche entera 1L', 0.95, 6),
('Yogur natural', 0.60, 6);
```

### **Clientes**
```sql
INSERT INTO Clientes (Nombre, Ciudad) VALUES
('Ana López', 'Madrid'),
('Carlos Ruiz', 'Bilbao'),
('Marta Pérez', 'Sevilla'),
('Javier Gómez', 'Valencia'),
('Lucía Martín', 'Barcelona'),
('Pedro Sánchez', 'Zaragoza');
```

### **Facturas**
```sql
INSERT INTO Facturas (Fecha, ID_Cliente) VALUES
(#2025-01-10#, 1),
(#2025-01-12#, 2),
(#2025-01-15#, 1),
(#2025-02-01#, 3),
(#2025-02-05#, 4),
(#2025-02-10#, 5),
(#2025-02-12#, 6),
(#2025-02-15#, 3),
(#2025-02-20#, 1),
(#2025-02-25#, 2);
```

### **Detalles de factura**
```sql
INSERT INTO DetallesFactura (ID_Factura, ID_Producto, Cantidad) VALUES
(1, 1, 3),
(1, 3, 2),
(1, 4, 1),

(2, 6, 1),
(2, 8, 2),

(3, 2, 5),
(3, 9, 1),

(4, 10, 2),
(4, 11, 4),

(5, 12, 3),
(5, 13, 6),

(6, 1, 1),
(6, 5, 2),
(6, 8, 1),

(7, 7, 2),
(7, 6, 1),

(8, 3, 3),
(8, 4, 2),

(9, 1, 6),
(9, 12, 2),

(10, 9, 3),
(10, 11, 2);
```

---

# 🔗 **3. RELACIONES (se crean manualmente en Access)**

Una vez creadas las tablas:

1. Ve a **Herramientas de base de datos → Relaciones**  
2. Añade todas las tablas  
3. Crea estas relaciones:

| Tabla origen | Campo | Tabla destino | Campo |
|--------------|--------|----------------|--------|
| Categorias | ID_Categoria | Productos | ID_Categoria |
| Clientes | ID_Cliente | Facturas | ID_Cliente |
| Facturas | ID_Factura | DetallesFactura | ID_Factura |
| Productos | ID_Producto | DetallesFactura | ID_Producto |

Activa **integridad referencial** en todas.

---

# 🎁 ¿Quieres que te genere también…?

Puedo prepararte:

- Un **fichero SQL con consultas**  
- Un **diagrama ER listo para imprimir**  
- Un **guion de clase** para explicar relaciones y consultas  
- Ejercicios para tus alumnos con soluciones  

Dime qué necesitas y te lo preparo.
