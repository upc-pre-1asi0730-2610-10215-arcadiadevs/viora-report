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

El diagrama de clases de Repository y External Integrations Components modela la capa de persistencia y los adaptadores de servicios externos que sustentan la plataforma Viora. En su centro se encuentra la interfaz \texttt{IBaseRepository<T>}, que define las operaciones CRUD genéricas (\texttt{FindById}, \texttt{FindAll}, \texttt{Save}, \texttt{DeleteById}) y es implementada por \texttt{BaseRepository<T>} sobre Entity Framework Core. Esta implementación concreta encapsula un \texttt{DbContext} de EF Core y traduce las operaciones del dominio a consultas LINQ sobre la base de datos relacional.

La clase \texttt{VioraDbContext} hereda de \texttt{DbContext} y expone los \texttt{DbSet<T>} correspondientes a cada entidad del dominio (\texttt{Users}, \texttt{Plots}, \texttt{Subscriptions}, \texttt{InterventionRequests}, entre otros). Esta clase actúa como el punto de unificación entre el modelo de dominio y el esquema relacional, aplicando las configuraciones de flujo de trabajo y mapeo de propiedades definidas en las clases de configuración de EF Core.

En la capa de servicios externos, el diagrama presenta tres adaptadores que siguen el patrón de puertos y adaptadores. El \texttt{AgroMonitoringAdapter} implementa la interfaz \texttt{IAgroMonitoringClient} y encapsula las llamadas a la API de AgroMonitoring para la obtención de datos de NDVI, clima y imágenes satelitales. El \texttt{MercadoPagoAdapter} implementa \texttt{IMercadoPagoClient} y gestiona la creación de preferencias de pago, recepción de webhooks de confirmación y consulta de estados de transacción. Finalmente, el \texttt{MapboxAdapter} implementa \texttt{IMapboxClient} y provee geocodificación inversa y generación de tiles para la visualización geoespacial de parcelas.

Todos los adaptadores inyectan clientes HTTP (\texttt{HttpClient}) o SDKs específicos de cada proveedor, y exponen métodos que devuelven DTOs del dominio en lugar de tipos nativos del proveedor, garantizando así el desacoplamiento entre la lógica de negocio y las APIs externas.

##### IAM y Profile Components

Maneja el registro, la autenticación mediante JWT (JSON Web Tokens) y la gestión de los perfiles de Productores y Especialistas.

\begin{figure}[H]
    \caption{Diagrama de clases para IAM y Profile Components.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/iam-and-profile-components-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente IAM y Profile Components. Elaboración propia.}
\end{figure}

El diagrama de IAM y Profile Components describe el subsistema de autenticación, autorización y gestión de perfiles de la plataforma Viora. El controlador \texttt{AuthController} expone los endpoints de registro (\texttt{Register}), inicio de sesión (\texttt{Login}), renovación de token (\texttt{RefreshToken}) y cierre de sesión (\texttt{Logout}). Este controlador delega toda la lógica de autenticación al servicio \texttt{IAuthService}, cuya implementación concreta \texttt{AuthService} orquesta el flujo completo: validación de credenciales, generación de tokens JWT, hash de contraseñas con bcrypt y persistencia de sesiones activas.

La interfaz \texttt{IAuthService} define los contratos para las operaciones de autenticación, mientras que \texttt{IUserService} maneja la gestión CRUD de usuarios. El servicio concreto \texttt{UserService} implementa la creación de usuarios con roles diferenciados (\texttt{Productor}, \texttt{Specialist}, \texttt{Admin}), validación de unicidad de email y actualización de perfiles. El servicio \texttt{IProfileService} y su implementación \texttt{ProfileService} gestionan la información extendida del perfil, incluyendo datos geográficos del productor, credenciales del especialista y evidencia documental para verificación.

Las entidades \texttt{User} y \texttt{UserProfile} representan el núcleo del modelo de datos de identidad. \texttt{User} almacena las credenciales (\texttt{Email}, \texttt{PasswordHash}), el rol y el estado de la cuenta, mientras que \texttt{UserProfile} contiene datos complementarios como nombre completo, teléfono, dirección y campos específicos del rol. La relación 1:1 entre ambas entidades permite desacoplar las preocupaciones de autenticación de las de presentación.

