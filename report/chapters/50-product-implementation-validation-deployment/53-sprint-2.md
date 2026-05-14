### Sprint 2

#### Sprint Planning 2

En esta sección se detallan los acuerdos fundamentales alcanzados por el equipo durante la sesión de planificación del Sprint 2, llevada a cabo de manera virtual mediante la plataforma Discord. El propósito central de esta reunión fue alinear los esfuerzos técnicos con el desarrollo del núcleo operativo de la plataforma Viora, definiendo un compromiso de trabajo basado en una velocidad de 24 puntos para abordar las historias de usuario enfocadas en telemetría IoT, visualización de alertas e índices agronómicos.

A continuación, se presenta el cuadro resumen del Sprint Planning Meeting, el cual integra la logística de la sesión, la revisión retrospectiva de la iteración pasada, los responsables de la documentación y el Sprint Goal diseñado para garantizar que este incremento entregue valor real a los productores del sector olivarero.

\begin{tabular}{p{0.30\textwidth} p{0.65\textwidth}}
\hline
\textbf{Sprint \#} & Sprint 2 \\ \hline
\multicolumn{2}{l}{\textbf{Sprint Planning Background}} \\ \hline
\textbf{Date} & 2026-05-12 \\
\textbf{Time} & 05:30 PM \\
\textbf{Location} & Discord (Virtual) \\
\textbf{Prepared By} & Paredes Maza, Victor Juan de Dios \\
\textbf{Attendees} &  Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Victor Juan de Dios / Santi Guerrero, Fabrizio Alonso / Trinidad Leon, Jahat Jassiel \\ \hline
\textbf{Sprint 1 Review Summary} & Se cumplió el objetivo de estructurar la Landing Page. A nivel de producto, se entregó un flujo funcional y libre de dependencias de diseño puro, centrado en el comportamiento. El Product Owner validó que la presentación de la propuesta de valor es clara y logra explicar eficientemente la conexión entre los datos climáticos y la acción en campo. \\ \hline
\textbf{Sprint 1 Retrospective Summary} & El equipo habló sobre los plazos de entrega y la gestión del tiempo. Se acordó que este fue un punto débil y que se debe recalcular el velocity. \\ \hline
\multicolumn{2}{l}{\textbf{Sprint Goal \& User Stories}} \\ \hline
\textbf{Sprint 2 Goal} & Nuestro enfoque está en proporcionar un ecosistema de monitoreo integrado que agrupe las alertas epidemiológicas, la telemetría de campo y el análisis histórico de la unidad productiva; creemos que entrega una capacidad de reacción inmediata y soporte en la toma de decisiones hídricas y de desarrollo vegetal a los Productores Olivareros; esto se confirmará cuando los productores puedan revisar una lista consolidada con sus 3 alertas más recientes, monitorear el estado y métricas de sus dispositivos IoT para prevenir el estrés hídrico y analizar comparativamente el índice NDVI frente a las porciones de frío acumuladas con filtros de tiempo y parcela. \\
\textbf{Sprint 2 Velocity} & 24 \\
\textbf{Sum of Story Points} & 24 \\ \hline
\end{tabular}

#### Aspect Leaders and Collaborators 

&nbsp;

En esta sección se presenta la matriz Leadership-and-Collaboration Matrix (LACX) del Sprint 2, diseñada para optimizar la coordinación interna y asegurar la integridad técnica de la plataforma Viora. Para este segundo incremento, el alcance se ha segmentado en los tres ejes fundamentales definidos por los contextos delimitados: Shared, Agronomic y Surveillance.

\begin{tabular}{|p{0.22\textwidth}|p{0.14\textwidth}|p{0.18\textwidth}|p{0.18\textwidth}|p{0.18\textwidth}|}
\hline
\textbf{Team Member (Last Name, First Name)} & \textbf{GitHub Username} & \textbf{Shared Context Leader (L) / Collab (C)} & \textbf{Agronomic Context Leader (L) / Collab (C)} & \textbf{Surveillance Context Leader (L) / Collab (C)} \\ \hline
Espada, Piero & espadita2510 & C & C & C \\ \hline
Li, Diana & peruvianMiau & C & C & L \\ \hline
Paredes, Victor & DaronCameloft & C & C & C \\ \hline
Santi, Fabrizio & Santi2007939 & C & L & C \\ \hline
Trinidad, Jahat & trinity-bytes & L & C & C \\ \hline
\end{tabular}

#### Sprint Backlog 2

&nbsp;

El objetivo principal de este Sprint 2 es desarrollar el, mediante la integración de datos de telemetría IoT, análisis geoespacial de parcelas y visualización de indicadores agronómicos críticos, diseñado para centralizar la toma de decisiones y optimizar la gestión de riesgos biológicos e hídricos para el productor.

\begin{longtable}{|p{0.05\textwidth}|p{0.14\textwidth}|p{0.05\textwidth}|p{0.14\textwidth}|p{0.24\textwidth}|p{0.08\textwidth}|p{0.12\textwidth}|p{0.07\textwidth}|} 
\hline 
\multicolumn{2}{|l|}{\textbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 2} \\ \hline 
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task}} \\ \hline 
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Estimation (Hours)} & \textbf{Assigned To} & \textbf{Status} \\ \hline 
\endfirsthead

