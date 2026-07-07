### Sprint 4

#### Sprint Planning 4

&nbsp;

En esta sección se consolidan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 4, realizada de manera virtual a través de la plataforma Discord. Tras el despliegue exitoso de la segunda versión de la aplicación web, considerando funcionalidades como la gestión de parcelas, la recepción de alertas, la mejora de la presencia digital de Viora con videos relacionados al producto y al equipo. El propósito central de esta reunión fue evolucionar hacia las versiones finales de la Aplicación Web, Servicio Web de Viora y Landing Page. Para ello, el equipo desarrolló el último subdominio core e implementó los subdominios sopport; esto permitió conectar el flujo de los especialistas con el de los productores.

A continuación, se presenta el cuadro resumen del Sprint Planning Meeting, el cual detalla la logística de la sesión, la revisión de los resultados del sprint previo y el Sprint Goal diseñado para permitir el flujo de interacción entre los dos segmentos.

| **Sprint #** | Sprint 4 |
| :--- | :--------------- |
| **Date** | 2026-06-20 |
| **Time** | 05:30 PM |
| **Location** | Discord (Virtual) |
| **Prepared By** | Paredes Maza, Juan de Dios |
| **Attendees (to planning meeting)** | Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Juan de Dios / Santi Guerrero Fabrizio Alonso / Trinidad Leon, Jahat Jassiel |
| **Sprint 3 Review Summary** | Durante el Sprint 3, se cumplió con el 55 % de los objetivos mediante la implementación de las mejoras de la Landing Page junto al agregado de las secciones de About the Team y About the Product (con sus vídeos); en la implementación de la Aplicación Web y Landing Page se priorizo las funcionalidades de gestión del productor. El Servicio Web fue desplegado en Render, con una base de datos desplegada en filess.io, la Aplicación Web fue desplegada en Firebase, mientras que la Landing Page sigue desplegada en Vercel. La implementación fue respalda por un flujo de trabajo colaborativo de más de 250 commits. Por su parte, el Product Owner validó que el producto cumpló con el Sprint Goal enfocado en uno de los segmentos, aunque sus observaciones fueron dirigidas al segmento de los especialistas fitosanitarios. |
| **Sprint 3 Retrospective Summary** | Durante el sprint 3, el equipo indentificó que el tiempo designado fue subestimado. Ya que el factor humano de conocimientio y dominio de los temas fue un limitante. A pesar de ello, con lo aprendido técnicamente y como equipo del Sprint 3, se espera que el equipo pueda tener una mejor estimación de la velocidad del equipo y pueda implementarse todo lo propuesto. |
| **Sprint 4 Goal** |  **Nuestro enfoque** se orienta a ilustrar los elementos diferenciales de la solución y dar a conocer los perfiles y motivaciones de los miembros del equipo para los nuevos visitantes, incrementar la cantidad de contratos de asistencia técnica al centralizar las peticiones de los productores en un solo lugar, asegurar el compromiso de los especialistas al ofrecerles un canal estructurado para la captación de clientes, y consolidar la estructura transaccional de la plataforma al desplegar para el equipo de desarrollo los endpoints base de gestión de solicitudes, asignación de especialistas y registro de diagnósticos fitosanitarios. **Creemos que esto proporciona** una decisión de registro más informada y confianza a los nuevos visitantes, contratación de asistencia técnica sin demoras a los productores olivareros, un canal de atención estructurado para conseguir clientes a los especialistas fitosanitarios, y otorga la estructura de servicios de backend para el ciclo de vida de la intervención para implementar las pantallas de control, formularios de reporte y tableros de visualización de parcelas para el equipo de desarrollo. **Esto se confirmará cuando** se registre un incremento medible en las nuevas suscripciones generadas, los productores generen un mayor número de contratos completando todo el ciclo de asistencia técnica, se alcance una mayor tasa de conversión de solicitudes entrantes en servicios efectivamente atendidos por nuestra red de especialistas, y el equipo frontend integre las vistas consumiendo los endpoints sin soporte del backend. |
| **Sprint 4 Velocity** | 83 |
| **Sum of Story Points** | 83 |

#### Aspect Leaders and Collaborators

&nbsp;