El patrón de seguridad se apoya en un middleware de validación de tokens JWT que intercepta las requests entrantes, verifica la firma del token, extrae los claims de autorización y los inyecta en el contexto HTTP. Los endpoints requieren atributos de autorización por rol (\texttt{[Authorize(Roles = ``Productor'')]}) para garantizar que solo los usuarios con permisos adecuados accedan a los recursos protegidos.

##### Plot Management y Agrometeorological Monitoring

Subsistema principal de datos geolocalizados para las parcelas y sincronización de índices de vegetación o clima.

\begin{figure}[H]
    \caption{Diagrama de clases para Plot Management y Agrometeorological Monitoring.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/plot-management-and-agrometeorological-monitoring-components-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Plot Management y Agrometeorological Monitoring. Elaboración propia.}
\end{figure}

Este diagrama modela el dominio central de gestión de parcelas y monitoreo agrometeorológico de Viora. El \texttt{PlotController} expone los endpoints REST para CRUD de parcelas (\texttt{GetPlots}, \texttt{GetPlotDetails}, \texttt{SavePlot}, \texttt{UpdateBoundaries}) y consulta de datos agronómicos (\texttt{GetAgronomicData}). El controlador delega al servicio \texttt{IPlotService}, cuya implementación \texttt{PlotService} orquesta la interacción entre el repositorio de parcelas, el cliente de AgroMonitoring y el servicio de predicción.

La entidad \texttt{Plot} es el objeto de valor geoespacial central, que almacena el nombre de la parcela, las coordenadas del polígono (\texttt{GeoJSON} o \texttt{Polygon}), el área en hectáreas, el tipo de cultivo y la fecha de siembra. Cada parcela pertenece a un \texttt{User} (productor) y puede tener múltiples \texttt{AgronomicData} registros que representan mediciones temporales de NDVI, temperatura, humedad del suelo y precipitación.

La interfaz \texttt{IAgroMonitoringClient} define los contratos para la obtención de datos satelitales, mientras que \texttt{IAgronomicService} maneja la agregación y transformación de datos brutos en indicadores procesables. El servicio \texttt{AgronomicService} implementa la lógica de interpolación de datos faltantes, cálculo de promedios móviles y generación de alertas tempranas basadas en umbrales configurables.

La clase \texttt{AgronomicData} registra las métricas capturadas en un momento dado: índice NDVI, temperatura del aire, humedad relativa, velocidad del viento y precipitación acumulada. Estos datos se sincronizan periódicamente desde la API de AgroMonitoring mediante un proceso de background que actualiza los registros más recientes para cada parcela activa.

##### Prediction, Risk Engine y Alerts Components

Procesamiento del análisis predictivo de amenazas a los cultivos (fenológicas o estrés) y emisión de notificaciones.

\begin{figure}[H]
    \caption{Diagrama de clases para Prediction, Risk Engine y Alerts Components.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/prediction-risk-engine-and-alert-components-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Prediction, Risk Engine y Alerts Components. Elaboración propia.}
\end{figure}

El diagrama de Prediction, Risk Engine y Alerts modela el sistema de inteligencia predictiva de Viora. El \texttt{PredictionController} expone endpoints para obtener predicciones de rendimiento (\texttt{GetYieldPrediction}), evaluación de riesgos (\texttt{GetRiskAssessment}) y historial de alertas (\texttt{GetAlertHistory}). El controlador interactúa con \texttt{IPredictionService} y \texttt{IRiskEngine}, que componen la pipeline de análisis.

La interfaz \texttt{IPredictionService} define contratos para modelos predictivos de rendimiento, mientras que \texttt{PredictionService} implementa la orquestación de múltiples modelos estadísticos y de machine learning. El servicio \texttt{IRiskEngine} y su implementación \texttt{RiskEngine} combinan datos de NDVI, clima histórico y patrones de plagas para calcular un índice de riesgo compuesto (\texttt{RiskScore}) para cada parcela.

La entidad \texttt{Prediction} almacena el resultado de una predicción: la parcela objetivo, el tipo de predicción (rendimiento, fenología, estrés hídrico), el valor estimado, el intervalo de confianza y la fecha de generación. La entidad \texttt{RiskAssessment} registra la evaluación de riesgo para un período determinado, incluyendo los factores de riesgo identificados (plagas, clima, enfermedades) y su nivel de severidad.

