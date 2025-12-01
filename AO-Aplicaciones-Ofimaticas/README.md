# AO - Aplicaciones Ofimáticas

Resumen
- Carpeta dedicada a los contenidos del módulo de Aplicaciones Ofimáticas.
- Contiene sub-áreas: instalación, procesador de texto, correo, hojas de cálculo, bases de datos, imágenes, vídeo, presentaciones e integración IA.

Estructura encontrada (síntesis)
- 01-Instalación-aplicaciones/
  - apoyo/plantillas/
  - ejercicios/
- 02-proc-texto/
  - guias/, ejercicios/, ejercicio_final/
- 03-correo/, 04-hojas-calculo/, 05-Bases-datos/, 06-Manipulación-imagenes/, 07-Manipulacon-videos/, 08-presentaciones/
- IA/ (integración IA y objetivos)

Problemas y recomendaciones inmediatas
- Normalizar nombres: usar guiones o guion_bajo consistente y sin tildes opcionalmente (ej.: 02-proc-texto -> 02-procesador-texto).
- Unificar prefijos numéricos de dos dígitos: 01, 02, 03... para ordenar correctamente.
- Corregir duplicados/variantes de archivos (ej. varios E_06_* en proc-texto).
- Añadir un `00-index.md` en cada subcarpeta con índice y objetivos de la unidad.
- Añadir metadatos YAML en las guías principales si se exportará a LMS (título, duración, competencias, tags).
- Consolidar plantillas en `/recursos/plantillas/` y referenciar desde ejercicios.

Convenciones de nombres sugeridas
- Módulo: 02-procesador-texto/
- Unidad: unidad_01_formato/
- Guía: guia_02_estilos.md
- Ejercicio: E_02_estilos_unidad01.md
- Recursos generales: recursos/glosario.md, recursos/plantillas/plantilla_cv.md

Buenas prácticas para LMS/reutilización
- Mantener rutas relativas para imágenes y adjuntos.
- Crear un `metadata.json` o frontmatter YAML con: id_modulo, id_unidad, duracion_horas, tipo (guia/ejercicio/apoyo).
- Incluir un `licence.md` o aclarar derechos de uso de contenidos y recursos.

Tareas propuestas (priorizadas)
1. Añadir `README.md` (este) y `00-index.md` en cada subcarpeta.
2. Normalizar nombres de carpetas y archivos con script o manualmente.
3. Eliminar/ fusionar archivos duplicados (E_06*).
4. Añadir metadatos en guías principales para la exportación a LMS.