En esta sección se presenta la matriz Leadership-and-Collaboration Matrix (LACX) correspondiente al Sprint 4, diseñada para fortalecer la coordinación estratégica y la especialización técnica dentro del ecosistema Viora. Para este incremento, el alcance se ha enfocado en consolidar el ciclo de asistencia técnica y expandir las capacidades operativas del sistema. En consecuencia, el equipo ha distribuido las responsabilidades entre los contextos Shared, Agronomic, Surveillance, Intervention, y PAM (Profile & Asset Management), incorporando además los nuevos contextos de IAM (Identity and Access Management) y Billing para soportar la gestión de autenticación y suscripciones. Esta distribución garantiza que las historias de usuario y técnicas planificadas (como la gestión de solicitudes, emisión de propuestas, certificación de recetas agronómicas y procesamiento de pagos) cuenten con un liderazgo claro para su integración exitosa.

| Team Member (Last Name, First Name) | GitHub Username | Shared Context Leader (L) / Collab (C) | Agronomic Context Leader (L) / Collab (C) | Surveillance Context Leader (L) / Collab (C) | Intervention Context Leader (L) / Collab (C) | PAM Context Leader (L) / Collab (C) | Brand & Communication Leader (L) / Collab (C) | IAM Context Leader (L) / Collab (C) | Billing Context Leader (L) / Collab (C) |
|---|---|---|---|---|---|---|---|---|---|
| Espada, Piero   | espadita2510 / pieroedeveloper25 | C | C | L | C | C | C | L | C |
| Li, Diana       | peruvianMiau                     | C | C | C | L | C | C | C | L |
| Paredes, Victor | DaronCameloft                    | C | C | C | C | C | L | C | C |
| Santi, Fabrizio | Santi2007939                     | C | L | C | C | L | C | C | C |
| Trinidad, Jahat | trinity-bytes                    | L | C | C | C | C | C | C | C |


#### Sprint Backlog 4

&nbsp;

El objetivo principal de este Sprint 4 es consolidar el flujo end-to-end de asistencia experta (Intervention Bounded Context) y la monetización del ecosistema Viora, desarrollando capacidades integrales de gestión de solicitudes técnicas, emisión de propuestas, certificación de recetas agronómicas y cálculo de costos de intervención. Paralelamente, se integra el módulo de facturación (Billing) con flujos de suscripción, referidos y cupones, así como el despliegue del módulo completo de autenticación y seguridad (IAM). Finalmente, el sprint incluye la optimización de los elementos de conversión de la Landing Page, garantizando que el ciclo completo desde la captación hasta la resolución técnica en campo sea fluido y rastreable.

\begin{figure}[H]
\caption{Vista General del Sprint Backlog 4}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/sb.png}
\caption*{\textit{Nota.} Elaboración propia a partir del tablero en Trello: https://tinyurl.com/1asi0730-trello-sb4}
\end{figure}

\begin{longtable}{|p{0.05\textwidth}|p{0.14\textwidth}|p{0.05\textwidth}|p{0.14\textwidth}|p{0.24\textwidth}|p{0.06\textwidth}|p{0.10\textwidth}|p{0.06\textwidth}|}
\hline
\multicolumn{2}{|l|}{\textbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 4} \\ \hline
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task}} \\ \hline
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Est. (Hrs)} & \textbf{Assigned To} & \textbf{Status} \\ \hline
\endfirsthead

\hline
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task (Continuación)}} \\ \hline
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Est. (Hrs)} & \textbf{Assigned To} & \textbf{Status} \\ \hline
\endhead

% US01
US01 & Acceso a la cuenta según rol & TK01 & Formulario Sign In Base & Implementación de formulario sign in base & 1.0 & Li, Diana & Done \\ \hline

% US02
US02 & Registro de cuenta por tipo de perfil & TK01 & Formulario Sign Up Base & Implementación de formulario sign up base & 1.0 & Li, Diana & Done \\ \hline

% US03
US03 & Cierre de sesión seguro & TK01 & Invalidación de sesión de usuario & Implementación de invalidación de sesión de usuario & 1.0 & Li, Diana & Done \\ \hline

% US04
US04 & Actualización de información básica & TK01 & Formulario de edición básica & Implementación de formulario de edición básica & 1.0 & Li, Diana & Done \\ \hline

% US06
US06 & Monitoreo de telemetría IoT para decisiones hídricas & TK01 & Consumo de telemetría IoT & Implementación de consumo de telemetría iot & 1.0 & Paredes, Victor & Done \\ \hline