El subsistema de alertas se compone de \texttt{IAlertService} y \texttt{AlertService}, que gestionan la creación, clasificación y distribución de notificaciones. Cuando un \texttt{RiskAssessment} supera un umbral configurable, el sistema genera automáticamente una \texttt{Alert} con nivel de prioridad (\texttt{Low}, \texttt{Medium}, \texttt{High}, \texttt{Critical}) y la distribuye a los productores afectados mediante el canal de notificaciones integrado.

##### Epidemiological Surveillance Component

Gestión de la vigilancia fitosanitaria, reporte de síntomas, validación de brotes probables, emisión de alertas epidemiológicas comunitarias y prospección territorial de zonas de riesgo. Este componente representa uno de los tres bounded contexts del core domain de Viora, alineado al flujo modelado en el Design-Level EventStorming de Epidemiological Surveillance.

\begin{figure}[H]
    \caption{Diagrama de clases para Epidemiological Surveillance Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/epidemiological-surveillance-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Epidemiological Surveillance Component. Elaboración propia.}
\end{figure}

El diagrama de Epidemiological Surveillance Component representa uno de los bounded contexts centrales del dominio de Viora, enfocado en la vigilancia fitosanitaria comunitaria. El \texttt{SurveillanceController} expone los endpoints para reporte de síntomas (\texttt{ReportSymptoms}), validación de brotes (\texttt{ValidateOutbreak}), consulta de alertas epidemiológicas (\texttt{GetEpidemiologicalAlerts}) y prospección de zonas de riesgo (\texttt{GetRiskZones}).

La interfaz \texttt{ISurveillanceService} define los contratos para el procesamiento de reportes de síntomas, mientras que \texttt{SurveillanceService} implementa la lógica de validación cruzada: cuando un productor reporta síntomas en su parcela, el servicio verifica si existen reportes similares en la zona geográfica circundante y calcula la probabilidad de un brote activo.

La entidad \texttt{SymptomReport} captura la información del reporte: la parcela origen, los síntomas observados (\texttt{SymptomType}: \texttt{LeafCurl}, \texttt{OliveFruitFly}, \texttt{VerticilliumWilt}, entre otros), la severidad estimada, evidencia fotográfica y la fecha de observación. Cada reporte se asocia a un \texttt{User} (productor reportante) y una \texttt{Parcela} específica.

La entidad \texttt{Outbreak} representa un brote confirmado o probable, que agrega múltiples \texttt{SymptomReport} de una misma zona geográfica. El \texttt{OutbreakValidator} implementa la lógica de correlación espacial y temporal para determinar si los reportes individuales constituyen un patrón epidemiológico significativo. Cuando se confirma un brote, el sistema genera automáticamente una \texttt{EpidemiologicalAlert} que se distribuye a todos los productores dentro de un radio configurable.

La clase \texttt{RiskZone} modela las zonas geográficas de riesgo, definidas por un polígono y un nivel de riesgo (\texttt{Low}, \texttt{Moderate}, \texttt{High}, \texttt{Critical}). Estas zonas se actualizan dinámicamente en función de la densidad de reportes, las condiciones climáticas y la historia epidemiológica de la región.

##### Marketplace y Intervention Component

Módulo para enlazar Productores de Olivo con Especialistas a través de solicitudes de evaluación técnica.

\begin{figure}[H]
    \caption{Diagrama de clases para Marketplace y Intervention Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/marketplace-and-intervention-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Marketplace y Intervention Component. Elaboración propia.}
\end{figure}

El diagrama de Marketplace y Intervention Component modela el subsistema que conecta productores de olivo con especialistas agrícolas para la evaluación técnica de parcelas. El \texttt{InterventionController} gestiona el ciclo completo de vida de una solicitud de intervención: creación (\texttt{RequestIntervention}), aceptación (\texttt{AcceptCase}), rechazo (\texttt{RejectCase}), consulta de detalles (\texttt{GetRequestDetails}) y seguimiento de estado.

La interfaz \texttt{IMarketplaceService} define los contratos para la búsqueda de especialistas (\texttt{FindSpecialists}), creación de solicitudes (\texttt{CreateRequest}), actualización de estado (\texttt{UpdateRequestStatus}) y obtención de detalles (\texttt{GetRequestDetails}). El servicio \texttt{MarketplaceService} implementa la lógica de matching entre productores y especialistas basándose en criterios de especialización, disponibilidad geográfica y reputación.

