## Landing Page, Services & Applications Implementation

### Sprint 1

#### Sprint Planning 1

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 1, llevada a cabo de manera virtual mediante la plataforma Discord. El propósito central de esta reunión fue alinear los esfuerzos técnicos con la estrategia de captación de la marca Viora, definiendo un compromiso de trabajo basado en una velocidad de 20 puntos para abordar un conjunto de historias de usuario que suman 18 puntos de esfuerzo.

A continuación, se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, los responsables de la documentación y el Sprint Goal diseñado para garantizar que este primer incremento de software entregue valor real a los productores y especialistas del sector olivarero.

\begin{tabular}{p{0.30\textwidth} p{0.65\textwidth}}
\hline
\textbf{Sprint \#} & Sprint 1 \\ \hline
\multicolumn{2}{l}{\textbf{Sprint Planning Background}} \\ \hline
\textbf{Date} & 2026-05-09 \\
\textbf{Time} & 05:10 PM \\
\textbf{Location} & Discord (Virtual) \\
\textbf{Prepared By} & Paredes Maza, Victor Juan de Dios \\
\textbf{Attendees} & Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Victor Juan de Dios / Santi Guerrero, Fabrizio Alonso / Trinidad Leon, Jahat Jassiel \\ \hline
\multicolumn{2}{l}{\textbf{Sprint Goal \& User Stories}} \\ \hline
\textbf{Sprint 1 Goal} & Nuestro enfoque está en proporcionar una experiencia informativa y persuasiva mediante la Landing Page oficial, destacando la conexión entre datos climáticos y acción en campo; creemos que entrega claridad inmediata sobre la propuesta de valor, confianza institucional y una ruta directa de conversión a los visitantes productores y especialistas fitosanitarios; esto se confirmará cuando los usuarios puedan navegar los beneficios segmentados, validar la eficacia mediante testimonios y completar la transición hacia el flujo sin fricciones. \\
\textbf{Sprint 1 Velocity} & 20 \\
\textbf{Sum of Story Points} & 18 \\ \hline
\end{tabular}

#### Aspect Leaders and Collaborators 

&nbsp;

En esta sección se presenta la matriz Leadership-and-Collaboration Matrix (LACX) del Sprint 1, diseñada para optimizar la coordinación interna y asegurar la calidad técnica de la plataforma Viora. Para este primer incremento, el alcance de desarrollo se ha segmentado en cinco ejes: la estructuración de la interfaz y navegación base, la comunicación de la propuesta de valor segmentada, el desarrollo del modelo de acceso, la consolidación de la credibilidad corporativa, y la implementación técnica de la conversión.

\begin{tabular}{|p{0.16\textwidth}|p{0.12\textwidth}|p{0.12\textwidth}|p{0.12\textwidth}|p{0.12\textwidth}|p{0.12\textwidth}|p{0.12\textwidth}|}
\hline
\textbf{Team Member (Last Name, First Name)} & \textbf{GitHub Username} & \textbf{Core UI Leader (L) / Collab (C)} & \textbf{Value \& Seg Leader (L) / Collab (C)} & \textbf{Corp Trust Leader (L) / Collab (C)} & \textbf{Conversion Leader (L) / Collab (C)} \\ \hline
Espada, Piero & espadita2510 & C & C & C & L \\ \hline
Li, Diana & peruvianMiau & C & L & C & C \\ \hline
Paredes, Victor & DaronCameloft & C & C & L & C \\ \hline
Santi, Fabrizio & Santi2007939 & L & C & C & C \\ \hline
Trinidad, Jahat & trinity-bytes & C & C & C & C \\ \hline
\end{tabular}

#### Sprint Backlog 1

&nbsp;

El objetivo principal de este Sprint es establecer la presencia digital estratégica de Viora mediante la construcción de una Landing Page funcional y persuasiva, diseñada para comunicar la propuesta de valor y facilitar la conversión directa de productores y especialistas hacia el ecosistema.

#### Deployment Evidence for Sprint Review

Durante la primera iteración, el principal avance de implementación se centró en la construcción integral de la Landing Page oficial de Viora. Se logró codificar e integrar con éxito la interfaz de usuario, la lógica de navegación responsiva, la segmentación de la propuesta de valor y los módulos de conversión (CTAs).

Para garantizar la centralización, trazabilidad y correcta auditoría del código fuente, todas las contribuciones técnicas de este incremento fueron registradas e integradas bajo el usuario organizacional (upc-pre-1asi0730-2610-10215-ArcadiaDevs). Además, en ningún commit se colocó el "Commit Message Body", por lo que en esta tabla no aparecerá esa columna.

A continuación, se presenta la matriz de control de versiones, la cual detalla el historial cronológico de commits realizados en el repositorio del proyecto.

| Branch | Commit Id | Commit Message | Commited on (Date) |
| :--- | :--- | :--- | :--- |
|   feature/main-navigation       | cfcf95e     | feat(header): add template and styles for header, and responsive.                        | 13/05/2026            |
|   feature/main-navigation         | 0973f67     | feat(header): add script for header.                                                     | 13/05/2026            |
|  feature/main-navigation          | 165f92c     | feat(footer): add template, style and script for footer.                                 | 13/05/2026            |
|  feature/hero-section          | bcb63a2     | feat(hero-section): add hero section with cta and sound toggle.                          | 13/05/2026            |
|   feature/hero-section         | 594c1c1     | feat(llearning-from-best): add template for learning from best panel.                    | 13/05/2026            |
|   feature/hero-section         | a45425e     | feat(hero-section): add hero section parallax and ambient sound.                         | 13/05/2026            |
|   feature/about-the-team       | 2fc1e8f     | feat(team-members): add styles for team members section.                                 | 13/05/2026            |
|    feature/about-the-team           | fe56f46     | feat(learning-from-best): add styles for learning from best section.                     | 13/05/2026            |
|   feature/about-the-team            | 84c3efb     | feat(about-the-team): add scripts for learning from best and team members.               | 13/05/2026            |
|  feature/hero-section        | 165b8c1     | feat(hero-section): add hero section styles and responsive layout.                       | 13/05/2026            |
|  feature/i18n        | c8d2374     | feat(i18n): add json files for languages.                                                | 13/05/2026            |
|  feature/i18n           | 3786274     | feat(i18n): add i18n service.                                                            | 13/05/2026            |
|   feature/i18n          | 3fc40c2     | feat(i18n): add i18n logic and main.                                                     | 13/05/2026            |
|   feature/contact       | ffb6299     | feat(contact): add template, styles and script for contact section.                      | 13/05/2026            |
|   feature/pricing       | e5b6ba2     | feat(pricing): add pricing panel component.                                              | 13/05/2026            |
|    feature/pricing         | 073b7d6     | feat(pricing): add pricing and referrals sections and init stub.                         | 13/05/2026            |
|    feature/pricing         | 38a0879     | feat(pricing): add pricing sections css.                                                 | 13/05/2026            |
| feature/problem-context | 8315770 | feat(problem-context): add styles for problem-cards and about-intro sections. | 13/05/2026 |
| feature/problem-context | 1df3dcf | feat(problem-context): add problem-intro-section and about-intro-section components. | 13/05/2026 |
|    feature/grower-benefits-section      | 2923b5e     | feat(growers-benefits): add growers benefits section with detailed insights and actions. | 13/05/2026            |
| feature/grower-benefits-section          | bb2b681     | feat(growers-benefits): add role benefits section with segment switching functionality.  | 13/05/2026 |
| feature/role-benefits-specialist | 8f58dcd | feat(role-benefits): add specialists section with benefits and actions. | 13/05/2026 |
| feature/role-benefits-specialist  | fd2087b | refactor(role-benefits): standardize string quotes and improve code consistency. | 13/05/2026 |
| feature/problem-solution | f5743bf | feat(problem-solution): add problem solution template. | 13/05/2026 |
| feature/problem-solution | 93725eb | fix: correct sections styles. | 13/05/2026 |
| feature/problem-solution | f4b2af4 | fix: identation and general styles. | 13/05/2026 |
| feature/remain-logic | 0bdb25f | feat: add remain scripts. | 13/05/2026 |
| feature/remain-logic | 985d67d | feat: add landing button and update main. | 13/05/2026 |
| feature/remain-logic | b5f0e3e | fix: update general styles and landing button styles. | 13/05/2026 |
| feature/remain-logic | ac3dedf | feat: add script module. | 13/05/2026 |
| release/1.0.0 | 09416dd | docs: update readme. | 13/05/2026 |

#### Execution Evidence for Sprint Review

El Sprint 1 ha concluido con éxito, logrando establecer la base digital estratégica del ecosistema Viora. Durante este periodo, el equipo se centró en materializar una Landing Page que no solo sirve como carta de presentación institucional, sino como una herramienta de conversión diseñada específicamente para productores y especialistas del sector olivarero.

**Logros Principales**

- Arquitectura y Navegación: Se implementó una estructura de navegación robusta y responsive, garantizando una experiencia de usuario fluida tanto en dispositivos móviles como de escritorio a través de un encabezado dinámico y un pie de página funcional.
- Experiencia Inmersiva (Hero Section): Se desarrolló una sección de impacto inicial que utiliza efectos de paralaje y sonido ambiental, diseñada para captar la atención inmediata del visitante y comunicar la conexión emocional entre la tecnología y el campo.
- Propuesta de Valor Segmentada: Cumpliendo con el Sprint Goal, se integraron secciones específicas de beneficios para "Growers" (Productores) y "Specialists" (Especialistas), permitiendo una comunicación personalizada según el perfil del usuario.
- Contexto y Solución: Se estructuraron módulos de "Contexto del Problema" y "Solución", utilizando tarjetas informativas y secciones introductorias que validan los desafíos climáticos actuales y presentan a Viora como la respuesta técnica necesaria.
- Credibilidad y Conversión: Se consolidó la confianza mediante la sección de equipo ("About the Team") y testimonios ("Learning from the Best"). Asimismo, se habilitaron los flujos de conversión mediante componentes de precios (pricing panels) y un formulario de contacto funcional.
- Internacionalización (i18n): Se desplegó un servicio de idiomas completo para asegurar que la plataforma sea accesible a un mercado global desde su lanzamiento inicial



\begin{figure}[H]
    \caption{Landing page - Parte 1.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_1.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 2.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_2.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 3.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_3.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 4.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_4.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 5.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_5.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 6.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_6.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 7.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_7.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 8.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_8.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Landing page - Parte 9.}
    \centering
    \includegraphics[width=0.8\textwidth]{report/assets/sprint-1/landing_9.png}
    \caption*{\textit{Nota.} Visualización correspondiente del sprint 1. Elaboración propia.}
\end{figure}

\textbf{Enlace al video:} \url{https://tinyurl.com/viora-sprint1}



#### Services Documentation Evidence for Sprint Review

Durante el Sprint 1, no se ha incluido documentación de Web Services debido a que el alcance del incremento se ha centrado exclusivamente en la construcción de la Landing Page oficial y la configuración de la presencia digital de Viora. La implementación de los servicios web y su correspondiente documentación bajo el estándar OpenAPI están programados para etapas posteriores del proyecto, por lo que el enfoque actual reside en la comunicación de la propuesta de valor y la captación de usuarios.

#### Software Deployment Evidence for Sprint Review

Durante el transcurso del Sprint 1, el equipo estableció la infraestructura base y los flujos de automatización necesarios para garantizar que la Landing Page, los Web Services y las Web Applications de Viora operen bajo un esquema de integración y despliegue continuo. El enfoque principal fue eliminar la fricción entre el desarrollo local y el entorno de producción, asegurando que cada incremento de software sea validado y desplegado de forma eficiente.

**Evidencia de Implementación de Despliegue**
A continuación, se presentan los pasos realizados y las capturas que validan el correcto funcionamiento del pipeline de despliegue:

1. Configuración del Proyecto y Repositorio
Se realizó la vinculación del repositorio oficial Viora-website con el proveedor cloud, definiendo los parámetros de construcción y las variables de entorno necesarias para el funcionamiento de la Landing Page.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-1/img-3.jpeg}
\caption{Configuración inicial e importación del proyecto Viora-website.}
\caption*{\textit{Nota.} Vinculación del repositorio de GitHub con el entorno de despliegue. Elaboración propia.}
\end{figure}

2. Automatización y Éxito de Compilación
Una vez detectado el código, el sistema ejecutó las tareas de build y optimización de activos, resultando en un despliegue exitoso hacia los servidores de producción.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-1/img-1.jpeg}
\caption{Confirmación de despliegue exitoso del nuevo proyecto.}
\caption*{\textit{Nota.} Interfaz de confirmación tras la finalización del proceso de compilación. Elaboración propia.}
\end{figure}