\hline 
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task (Continuación)}} \\ \hline 
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Estimation} & \textbf{Assigned To} & \textbf{Status} \\ \hline 
\endhead

US11 & Análisis de Tendencia de Vigor Vegetal & TK01 & Chart.js Integration & Implementación de gráficos comparativos de NDVI vs Frío acumulado usando Chart.js y datos de la FakeAPI. & 2.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Trend Analytics Logic & Programación de filtros temporales (7d, 30d) y lógica de cálculo de promedios para la gráfica. & 1.5 & Santi, Fabrizio & Done \\ \hline

US12 & Visualización Satelital de Parcelas & TK03 & Mapbox SDK Setup & Configuración del visor de mapas y renderizado de polígonos de parcelas mediante el SDK de Mapbox. & 3.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Polygon Data Mapping & Vinculación de coordenadas geográficas desde la FakeAPI para la representación dinámica en el mapa. & 1.0 & Santi, Fabrizio & Done \\ \hline

US08 & Gestión de Dispositivos IoT & TK05 & IoT Telemetry View & Maquetación de la tabla de dispositivos y visualización de métricas de humedad y temperatura en Vue. & 1.5 & Li, Diana & Done \\ \cline{3-8}
& & TK06 & CRUD \& FakeAPI Service & Implementación de servicios para la creación, edición y eliminación de sensores en MockAPI. & 1.5 & Li, Diana & Done \\ \cline{3-8}
& & TK07 & Device Forms & Desarrollo de formularios reactivos para el registro y actualización de dispositivos con validaciones. & 1.0 & Li, Diana & Done \\ \hline

US13 & Resumen General y Proyección de Cosecha & TK08 & KPI Cards Layout & Diseño y maquetación de las 4 tarjetas de resumen de medidas agregadas de todas las parcelas. & 1.5 & Paredes, Victor & Done \\ \cline{3-8}
& & TK09 & KPI Data Binding & Consumo y formateo de datos de monitoreo-summaries para el despliegue de promedios generales. & 0.5 & Paredes, Victor & Done \\ \hline

US14 & Resumen Meteorológico y Evaluación de Riesgo Climático & TK10 & Weather Widget & Implementación del componente de resumen climático y pronósticos. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK11 & Weather Service Integration & Conexión con el endpoint de weather-summaries para la actualización de temperatura en tiempo real. & 1.0 & Espada, Piero & Done \\ \hline