La entidad \texttt{InterventionRequest} es el objeto central del bounded context, que almacena el productor solicitante, la parcela objetivo, el especialista asignado, el estado de la solicitud (\texttt{Pending}, \texttt{Accepted}, \texttt{Rejected}, \texttt{InProgress}, \texttt{Completed}, \texttt{Cancelled}), la descripción del problema y la fecha programada. Cada solicitud puede generar una \texttt{Quotation} (cotización) con el monto propuesto por el especialista, y una \texttt{TechnicalPrescription} (prescripción técnica) con el diagnóstico y las recomendaciones resultantes de la intervención.

El enum \texttt{RequestStatus} modela los estados del flujo de vida de una solicitud, permitiendo validaciones de transición de estado en el servicio. La relación entre \texttt{InterventionRequest} y \texttt{User} se duplica para representar tanto al productor solicitante como al especialista asignado, reflejando la naturaleza bidireccional del marketplace.

La integración con el servicio de notificaciones (\texttt{IBrevoClient}) permite notificar a las partes involucradas en cada cambio de estado, garantizando la trazabilidad y transparencia del proceso de intervención técnica.

##### Subscription y Billing Component

Lógica de pasarelas de pago y asignación de privilegios de suscripción.

\begin{figure}[H]
    \caption{Diagrama de clases para Subscription y Billing Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/subscription-and-billing-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Subscription y Billing Component. Elaboración propia.}
\end{figure}

El diagrama de Subscription y Billing Component describe el subsistema de facturación y suscripciones SaaS de la plataforma Viora. El \texttt{BillingController} expone los endpoints para consulta de estado de suscripción (\texttt{GetSubscriptionStatus}), procesamiento de webhooks de pago (\texttt{ProcessPaymentWebhook}) e historial de transacciones (\texttt{GetPaymentHistory}).

La interfaz \texttt{IBillingService} define los contratos para renovación de suscripción (\texttt{RenewSubscription}), consulta de estado (\texttt{GetSubscriptionStatus}) e historial de pagos (\texttt{GetPaymentHistory}). El servicio \texttt{BillingService} implementa la lógica de negocio que coordina entre el repositorio de suscripciones, el cliente de MercadoPago y el generador de facturas.

La entidad \texttt{Subscription} representa el contrato de suscripción de un usuario, incluyendo el tipo de plan (\texttt{PlanTypeEnum}: \texttt{Trial}, \texttt{Basic}, \texttt{Premium}), la fecha de vigencia (\texttt{ValidUntil}), el estado de actividad (\texttt{IsActive}) y si corresponde a un período de prueba (\texttt{IsTrial}). Cada suscripción pertenece a un \texttt{User} y puede contener múltiples \texttt{PaymentTransaction} que registran cada pago asociado.

La entidad \texttt{PaymentTransaction} almacena los detalles de cada transacción: el monto (\texttt{Amount}), el identificador externo de MercadoPago (\texttt{ExternalTxId}), el estado de la transacción (\texttt{Status}) y la fecha de procesamiento (\texttt{ProcessedAt}). Esta entidad permite la conciliación entre el estado interno de la plataforma y el estado reportado por la pasarela de pago.

El enum \texttt{PlanTypeEnum} define los niveles de suscripción disponibles: \texttt{Trial} (prueba gratuita con funcionalidades limitadas), \texttt{Basic} (acceso a funcionalidades esenciales de monitoreo) y \texttt{Premium} (acceso completo con alertas avanzadas, reportes y soporte prioritario). La lógica de renovación automática se ejecuta mediante un job programado que verifica las suscripciones próximas a vencer y genera nuevas transacciones de pago.

##### Moderation y Strikes Component

Administración de bloqueos y penalizaciones en la plataforma para mantener los términos de la comunidad de especialistas e intervencionistas limpios.

\begin{figure}[H]
    \caption{Diagrama de clases para Moderation y Strikes Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/moderation-and-strikes-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Moderation y Strikes Component. Elaboración propia.}
\end{figure}

El diagrama de Moderation and Strikes Component modela el subsistema de moderación de la comunidad y sistema de penalizaciones de Viora. El \texttt{ModerationController} gestiona las operaciones de reporte de usuarios (\texttt{ReportUser}), aplicación de strikes (\texttt{ApplyStrike}) y consulta del historial de penalizaciones (\texttt{GetStrikeHistory}).

