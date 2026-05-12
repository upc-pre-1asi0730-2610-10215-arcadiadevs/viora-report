# Capítulo V: Product Implementation, Validation & Deployment

## Software Configuration Management

### Software Development Environment Configuration

- Project Management
Para la gestión del proyecto y la administración de las necesidades del producto, el equipo utiliza las siguientes plataformas:

    - Discord: Se utiliza como centro de comunicación principal para las sesiones síncronas y coordinación. Integra Webhooks con GitHub para notificar en tiempo real las actividades de los repositorios. (https://discord.com/)

    - Trello: Plataforma utilizada para la priorización de tareas mediante tableros Kanban. (https://trello.com/)

- Requirements Management
Para la gestión de requisitos el se dividió en tres herramientas que permitieran conceptualizar las ideas del Lean UX Process y la información obtenida mediante las entrevistas.

    - UXPressia: Se utilizó para elaborar los artefactos de investigación, tales como los User Personas, Empathy Maps, Journey Maps e Impact Maps, centrando el diseño en las necesidades del usuario. (https://uxpressia.com/)

    - Miro: Se utilizó para la elaboración del Big Picture Event Storming, permitiendo explorar el dominio del negocio de forma visual. (https://miro.com/)

    - Trello: Se utilizó para la gestión y mantenimiento del Product Backlog y se usará para los Sprint Backlogs, asegurando que los requerimientos estén priorizados según el valor de negocio. (https://trello.com/)

- Product UX/UI Design
De acuerdo a la sección con relación al diseño del producto, se utilizaron 5 herramientas:

    - Figma: Para el diseño visual y de la interfaz, se centralizó el trabajo en Figma. Esta herramienta se usó para desarrollar los Wireframes y Mock-ups de la Landing Page; los Wireframes, Mock-ups y Prototypes de la aplicación web, asegurando el uso de Material Design como lenguaje de diseño. (https://www.figma.com/)

    - LucidChart: Se empleó LucidChart para realizar las conexiones en los Wireflows y User Flows. (https://www.lucidchart.com/)

    - Structurizr: Se empleó para la representación gráfica y estructuración de la Arquitectura de Software utilizando el C4 Model. (https://structurizr.com/)

    - PlantUML: Se empleó para la representación gráfica de los diagramas de clase y bases de datos. (http://www.plantuml.com/)

    - Miro: Se empleó para el desarrollo del Design-Level Event Storming, la Arquitectura de Información y de dominios. (https://miro.com/)

- Software Development
El entorno de desarrollo para la solución web distribuida se basará en un stack de tecnologías open-source, gestionado con las siguientes herramientas:

    - GitHub: Para el almacenamiento, hosteo y control de versiones del código fuente, facilitando el trabajo colaborativo de todo el equipo. (https://github.com/)

    - WebStorm: Entorno de desarrollo integrado (IDE) principal para el Frontend Web Application. Se utilizará para programar de manera eficiente con el framework Vue.js, gestionando la lógica en JavaScript bajo el estándar de documentación JSDoc, la estructura semántica en HTML5 y los estilos en CSS3. Se centrará en la creación de componentes reactivos y directivas personalizadas que respeten fielmente el Web Design del proyecto, combinandolo con la biblioteca de PrimeVue. (https://www.jetbrains.com/webstorm/download)

    - Rider: Entorno de desarrollo integrado (IDE) principal para el Backend. Se empleará para la codificación y despliegue de los Web Services bajo una arquitectura RESTful API, utilizando C# como lenguaje de programación , documentado bajo el estándar de XML Documentation y el framework ASP.NET Core. Su motor de análisis estático garantiza un código limpio y adherido a las convenciones de ingeniería de Microsoft. (https://www.jetbrains.com/rider/download)

    - Visual Studio Code: Entorno de desarrollo integrado (IDE) principal para el desarrollo de la Landing Page. Se utilizará para la maquetación semántica en HTML5, el diseño visual y responsivo mediante CSS3, y la interactividad con JavaScript bajo el estándar de documentación JSDoc, asegurando un código limpio, organizado y fácil de escalar. (https://code.visualstudio.com/Download)

- Software Deployment
Para cumplir con el ciclo de desarrollo y despliegue de una solución distribuida en la nube, se ha implementará una estrategia híbrida que separa la captación comercial de la lógica transaccional:

    - Vercel: Se utilizará para el despliegue del Landing Page. (https://vercel.com/)

    - Firebase: Se utilizará para el despliegue del frontend y backend de la plataforma. Para la capa de presentación, Firebase Hosting permitirá la distribución rápida y segura del contenido estático de la aplicación. Asimismo, se utilizará Cloud Functions for Firebase para la implementación de servicios backend serverless, permitiendo la exposición de APIs REST, ejecución de lógica de negocio y procesamiento de cálculos requeridos por la aplicación, sin necesidad de administrar infraestructura dedicada. (https://firebase.google.com/)

    - Azure Database for PostgreSQL: Servicio gestionado para la persistencia de datos. Se utilizará para el almacenamiento de polígonos de parcelas y datos agronómicos, aprovechando la extensión PostGIS para el procesamiento geográfico necesario en el proyecto. (https://azure.microsoft.com/es-es/products/postgresql/)

- Software Documentation
Para la documentación de la solución se considerará lo siguiente:

    - Visual Studio Code: Herramienta para la redacción modular del informe en Markdown, siguiendo una arquitectura de directorios organizada en Kebab-case para facilitar el enfoque "Docs-as-Code". (https://code.visualstudio.com/Download)

    - GitHub (Docs-as-Code): Aplicación de GitFlow, Conventional Commits y Semantic Versioning para el control de versiones de la documentación técnica y entregables. (https://github.com/)

    - Swagger (OpenAPI): Para la generación automática de la documentación de los Web Services, permitiendo visualizar claramente los parámetros, esquemas y respuestas de los endpoints (https://swagger.io/).

### Source Code Management

Para garantizar la integridad, trazabilidad y el trabajo colaborativo en el desarrollo de la solución web distribuida, el equipo ha establecido un esquema de organización basado en el control de versiones descentralizado.

- Estrategias de Repositorios
Se utiliza GitHub como plataforma principal para el almacenamiento y gestión del código fuente. La solución se ha dividido en tres repositorios independientes para facilitar el despliegue modular:

    - Landing Page: Contiene los archivos de maquetación semántica y estilos para el sitio informativo. (https://github.com/upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-website)

    - Frontend Web Application: Repositorio dedicado a la aplicación en Vue.js, incluyendo componentes de lógica de usuario y servicios de consumo de API. (https://github.com/upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp)

    - Web Services (Backend): Este repositorio centraliza la lógica de negocio desarrollada en ASP.NET Core. Incluye tanto el código del proyecto como la suite completa de pruebas unitarias, de integración y de aceptación (OpenAPI/Swagger). (https://github.com/upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-platform)

- Workflow de Control de Versiones: Gitflow
Se adopta el modelo GitFlow propuesto por Driessen (2010) para gestionar el ciclo de vida del software, asegurando que la rama de producción se mantenga siempre estable y aislada de las versiones en desarrollo.

    - Ejes de desarrollo:

        - main: Representa el estado actual de producción. Solo recibe cambios validados provenientes de ramas de lanzamiento o correcciones críticas.

        - develop: En esta rama se consolidan las nuevas funcionalidades antes de ser preparadas para un release.

    - Ramas auxiliares:

        - Feature branches (feature/nombre-tarea): Utilizadas para el desarrollo de requerimientos específicos. Se originan en develop y regresan a ella tras completar la funcionalidad.

        - Release branches (release/vX.X.X): Se crean para estabilizar una nueva versión del software. Permiten realizar ajustes menores antes de fusionarse con main y develop.

        - Hotfix branches (hotfix/descripcion-error): Ramas de emergencia originadas en main para resolver fallos críticos en producción que no pueden esperar al siguiente ciclo de desarrollo.

- Convenciones de Versionamiento (Semantinc Versioning)
El equipo aplica el estándar Semantic Versioning 2.0.0 (Semver, s.f.) para la nomenclatura de sus entregables y etiquetas de release. Las versiones se estructuran bajo el formato MAYOR.MENOR.PARCHE:

    - MAYOR: Se incrementa cuando se introducen cambios que rompen la compatibilidad con versiones previas (ej. v2.0.0).

    - MENOR: Se aumenta al añadir funcionalidades nuevas que mantienen la compatibilidad con el sistema actual (ej. v1.1.0).

    - PARCHE: Se utiliza para correcciones de errores menores y mejoras de rendimiento que no afectan la funcionalidad general (ej. v1.1.1).

- Estándar de mensajería: Conventional Commits
Para mantener un historial de cambios legible y automatizable, se implementa la especificación Conventional Commits 1.0.0, incorporando el uso de scopes para identificar el módulo afectado por la modificación.
La estructura de los mensajes de commit es la siguiente (Conventional Commits, s.f.):
\<type>(\<scope>): \<description>
\<optional body>
\<optional footer(s)>
    - Tipos principales:

        - feat: Incorporación de una nueva característica.

        - fix: Corrección de un fallo técnico.

        - docs: Cambios exclusivos en la documentación.

        - refactor: Modificaciones en el código que no añaden funcionalidades ni corrigen errores.

    - Scope: Indica la sección específica del proyecto afectada.

    - Description: Resumen breve en tiempo presente.

    - Optional body: Proporciona una explicación detallada de los cambios y la justificación técnica tras la modificación.

    - Optional footer: Utilizado para referenciar IDs de tareas o señalar cambios disruptivos con la etiqueta

    - Breaking Changes: Si un cambio rompe la compatibilidad, se añade el texto BREAKING CHANGE: en el pie del mensaje o un cierre de exclamación tras el tipo (ej. feat(auth)!: ...).

### Source Code Style Guide & Conventions

Para garantizar la consistencia, legibilidad y el mantenimiento a largo plazo del código fuente de Viora, el equipo ha establecido un conjunto de estándares y convenciones de codificación. Como norma transversal, toda la nomenclatura (variables, métodos, clases, comentarios y nombres de archivos) se redactará exclusivamente en inglés, facilitando la integración con bibliotecas internacionales y siguiendo los estándares de la industria.

A continuación, se detallan las guías de estilo adoptadas para cada tecnología del ecosistema:

- Gherkin (Especificaciones de comportamiento)
Para la redacción de criterios de aceptación y pruebas automatizadas, se siguen las Gherkin Reference Conventions de Cucumber.

    - Idioma: Todas las palabras clave (Feature, Scenario, Given, When, Then, And) se escriben en inglés.

    - Sintaxis: Se utiliza la estructura Given-When-Then para describir escenarios de interacción de forma comprobable.

    - Reutilización: Se prioriza el uso de Scenario Outline y tablas de Examples para agrupar pruebas basadas en datos, evitando la redundancia de código (Cucumber, s.f.).

- HTML (Estructura Web):
La maquetación de la Landing Page y los templates de Vue.js se rigen por la Google HTML/CSS Style Guide (Google, s.f.) y los estándares de W3Schools HTML5 Syntax (W3Schools, s.f.).

    - Sintaxis: Se utiliza minúscula para todas las etiquetas y atributos. Los valores de los atributos deben estar encerrados en comillas dobles (W3Schools, s.f.).

    - Semántica: Es obligatorio el uso de etiquetas semánticas (\<header>, \<main>, \<article>, \<footer>) para mejorar la accesibilidad y el SEO (W3Schools, s.f.).

    - Accesibilidad: Todas las imágenes deben incluir el atributo alt descriptivo, y los elementos de entrada deben estar vinculados a un \<label> (Google, s.f.).

- CSS (Estilos y diseño visual):
Se adopta la Google HTML/CSS Style Guide (Google, 2024) junto con la metodología de nomenclatura BEM (Block, Element, Modifier).

    - Formato: Se utiliza una indentación de 2 espacios. Los selectores deben ser cortos y específicos, evitando el uso excesivo de selectores de tipo (ej. div.content) para mejorar el rendimiento del renderizado (Google, 2024).

    - Nomenclatura: Se utiliza kebab-case para los nombres de clases (ej. viora-button--primary). Se prohíbe el uso de IDs para propósitos de estilo, reservándolos únicamente para anclajes o JavaScript.

- Javascript (Lógica del cliente):
Se consolidan las guías de Google (s.f.), MDN (s.f.) y W3C (s.f.):

    - Nomenclatura: Uso de camelCase para variables y funciones.

    - Declaraciones: Empleo exclusivo de const y let.

    - Sintaxis: Es obligatorio el uso de punto y coma (;) al final de cada sentencia.

    - JSDoc: Se utiliza para describir el propósito de las funciones, parámetros y valores de retorno.

- C# y ASP.NET Core (Lógica del servidor):
El desarrollo del backend se rige por las C# Coding Conventions de Microsoft (s.f.) y las Engineering Guidelines de ASP.NET Core (s. f.):

    - Nomenclatura: PascalCase para nombres de clases, interfaces y métodos. camelCase para variables locales y argumentos de métodos.Las interfaces deben comenzar con el prefijo "I".

    - Asincronía: Los métodos asíncronos deben incluir el sufijo Async en su nombre.

    - Estructura de bloque: Las llaves {} se colocan en una nueva línea.

    - XML Documentation Comments: Se utilizan XML Documentation Comments (///) para documentar APIs públicas, clases y métodos complejos.

- Vue.js (Framework frontend):
Se sigue la Vue Style Guide oficial (s.f.):

    - Componentes: Los nombres de los componentes deben estar compuestos por al menos dos palabras para evitar conflictos con elementos HTML.

    - Props: Deben definirse con camelCase en el código, pero usarse con kebab-case en los templates de HTML.

    - Directivas: Uso de la sintaxis abreviada (: para v-bind, @ para v-on y # para v-slot) para mantener la limpieza del template.

### Software Deployment Configuration

Para garantizar un proceso de despliegue automatizado, escalable y alineado con la arquitectura distribuida de la solución, se implementará un pipeline de Integración y Despliegue Continuo (CI/CD) utilizando GitHub Actions como herramienta de automatización. Este pipeline permitirá detectar cambios integrados en las ramas principales de los repositorios, ejecutar procesos de validación, compilación y despliegue continuo, y asegurar la trazabilidad de cada versión liberada bajo el esquema GitFlow y Semantic Versioning adoptado por el equipo.

- Landing Page: A partir del repositorio fuente, el sitio informativo será compilado y desplegado automáticamente en Vercel, optimizando la distribución del contenido estático y permitiendo una entrega continua orientada a alta disponibilidad.

- Frontend Web Applications: La aplicación desarrollada en Vue.js será construida y publicada mediante Firebase Hosting, permitiendo una distribución rápida y segura de los recursos estáticos de la plataforma utilizando infraestructura administrada y escalable.

- Web Services (Backend): Los servicios backend desarrollados en ASP.NET Core serán desplegados utilizando Cloud Functions for Firebase, permitiendo la ejecución serverless de APIs REST, lógica de negocio y procesamiento de cálculos requeridos por la plataforma. Estas funciones se integrarán con Azure Database for PostgreSQL para la persistencia de información agronómica y el procesamiento geoespacial mediante PostGIS.

\newpage