US23 & Consulta de Alertas Recientes & TK12 & Alerts List Mapping & Mapeo de las 3 alertas más recientes del endpoint de alerts hacia el componente de visualización. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK13 & Severity Status Logic & Programación de la lógica de colores y etiquetas basadas en el nivel de severidad y estado de la alerta. & 1.0 & Trinidad, Jahat & Done \\ \hline

\end{longtable}

#### Deployment Evidence for Sprint Review

&nbsp;

Durante la segunda iteración, el principal avance de implementación se centró en el desarrollo del núcleo técnico de la plataforma Viora. Para garantizar la centralización, trazabilidad y correcta auditoría del código fuente, todas las contribuciones técnicas de este incremento fueron registradas e integradas.

A continuación, se presenta la matriz de control de versiones, la cual detalla el historial cronológico de commits realizados en el repositorio del proyecto.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/fake-api | 859c148 | feat(fake-api): add data for domain and routes. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/fake-api | 08016a0 | feat(fake-api): add environment variables for endpoints. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/base-infrastructure | 710835b | feat(infrastructure): add base api and base endpoint. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | 8c6b74f | feat(plot-overview): add plot and satellite imagery entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | 9ba63fa | feat(plot-overview): add plot and satellite imagery assemblers. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | 6f387b2 | feat(plot-overview): add adapters, environment variable and service for mapbox. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | 8ac99a1 | feat(plot-overview): add agronomic api for plot endpoints. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | 599bc87 | feat(infrastructure): add date time formatter. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | e544b9d | feat(plot-overview): add service for plot map and agronomic store. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/plot-overview | 4669e9a | feat(infrastructure): add plot overview component with sdk. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/iot-devices | 4630612 | feat(iot-devices): add iotdevice entity model. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/iot-devices | 56011dd | feat(iot-devices): add iot device store, assembler and ui. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | 130fef8 | feat(alert): add alertAssembler for mapping api alert resources to domain entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | d7b81d8 | feat(alert): introduce alert entity for modeling critical surveillance events. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | 2764a58 | feat(surveillance): add surveillanceAssembler for assembling infrastructure resources. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | b51e52f | feat(surveillance): implement surveillance-api for managing alerts. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | 236721b | feat(surveillance): add surveillance store for managing alert state and operations. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | bb712ba | feat(surveillance): add recentalertswidget component for displaying recent alerts in a tabular format. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | cf66328 | feat(surveillance): implement surveillanceAssembler for mapping resources to domain entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/agronomic-analysis | d6476d1 | feat(agronomic-analysis): add agronomic analysis entity. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/iot-devices | b2bd2a5 | feat(iot-devices): add iot state and actions. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/surveillance | b66a53e | refactor(alert): deprecate alertAssembler in favor of surveillanceassembler. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/agronomic-analysis | aa84af3 | feat(agronomic-analysis): add assembler, formatter and endpoints for agronomic analysis. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-healthh | d4aa280 | feat(agronomic): add agronomic-record entity for telemetry data and yield calculations. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 85a8156 | feat(agronomic): add chill-hour-record entity for tracking thermal accumulation in olive dormancy. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/agronomic-analysis | 084fce7 | feat(agronomic-analysis): add analysis chart data, set analysis plot and fetch. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 4489b91 | feat(agronomic): add overall-plot-health entity for aggregating plot health status. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | e4eb226 | feat(agronomic): add yield-forecast entity for harvest estimations and risk assessments. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | d6cf393 | feat(agronomic): add monitoring-ummary entity for aggregating agronomic and surveillance kpis. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/agronomic-analysis | 6a74a20 | feat(agronomic-analysis): add component for agronomic analysis visualization. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 87c3db1 | feat(agronomic): add agronomic-record-assembler for mapping telemetry data to entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | dc9e2d6 | feat(agronomic): add chill-hour-record-assembler for mapping thermal accumulation data to entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 4c15f8b | feat(agronomic): add chill-hour-record-assembler for mapping thermal accumulation data to entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 0436d84 | feat(agronomic): add overall-health-assembler for translating health distribution data into overall-plot-health entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/weather-summary | 93a7aca | feat(weather-summary): add WeatherSummary entity. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 845069b | feat(agronomic): add yield-forecast-assembler for mapping harvest prediction resources to yield-forecast entities. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 7a50e61 | feat(agronomic): add chill-accumulation-card component for displaying thermal accumulation data. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/weather-summary | 2a55a89 | feat(weather-summary): add WeatherSummaryAssembler. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 2466cae | feat(agronomic): add ndvi-status-card component for displaying NDVI values and trends. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 57609c2 | feat(agronomic): add overall-plot-health-card component for displaying global plot health summary. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | 17a97e4 | feat(agronomic): add yield-forecast-card component for displaying harvest predictions and risk assessments. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/weather-summary | 425fe09 | feat(weather-summary): implement WeatherSummary component. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/overall-plot-health | a9741e7 | feat(agronomic): add agronomic.store getters. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/weather-summary | 9c57130 | feat(weather-summary): integrate weather summary fetching in agronomic store. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/general-routes | 486fbb7 | feat(general-routes): add agronomic routes and update router. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/general-routes | 911f092 | fix(iot-devices): move view components to presentation/views. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/layout | c010499 | feat(shared): add footer-content component with localization and styling. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/layout | 3d06ae1 | feat(shared): add language-switcher component with locale selection and styling. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/layout | 283854d | feat(shared): add main layout component with sidebar, breadcrumbs, and footer. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/layout | 4688834 | feat(shared): add navigation-sidebar component with collapsible functionality and route-based navigation. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/layout | 75130e8 | feat(shared): add global font styles and integrate main layout component. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/i18n | f3ef5e1 | feat(localization): add comprehensive snglish and spanish translations for dashboard and iot devices. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/producer-dashboard | f1f9177 | fix(agronomic): close analysis statistics flow in store. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | feature/producer-dashboard | db5057a | feat(producer): add producer-dashboard-view component for real-time agronomic monitoring. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | fix/gronomic-import | 4a074fa | feat(agronomic): add summarybasecard component and update navigation-sidebar icons. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | fix/dashboard-iot | 35d7f04 | fix: correct server, store, api and components for weather. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | release/v0.0.1 | 70da87d | chore: add .env.development to .gitignore. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | release/v0.0.1 | 25cacf3 | chore(env): add .env.production with api endpoint paths and mapbox access token. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | fix/dahsboard-iot | 1459249 | feat: add assets. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | fix/dashboard-iot | 5237633 | fix: update base api and endpoint. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | fix-dashboard-iot | d3742fd | feat: add bug outline svg. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | fix/dashboard-iot | 62fd59c | fix: update dashboard and navigation. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | release/v0.0.2 | 40f3ba4 | feat(config): add production environment variables for api endpoints and Mapbox access token. | | 12/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp | release/v0.0.2 | 9aea6f6 | chore(package): update version to 0.0.2. | | 12/05/2026 |


