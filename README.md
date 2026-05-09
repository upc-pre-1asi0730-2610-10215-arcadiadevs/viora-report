# Informe de Trabajo Final - Viora

## Descripción General del Proyecto

Este informe presenta el trabajo final del curso **1ASI0730 - Aplicaciones Web** de la Universidad Peruana de Ciencias Aplicadas. El proyecto consiste en el desarrollo de **Viora**, una plataforma SaaS B2B especializada en la gestión inteligente del ciclo de producción de aceitunas.

**Viora** es una propuesta de solución tecnológica desarrollada por el equipo **ArcadiaDevs**, un equipo de ingeniería y diseño que convierte datos complejos en decisiones simples y rentables para el sector agroindustrial. La plataforma combina el monitoreo de variables de suelo y clima para emitir alertas epidemiológicas tempranas, brindando a los productores recomendaciones precisas y conectándolos directamente con profesionales especializados en control de plagas agrícolas.

### Problemática Abordada

El sector olivarero del sur del Perú enfrenta una alta vulnerabilidad sistémica frente a:
- **Variabilidad climática extrema**: Eventos como El Niño-Oscilación del Sur (ENOS) que provocan déficit de horas de frío, afectando la fenología del cultivo y causando mermas productivas de hasta 90%
- **Emergencias fitosanitarias**: Plagas cuarentenarias como *Xylella fastidiosa* que pueden disminuir la capacidad productiva entre 25% y 30%
- **Gestión reactiva**: Las decisiones de campaña se toman con información tardía, impidiendo la prevención y planeación efectiva

### Solución Propuesta

Viora ofrece una plataforma centralizada y basada en datos que:
- Optimiza la toma de decisiones mediante analítica predictiva
- Previene plagas de forma temprana mediante alertas epidemiológicas
- Maximiza la calidad productiva y comercial de los cultivos
- Conecta productores con profesionales especializados en control de plagas

---

## Información Académica

- **Universidad**: Universidad Peruana de Ciencias Aplicadas (UPC)
- **Carrera**: Ingeniería de Software
- **Ciclo Académico**: 202610
- **Curso**: 1ASI0730 - Aplicaciones Web (Código: 10215)
- **Docente**: Velasquez Nuñez, Angel Augusto
- **Fecha de entrega**: Mayo, 2026

---

## Equipo de Desarrollo (ArcadiaDevs)

### Integrantes

| Nombre | Código | Rol en el Equipo |
|--------|--------|------------------|
| Espada Lazo, Piero Anthony | U20241d924 | COO, Researcher & QA |
| Li Gayoso, Diana Carolina | U202415749 | CMO & UX Lead |
| Paredes Maza, Victor Juan de Dios | U202416274 | CEO & Product Owner |
| Santi Guerrero, Fabrizio Alonso | U202411774 | CPO & System Architect |
| Trinidad Leon, Jahat Jassiel | U202412248 | CTO & Integrador DevOps |

### Perfiles del Equipo

- **Victor Paredes Maza (CEO & Product Owner)**: Lidera con visión estratégica, criterio, innovación, orden y enfoque en la calidad
- **Fabrizio Santi Guerrero (CPO & System Architect)**: Desarrollador enfocado en backend y arquitectura de software con conocimientos en SQL, C++, Python, JavaScript
- **Jahat Trinidad Leon (CTO & Integrador DevOps)**: Especialista en DevOps y arquitectura de software, maneja C++, Java, Python, GitFlow y GitHub Actions
- **Diana Li Gayoso (CMO & UX Lead)**: Lidera el diseño y experiencia del usuario, coordinando la calidad del producto
- **Piero Anthony Espada Lazo (COO, Researcher & QA)**: Lidera los procesos de validación y análisis técnico con sólidos conocimientos en C++, Python y desarrollo web

---

## Estructura del Informe

El informe se organiza en **5 capítulos principales** junto con material preliminar y complementario:

### Material Preliminar (Front Matter)

1. **Portada**: Información institucional, del curso y del equipo
2. **Registro de Versiones**: Historial de modificaciones del documento
3. **Collaboration Insights**: Métricas de colaboración del equipo
4. **Contenido**: Índice detallado del informe
5. **Student Outcome**: Resultados de aprendizaje alcanzados

### Capítulo I: Introducción

- **1.1 Startup Profile**: Descripción de ArcadiaDevs, misión, visión y perfiles del equipo
- **1.2 Solution Profile**: Antecedentes, problemática detallada (5W+2H), objetivos del proyecto, restricciones y Lean UX Process
- **1.3 Segmentos Objetivo**: Definición de los dos macro-segmentos: productores olivareros y profesionales en control de plagas agrícolas

### Capítulo II: Requirements Elicitation & Analysis

- **2.1 Competidores**: Análisis de soluciones existentes en el mercado
- **2.2 Entrevistas**: Entrevistas a profundidad con usuarios de ambos segmentos objetivo
- **2.3 Needfinding**: Proceso de descubrimiento de necesidades y patrones identificados

### Capítulo III: Requirements Specification

- **3.1 User Stories**: Historias de usuario derivadas de las necesidades identificadas
- **3.2 Impact Mapping**: Mapeo de impacto para conectar objetivos con soluciones
- **3.3 Product Backlog**: Lista priorizada de funcionalidades del producto

### Capítulo IV: Product Design

- **4.1 Style Guidelines**: Directrices de diseño general y específicas para web
- **4.2 Information Architecture**: Arquitectura de información de la plataforma
- **4.3 Landing Page UI Design**: Diseño de interfaz de usuario para la landing page
- **4.4 Web Applications UX/UI Design**: Diseño de experiencia y usuario para las aplicaciones web
- **4.5 Domain-Driven Software Architecture**: Arquitectura de software guiada por el dominio (Modelo C4)
- **4.6 Software Object-Oriented Design**: Diseño orientado a objetos del sistema
- **4.7 Database Design**: Diseño de la base de datos relacional

### Capítulo V: Product Implementation, Validation & Deployment

- **5.1 Software Configuration Management**: Gestión de configuración de software, incluyendo control de versiones, CI/CD y despliegue

### Material Complementario (Back Matter)

- **Conclusiones**: Síntesis de logros y aprendizajes del proyecto
- **Bibliografía**: Referencias bibliográficas utilizadas
- **Anexos**: Material complementario y documentación adicional

---

## Stack Tecnológico

Según las restricciones del proyecto:

- **Landing Page**: HTML5, CSS3, JavaScript
- **Frontend**: Vue Framework con PrimeVue (Material Design)
- **Backend**: ASP.NET Core Framework con C# (RESTful API)
- **Documentación API**: OpenAPI Specification mediante Swagger
- **Arquitectura**: Modelo C4 (Context, Container, Component) y Domain-Driven Design (DDD)
- **Despliegue**: Plataformas Server-Side o Cloud con acceso público mediante URL

**Nota**: El proyecto se limita al desarrollo de software; no incluye implementación de hardware, sensores físicos ni tecnologías IoT de campo.

---

## Metodología

El proyecto sigue el enfoque **Lean UX** para el desarrollo de producto, enfocado en:
- Validación temprana de hipótesis
- Iteración rápida basada en feedback
- Colaboración multidisciplinar
- Enfoque en el resultado de negocio y experiencia del usuario

---

## Estado del Proyecto

**Versión actual**: v1.12.0  
**Última actualización**: 24/04/2026  
**Estado**: Entrega AV1 completada

Para más detalles sobre el historial de versiones, consultar el archivo `report/front-matter/01-version-register.md`.

---

## Contacto

Para consultas sobre este informe, contactar al equipo de desarrollo o al docente del curso.