% US07
US07 & Publicación de perfil profesional & TK01 & Publicación de perfil profesional & Implementación de publicación de perfil profesional & 1.0 & Paredes, Victor & Done \\ \hline

% US08
US08 & Gestión de estado de disponibilidad & TK01 & Toggle de disponibilidad operativo & Implementación de toggle de disponibilidad operativo & 1.0 & Paredes, Victor & Done \\ \hline

% US22
US22 & Identificación de especialistas cercanos & TK01 & Geolocalización de especialistas & Implementación de geolocalización de especialistas & 1.0 & Espada, Piero & Done \\ \hline

% US23
US23 & Solicitud formal de intervención & TK01 & Botón de solicitud formal & Implementación de botón de solicitud formal & 1.0 & Espada, Piero & Done \\ \hline

% US24
US24 & Evaluación de disponibilidad operativa & TK01 & Visualización de bandeja de entrada & Implementación de visualización de bandeja de entrada & 1.0 & Espada, Piero & Done \\ \hline

% US25
US25 & Resolución de la solicitud de intervención & TK01 & Acciones de Aceptación/Rechazo & Implementación de acciones de aceptación/rechazo & 1.0 & Espada, Piero & Done \\ \hline

% US26
US26 & Evaluación preliminar de la unidad productiva & TK01 & Consulta de diagnóstico preliminar & Implementación de consulta de diagnóstico preliminar & 1.0 & Espada, Piero & Done \\ \hline

% US27
US27 & Emisión de propuesta de servicio & TK01 & Formulario de propuesta económica & Implementación de formulario de propuesta económica & 1.0 & Espada, Piero & Done \\ \hline

% US28
US28 & Resolución de la propuesta de servicio & TK01 & Aprobación de cotización & Implementación de aprobación de cotización & 1.0 & Espada, Piero & Done \\ \hline

% US29
US29 & Habilitación de canal de comunicación directo & TK01 & Habilitar canal directo & Implementación de habilitar canal directo & 1.0 & Espada, Piero & Done \\ \hline

% US30
US30 & Revisión de antecedentes agronómicos en campo & TK01 & Acceso a historia en campo móvil & Implementación de acceso a historia en campo móvil & 1.0 & Espada, Piero & Done \\ \hline

% US31
US31 & Registro de datos de inspección física & TK01 & Formulario de observaciones clínicas & Implementación de formulario de observaciones clínicas & 1.0 & Espada, Piero & Done \\ \hline

% US32
US32 & Emisión de prescripción de agrofármacos & TK01 & Emisión digital de receta & Implementación de emisión digital de receta & 1.0 & Espada, Piero & Done \\ \hline

% US33
US33 & Certificación de aplicación de receta técnica & TK01 & Confirmación de tratamiento en campo & Implementación de confirmación de tratamiento en campo & 1.0 & Espada, Piero & Done \\ \hline

% US34
US34 & Consolidación del gasto de intervención & TK01 & Registro de gastos ejecutados & Implementación de registro de gastos ejecutados & 1.0 & Espada, Piero & Done \\ \hline

% US35
US35 & Registro de disposición de recontratación & TK01 & Preferencia de recontratación & Implementación de preferencia de recontratación & 1.0 & Espada, Piero & Done \\ \hline

% US36
US36 & Publicación de caso de éxito profesional & TK01 & Publicación de éxito profesional & Implementación de publicación de éxito profesional & 1.0 & Espada, Piero & Done \\ \hline

% US37
US37 & Actualización de credenciales de seguridad & TK01 & Actualización de credencial local & Implementación de actualización de credencial local & 1.0 & Li, Diana & Done \\ \hline

% US38
US38 & Generación de enlace de invitación & TK01 & Compartir enlace de invitación & Implementación de compartir enlace de invitación & 1.0 & Paredes, Victor & Done \\ \hline

% US39
US39 & Registro de cuenta mediante enlace de invitación & TK01 & Registro mediante referido & Implementación de registro mediante referido & 1.0 & Paredes, Victor & Done \\ \hline

% US40
US40 & Registro del origen de invitación & TK01 & Panel de control de referidos & Implementación de panel de control de referidos & 1.0 & Paredes, Victor & Done \\ \hline

% US41
US41 & Pago de la suscripción & TK01 & Vista de pasarela Checkout & Implementación de vista de pasarela checkout & 1.0 & Paredes, Victor & Done \\ \hline