La interfaz \texttt{IModerationService} define los contratos para evaluación de reportes (\texttt{EvaluateReports}), aplicación de strikes (\texttt{ApplyStrike}) y baneo de usuarios (\texttt{BanUser}). El servicio \texttt{ModerationService} implementa la lógica de procesamiento de reportes recibidos de la comunidad, evaluando la gravedad de las infracciones y determinando la penalización adecuada según la política de la plataforma.

La entidad \texttt{StrikeRecord} registra cada penalización aplicada a un usuario: el identificador del usuario (\texttt{UserId}), la razón de la infracción (\texttt{Reason}), la fecha y hora de aplicación (\texttt{Timestamp}) y si la penalización se encuentra activa (\texttt{IsActive}). La relación con \texttt{User} es 1:N, permitiendo que un usuario acumule múltiples strikes a lo largo del tiempo.

El sistema de strikes sigue un modelo progresivo: el primer strike genera una advertencia, el segundo una restricción temporal de funcionalidades, y el tercero o subsiguientes pueden resultar en el baneo permanente de la cuenta. El servicio \texttt{IBrevoClient} se integra para notificar al usuario sobre cada penalización aplicada, proporcionando transparencia en el proceso de moderación.

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

El diagrama de Core: Shared UI y API Client Services modela la infraestructura transversal de comunicación HTTP y componentes de interfaz reutilizables en la aplicación web Vue.js de Viora. La clase \texttt{AxiosHttpClient} encapsula la configuración de Axios, incluyendo la URL base del API, interceptores de request (para inyectar tokens JWT) y interceptores de response (para manejar errores de autenticación y renovación de tokens). Expone los métodos HTTP estándar (\texttt{get}, \texttt{post}, \texttt{put}, \texttt{delete}) con tipado genérico.

La clase \texttt{BaseApiService} actúa como clase base para todos los servicios de API del frontend. Recibe un \texttt{AxiosHttpClient} inyectado y proporciona métodos protegidos para manejo de respuestas (\texttt{handleResponse<T>}) y errores (\texttt{handleError}). Cada servicio de dominio (\texttt{AuthApiService}, \texttt{PlotApiService}, etc.) hereda de \texttt{BaseApiService} y especializa los métodos HTTP para su dominio específico.

En la capa de componentes, \texttt{BaseLayout} implementa el layout principal de la aplicación con barra lateral colapsable (\texttt{isSidebarOpen}, \texttt{toggleSidebar}). El \texttt{DataTableWidget} proporciona una tabla genérica con ordenamiento (\texttt{onSort}), paginación (\texttt{onPaginate}) y configuración de columnas (\texttt{Column[]}). El \texttt{BaseModalWidget} implementa un modal reutilizable con visibilidad controlada (\texttt{isVisible}), título dinámico y eventos de confirmación. El \texttt{LoadingSpinnerWidget} muestra un indicador de carga con mensaje personalizado mientras se resuelven operaciones asíncronas.

##### Routing y Guards Component

Gestiona el enrutamiento y la protección de vistas del lado del cliente.

\begin{figure}[H]
    \caption{Diagrama de clases para Routing y Guards Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/routing-and-guards-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Routing y Guards Component. Elaboración propia.}
\end{figure}

El diagrama de Routing y Guards Component describe el sistema de enrutamiento del lado del cliente y los mecanismos de protección de rutas en la aplicación Vue.js. La clase \texttt{AppRouter} encapsula la instancia del router de Vue Router, manteniendo un registro de todas las rutas definidas (\texttt{routes: RouteRecord[]}) y exponiendo métodos de navegación programática (\texttt{push}, \texttt{replace}).

La clase \texttt{AuthGuard} implementa el guardián de navegación que se ejecuta antes de cada transición de ruta (\texttt{beforeEach}). Este guardián verifica la validez del token JWT almacenado (\texttt{verifyTokenValidity}), comprobando tanto su existencia como su fecha de expiración. Si el token es válido, permite la navegación; si no, redirige al usuario a la vista de login.

La clase \texttt{RoleGuard} extiende la protección verificando que el usuario autenticado posea los roles requeridos para acceder a una ruta específica (\texttt{validateRole}). Este guardián recibe un array de roles permitidos (\texttt{requiredRoles: string[]}) y compara el rol del usuario actual contra la lista de roles autorizados para la ruta destino.

Ambos guardas se integran en la configuración de rutas de \texttt{AppRouter}, donde cada ruta puede especificar los metadatos de autorización (\texttt{requiresAuth}, \texttt{roles}) que los guardas evalúan antes de permitir el acceso. Este patrón garantiza que las vistas protegidas nunca sean accesibles sin autenticación y que las funcionalidades administrativas estén restringidas a usuarios con privilegios adecuados.

