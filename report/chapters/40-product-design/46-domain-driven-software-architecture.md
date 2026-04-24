## Domain-Driven Software Architecture

La arquitectura de software de Viora se ha planteado siguiendo los principios de Domain-Driven Design (DDD), tomando como punto de partida los hallazgos obtenidos en el Big Picture Event Storming desarrollado en el capítulo previo. A partir de ello, esta sección profundiza en la identificación de Bounded Contexts, Aggregates, Events, Commands y Queries, estableciendo además una base conceptual sólida para su posterior representación mediante el modelo C4.

Desde la perspectiva de DDD, un Bounded Context permite delimitar con claridad el alcance semántico de un modelo, evitando ambigüedades y manteniendo la coherencia interna del dominio. En este sentido, una vez definido un bounded context, su modelo debe preservarse como una unidad consistente, evitando la fragmentación conceptual y la duplicación inconsistente de responsabilidades. Bajo esta lógica, Viora se ha estructurado como un ecosistema compuesto por varios bounded contexts, cada uno con responsabilidades específicas y un lenguaje ubicuo propio, pero articulados entre sí dentro de una estrategia de diseño integral.

A nivel general, para Viora se identificaron siete bounded contexts principales: **Identity & Access Management, Profile & Asset Management, Agronomic Monitoring & Prediction, Epidemiological Surveillance, Intervention Marketplace, Community Governance & Reputation, y Subscription, Billing & Referral.** No obstante, dado que el propósito de esta subsección es profundizar en el core domain de la solución, el presente análisis se concentra en los tres bounded contexts que reúnen la propuesta de valor diferenciadora de Viora: Agronomic Monitoring & Prediction, Epidemiological Surveillance e Intervention Marketplace. Esta selección responde a la necesidad de distinguir el core domain de los subdominios de soporte y concentrar el mayor esfuerzo de modelado en aquellos espacios que aportan una ventaja competitiva real a la solución.

La elección de estos tres contextos también se sustenta en los requisitos funcionales previamente definidos en el informe. Las épicas EP03 y EP04 describen el núcleo de monitoreo agrometeorológico, proyección y mitigación por nutrición dinámica; EP05 aborda la vigilancia epidemiológica y la prospección territorial; mientras que EP06 a EP11 cubren el flujo de vinculación, evaluación técnica, ejecución de la intervención y cierre del servicio dentro del marketplace especializado de Viora.

\newpage
### Design-Level EventStorming

La sesión de Design-Level EventStorming de Viora tuvo como propósito refinar los hallazgos del Big Picture Event Storming y llevar el modelado del dominio a un nivel de detalle suficiente para identificar decisiones estructurales clave. A partir de esta profundización, fue posible explicitar bounded contexts, eventos, comandos, actores, policies, read models, reglas de negocio, aggregates y queries.

Para ello, se tomó como base la visión general del ecosistema Viora ya obtenida previamente, donde se habían reconocido los eventos significativos del dominio, su secuencia temporal y su relación con actores y sistemas externos. Sobre ese punto de partida, se desarrolló un proceso de refinamiento por bounded context, reorganizando los flujos en torno a comandos, políticas reactivas, fronteras de consistencia y necesidades de lectura del modelo.

Esta profundización responde al principio de model-driven design, según el cual el modelo de dominio no debe permanecer como una representación analítica aislada, sino convertirse en fundamento del diseño y de la futura implementación. En ese sentido, los boards elaborados no solo permiten comprender mejor el dominio, sino también anticipar la organización de módulos, responsabilidades y límites arquitectónicos dentro de la solución.

En las subsecciones siguientes se presentan los tres bounded contexts priorizados dentro del core domain de Viora. En cada caso, se documenta el flujo refinado de eventos, comandos, actores, policies, read models, business rules, aggregates y queries, acompañado de los respectivos boards generados durante la sesión.

#### Agronomic Monitoring & Prediction