% US42
US42 & Cancelación de servicio y emisión de devoluciones & TK01 & Formulario de cancelación de plan & Implementación de formulario de cancelación de plan & 1.0 & Paredes, Victor & Done \\ \hline

% US51
US51 & Visualización del video promocional del producto & TK01 & Integrar video promocional & Implementación de integrar video promocional & 1.0 & Paredes, Victor & Done \\ \hline

% US52
US52 & Exploración del video del proceso y testimonios del equipo & TK01 & Integrar video sobre el equipo & Implementación de integrar video sobre el equipo & 1.0 & Paredes, Victor & Done \\ \hline

% TS01
TS01 & Autenticación de usuarios e inicio de sesión seguro & TK01 & Implementar TokenService y HashingService & Implementación de implementar tokenservice y hashingservice & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Crear SignInCommand & Implementación de crear signincommand & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST de login & Implementación de exponer endpoint rest de login & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS02
TS02 & Crear cuenta de usuario por rol & TK01 & Definir User Aggregate Root & Implementación de definir user aggregate root & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Implementar UserRepository con EF Core & Implementación de implementar userrepository con ef core & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Crear SignUpCommand & Implementación de crear signupcommand & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Exponer endpoint REST de registro & Implementación de exponer endpoint rest de registro & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS03
TS03 & Consultar y modificar perfil de usuario & TK01 & Definir Profile Aggregate Root & Implementación de definir profile aggregate root & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Implementar ProfileRepository con EF Core & Implementación de implementar profilerepository con ef core & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Crear UpdateProfileCommand & Implementación de crear updateprofilecommand & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Exponer endpoints REST de perfiles & Implementación de exponer endpoints rest de perfiles & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS04
TS04 & Generar enlace de invitación y referidos & TK01 & Crear GenerateInvitationCommand & Implementación de crear generateinvitationcommand & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de referidos & Implementación de exponer endpoint rest de referidos & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS17
TS17 & Crear solicitud de intervención técnica & TK01 & Definir InterventionRequest Aggregate Root & Implementación de definir interventionrequest aggregate root & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Implementar InterventionRequestRepository con EF Core & Implementación de implementar interventionrequestrepository con ef core & 0.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Definir InterventionRequestRepository & Implementación de definir interventionrequestrepository & 0.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Crear CreateInterventionRequestCommand & Implementación de crear createinterventionrequestcommand & 0.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK05 & Implementar InterventionRequestCommandService & Implementación de implementar interventionrequestcommandservice & 0.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de creación de solicitud & Implementación de exponer endpoint rest de creación de solicitud & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS18
TS18 & Consultar y actualizar estado de intervención & TK01 & Crear UpdateInterventionStatusCommand & Implementación de crear updateinterventionstatuscommand & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de estado & Implementación de exponer endpoint rest de estado & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS19
TS19 & Formalizar propuesta de servicio & TK01 & Definir ServiceProposal Entity & Implementación de definir serviceproposal entity & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Crear SubmitServiceProposalCommand & Implementación de crear submitserviceproposalcommand & 0.5 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST de propuestas & Implementación de exponer endpoint rest de propuestas & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS20
TS20 & Obtener datos de contacto directo protegidos & TK01 & Obtener datos de contacto directo protegidos & Implementación de obtener datos de contacto directo protegidos & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS21
TS21 & Registrar hallazgos de inspección física & TK01 & Definir InspectionFinding Value Object & Implementación de definir inspectionfinding value object & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de hallazgos & Implementación de exponer endpoint rest de hallazgos & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS22
TS22 & Emitir receta técnica fitosanitaria & TK01 & Definir TechnicalRecipe Entity & Implementación de definir technicalrecipe entity & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de recetas & Implementación de exponer endpoint rest de recetas & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS23
TS23 & Certificar ejecución de tratamientos en campo & TK01 & Implementar CertifyTreatmentExecutionCommand & Implementación de implementar certifytreatmentexecutioncommand & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de certificación & Implementación de exponer endpoint rest de certificación & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS24
TS24 & Consolidar gastos operativos de mitigación & TK01 & Definir InterventionCost Entity & Implementación de definir interventioncost entity & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de costos & Implementación de exponer endpoint rest de costos & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS25
TS25 & Cerrar intervención y evaluar servicio público & TK01 & Crear CloseInterventionCommand & Implementación de crear closeinterventioncommand & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de cierre & Implementación de exponer endpoint rest de cierre & 0.5 & Santi, Fabrizio & Done \\ \hline