##### Authentication UI Component

Maneja los flujos de inicio de sesión, registro y el estado de la sesión actual de los usuarios.

\begin{figure}[H]
    \caption{Diagrama de clases para Authentication UI Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/authentication-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Authentication UI Component. Elaboración propia.}
\end{figure}

El diagrama de Authentication UI Component modela la interfaz de usuario para los flujos de autenticación en la aplicación Vue.js. El componente \texttt{AuthView} encapsula el formulario de inicio de sesión con campos para email (\texttt{email: string}) y contraseña (\texttt{password: string}), y expone los métodos de envío (\texttt{submitLogin()}) y redirección al registro (\texttt{redirectToRegister()}).

El servicio \texttt{AuthStateService} gestiona el estado reactivo de la autenticación en toda la aplicación. Mantiene el token JWT (\texttt{token: string | null}), el usuario actual (\texttt{user: User | null}) y el estado de autenticación (\texttt{isAuthenticated: boolean}). Expone métodos para login (\texttt{login}), logout (\texttt{logout}), renovación de token (\texttt{refreshToken}) y consulta del rol del usuario actual (\texttt{currentUserRole()}).

El servicio \texttt{AuthApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP al backend para autenticación (\texttt{Authenticate}), registro (\texttt{Register}) y renovación de token (\texttt{RefreshToken}). Devuelve promesas tipadas con los DTOs de respuesta del backend.

La relación entre componentes sigue el flujo: \texttt{AuthView} despacha acciones a \texttt{AuthStateService} (mediante el store de Pinia), que a su vez invoca \texttt{AuthApiService} para realizar las llamadas HTTP. Esta separación de responsabilidades permite que la lógica de presentación, el estado y la comunicación con el backend estén desacoplados y sean independientemente testables.

##### Profile UI Component

Permite actualizar la información personal, contraseñas y subir la evidencia necesaria para especialistas y productores.

\begin{figure}[H]
    \caption{Diagrama de clases para Profile UI Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/profile-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Profile UI Component. Elaboración propia.}
\end{figure}

El diagrama de Profile UI Component describe la interfaz de usuario para la gestión del perfil de usuario en la aplicación Vue.js. El componente \texttt{ProfileView} muestra la información del perfil actual (\texttt{userProfile: Profile | null}) y permite alternar entre modo de visualización y edición (\texttt{isEditing: boolean}, \texttt{toggleEditMode()}). El método \texttt{saveChanges()} persiste las modificaciones realizadas por el usuario.

El componente \texttt{EvidenceUploadWidget} se encarga de la carga de documentos de evidencia requeridos para la verificación de especialistas. Gestiona la selección de archivos (\texttt{selectedFiles: File[]}), el manejo del evento de carga (\texttt{handleFileUpload()}) y la subida al servidor (\texttt{uploadEvidence()}).

El servicio \texttt{ProfileStateService} gestiona el estado del perfil en la aplicación, manteniendo el perfil actual (\texttt{currentProfile: Profile | null}) y exponiendo métodos para obtener (\texttt{fetchProfile}), actualizar (\texttt{updateProfile}) y subir evidencia (\texttt{uploadSpecialistEvidence}).

El servicio \texttt{ProfileApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP para obtener el perfil (\texttt{GetProfile}), actualizarlo (\texttt{UpdateProfile}) y subir evidencia (\texttt{UploadEvidence}). La arquitectura sigue el mismo patrón de separación de responsabilidades que los demás módulos: componente de vista → servicio de estado → servicio de API.

##### Dashboard UI Component

Actúa como punto de entrada presentando los resúmenes y accesos directos al resto de las vistas.

\begin{figure}[H]
    \caption{Diagrama de clases para Dashboard UI Component.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/class-diagrams/dashboard-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Dashboard UI Component. Elaboración propia.}
\end{figure}

El diagrama de Dashboard UI Component modela la pantalla principal de la aplicación que actúa como punto de entrada para los usuarios. El componente \texttt{DashboardView} muestra un resumen general del estado de las parcelas y notificaciones, con la posibilidad de filtrar por período (\texttt{period: string}) y cargar datos de resumen (\texttt{loadSummaries()}).

El componente \texttt{CropHealthSummaryWidget} visualiza un resumen del estado de salud de los cultivos, incluyendo el promedio de NDVI (\texttt{ndviSummary: NDVISummary | null}) y un gráfico de tendencia (\texttt{renderChart()}). El componente \texttt{AlertSummaryWidget} muestra las alertas más recientes (\texttt{recentAlerts: Alert[]}) con acceso directo al centro de notificaciones (\texttt{navigateToNotifications()}).

El servicio \texttt{DashboardStateService} gestiona el estado del dashboard, incluyendo los datos de resumen (\texttt{summaryData: DashboardSummary | null}) y el estado de carga (\texttt{isLoading: boolean}). Expone el método \texttt{fetchDashboardStats()} que coordina la obtención de datos de múltiples fuentes.

El servicio \texttt{DashboardApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP para estadísticas del dashboard (\texttt{GetDashboardStats}) y resumen de salud de cultivos (\texttt{GetCropHealthSummary}). Los componentes de widget se componen dentro del \texttt{DashboardView} mediante relaciones de composición, permitiendo una estructura modular y mantenible.

##### Plot Management UI Component

Módulo principal de productores de olivo para gestión de parcelas y visualización telemética (NDVI, clima).

\begin{figure}[H]
    \caption{Diagrama de clases para Plot Management UI Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/plot-management-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Plot Management UI Component. Elaboración propia.}
\end{figure}

El diagrama de Plot Management UI Component describe la interfaz de usuario principal para la gestión de parcelas y visualización de datos telemétricos. El componente \texttt{PlotListView} muestra la lista de parcelas del productor (\texttt{plotsList: Plot[]}) con opciones para ver detalles (\texttt{showPlotDetails}) y agregar nuevas parcelas (\texttt{addNewPlot()}).

El componente \texttt{PlotMapWidget} integra Mapbox GL JS para la visualización geoespacial de parcelas. Mantiene la instancia del mapa (\texttt{mapInstance: MapboxGL}), las coordenadas del polígono (\texttt{mapCoordinates: LngLat[]}) y el polígono dibujado (\texttt{polygon: MapboxPolygon}). Expone métodos para dibujar polígonos (\texttt{drawPolygon()}), centrar el mapa (\texttt{centerMap()}) y resaltar una parcela específica (\texttt{highlightPlot()}).

El servicio \texttt{PlotStateService} gestiona el estado de las parcelas en la aplicación, incluyendo la lista de parcelas (\texttt{plots: Plot[]}), la parcela seleccionada (\texttt{selectedPlot: Plot | null}) y los datos agronómicos activos (\texttt{activeMetrics: AgronomicData[]}). Expone métodos para obtener parcelas (\texttt{fetchPlots}), guardar (\texttt{savePlot}) y cargar datos agronómicos (\texttt{fetchAgronomicData}).

El servicio \texttt{PlotApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP para operaciones de parcelas: listado (\texttt{GetPlots}), detalles (\texttt{GetPlotDetails}), guardado (\texttt{SavePlot}), actualización de límites (\texttt{UpdateBoundaries}) y datos agronómicos (\texttt{GetAgronomicData}). El componente de lista contiene al widget de mapa mediante composición, y ambos se conectan al servicio de estado para mantener la sincronización de datos.

##### Marketplace y Intervention UI Component

Relaciona solicitudes y ofertas de servicios entre productores de olivo y especialistas agrícolas.

\begin{figure}[H]
    \caption{Diagrama de clases para Marketplace y Intervention UI Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/marketplace-and-intervention-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Marketplace y Intervention UI Component. Elaboración propia.}
\end{figure}

El diagrama de Marketplace and Intervention UI Component modela la interfaz de usuario para el marketplace de servicios técnicos agrícolas. El componente \texttt{MarketplaceView} presenta el catálogo de especialistas disponibles (\texttt{specialistsList: Specialist[]}) con filtros por especialización y ubicación, permitiendo al productor buscar y seleccionar un profesional para la evaluación de su parcela.

El componente \texttt{InterventionRequestForm} gestiona la creación de solicitudes de intervención, capturando la descripción del problema (\texttt{description: string}), la fecha preferida (\texttt{preferredDate: Date}) y la evidencia fotográfica adjunta (\texttt{attachments: File[]}). El método \texttt{submitRequest()} envía la solicitud al backend y confirma la creación.

El componente \texttt{InterventionDetailView} muestra el seguimiento detallado de una solicitud existente, incluyendo el estado actual (\texttt{status: RequestStatus}), la cotización del especialista (\texttt{quotation: Quotation | null}) y la prescripción técnica resultante (\texttt{prescription: TechnicalPrescription | null}).

El servicio \texttt{MarketplaceStateService} gestiona el estado del marketplace, incluyendo la lista de especialistas, las solicitudes activas y los datos de seguimiento. El servicio \texttt{MarketplaceApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP para búsqueda de especialistas, creación de solicitudes, aceptación/rechazo de casos y obtención de detalles.

##### Notification Center Component

Maneja los avisos urgentes (clima, pagos asíncronos y alertas sanitarias).

\begin{figure}[H]
    \caption{Diagrama de clases para Notification Center Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/notification-center-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Notification Center Component. Elaboración propia.}
\end{figure}

El diagrama de Notification Center Component modela el sistema de notificaciones en tiempo real de la aplicación Vue.js. El componente \texttt{NotificationCenterView} muestra la lista de notificaciones del usuario (\texttt{notifications: Notification[]}) con indicadores de leído/no leído y permite marcar como leídas (\texttt{markAsRead()}), eliminar (\texttt{dismissNotification()}) y filtrar por tipo (\texttt{filterByType()}).

El componente \texttt{NotificationBadge} muestra un indicador visual del número de notificaciones no leídas (\texttt{unreadCount: number}), actualizado en tiempo real mediante suscripción a eventos WebSocket o polling periódico.

El servicio \texttt{NotificationStateService} gestiona el estado de las notificaciones, incluyendo la lista actual (\texttt{notifications: Notification[]}), el contador de no leídas (\texttt{unreadCount: number}) y el estado de conexión (\texttt{isConnected: boolean}). Expone métodos para obtener notificaciones (\texttt{fetchNotifications}), marcar como leídas (\texttt{markAsRead}) y eliminar (\texttt{dismissNotification}).

El servicio \texttt{NotificationApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP para obtener notificaciones (\texttt{GetNotifications}), marcar como leídas (\texttt{MarkAsRead}) y eliminar (\texttt{DeleteNotification}). El servicio se conecta al backend mediante WebSocket para recibir notificaciones push en tiempo real, garantizando que los usuarios reciban alertas críticas (clima, pagos, salud de cultivos) de forma inmediata.

##### Subscription y Billing UI Component

Permite revisar contratos, suscripciones SAAS e historial de pagos.

\begin{figure}[H]
    \caption{Diagrama de clases para Subscription y Billing UI Component.}
    \centering
    \includegraphics[height=0.45\textheight,keepaspectratio]{report/assets/class-diagrams/subscription-and-billing-ui-component-diagram.png}
    \caption*{\textit{Nota.} Diagrama de clases correspondiente al componente Subscription y Billing UI Component. Elaboración propia.}
\end{figure}

El diagrama de Subscription and Billing UI Component describe la interfaz de usuario para la gestión de suscripciones y facturación en la aplicación Vue.js. El componente \texttt{SubscriptionView} muestra el estado actual de la suscripción del usuario (\texttt{currentSubscription: Subscription | null}), incluyendo el tipo de plan, fecha de vencimiento y estado de actividad.

El componente \texttt{PlanSelector} presenta los planes disponibles (\texttt{plans: Plan[]}) con sus características y precios, permitiendo al usuario seleccionar o cambiar de plan (\texttt{selectPlan()}). El componente \texttt{PaymentHistoryView} muestra el historial de transacciones (\texttt{transactions: PaymentTransaction[]}) con detalles de monto, fecha y estado de cada pago.

El servicio \texttt{BillingStateService} gestiona el estado de facturación, incluyendo la suscripción actual, el historial de pagos y los planes disponibles. El servicio \texttt{BillingApiService} hereda de \texttt{BaseApiService} y encapsula las llamadas HTTP para obtener el estado de suscripción (\texttt{GetSubscriptionStatus}), historial de pagos (\texttt{GetPaymentHistory}) y cambio de plan (\texttt{ChangePlan}).

La interfaz sigue el patrón de composición de componentes: \texttt{SubscriptionView} contiene \texttt{PlanSelector} y \texttt{PaymentHistoryView} mediante relaciones de composición, y ambos se conectan al servicio de estado para mantener la sincronización de datos. La integración con MercadoPago se gestiona completamente en el backend, manteniendo la lógica de pago segura del lado del servidor.