&nbsp;


#### Execution Evidence for Sprint Review

En esta sección se presenta la evidencia del incremento de software desarrollado durante el Sprint 2, centrado en la implementación del núcleo operativo de la plataforma Viora: el Dashboard de Monitoreo Agrícola. Este panel ha sido diseñado para transformar datos climáticos y satelitales complejos en indicadores visuales accionables para productores y especialistas fitosanitarios.
El objetivo principal de esta ejecución fue consolidar una interfaz centralizada que permitiera la supervisión multizona en tiempo real. A continuación, se detallan los componentes clave implementados:

**Logros principales**
- KPIs de Estado General: Se desarrollaron tarjetas de indicadores críticos que muestran la salud de las parcelas, el estado del índice de vegetación (NDVI), la acumulación de horas frío (Chill Hours) y proyecciones de rendimiento.
- Gestión Geoespacial y Clima: Se integró un módulo de Plot Overview con mapas satelitales detallados (vía Mapbox), permitiendo la identificación precisa de sectores. Este se complementa con un resumen meteorológico local que incluye pronósticos a 3 días y detección de anomalías térmicas.
- Sistema de Alertas Inteligentes: Se implementó una tabla de notificaciones recientes categorizadas por severidad (Crítica, Alta, Media). Este sistema permite rastrear reportes de plagas, zonas de bajo NDVI y riesgos fenológicos de manera eficiente.
- Análisis de Tendencias: Se incorporó una herramienta de visualización avanzada (Trend Analysis) que correlaciona el índice NDVI con las porciones de frío acumuladas. Esta gráfica permite a los usuarios validar la recuperación del cultivo frente a eventos de bajo vigor y monitorear umbrales críticos de producción.

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-1.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-2.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-3.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-4.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\textbf{Enlace al video:} \url{https://tinyurl.com/viora-sprint2}

#### Services Documentation Evidence for Sprint Review

Para el presente Sprint, no se ha incluido documentación de Web Services debido a que el desarrollo se ha concentrado en el núcleo operativo del Frontend (Dashboard de Monitoreo Agrícola) y la visualización de datos. La arquitectura de los servicios web y la especificación de Endpoints en OpenAPI se integrarán en ciclos futuros; por ahora, la plataforma utiliza datos simulados (mock data) para validar la experiencia de usuario y el despliegue de los indicadores agrícolas.

#### Software Deployment Evidence for Sprint Review

Durante el transcurso del Sprint 2, el equipo de desarrollo enfocó sus esfuerzos de despliegue en la transición de las aplicaciones hacia un entorno de producción altamente disponible. Tras haber consolidado la infraestructura base en el sprint anterior, en esta etapa se priorizó el despliegue de la Web Application (Dashboard de Monitoreo) y la actualización de los Web Services necesarios para la visualización de datos en tiempo real.

Evidencia de Implementación de Despliegue

A continuación, se detalla el proceso técnico ejecutado para publicar la versión estable de la plataforma:

1. Compilación y Despliegue de la Aplicación Web
El proceso inicia con la ejecución del comando npm run deploy, el cual dispara una cadena de eventos automatizados: primero, la compilación del entorno de producción mediante Vite, y posteriormente, la transferencia de los archivos generados hacia los servidores de Firebase Hosting.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-2/image1.png}
\caption{Ejecución exitosa del comando de despliegue y build de producción.}
\caption*{\textit{Nota.} La imagen muestra la transformación de módulos, la generación de la carpeta "dist" y la finalización del despliegue en la URL oficial. Elaboración propia.}
\end{figure}

\textbf{Enlace la webapp:} \url{https://viora-release-001.web.app/dashboard}


#### Team Collaboration Insights for Sprint Review

Durante el Sprint 2, la dinámica de colaboración del equipo se intensificó significativamente debido a la complejidad técnica que supuso el desarrollo del Dashboard y la integración de analíticos complejos. El equipo mantuvo un flujo constante de contribuciones, asegurando que cada componente visual y lógico fuera revisado y fusionado correctamente en el repositorio oficial.

Como se evidencia en los analíticos de GitHub, la participación activa de todos los miembros permitió alcanzar los objetivos del sprint, destacando una distribución de tareas equilibrada entre la visualización de datos, la gestión geoespacial y el sistema de alertas.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-commit.png}
\caption{Estadísticas de contribución (Top Committers) - Sprint 2.}
\caption*{\textit{Nota.} La gráfica muestra el incremento en la frecuencia de commits realizados por el equipo durante el desarrollo del núcleo operativo de la plataforma. Elaboración propia a través de GitHub Insights.}
\end{figure}

Este nivel de interacción técnica y el uso riguroso de ramas de trabajo han sido fundamentales para garantizar la estabilidad de la Web Application antes de su despliegue final en producción.