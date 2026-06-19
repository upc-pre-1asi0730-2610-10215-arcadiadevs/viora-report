## Software Object-Oriented Design

En esta sección, se presentan los diagramas de clases que detallan la implementación de los componentes definidos en la arquitectura para la plataforma Viora. Estos diagramas proporcionan una vista estática y orientada a objetos de la estructura interna del sistema, mostrando las clases, interfaces, atributos, métodos y sus relaciones. 

Los diagramas han sido diseñados basándose en los componentes previamente definidos en la arquitectura C4 (API Application y Web Application) y organizados lógicamente alrededor de los dominios principales del sistema.

### Class Diagrams

A continuación se presentan los diagramas de clases en formato PlantUML para los componentes principales de la API y la Web Application correspondientes a los distintos Bounded Contexts.

#### API Application Class Diagrams (C# ASP.NET Core)

En esta sección se detallan las clases principales del backend, separados en los componentes definidos en el diagrama de arquitectura C4. Para reflejar adecuadamente la arquitectura backend, se incluyen Entidades, Interfaces, Transfer Objects (DTOs), Servicios y Controladores.

##### Core: Repository y External Integrations Components

Este diagrama incluye la capa de persistencia base (Entity Framework Core) y los adaptadores para los servicios externos como AgroMonitoring, MercadoPago, y Mapbox.

\begin{figure}[H]
    \caption{Diagrama de clases para Repository y External Integrations Components.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/repository-and-external-integrations-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Repository y External Integrations Components. Elaboración propia.}
\end{figure}

##### IAM y Profile Components

Maneja el registro, la autenticación mediante JWT (JSON Web Tokens) y la gestión de los perfiles de Productores y Especialistas.

\begin{figure}[H]
    \caption{Diagrama de clases para IAM y Profile Components.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/iam-and-profile-components-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente IAM y Profile Components. Elaboración propia.}
\end{figure}

##### Plot Management y Agrometeorological Monitoring

Subsistema principal de datos geolocalizados para las parcelas y sincronización de índices de vegetación o clima.

\begin{figure}[H]
    \caption{Diagrama de clases para Plot Management y Agrometeorological Monitoring.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/plot-management-and-agrometeorological-monitoring-components-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Plot Management y Agrometeorological Monitoring. Elaboración propia.}
\end{figure}

##### Prediction, Risk Engine y Alerts Components

Procesamiento del análisis predictivo de amenazas a los cultivos (fenológicas o estrés) y emisión de notificaciones.

\begin{figure}[H]
    \caption{Diagrama de clases para Prediction, Risk Engine y Alerts Components.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/prediction-risk-engine-and-alert-components-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Prediction, Risk Engine y Alerts Components. Elaboración propia.}
\end{figure}

##### Epidemiological Surveillance Component

Gestión de la vigilancia fitosanitaria, reporte de síntomas, validación de brotes probables, emisión de alertas epidemiológicas comunitarias y prospección territorial de zonas de riesgo. Este componente representa uno de los tres bounded contexts del core domain de Viora, alineado al flujo modelado en el Design-Level EventStorming de Epidemiological Surveillance.

\begin{figure}[H]
    \caption{Diagrama de clases para Epidemiological Surveillance Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/epidemiological-surveillance-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Epidemiological Surveillance Component. Elaboración propia.}
\end{figure}

##### Marketplace y Intervention Component

Módulo para enlazar Productores de Olivo con Especialistas a través de solicitudes de evaluación técnica.

\begin{figure}[H]
    \caption{Diagrama de clases para Marketplace y Intervention Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/marketplace-and-intervention-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Marketplace y Intervention Component. Elaboración propia.}
\end{figure}

##### Subscription y Billing Component

Lógica de pasarelas de pago y asignación de privilegios de suscripción.

\begin{figure}[H]
    \caption{Diagrama de clases para Subscription y Billing Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/suscription-and-billing-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Subscription y Billing Component. Elaboración propia.}
\end{figure}

##### Moderation y Strikes Component

Administración de bloqueos y penalizaciones en la plataforma para mantener los términos de la comunidad de especialistas e intervencionistas limpios.

\begin{figure}[H]
    \caption{Diagrama de clases para Moderation y Strikes Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/moderation-and-strikes-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Moderation y Strikes Component. Elaboración propia.}
\end{figure}

#### Web Application Class Diagrams (Vue.js UI)

En esta sección se detalla la estructura orientada a objetos de la aplicación web desarrollada en Vue.js y manejada por Pinia, dividida en los distintos contenedores identificados en la arquitectura C4. Se ha separado en módulos Core (Compartidos) y Funcionales para una mayor claridad.

##### Core: Shared UI y API Client Services

Este diagrama incluye los servicios transversales de conexión con el backend mediante Axios y los componentes base reutilizables.

\begin{figure}[H]
    \caption{Diagrama de clases para Core: Shared UI y API Client Services.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/shared-ui-and-api-client-services-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Core: Shared UI y API Client Services. Elaboración propia.}
\end{figure}

##### Routing y Guards Component

Gestiona el enrutamiento y la protección de vistas del lado del cliente.

\begin{figure}[H]
    \caption{Diagrama de clases para Routing y Guards Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/routing-and-guards-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Routing y Guards Component. Elaboración propia.}
\end{figure}

##### Authentication UI Component

Maneja los flujos de inicio de sesión, registro y el estado de la sesión actual de los usuarios.

\begin{figure}[H]
    \caption{Diagrama de clases para Authentication UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/autentication-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Authentication UI Component. Elaboración propia.}
\end{figure}

##### Profile UI Component

Permite actualizar la información personal, contraseñas y subir la evidencia necesaria para especialistas y productores.

\begin{figure}[H]
    \caption{Diagrama de clases para Profile UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/profile-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Profile UI Component. Elaboración propia.}
\end{figure}

##### Dashboard UI Component

Actúa como punto de entrada presentando los resúmenes y accesos directos al resto de las vistas.

\begin{figure}[H]
    \caption{Diagrama de clases para Dashboard UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/dashboard-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Dashboard UI Component. Elaboración propia.}
\end{figure}

##### Plot Management UI Component

Módulo principal de productores de olivo para gestión de parcelas y visualización telemética (NDVI, clima).

\begin{figure}[H]
    \caption{Diagrama de clases para Plot Management UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/plot-management-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Plot Management UI Component. Elaboración propia.}
\end{figure}

##### Marketplace y Intervention UI Component

Relaciona solicitudes y ofertas de servicios entre productores de olivo y especialistas agrícolas.

\begin{figure}[H]
    \caption{Diagrama de clases para Marketplace y Intervention UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/marketplace-and-intevention-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Marketplace y Intervention UI Component. Elaboración propia.}
\end{figure}

##### Notification Center Component

Maneja los avisos urgentes (clima, pagos asíncronos y alertas sanitarias).

\begin{figure}[H]
    \caption{Diagrama de clases para Notification Center Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/notification-center-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Notification Center Component. Elaboración propia.}
\end{figure}

##### Subscription y Billing UI Component

Permite revisar contratos, suscripciones SAAS e historial de pagos.

\begin{figure}[H]
    \caption{Diagrama de clases para Subscription y Billing UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/suscription-and-billing-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Subscription y Billing UI Component. Elaboración propia.}
\end{figure}

\newpage