3. Verificación de Disponibilidad y Estado del Servicio
Finalmente, se accedió al panel de control para confirmar que la aplicación se encuentra en estado "Ready". Se validaron los dominios viora-website-flax.vercel.app para su acceso público inmediato.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-1/img-2.jpeg}
\caption{Panel de control de producción (Production Deployment).}
\caption*{\textit{Nota.} Vista detallada del estado del despliegue. Elaboración propia.}
\end{figure}

#### Team Collaboration Insights for Sprint Review

La participación de los miembros del equipo se refleja en el volumen y la frecuencia de las contribuciones realizadas al repositorio. Durante este primer incremento, el esfuerzo se concentró en establecer la estructura base, el diseño visual y la interactividad de la plataforma. Como se observa en los analíticos de GitHub, el equipo mantuvo una actividad constante para cumplir con las historias de usuario comprometidas.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-1/sprint-1-commit.png}
\caption{Estadísticas de contribución (Top Committers) - Sprint 1.}
\caption*{\textit{Nota.} La gráfica muestra la distribución de commits realizados por los miembros del equipo en el repositorio oficial. Elaboración propia a través de GitHub Insights.}
\end{figure}

Este nivel de interacción garantiza que el producto final no sea el resultado de esfuerzos aislados, sino de una implementación integrada donde cada componente de la Landing Page fue validado colectivamente.