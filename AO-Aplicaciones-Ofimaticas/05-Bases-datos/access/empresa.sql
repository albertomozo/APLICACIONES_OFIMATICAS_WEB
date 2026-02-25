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

INSERT INTO Categorias (NombreCategoria) VALUES
('Bebidas'),
('Snacks'),
('Limpieza'),
('Dulces'),
('Panadería'),
('Lácteos');

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

INSERT INTO Clientes (Nombre, Ciudad) VALUES
('Ana López', 'Madrid'),
('Carlos Ruiz', 'Bilbao'),
('Marta Pérez', 'Sevilla'),
('Javier Gómez', 'Valencia'),
('Lucía Martín', 'Barcelona'),
('Pedro Sánchez', 'Zaragoza');


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