El bounded context **Agronomic Monitoring & Prediction** constituye el núcleo analítico y predictivo de Viora. Su responsabilidad es transformar datos climáticos, satelitales y agronómicos en información accionable para el productor, incluyendo el monitoreo fenológico, la evaluación del estado de la parcela, la proyección de rendimiento y la generación de recomendaciones de nutrición dinámica.

Durante el Design-Level EventStorming de este contexto, se refinó el flujo desde la incorporación de datos de monitoreo hasta la emisión de resultados predictivos y recomendaciones técnicas. Este proceso permitió identificar los principales eventos, comandos, policies, read models, business rules y aggregates que delimitan la consistencia del modelo y preparan su transición hacia la arquitectura lógica de la solución. En el siguiente board se presenta el modelado final de este bounded context.


\begin{figure}[H]
    \caption{Arquitectura del target design para el bounded context de Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/1-target.png}
    \caption*{\textit{Nota.} Definición del propósito y alcance del diseño para el monitoreo y predicción agronómica en Viora. Elaboración propia.}
\end{figure}


\begin{figure}[H]
    \caption{Domain events del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/2-domain-events.png}
    \caption*{\textit{Nota.} Vista correspondiente a los domain events identificados en el bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Timeline del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/2-1-timeline.png}
    \caption*{\textit{Nota.} Secuencia temporal de eventos refinados dentro del bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Commands del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/3-commands.jpeg}
    \caption*{\textit{Nota.} Comandos identificados para iniciar y controlar el flujo del bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Actors del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/4-actors.jpeg}
    \caption*{\textit{Nota.} Actores involucrados en la ejecución de procesos dentro del bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Policies del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/5-policies.jpeg}
    \caption*{\textit{Nota.} Policies derivadas del refinamiento del flujo de negocio en el bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Read models del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/6-read-models.jpeg}
    \caption*{\textit{Nota.} Modelos de lectura definidos para la consulta de información dentro del bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{External systems del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/7-external-systems.png}
    \caption*{\textit{Nota.} Sistemas externos relacionados con el bounded context Agronomic Monitoring \& Prediction durante el flujo refinado del dominio. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Business rules del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/8-business-rules.png}
    \caption*{\textit{Nota.} Reglas de negocio identificadas para garantizar consistencia dentro del bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Aggregates del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/9-aggregates.png}
    \caption*{\textit{Nota.} Aggregates reconocidos como fronteras de consistencia en el bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Queries del bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-1/10-queries.png}
    \caption*{\textit{Nota.} Queries asociadas a la recuperación de información en el bounded context Agronomic Monitoring \& Prediction. Elaboración propia.}
\end{figure}


\newpage
#### Epidemiological Surveillance

El bounded context **Epidemiological Surveillance** concentra la lógica de vigilancia fitosanitaria y prospección territorial de Viora. Su responsabilidad es gestionar reportes de síntomas, validar brotes probables, emitir alertas epidemiológicas y difundir alertas comunitarias en zonas de riesgo, además de habilitar investigaciones y acciones preventivas cuando la situación lo requiera.

Durante el Design-Level EventStorming de este contexto, se refinó el flujo a partir de dos entradas principales: la vigilancia manual iniciada por el productor y la vigilancia autónoma activada por evidencia agronómica crítica. Este análisis permitió identificar los eventos, comandos, policies, read models, business rules, aggregates y queries necesarios para asegurar la trazabilidad entre el reporte inicial, su validación y la posterior respuesta técnica. En los boards siguientes se presenta el modelado final de este bounded context.

\begin{figure}[H]
    \caption{Target del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/1-target.png}
    \caption*{\textit{Nota.} Vista inicial del objetivo de modelado correspondiente al bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Domain events del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/2-domain-events.png}
    \caption*{\textit{Nota.} Vista correspondiente a los domain events identificados en el bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Timeline del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/2-1-timeline.png}
    \caption*{\textit{Nota.} Secuencia temporal de eventos refinados dentro del bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Commands del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/3-commands.png}
    \caption*{\textit{Nota.} Comandos identificados para iniciar y controlar el flujo del bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Actors del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/4-actors.png}
    \caption*{\textit{Nota.} Actores involucrados en la ejecución de procesos dentro del bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Policies del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/5-policies.png}
    \caption*{\textit{Nota.} Policies derivadas del refinamiento del flujo de negocio en el bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Read models del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/6-read-models.png}
    \caption*{\textit{Nota.} Modelos de lectura definidos para la consulta de información dentro del bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{External systems del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/7-external-systems.png}
    \caption*{\textit{Nota.} Sistemas externos relacionados con el bounded context Epidemiological Surveillance durante el flujo refinado del dominio. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Business rules del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/8-business-rules.png}
    \caption*{\textit{Nota.} Reglas de negocio identificadas para garantizar consistencia dentro del bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Aggregates del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/9-aggregates.png}
    \caption*{\textit{Nota.} Aggregates reconocidos como fronteras de consistencia en el bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Queries del bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-2/10-queries.png}
    \caption*{\textit{Nota.} Queries asociadas a la recuperación de información en el bounded context Epidemiological Surveillance. Elaboración propia.}
\end{figure}


\newpage
#### Intervention Marketplace

El bounded context **Intervention Marketplace** modela el ecosistema transaccional y colaborativo mediante el cual Viora conecta a productores con especialistas agrícolas para atender alertas activas. Su responsabilidad abarca la selección de especialistas, la solicitud y evaluación de intervenciones, la gestión de cotizaciones, la habilitación del canal de comunicación, la inspección en campo, la prescripción técnica, el registro de ejecución, la trazabilidad económica y el cierre del servicio con retroalimentación final.

Durante el Design-Level EventStorming de este contexto, se refinó un flujo más extenso y colaborativo que los anteriores, debido a la combinación de interacciones bilaterales entre Productor y Especialista con automatizaciones propias del sistema. Este análisis permitió identificar bifurcaciones clave, como la aceptación o rechazo de la intervención y de la cotización, así como los eventos, comandos, policies, read models, business rules, aggregates y queries necesarios para asegurar la trazabilidad operativa y económica del servicio hasta su cierre formal. En los boards siguientes se presenta el modelado final de este bounded context.

\begin{figure}[H]
    \caption{Target del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/1-target.png}
    \caption*{\textit{Nota.} Vista inicial del objetivo de modelado correspondiente al bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Domain events del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/2-domain-events.png}
    \caption*{\textit{Nota.} Vista correspondiente a los domain events identificados en el bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Timeline del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/2-1-timeline.png}
    \caption*{\textit{Nota.} Secuencia temporal de eventos refinados dentro del bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Commands del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/3-commands.png}
    \caption*{\textit{Nota.} Comandos identificados para iniciar y controlar el flujo del bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Actors del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/4-actors.png}
    \caption*{\textit{Nota.} Actores involucrados en la ejecución de procesos dentro del bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Policies del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/5-policies.png}
    \caption*{\textit{Nota.} Policies derivadas del refinamiento del flujo de negocio en el bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Read models del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/6-read-models.png}
    \caption*{\textit{Nota.} Modelos de lectura definidos para la consulta de información dentro del bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{External systems del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/7-external-systems.png}
    \caption*{\textit{Nota.} Sistemas externos relacionados con el bounded context Intervention Marketplace durante el flujo refinado del dominio. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Business rules del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/8-business-rules.png}
    \caption*{\textit{Nota.} Reglas de negocio identificadas para garantizar consistencia dentro del bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Aggregates del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/9-aggregates.png}
    \caption*{\textit{Nota.} Aggregates reconocidos como fronteras de consistencia en el bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Queries del bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=0.82\textwidth]{report/assets/design-level-eventstorming/bounded-context-3/10-queries.png}
    \caption*{\textit{Nota.} Queries asociadas a la recuperación de información en el bounded context Intervention Marketplace. Elaboración propia.}
\end{figure}


Como resultado del proceso de Design-Level EventStorming, el equipo logró transformar la visión general obtenida en el Big Picture Event Storming en una estructura de dominio mucho más precisa, organizada por bounded contexts y expresada mediante eventos, comandos, actores, policies, read models, business rules, aggregates y queries. Este refinamiento permitió no solo comprender mejor la lógica de negocio de Viora, sino también preparar una base sólida para las siguientes representaciones arquitectónicas de la solución.

En términos de diseño estratégico, los tres bounded contexts trabajados —Agronomic Monitoring & Prediction, Epidemiological Surveillance e Intervention Marketplace— concentran el core domain de la propuesta de valor de Viora, mientras que los demás contextos identificados cumplen funciones de soporte o habilitación transversal. Esta separación mejora la integridad del modelo, reduce la ambigüedad semántica y facilita que cada parte de la solución evolucione con un lenguaje ubicuo consistente y una frontera de responsabilidades bien definida.

\newpage

### Software Architecture Context Diagram

A continuación se presenta el Context Diagram del modelo C4 para la plataforma Viora. Este diagrama ofrece una vista de alto nivel del sistema, ilustrando cómo interactúa con sus principales usuarios (Productores, Especialistas y Visitantes) y con los sistemas externos de los que depende para su funcionamiento (AgroMonitoring API, Mercado Pago, Brevo, Mapbox, Cloudinary y fuentes de datos abiertos de SENASA).

\begin{figure}[H]
    \caption{System Context Diagram para Viora.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/design-level-eventstorming/c4-diagrams/VioraSystemContext.png}
    \caption*{\textit{Nota.} Vista de nivel de contexto que muestra a Viora en el centro y los actores y sistemas externos a su alrededor. Elaboración propia.}
\end{figure}

### Software Architecture Container Diagrams

En la siguiente figura se detalla el Container Diagram, el cual descompone el sistema Viora en contenedores ejecutables. Se observa la Landing Page y la Web Application operando en el lado del cliente, comunicándose mediante interfaces de red con la API Application. Esta última orquesta la lógica de negocio y se conecta de forma directa con la base de datos (Database), el almacenamiento de medios (Media Storage) y los diferentes sistemas externos presentados en el diagrama de contexto.

\begin{figure}[H]
    \caption{Container Diagram para Viora.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/design-level-eventstorming/c4-diagrams/VioraContainer.png}
    \caption*{\textit{Nota.} Vista de contenedores que ilustra los elementos principales de la arquitectura (Landing Page, Web App, API y Storage) interconectados. Elaboración propia.}
\end{figure}

### Software Architecture Components Diagrams

Como nivel de mayor detalle, se presentan los Component Diagrams para cada uno de los contenedores más relevantes del ecosistema. Estos diagramas muestran los componentes internos, sus responsabilidades, la forma en la que interactúan entre sí dentro del contenedor y cómo se integran con elementos externos u otros contenedores.

\begin{figure}[H]
    \caption{Component Diagram del contenedor Landing Page.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/design-level-eventstorming/c4-diagrams/VioraLandingComponents.png}
    \caption*{\textit{Nota.} Estructura interna de los componentes encargados de renderizar la página de inicio y el contenido de marketing. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Component Diagram del contenedor Web Application.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/design-level-eventstorming/c4-diagrams/VioraWebAppComponents.png}
    \caption*{\textit{Nota.} Componentes internos de la interfaz web que utilizan los productores y especialistas. Elaboración propia.}
\end{figure}

\begin{figure}[H]
    \caption{Component Diagram del contenedor API Application.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/design-level-eventstorming/c4-diagrams/VioraApiComponents.png}
    \caption*{\textit{Nota.} Componentes que conforman los servicios y controladores del backend principal. Elaboración propia.}
\end{figure}

\newpage