% TS26
TS26 & Procesar pago de suscripción y vigencia de planes & TK01 & Definir Subscription Aggregate Root & Implementación de definir subscription aggregate root & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Implementar SubscriptionRepository con EF Core & Implementación de implementar subscriptionrepository con ef core & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Crear ProcessPaymentCommand & Implementación de crear processpaymentcommand & 0.5 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Exponer endpoint REST de pagos & Implementación de exponer endpoint rest de pagos & 0.5 & Trinidad, Jahat & Done \\ \hline

% TS27
TS27 & Cancelar renovación automática de suscripción & TK01 & Crear CancelSubscriptionCommand & Implementación de crear cancelsubscriptioncommand & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Exponer endpoint REST de cancelación & Implementación de exponer endpoint rest de cancelación & 0.5 & Trinidad, Jahat & Done \\ \hline
\end{longtable}

#### Development Evidence for Sprint Review

&nbsp;

Durante el Sprint 4, el equipo de desarrollo desplegó de manera exitosa los incrementos correspondientes en los tres repositorios principales del proyecto, consolidando la integración continua de la solución. En primer lugar, el backend (**`viora-platform`**) fue actualizado para exponer la nueva estructura de servicios RESTful y persistencia de datos, habilitando los bounded contexts de Identity and Access Management (IAM), Profile & Asset Management (PAM), Intervention y Billing. En segundo lugar, la aplicación web (**`viora-webapp`**) se desplegó incorporando las interfaces reactivas necesarias para el consumo de telemetría IoT, flujos de solicitud de intervención, emisión de prescripciones técnicas, flujos de suscripción (checkout) y la autenticación/registro de usuarios, permitiendo así una interacción directa entre productores y especialistas. Finalmente, la landing page (**`viora-website`**) fue actualizada y desplegada para integrar la actualización de las secciones audiovisuales (video promocional y presentación del equipo), reforzando la propuesta de valor y la estrategia de comunicación. Estas actualizaciones conjuntas evidencian la implementación técnica de las historias planificadas en el Sprint Backlog.

A continuación, se presenta la matriz de control de versiones correspondiente al Sprint 4, la cual detalla el historial de commits más importantes de los repositorios (cabe destacar que todos los repositorios mencionados se encuentran alojados bajo el prefijo de la organización upc-pre-1asi0730-2610-10215-arcadiadevs/):

\begin{longtable}{|p{0.15\textwidth}|p{0.15\textwidth}|p{0.10\textwidth}|p{0.40\textwidth}|p{0.10\textwidth}|}
\hline
\textbf{Repository} & \textbf{Branch} & \textbf{Commit Id} & \textbf{Commit Message} & \textbf{Date} \\ \hline
\endfirsthead

\hline
\textbf{Repository} & \textbf{Branch} & \textbf{Commit Id} & \textbf{Commit Message} & \textbf{Date} \\ \hline
\endhead
viora-webapp & feature/\allowbreak core-and-account & e420fbe & feat(assets): add fonts, icons, images, and onboarding assets & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 2a1a275 & feat(mock): add local API server with platform route simulation. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 5b4dc7e & feat(i18n): add translation keys for all bounded contexts. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 32c9a52 & feat(support): add FAQ and legal documents viewer. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & c0a3eac & feat(profile): add profile context with settings view. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 6410405 & feat(billing): add billing context with subscriptions, invoices, and payments. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 87645a7 & feat(iam): add authentication with sign-in, sign-up, session, and guards. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 93d1278 & feat(shared): add layout, dashboard views, and navigation sidebar. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & c8ed541 & feat(shared): add infrastructure layer with session, API, interceptors, and mapbox. & 05/07/2026 \\ \hline
viora-webapp & feature/\allowbreak core-and-account & 94f31f6 & feat(shell): add app shell with PrimeVue, Pinia, and routing. & 05/07/2026 \\ \hline
viora-website & feature/\allowbreak prices & 4cb0501 & fix(price): change format for dolar. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak tests/\allowbreak priority-3-coverage & 1d9ded2 & feat(test): add tests for intervention and profiles. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak tests/\allowbreak priority-3-coverage & 5cfd01c & feat: add tests for profile and intervention. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak intervention/\allowbreak specialist-dashboard & 31c5953 & feat(intervention): verify, decline and specialist dashboard. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak intervention/\allowbreak structured-prescription-value-objects & 7ff2ba9 & feat(intervention): replace opaque strings with structured value objects. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak profile/\allowbreak photo-url-and-fullname-sync & a292e3d & feat(profile): add photo-url field and profile-to-Iam full-name sync. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak iam/\allowbreak account-deletion & afd88be & feat(iam): add account deletion. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak intervention/\allowbreak current-user-id-wiring & 99962ba & fix(intervention): close jwt-derived-identity gap on requests and service proposals. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak billing/\allowbreak current-user-id-wiring & c02527e & fix(billing): close jwt-derived-identity gap on checkouts, payment methods, invoices, coupons. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak surveillance/\allowbreak current-user-id-wiring & 27ea81b & fix(surveillance): close jwt-derived-identity gap on alerts and pest sighting reports. & 06/07/2026 \\ \hline
viora-platform & feature/\allowbreak agronomic/\allowbreak current-user-id-wiring & f6a9d00 & fix(agronomic): close jwt-derived-identity gap across plots, IoT devices, nutrition plans, expenses - part two. & 06/07/2026 \\ \hline
\end{longtable}

