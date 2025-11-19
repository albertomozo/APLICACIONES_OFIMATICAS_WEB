# ✅ **ENUNCIADOS PARA CREAR CUESTIONARIOS CON BIFURCACIONES**

A continuación tienes **10 enunciados completos**, cada uno con su lógica de bifurcación propuesta.

---

## **1. Test de Nivel de Informática para un Curso**

El formulario debe:

* Preguntar al usuario por su nivel (Básico / Medio / Avanzado).
* Según la respuesta, enviarlo a un bloque de preguntas diferentes.
* Al final, mostrar una sección común para recoger contacto.

**Bifurcaciones:**

* Si “Básico” → Sección 2
* Si “Medio” → Sección 3
* Si “Avanzado” → Sección 4
* Todas las secciones → Sección 5 “Contacto”

---

## **2. Cuestionario de soporte técnico**

El formulario simula un soporte por ticket:

* Preguntar si el problema es de: Red / Ordenador / Software / Otros.
* Cada tipo tiene preguntas específicas.
* Si la persona marca “Otros”, ir a una sección libre para describir el problema.

**Bifurcaciones:**

* Red → Sección “Conectividad”
* Ordenador → Sección “Hardware”
* Software → Sección “Programas”
* Otros → Sección “Describe tu caso”

---

## **3. Diagnóstico de averías en un PC**

El formulario debe:

* Preguntar: “¿El ordenador enciende?”

  * Si NO → Ir a sección “Revisión de alimentación”.
  * Si SÍ → Preguntar “¿Llega al escritorio?”

    * Si NO → Ir a sección “Errores de arranque”.
    * Si SÍ → Ir a “Problemas dentro del sistema”.

---

## **4. Encuesta de satisfacción de un curso**

El formulario debe:

* Preguntar si el alumno asistió al curso completo.
* Si respondió “No”, ir a una sección llamada “Razones de abandono”.
* Si respondió “Sí”, ir a una sección con preguntas sobre contenidos, profesor, recursos.

---

## **5. Formulario de recomendación de portátil**

Debe:

* Preguntar el uso principal del equipo (Juegos / Estudio / Oficina / Diseño gráfico).
* Cada opción muestra una guía diferente con recomendaciones.
* Al final, todos llegan a “Resumen”.

---

## **6. Solicitud de cita médica**

El formulario debe:

* Preguntar el tipo de consulta (Medicina general / Odontología / Psicología).
* Cada tipo tiene requisitos previos distintos.
* Preguntar si el usuario es paciente nuevo o ya está registrado.

  * Si nuevo → Solicitar datos básicos.
  * Si registrado → Pedir solo DNI.

---

## **7. Simulador de elección de carrera profesional**

Debe:

* Preguntar si prefiere áreas técnicas, sociales, sanitarias o artísticas.
* Cada área tiene preguntas para afinar recomendación.
* Mostrar una sección final con propuestas de estudios.

---

## **8. Solicitud de inscripción a actividades deportivas**

Debe:

* Preguntar si la persona es mayor de edad.

  * Si NO → Enviar a sección “Autorización paterna”.
  * Si SÍ → Pasar a “Elección de actividad”.
* Preguntar modalidad: Natación / Gimnasio / Yoga.
* Cada modalidad tiene preguntas específicas.

---

## **9. Evaluación del puesto de trabajo**

Debe:

* Preguntar si el usuario teletrabaja o trabaja presencialmente.
* Si teletrabaja → Sección sobre ergonomía en casa.
* Si presencial → Sección sobre mobiliario del puesto.
* Preguntar si experimenta “dolores o molestias”.

  * Si SÍ → Sección de ampliación.
  * Si NO → Ir directamente al cierre.

---

## **10. Test de autoevaluación sobre conceptos básicos de informática**

Debe:

* Preguntar al usuario: “¿Sabes qué es el hardware?”

  * Si “Sí” → Hacer pregunta avanzada relacionada.
  * Si “No” → Ir a una sección con explicación breve antes de seguir.
* Repetir el mismo patrón para:

  * Software
  * Sistema operativo
  * CPU
  * Memoria
  * Almacenamiento

