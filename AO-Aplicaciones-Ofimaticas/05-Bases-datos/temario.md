La organización de un curso de 40 horas que integre la teoría relacional (utilizando Access como herramienta principal) con un enfoque en red y la introducción a plataformas web como Notion o Airtable requiere un equilibrio cuidadoso entre la teoría fundamental y la aplicación práctica moderna.

El material de origen proporciona una base sólida en el **Modelo Relacional** (concepto de dato, modelos conceptual, lógico y físico, y normalización), además de incluir referencias a entornos de red y tipos de bases de datos no relacionales (**SQL vs. NoSQL**, MongoDB, bases de datos orientadas a documentos/grafos).

A continuación, se presenta una posible estructura modular para el curso de 40 horas, dividida en cuatro módulos temáticos principales:

---

### Estructura del Curso de Bases de Datos (40 Horas)

| Módulo | Enfoque Principal | Horas Estimadas | Contenido Clave Basado en Fuentes |
| :--- | :--- | :--- | :--- |
| **I** | **Fundamentos de Datos y Modelo Conceptual** | 8 Horas | Concepto, ciclo de vida y tipos de datos (estructurados, semiestructurados, no estructurados). Introducción a los modelos de datos (conceptual, lógico, físico). El **Modelo Relacional** como pilar (origen, base en tablas). Diagramas Entidad-Relación (E-R): Entidades, Relaciones, Atributos. |
| **II** | **Diseño Relacional y Normalización** | 10 Horas | Profundización en el Modelo Relacional: Tablas, tuplas, atributos, la relación. Claves: Súperclave, candidata, y clave primaria. Tipos de relaciones (1:N, 1:1, N:M) y ejercicios de identificación. **Normalización**: Objetivos (reducir redundancia, eliminar anomalías) y Formas Normales (1FN, 2FN, 3FN). Transformación del modelo conceptual a un esquema relacional (Modelo Lógico). |
| **III** | **Implementación Local y Bases de Datos en Red (Access y SQL)** | 12 Horas | Implementación del **Modelo Lógico en Microsoft Access**. Creación de tablas, definición de relaciones (claves foráneas) y aplicación de restricciones. Introducción a la gestión de datos (formularios y consultas básicas en Access). **Enfoque en Red/Cliente-Servidor**: Discusión sobre sistemas informáticos de almacenamiento y el modelo cliente-servidor. Mención de RDBMS estándar como PostgreSQL y MariaDB y su uso en red. Uso de lenguajes como SQL (fundamento del modelo relacional). |
| **IV** | **Ecosistemas de Datos Modernos (BBDD en Internet)** | 10 Horas | Acceso a datos en aplicaciones web. Comparación teórica **SQL vs. NoSQL**. Exploración de diferentes tipos de bases de datos modernas (documentos, grafos, NoSQL). **Aplicación práctica con Notion y/o Airtable**: Se utilizarían estas herramientas web para mostrar una gestión de datos *en línea y colaborativa*, y cómo manejan la información y las "relaciones" en un entorno distinto al relacional estricto de Access, a menudo operando con datos semiestructurados (como el ejemplo JSON en las fuentes). Se realizaría una réplica de una pequeña BBDD diseñada en Access dentro de una de estas plataformas para contrastar. |

---

### Justificación y Enfoque

Este plan de 40 horas combina la solidez teórica necesaria para entender la estructura de datos con la exposición a herramientas relevantes en el entorno de la ofimática moderna y la web, cumpliendo con todas las premisas solicitadas:

1.  **Enseñanza de Teoría Relacional con Access (Módulos I y II):** Las primeras 18 horas se dedican a establecer la base teórica del modelo relacional, desde el concepto de dato hasta las formas normales. Access sirve como el **vehículo práctico** para implementar estos conceptos (Módulo III), haciendo tangible el paso del diseño lógico al físico.
2.  **Toque más en Red (Módulo III):** Aunque Access es tradicionalmente local, se cumple el requisito de "toque en red" introduciendo la perspectiva Cliente-Servidor y contrastando Access con los Sistemas Gestores de Bases de Datos (SGBD) relacionales robustos de red, como PostgreSQL o MariaDB, mencionados en el material.
3.  **BBDD en Internet (Notion/Airtable en Módulo IV):** Se utiliza la teoría disponible sobre datos no estructurados y semiestructurados y la comparación **SQL vs. NoSQL** para enmarcar a Notion o Airtable. Estas plataformas funcionan como **herramientas de gestión de datos amigables para el usuario final** en la nube, permitiendo a los estudiantes ver cómo los conceptos de relaciones y tablas se manifiestan en un contexto web moderno y colaborativo, más allá del formato tradicional de Access. Este módulo capitaliza el concepto de "acceso a datos en aplicaciones web del entorno servidor".