#### Execution Evidence for Sprint Review

&nbsp;

\begin{figure}[H]
\caption{Sección audiovisual «About the Product» implementada en la Landing Page.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/landing-spint-4-product.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Sección «About the Team» actualizada en la Landing Page.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/landing-spint-4-team.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

* \textbf{Website:} \url{https://viora-website-flax.vercel.app/}
* \textbf{Webapp:} \url{https://viora-website-wa.web.app/}

#### Services Documentation Evidence for Sprint Review

&nbsp;

La documentación oficial y centralizada de todos estos endpoints se encuentra desplegada y accesible a través del siguiente enlace directo: \url{}

A continuación, se presenta la tabla detallada de los endpoints documentados, indicando las acciones soportadas, la sintaxis de llamada, parámetros requeridos y ejemplos descriptivos del response esperado, considerando las particularidades del manejo de respuestas en ASP.NET Core (como el uso de ProblemDetails para errores).

\begin{longtable}{|p{0.25\textwidth}|p{0.20\textwidth}|p{0.20\textwidth}|p{0.25\textwidth}|}
\hline
\textbf{Sintaxis de Llamada} & \textbf{Acción Implementada} & \textbf{Parámetros y Request Body} & \textbf{Ejemplo y Explicación del Response} \\ \hline
\endfirsthead

\hline
\textbf{Sintaxis de Llamada} & \textbf{Acción Implementada} & \textbf{Parámetros y Request Body} & \textbf{Ejemplo y Explicación del Response} \\ \hline
\endhead

POST /api/\allowbreak v1/\allowbreak intervention-requests & Crear solicitud de asistencia técnica & Body: JSON con plotId, specialistId, reason y message. & \textbf{201 Created:} Solicitud registrada. Ej: \texttt{\{"id":1, "status":"PENDING"\}} \\ \hline
GET /api/\allowbreak v1/\allowbreak intervention-requests & Listar solicitudes de intervención & Parámetros query: Ninguno. (Usa Token JWT). Body: N/A. & \textbf{200 OK:} Arreglo JSON. Ej: \texttt{[\{"id":1, "plotId":2\}]} \\ \hline
POST /api/\allowbreak v1/\allowbreak intervention-requests/\allowbreak \{id\}/\allowbreak verifications & Verificar e iniciar una intervención & Path: id. Body: N/A. & \textbf{200 OK:} Intervención iniciada. Ej: \texttt{\{"status":"VERIFIED"\}} \\ \hline
POST /api/\allowbreak v1/\allowbreak service-proposals & Enviar propuesta de servicio & Body: JSON con requestId, description, cost. & \textbf{201 Created:} Propuesta enviada. Ej: \texttt{\{"id":5, "proposedCost":50.00\}} \\ \hline
PATCH /api/\allowbreak v1/\allowbreak service-proposals/\allowbreak \{id\} & Aceptar o rechazar propuesta & Path: id. Body: JSON con operation. & \textbf{200 OK:} Estado de la propuesta. Ej: \texttt{\{"status":"ACCEPTED"\}} \\ \hline
GET /api/\allowbreak v1/\allowbreak interventions & Ver panel de intervenciones activas & Parámetros query: Ninguno. Body: N/A. & \textbf{200 OK:} Intervenciones. Ej: \texttt{[\{"status":"IN\_PROGRESS"\}]} \\ \hline
POST /api/\allowbreak v1/\allowbreak treatment-prescriptions & Emitir receta de tratamiento & Body: JSON con interventionId, treatmentInstructions. & \textbf{201 Created:} Receta generada. Ej: \texttt{\{"id":2, "durationDays":7\}} \\ \hline
POST /api/\allowbreak v1/\allowbreak intervention-outcomes & Reportar el impacto del tratamiento & Body: JSON con interventionId, rating. & \textbf{201 Created:} Resultado guardado. Ej: \texttt{\{"rating":"HIGH"\}} \\ \hline
GET /api/\allowbreak v1/\allowbreak checkouts & Generar sesión de pago (Checkout) & Parámetros query: planId. Body: N/A. & \textbf{200 OK:} URL de MercadoPago. Ej: \texttt{\{"paymentUrl":"https..."\}} \\ \hline
GET /api/\allowbreak v1/\allowbreak subscriptions & Consultar estado de suscripción & Parámetros query: Ninguno. Body: N/A. & \textbf{200 OK:} Estado del plan. Ej: \texttt{\{"plan":"PREMIUM", "active":true\}} \\ \hline
GET /api/\allowbreak v1/\allowbreak specialist-dashboard & Estadísticas para especialistas & Parámetros query: Ninguno. Body: N/A. & \textbf{200 OK:} Data del panel. Ej: \texttt{\{"totalEarnings": 1500.00\}} \\ \hline

\end{longtable}

Para respaldar el trabajo realizado en la configuración de la documentación, a continuación se proporciona el URL oficial del repositorio backend y la relación de commits vinculados a este esfuerzo en el cuarto sprint:

\begin{itemize}
    \item \textbf{Repositorio de Web Services:} \url{https://github.com/upc-pre-1asi0730-2610-10215-arcadiadevs/viora-platform}
    \item \textbf{Commits relacionados con Documentación e Identity Wiring:}
    \begin{itemize}
        \item \texttt{27ea81b}: \textit{fix(surveillance): close jwt-derived-identity gap on alerts and pest sighting reports.}
        \item \texttt{99962ba}: \textit{fix(intervention): close jwt-derived-identity gap on requests and service proposals.}
        \item \texttt{31c5953}: \textit{feat(intervention): verify, decline and specialist dashboard.}
        \item \texttt{f6a9d00}: \textit{fix(agronomic): close jwt-derived-identity gap across plots, IoT devices, nutrition plans, expenses - part two.}
    \end{itemize}
\end{itemize}

\textbf{Despliegue:} \url{https://viora-platform-u202412248.onrender.com/swagger/index.html}


#### Software Deployment Evidence for Sprint Review

&nbsp;

\begin{figure}[H]
\caption{Comprobación de estado de la base de datos en Filess.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidence-1.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista de ambientes.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidence-2.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Creación.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidence-3.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista del proyecto en Vercel.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidence-4.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Overview del proyecto en Firebase.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidencia-6.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista del proyecto en Render.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidencia-5.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista del proyecto en Vercel.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/evidence-7.jpeg}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

#### Team Collaboration Insights for Sprint Review

&nbsp;

En esta sección se detallan las actividades de implementación llevadas a cabo durante el Sprint 4, orientadas a la integración de las segundas versiones de los Video About-the-Team y About-the-Product, los módulos de intervención, soporte y suscripciones para la Webapp de Viora y el Webservice de Viora. El proceso de desarrollo se ejecutó de manera ágil y estructurada, garantizando que todos los miembros del equipo tuvieran una participación técnica activa. Para respaldar la trazabilidad del trabajo colaborativo, a continuación se presentan las evidencias extraídas directamente de los analíticos de GitHub (Contributors). Estas capturas ilustran el flujo de integración, con la participación de los 5 autores.

\begin{figure}[H]
\caption{Vista de Contributors de Github - Website}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/team/website-commits.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista de Contributors de Github - Webapp}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/team/webapp-commits.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Vista de Contributors de Github - Webservice}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-4/team/platform-commits.png}
\caption*{\textit{Nota.} Elaboración propia.}
\end{figure}

\newpage
