# Ejercicio 2 — Fichas de clientes colaborativas (Formularios + Hojas + Access)

**Objetivo:**
Implementar un flujo colaborativo para crear, editar y analizar fichas de clientes: formulario de captura, almacén en hoja de cálculo compartida y sincronización con una base Access.

**Entregables:**
- Formulario funcional (Google Forms, Microsoft Forms o formulario web).
- Hoja de cálculo con registros y dashboard de KPIs (`dashboard.xlsx` o `dashboard/`).
- Archivo Access (`clientes.accdb`) con tabla importada y esquema documentado.
- Documento `sincronizacion.md` con pasos para sincronizar datos.

**Pasos sugeridos:**
1. Definir esquema de datos (nombre, contacto, segmento, notas).
2. Crear formulario con validaciones y pruebas (≥30 envíos de ejemplo).
3. Normalizar y limpiar datos en la hoja; construir dashboard con tablas/pivotes.
4. Exportar a `CSV` e importar a Access, manteniendo relaciones.
5. Documentar el proceso y alternativas para sincronización automática.

**Restricciones:**
- Validar email y teléfono.
- Registrar fecha y autor de cada modificación (historial mínimo).

**Rúbrica (30 pts):**
- Diseño de datos y validaciones (8 pts).
- Dashboard y KPIs (8 pts).
- Calidad de la sincronización a Access (7 pts).
- Documentación y reproducibilidad (7 pts).

**Extensión (+4 pts):** integrar control de acceso y versiones usando OneDrive o SharePoint.