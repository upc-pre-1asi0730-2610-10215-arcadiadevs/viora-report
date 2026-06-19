### Sprint 3

#### Sprint Planning 3

&nbsp;

En esta sección se consolidan los acuerdos fundamentales alcanzados por el equipo ArcadiaDevs durante la sesión de planificación del Sprint 3, realizada de manera virtual a través de la plataforma Discord. Tras el despliegue exitoso de la primera versión de la aplicación web, considerando funcionalidades que son importantes para el usuario del segmento objetivo de productores y la mejora de la presencia digital de Viora, el propósito central de esta reunión fue evolucionar hacia la segunda versión de la Aplicación Web y la construcción de la primera versión operativa del Servicio Web de Viora. Para ello, el equipo priorizó el desarrollo de los subdominios core y support vinculados al monitoreo inteligente de parcelas, la gestión fitosanitaria, la coordinación entre productores y especialistas, y la automatización de procesos de trazabilidad y validación. Asimismo, se consideró la corrección y refinamiento de funcionalidades implementadas en el Sprint 2, alineando el esfuerzo de ingeniería con la necesidad de reducir los principales pain points identificados en ambos segmentos de usuarios.

Para esta iteración, el equipo ha definido un compromiso de trabajo de 119 puntos de esfuerzo sobre una velocidad proyectada de 120 puntos. Dentro de esta estimación, se ha asignado 1 punto a actividades de corrección y mejora incremental relacionadas con la Landing Page y la Web Application previamente desplegadas, mientras que los 115 puntos restantes corresponden al desarrollo de nuevas capacidades funcionales y servicios backend asociados al ecosistema Viora. Esta planificación busca no solo incrementar el valor funcional de la plataforma mediante capacidades de analítica predictiva, monitoreo climático y sensoramiento remoto satelital, sino también establecer las bases del Servicio Web encargado de orquestar la sincronización de datos externos, gestión de alertas, matchmaking técnico y trazabilidad de intervenciones. Además, se incorporan activamente las lecciones aprendidas durante la retrospectiva anterior, ampliando el margen temporal de coordinación y validación técnica para garantizar un Sprint Planning más sólido, realista y alineado con los objetivos estratégicos del producto.

A continuación, se presenta el cuadro resumen del Sprint Planning Meeting, el cual detalla la logística de la sesión, la revisión de los resultados del sprint previo y el Sprint Goal diseñado para transformar datos climáticos y satelitales en decisiones agronómicas de alto impacto.

| **Sprint #** | Sprint 3 |
| :--- | :--------------- |
| **Date** | 2026-05-20 |
| **Time** | 09:00 AM |
| **Location** | Discord (Virtual) |
| **Prepared By** | Trinidad Leon, Jahat Jassiel |
| **Attendees (to planning meeting)** | Espada Lazo, Piero Anthony / Li Gayoso, Diana Carolina / Paredes Maza, Juan de Dios / Santi Guerrero Fabrizio Alonso / Trinidad Leon, Jahat Jassiel |
| **Sprint 2 Review Summary** | Durante el Sprint 2, se cumplió satisfactoriamente con el 100% de los objetivos mediante la implementación de las mejoras del Landing Page y la primera versión de la aplicación web, logrando entregar 32 story points distribuidos en 6 historias de usuario implementadas, y las correciones de las historias de usuario del Landing Page. El incremento fue desplegado con éxito en Firebase bajo una arquitectura responsiva, respaldada por un flujo de trabajo colaborativo de 161 commits. Por su parte, el Product Owner validó que el producto cumple con el Sprint Goal al consolidar que la primera versión muestra información relevante para uno de los principales segmentos objetivo,aprobando la entrega sin observaciones técnicas pendientes. A pesar de ello, aún se deben realizar correciones al Landing Page. |
| **Sprint 2 Retrospective Summary** | Durante el sprint 2, el equipo indentificó que el tiempo designado para la documentación e implementación era corto, por lo que al haber contratiempos la calidad de la entrega y alcance del sprint planning podría ser afectado; por ello, se acordó en definir deadlines definitivas y posibles, para que se pueda identificar las razones de sobreestimaciones. De esta manera, cada integrante podrá determinar sus puntos de mejora personales y el equipo podrá desarrollarse, además, en este sprint se ha designado más tiempo para su elaboración. |
| **Sprint 3 Goal** | Nuestro enfoque está en proporcionar un ecosistema colaborativo de respuesta fitosanitaria y monitoreo inteligente que conecte a productores olivareros y especialistas fitosanitarios mediante alertas predictivas, diagnóstico territorial y coordinación de intervenciones técnicas; creemos que entrega una reducción del tiempo de reacción frente a amenazas biológicas y climáticas, una mayor capacidad de prevención operativa y una trazabilidad integral de las acciones ejecutadas tanto para productores como para especialistas dentro del ecosistema Viora; esto se confirmará cuando los productores puedan identificar riesgos activos en sus parcelas, solicitar asistencia técnica y dar seguimiento a las intervenciones realizadas, mientras los especialistas puedan prospectar zonas críticas, gestionar solicitudes de servicio y validar tratamientos sobre la base de información climática, satelital y agronómica consolidada. |
| **Sprint 3 Velocity** | 120 |
| **Sum of Story Points** | 119 |

#### Aspect Leaders and Collaborators

&nbsp;

En esta sección se presenta la matriz Leadership-and-Collaboration Matrix (LACX) correspondiente al Sprint 3, diseñada para fortalecer la coordinación estratégica y la especialización técnica dentro del ecosistema Viora durante el desarrollo de la segunda versión de la aplicación web y la primera versión operativa del Servicio Web. Para este incremento, el alcance se ha reorganizado en torno a bounded contexts alineados con los principales procesos del negocio y los pain points identificados en los segmentos de productores olivareros y especialistas fitosanitarios. En consecuencia, el equipo ha distribuido las responsabilidades entre los contextos Shared, Agronomic, Surveillance, Intervention, Community y PAM (Profile & Asset Management), además de considerar la evolución y refinamiento de la Landing Page.

| Team Member (Last Name, First Name) | GitHub Username | Shared Context Leader (L) / Collab (C) | Agronomic Context Leader (L) / Collab (C) | Surveillance Context Leader (L) / Collab (C) | Intervention Context Leader (L) / Collab (C) | Community Context Leader (L) / Collab (C) | PAM Context Leader (L) / Collab (C) | Brand & Communication Leader (L) / Collab (C) |
|---|---|---|---|---|---|---|---|---|
| Espada, Piero   | espadita2510 / pieroedeveloper25 | C | C | L | C | C | C | C |
| Li, Diana       | peruvianMiau                     | C | C | C | L | C | C | C |
| Paredes, Victor | DaronCameloft                    | C | C | C | C | C | C | L |
| Santi, Fabrizio | Santi2007939                     | C | L | C | C | C | L | C |
| Trinidad, Jahat | trinity-bytes                    | L | C | C | C | L | C | C |

#### Sprint Backlog 3

&nbsp;

El objetivo principal de este Sprint 3 es desarrollar la segunda versión de la aplicación web y la primera versión operativa del Servicio Web de Viora, mediante la incorporación de capacidades de autenticación segura, monitoreo fitosanitario inteligente, sincronización climática y satelital, gestión de alertas epidemiológicas y coordinación de intervenciones técnicas entre productores olivareros y especialistas fitosanitarios. Asimismo, el sprint contempla la consolidación de procesos de trazabilidad agronómica, reputación comunitaria y administración de perfiles y activos agrícolas, junto con el refinamiento incremental de la Landing Page y funcionalidades implementadas en iteraciones anteriores.

\begin{figure}[H]
\caption{Vista General del Sprint Backlog 3}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-3/sb.png}
\caption*{\textit{Nota.} Elaboración propia a partir del tablero en Trello: https://trello.com/invite/b/6a151ca657dc7f8e07a55342/ATTI05a09039865dabc71b3f12ba666b5560E74A3214/1asi0730-viora-sb3}
\end{figure}

\begin{longtable}{|p{0.05\textwidth}|p{0.14\textwidth}|p{0.05\textwidth}|p{0.14\textwidth}|p{0.24\textwidth}|p{0.08\textwidth}|p{0.12\textwidth}|p{0.07\textwidth}|}
\hline
\multicolumn{2}{|l|}{\textbf{Sprint \#}} & \multicolumn{6}{l|}{Sprint 3} \\ \hline
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task}} \\ \hline
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Estimation (Hours)} & \textbf{Assigned To} & \textbf{Status} \\ \hline
\endfirsthead

\hline
\multicolumn{2}{|l|}{\textbf{User Story}} & \multicolumn{6}{l|}{\textbf{Work-Item / Task (Continuación)}} \\ \hline
\textbf{Id} & \textbf{Title} & \textbf{Id} & \textbf{Title} & \textbf{Description} & \textbf{Estimation} & \textbf{Assigned To} & \textbf{Status} \\ \hline
\endhead

% US56
US56 & Exploración de beneficios para el Productor & TK01 & Presentación de todos los beneficios del segmento de productores & Implementación de cards con todos los beneficios ofrecidos para el segmento de productores & 1.0 & Paredes, Victor & Done \\ \hline

% US57
US57 & Exploración de beneficios para el Especialista & TK01 & Presentación de todos los beneficios del segmento de especialistas & Implementación de cards con todos los beneficios ofrecidos para el segmento de especialistas fitosanitarios & 1.0 & Paredes, Victor & Done \\ \hline

% US60
US60 & Exploración del equipo detrás de la plataforma & TK01 & Sección de video e imágenes del equipo & Implementación de placeholder para imágenes del equipo trabajo y el video About the team & 1.0 & Paredes, Victor & Done \\ \hline

% US08
US08 & Monitoreo de telemetría IoT para decisiones hídricas & TK01 & Datos inválidos mostrados & Corregir que aparezcan elementos no existenten en la lista de dispositivos IoT & 1.0 & Paredes, Victor & Done \\ \hline

% US19
US19 & Reporte de sintomatología y evaluación automática & TK01 & Creación manual de alerta & Implementación de formulario con selector de Parcela y multiselección de síntomas vistos & 1.0 & Paredes, Victor & To-Do \\ \cline{3-8}
& & TK02 & Visualización de alertas por parcela & Implementación de filtro de alerta de acuerdo según parcela & 1.0 & Paredes, Victor & To-Do \\ \hline

% US07
US07 & Delimitación de área productiva & TK01 & Configuración de Mapbox SDK & Implementación de mapa interactivo para delimitación de parcelas. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Herramienta de dibujo de polígonos & Implementación de selección de puntos y cierre de área geográfica. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Validación de polígono incompleto & Implementación de validación para impedir parcelas sin cierre correcto. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK04 & Visualización de parcela registrada & Implementación de componente de visualización de límites geográficos registrados. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK05 & Vinculación climática automática & Implementación de asociación automática entre parcela y datos climáticos zonales. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK06 & Lista de parcelas & Implementación de lista de parcelas, con selección para ver el detalle de cada una y botón para la creación de una nueva. & 1.0 & Paredes, Victor & Done \\ \hline

% US16
US16 & Plan de fertilización ajustado al clima & TK01 & Generación de recomendación agronómica & Implementación de estrategia compensatoria según riesgo climático o fenológico. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Resumen de tratamiento recomendado & Implementación de visualización de insumos y dosis sugeridas para mitigación. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Ajuste de ventana de aplicación & Implementación de actualización de recomendación según cambios climáticos. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK04 & Alerta de modificación climática & Implementación de notificación sobre cambio de ventana óptima de aplicación. & 1.0 & Paredes, Victor & Done \\ \hline

% TS38
TS38 & Implementar Manejo Global de Excepciones y Problem Details Localizado & TK01 & Implementar GlobalExceptionHandlerMiddleware & Crear Shared/Infrastructure/Pipeline/Middleware/Components/GlobalExceptionHandlerMiddleware.cs para capturar excepciones no controladas durante el pipeline HTTP y generar respuestas seguras sin exponer stack trace. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar mapeo de excepciones a ProblemDetails & Implementar el mapeo de Exception a 500 Internal Server Error y OperationCanceledException a 409 Conflict, retornando ProblemDetails con status, title, detail e instance. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Implementar ProblemDetailsFactory localizado & Crear ProblemDetailsFactory compartido para construir respuestas de error usando IStringLocalizer, resolviendo títulos y detalles desde recursos .resx de acuerdo con la cultura de la petición. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK04 & Registrar middleware global de excepciones & Crear MiddlewareExtensions con UseGlobalExceptionHandler() y registrar el middleware en Program.cs, asegurando que todas las excepciones no controladas pasen por el mismo formato de respuesta. & 1.0 & Li, Diana & Done \\ \hline

% TS08
TS08 & Registrar nueva parcela & TK01 & Exponer endpoint REST de creación de parcela & Crear POST /api/v1/plots en PlotsController, implementando CreatePlotResource, PlotResource, CreatePlotCommandFromResourceAssembler y PlotResourceFromPlotAssembler. El endpoint debe transformar el cuerpo REST en Command, retornar 201 Created con PlotResource cuando se registre correctamente o 400 Bad Request cuando el polígono o los datos sean inválidos. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Implementar PlotRepository con EF Core y PostgreSQL & Implementar PlotRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Plot> en AppDbContext, crear configuración con IEntityTypeConfiguration<Plot>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Definir PlotRepository & Crear PlotRepository en la capa de dominio con métodos save(Plot), findById(PlotId), findByIdAndOwnerUserId(PlotId, UserId), findAllByOwnerUserId(UserId), existsByIdAndOwnerUserId(PlotId, UserId) y delete(Plot). & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Definir Plot Aggregate Root & Definir Plot como aggregate root en la capa de dominio con PlotId, OwnerUserId, PlotName, PolygonCoordinates y AreaSize, applying invariantes de propietario obligatorio, nombre no vacío, área positiva y delimitación geográfica válida. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK05 & Crear CreatePlotCommand & Crear CreatePlotCommand en la capa de aplicación con OwnerUserId, PlotName, PolygonCoordinates y AreaSize, validando que los datos mínimos para registrar una parcela estén presentes antes de construir el aggregate root. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK06 & Implementar PlotCommandService para creación & Implementar PlotCommandService con handle(CreatePlotCommand), creando Plot, validando invariantes del dominio, persistiendo con PlotRepository y retornando Result con INVALID\_POLYGON cuando la delimitación sea inconsistente. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK07 & Definir Value Objects espaciales & Definir GeoPoint y PolygonCoordinates como value objects en la capa de dominio. GeoPoint debe validar latitud y longitud dentro de rangos geográficos válidos. PolygonCoordinates debe validar lista no vacía, cantidad mínima de puntos, ausencia de puntos nulos y cierre del polígono comparando el primer y último punto. & 1.0 & Trinidad, Jahat & Done \\ \hline

% TS12
TS12 & Listar dispositivos IoT por parcela & TK01 & Implementar IoTDeviceRepository con EF Core & Implementar IoTDeviceRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<IoTDevice> en AppDbContext, crear configuración con IEntityTypeConfiguration<IoTDevice>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Definir IoTDeviceRepository & Crear IoTDeviceRepository en la capa de dominio con métodos save(IoTDevice), findById(IoTDeviceId), findAllByPlotId(PlotId), findByIdAndPlotId(IoTDeviceId, PlotId) y existsByIdAndPlotId(IoTDeviceId, PlotId). & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Crear GetIoTDevicesByPlotIdQuery & Crear GetIoTDevicesByPlotIdQuery en la capa de aplicación con PlotId y AuthenticatedUserId, validando que el usuario autenticado sea propietario de la parcela antes de listar sensores. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK04 & Implementar IoTDeviceQueryService para listado & Implementar IoTDeviceQueryService con handle(GetIoTDevicesByPlotIdQuery), validando propiedad mediante PlotRepository y retornando IoTDeviceRepository.findAllByPlotId(PlotId). & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK05 & Exponer endpoint REST para listar dispositivos IoT & Añadir GET /api/v1/plots/{plotId}/iot-devices, usando IoTDeviceResource e IoTDeviceResourceFromIoTDeviceAssembler para retornar 200 OK o 403 Forbidden. & 1.0 & Li, Diana & Done \\ \hline

% TS39
TS39 & Implementar Eventos de Dominio y Pipeline de Mediación Compartido & TK01 & Registrar behaviors y handlers compartidos & Configurar el registro de Cortex Mediator en Program.cs para descubrir event handlers y aplicar LoggingCommandBehavior al pipeline de comandos de aplicación. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Implementar contrato IEventHandler & Crear Shared/Application/Internal/EventHandlers/IEventHandler.cs como abstracción genérica alineada con INotificationHandler<TEvent>, permitiendo implementar handlers tipados para eventos de dominio. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Implementar contrato IEvent & Crear Shared/Domain/Events/IEvent.cs extendiendo INotification de Cortex Mediator para representar eventos de dominio publicables desde cualquier bounded context. & 1.0 & Espada, Piero & Done \\ \hline

% TS35
TS35 & Implementar Patrón Result para Control de Flujo Funcional & TK01 & Implementar Fold para composición de respuestas & Agregar Fold<TResult>(Func<T,TResult> onSuccess, Func<Enum,string,TResult> onFailure) en Result<T> y su equivalente en Result, permitiendo que Controllers o assemblers conviertan resultados de aplicación en respuestas HTTP de manera determinística. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK02 & Implementar Result sin valor para comandos & Crear el contenedor no genérico Result con Success() y Failure(Enum error, string message) para comandos que no necesitan retornar un objeto de dominio, manteniendo compatibilidad con flujos de escritura. & 1.0 & Paredes, Victor & Done \\ \cline{3-8}
& & TK03 & Implementar factories de éxito y fallo con valor & Agregar los métodos estáticos Result<T>.Success(T value) y Result<T>.Failure(Enum error, string message) para construir resultados con valor exitoso o error tipado, asegurando que los servicios de aplicación puedan retornar errores de negocio de forma explícita. & 1.0 & Paredes, Victor & Done \\ \hline

% TS34
TS34 & Implementar Motor Global de Rutas Kebab-Case & TK01 & Registrar convención global de rutas & Registrar KebabCaseRouteNamingConvention en Program.cs mediante builder.Services.AddControllers(options => options.Conventions.Add(new KebabCaseRouteNamingConvention())), garantizando que todos los controladores expongan URLs en kebab-case. & 1.0 & Victor, Paredes & Done \\ \cline{3-8}
& & TK02 & Implementar reemplazo de rutas en controladores y acciones & Implementar en Apply(ControllerModel controller) el recorrido de controller.Selectors y controller.Actions.SelectMany(a => a.Selectors) para reemplazar las plantillas de ruta basadas en [controller] mediante ReplaceControllerTemplate. & 1.0 & Victor, Paredes & Done \\ \cline{3-8}
& & TK03 & Implementar KebabCaseRouteNamingConvention & Crear Shared/Infrastructure/Interfaces/ASP/Configuration/KebabCaseRouteNamingConvention.cs implementando IControllerModelConvention, obteniendo el nombre del controlador sin el sufijo Controller y convirtiéndolo a kebab-case para reemplazar el token [controller]. & 1.0 & Victor, Paredes & Done \\ \hline

% TS33
TS33 & Implementar Automatización de Esquemas Snake\_Case en EF Core & TK01 & Registrar convención snake\_case en AppDbContext & Configurar AppDbContext.OnModelCreating(ModelBuilder builder) para invocar builder.UseSnakeCaseNamingConvention() después de registrar las configuraciones de entidades y value objects, asegurando que EF Core genere el esquema físico sin anotaciones manuales repetitivas. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Implementar ModelBuilderExtensions para nombres físicos & Crear Shared/Infrastructure/Persistence/EFC/Configuration/Extensions/ModelBuilderExtensions.cs con UseSnakeCaseNamingConvention(this ModelBuilder builder), recorriendo builder.Model.GetEntityTypes() para aplicar SetTableName, SetColumnName, SetName, SetConstraintName y SetDatabaseName sobre tablas, columnas, claves primarias, claves foráneas e índices. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Implementar pluralización de nombres de tabla & Agregar el método ToPlural() en StringExtensions.cs usando Humanizer para pluralizar nombres de entidades antes de aplicar ToSnakeCase(), permitiendo transformar clases como FavoriteSource en tablas físicas como favorite\_sources. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Implementar extensiones de conversión snake\_case & Crear Shared/Infrastructure/Persistence/EFC/Configuration/Extensions/StringExtensions.cs con el método ToSnakeCase() usando expresiones regulares para convertir nombres PascalCase o camelCase a snake\_case, incluyendo nombres compuestos de propiedades, índices, claves y restricciones. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS37
TS37 & Implementar Repositorio Base y Unit of Work Compartidos & TK01 & Implementar contrato IBaseRepository & Crear Shared/Domain/Repositories/IBaseRepository.cs con operaciones base como AddAsync(TEntity entity), FindByIdAsync(int id), ListAsync(), Update(TEntity entity) y Remove(TEntity entity), para que los repositorios específicos puedan reutilizar un contrato común. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Implementar BaseRepository con EF Core & Crear Shared/Infrastructure/Persistence/EFC/Repositories/BaseRepository.cs implementando IBaseRepository<TEntity>, usando AppDbContext.Set<TEntity>() para agregar, buscar, listar, actualizar y eliminar registros mediante EF Core. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Implementar contrato IUnitOfWork & Crear Shared/Domain/Repositories/IUnitOfWork.cs con el método CompleteAsync() para representar la confirmación transaccional de cambios realizados por uno o más repositorios. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Implementar UnitOfWork con AppDbContext & Crear Shared/Infrastructure/Persistence/EFC/Repositories/UnitOfWork.cs implementando IUnitOfWork, delegando CompleteAsync() a AppDbContext.SaveChangesAsync() para confirmar las operaciones pendientes en PostgreSQL. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS36
TS36 & Implementar Auditoría Automática de Entidades & TK01 & Implementar IAuditableEntity & Crear Shared/Domain/Model/Entities/IAuditableEntity.cs con las propiedades DateTimeOffset? CreatedAt y DateTimeOffset? UpdatedAt para marcar entidades auditables en cualquier bounded context. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Implementar AuditableEntityInterceptor & Crear Shared/Infrastructure/Persistence/EFC/Interceptors/AuditableEntityInterceptor.cs heredando de SaveChangesInterceptor, sobrescribiendo SavingChanges y SavingChangesAsync para ejecutar la auditoría antes de persistir cambios. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Implementar asignación automática de timestamps & Implementar ApplyAuditTimestamps(DbContext? context) para recorrer context.ChangeTracker.Entries<IAuditableEntity>(), asignar UpdatedAt = DateTimeOffset.UtcNow cuando el estado sea Added o Modified, y asignar CreatedAt solo cuando el estado sea Added y el valor todavía sea nulo. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK04 & Registrar interceptor de auditoría en AppDbContext & Configurar AppDbContext.OnConfiguring(DbContextOptionsBuilder builder) para registrar new AuditableEntityInterceptor() mediante builder.AddInterceptors(...), garantizando que la auditoría se aplique automáticamente sobre entidades auditables. & 1.0 & Espada, Piero & Done \\ \hline

% TS13
TS13 & Crear registro de dispositivo IoT & TK01 & Definir IoTDevice Aggregate Root & Definir IoTDevice como aggregate root en la capa de dominio con IoTDeviceId, PlotId, DeviceName y IoTDeviceStatus, aplicando invariantes de parcela obligatoria, nombre no vacío y estado permitido. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Crear CreateIoTDeviceCommand & Crear CreateIoTDeviceCommand en la capa de aplicación con PlotId, AuthenticatedUserId, DeviceName e IoTDeviceStatus, asignando estado activo por defecto cuando no se indique uno explícito. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Implementar IoTDeviceCommandService para creación & Implementar IoTDeviceCommandService con handle(CreateIoTDeviceCommand), validando propiedad de parcela con PlotRepository, creando IoTDevice y persistiendo con IoTDeviceRepository.save(IoTDevice). & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK04 & Crear Resources y assemblers de creación de dispositivo IoT & Crear CreateIoTDeviceResource, IoTDeviceResource, CreateIoTDeviceCommandFromResourceAssembler y IoTDeviceResourceFromIoTDeviceAssembler. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de creación de dispositivo IoT & Añadir POST /api/v1/plots/{plotId}/iot-devices, retornando 201 Created con IoTDeviceResource, 400 Bad Request por datos inválidos o 403 Forbidden por propiedad fallida. & 1.0 & Li, Diana & Done \\ \hline

% TS14
TS14 & Editar dispositivo IoT & TK01 & Crear UpdateIoTDeviceCommand & Crear UpdateIoTDeviceCommand en la capa de aplicación con PlotId, IoTDeviceId, AuthenticatedUserId, DeviceName e IoTDeviceStatus, permitiendo edición parcial de configuración del sensor. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar actualización en IoTDeviceCommandService & Implementar handle(UpdateIoTDeviceCommand), validando propiedad de parcela, buscando el dispositivo con IoTDeviceRepository.findByIdAndPlotId(IoTDeviceId, PlotId), aplicando cambios y persistiendo. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Crear Resource y assembler de edición IoT & Crear UpdateIoTDeviceResource y UpdateIoTDeviceCommandFromResourceAssembler para transformar PATCH REST en Command sin exponer detalles internos de persistencia. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK04 & Exponer endpoint REST de edición de dispositivo IoT & Añadir PATCH /api/v1/plots/{plotId}/iot-devices/{deviceId}, retornando 200 OK con IoTDeviceResource, 400 Bad Request, 403 Forbidden o 404 Not Found. & 1.0 & Li, Diana & Done \\ \hline

% TS15
TS15 & Eliminar dispositivo IoT & TK01 & Crear DeleteIoTDeviceCommand & Crear DeleteIoTDeviceCommand en la capa de aplicación con PlotId, IoTDeviceId y AuthenticatedUserId para asegurar que toda eliminación tenga contexto de propiedad. & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK02 & Implementar eliminación en IoTDeviceCommandService & Implementar handle(DeleteIoTDeviceCommand), validando propiedad de parcela, recuperando IoTDevice con IoTDeviceRepository.findByIdAndPlotId(IoTDeviceId, PlotId) y eliminando mediante IoTDeviceRepository.delete(IoTDevice). & 1.0 & Li, Diana & Done \\ \cline{3-8}
& & TK03 & Exponer endpoint REST de eliminación de dispositivo IoT & Añadir DELETE /api/v1/plots/{plotId}/iot-devices/{deviceId}, retornando 204 No Content, 403 Forbidden o 404 Not Found. & 1.0 & Li, Diana & Done \\ \hline

% TS16
TS16 & Obtener resumen general de monitoreo y KPIs por usuario & TK01 & Definir MonitoringSummary Aggregate Root & Definir MonitoringSummary como aggregate root en la capa de dominio con MonitoringSummaryId, UserId, GeneralHealthStatus, AverageNdvi, AccumulatedChillHours, YieldProjection y LastSynchronizationAt, aplicando invariantes de métricas no negativas y estado válido. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Crear GetCurrentMonitoringSummaryQuery & Crear GetCurrentMonitoringSummaryQuery en la capa de aplicación con UserId y AuthenticatedUserId, validando que el resumen solicitado pertenezca al usuario autenticado. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Implementar MonitoringSummaryQueryService & Implementar MonitoringSummaryQueryService con handle(GetCurrentMonitoringSummaryQuery), obteniendo parcelas del usuario, calculando salud general, promedio NDVI, horas de frío y proyección consolidada. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Implementar consultas de soporte para MonitoringSummary & Crear servicios o repositorios de infraestructura para recuperar desde PostgreSQL las métricas necesarias del resumen: parcelas del usuario, últimas estadísticas agronómicas por parcela, acumulación de frío, proyección de rendimiento y lecturas IoT recientes. Implementar consultas con EF Core usando filtros por user\_id, plot\_id y fechas, evitando que MonitoringSummaryQueryService dependa de detalles SQL. Implementar las consultas mediante LINQ sobre DbSet, usar Include/ThenInclude solo cuando sea necesario, aplicar AsNoTracking en lecturas y mantener la lógica SQL fuera de los Application Services. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK05 & Crear MonitoringSummaryResource y assembler & Crear MonitoringSummaryResource y MonitoringSummaryResourceFromMonitoringSummaryAssembler para exponer métricas consolidadas sin acoplar la respuesta REST a la implementación interna. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de resumen de monitoreo & Crear MonitoringSummariesController con GET /api/v1/monitoring-summaries/current?userId={userId}, retornando 200 OK con MonitoringSummaryResource o 403 Forbidden. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK07 & Definir WeatherSnapshot Value Object & Definir WeatherSnapshot como value object en la capa de dominio con CurrentTemperature, WeatherStatus, LastValidatedReadingAt y ClimateRiskLevel, aplicando invariantes de lectura válida, fecha no futura y riesgo climático permitido. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK08 & Crear ClimateRiskEvaluator & Crear ClimateRiskEvaluator como domain service para clasificar riesgo climático y déficit de frío a partir de acumulación de frío, NDVI, estado fenológico y umbrales configurados para el olivo. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK09 & Definir MitigationRecommendation Value Object & Definir MitigationRecommendation como value object en la capa de dominio con ActionType, SuggestedInputs y RecommendedApplicationWindow, validando que solo se genere cuando el riesgo climático o fenológico sea alto o crítico. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK10 & Extender MonitoringSummaryQueryService con clima y recomendaciones & Extend MonitoringSummaryQueryService para consolidar WeatherSnapshot, ClimateRiskEvaluator y MitigationRecommendation dentro de MonitoringSummary cuando la consulta GET /api/v1/monitoring-summaries/current sea procesada. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK11 & Ampliar MonitoringSummaryResource & Update MonitoringSummaryResource y MonitoringSummaryResourceFromMonitoringSummaryAssembler para incluir CurrentTemperature, WeatherStatus, LastValidatedReadingAt, ClimateRiskLevel, RiskReason y MitigationRecommendation. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS17
TS17 & Obtener tendencias agrometeorológicas & TK01 & Definir AgronomicStatistic Aggregate Root & Definir AgronomicStatistic como aggregate root en la capa de dominio con AgronomicStatisticId, UserId, PlotId, MeasurementDate, NdviValue, ChillPortions y ChillHours, validando rango NDVI y métricas climáticas no negativas. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Definir TimeRange Value Object & Definir TimeRange como value object en la capa de dominio con valores permitidos LAST\_7\_DAYS, LAST\_30\_DAYS y CURRENT\_CAMPAIGN, rechazando rangos no soportados mediante reglas de dominio. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Definir AgronomicStatisticRepository & Crear AgronomicStatisticRepository en la capa de dominio con métodos findAllByUserIdAndMeasurementDateBetween(UserId, DateRange), findAllByUserIdAndPlotIdAndMeasurementDateBetween(UserId, PlotId, DateRange) y save(AgronomicStatistic). & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Implementar AgronomicStatisticRepository con EF Core & Implementar AgronomicStatisticRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<AgronomicStatistic> en AppDbContext, crear configuración con IEntityTypeConfiguration<AgronomicStatistic>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de tendencias agronómicas & Crear AgronomicStatisticsController con GET /api/v1/agronomic-statistics?userId={userId}\&plotId={plotId}\&timeRange={timeRange}, retornando 200 OK, 400 Bad Request o 403 Forbidden. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK06 & Implementar AgronomicStatisticQueryService & Implementar AgronomicStatisticQueryService con handle(GetAgronomicStatisticsQuery), validando propiedad de usuario y parcela, resolviendo TimeRange a DateRange y consultando AgronomicStatisticRepository. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK07 & Crear GetAgronomicStatisticsQuery & Crear GetAgronomicStatisticsQuery en la capa de aplicación con UserId, AuthenticatedUserId, PlotId opcional y TimeRange, permitiendo consulta consolidada o filtrada por parcela. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK08 & Crear AgronomicStatisticResource y assembler & Crear AgronomicStatisticResource y AgronomicStatisticResourceFromAgronomicStatisticAssembler con MeasurementDate, NdviValue, ChillPortions y ChillHours para graficar tendencias en la UI. & 1.0 & Trinidad, Jahat & Done \\ \hline

% TS09
TS09 & Listar parcelas por usuario & TK01 & Crear GetPlotsByUserIdQuery & Crear GetPlotsByUserIdQuery en la capa de aplicación con UserId, AuthenticatedUserId e IncludeCurrentImagery, validando que el listado se solicite para el usuario autenticado y permitiendo solicitar enriquecimiento satelital para las parcelas retornadas. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK02 & Crear AgroMonitoringImageryClient & Crear AgroMonitoringImageryClient en infraestructura usando HttpClientFactory o Refit en ASP.NET Core. Leer baseUrl y appid/API key desde appsettings.json o variables de entorno mediante Options Pattern, construir la solicitud a AgroMonitoring a partir de PolygonCoordinates, ejecutar la llamada con timeout configurado, capturar errores 4xx/5xx y convertir la respuesta externa a un objeto interno con tileUrl, captureDate, ndviMean y cloudPercentage sin exponer la credencial al frontend. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK03 & Definir AgroMonitoringImageryService & Crear AgroMonitoringImageryService con métodos GetCurrentImageryAsync(Plot) y GetCurrentImageryForPlotsAsync(IEnumerable<Plot>). El servicio debe consumir AgroMonitoringImageryClient, aplicar fallback cuando no exista imagen vigente, calcular isReliable y recommendedOpacity desde cloudPercentage, y retornar Result para que un error externo no rompa el listado de parcelas. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK04 & Enriquecer listado en PlotQueryService & Implementar PlotQueryService con handle(GetPlotsByUserIdQuery), validando propiedad de la consulta, usando PlotRepository.findAllByOwnerUserId(UserId) y enriqueciendo cada respuesta con currentImagery mediante AgroMonitoringImageryService cuando IncludeCurrentImagery sea verdadero. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK05 & Definir SatelliteImageryResource & Crear SatelliteImageryResource en interfaces/rest con tileUrl, captureDate, ndviMean, cloudPercentage, isReliable y recommendedOpacity, siguiendo la estructura usada por el frontend para la capa de satellite-imagery y permitiendo que Mapbox consuma la capa NDVI sin recalcular la metadata principal. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK06 & Ampliar PlotResource para currentImagery & Actualizar PlotResource y PlotResourceFromPlotAssembler para incluir currentImagery como SatelliteImageryResource, además de name, polygonCoordinates, areaSize, lastUpdate, healthStatus y phenologicalRisk, manteniendo currentImagery como información de lectura no editable. & 1.0 & Trinidad, Jahat & Done \\ \cline{3-8}
& & TK07 & Exponer endpoint REST para listar parcelas con imagen NDVI & Añadir GET /api/v1/plots?userId={userId}\&includeCurrentImagery=true en PlotsController, retornando 200 OK con arreglo de PlotResource enriquecidos, 200 OK con currentImagery nulo cuando AgroMonitoring no tenga imagen disponible y 403 Forbidden cuando falle la validación de propiedad. & 1.0 & Trinidad, Jahat & Done \\ \hline

% TS10
TS10 & Consultar y editar parcela & TK01 & Crear GetPlotByIdQuery & Crear GetPlotByIdQuery en la capa de aplicación con PlotId y AuthenticatedUserId, validando que el detalle de parcela solo se consulte por el propietario correspondiente. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Crear UpdatePlotCommand & Crear UpdatePlotCommand en la capa de aplicación con PlotId, AuthenticatedUserId, PlotName, PolygonCoordinates y AreaSize, permitiendo actualización parcial y delegando reglas de consistencia al aggregate root. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Implementar consultas y validaciones de Plot para detalle & Extender PlotRepositoryImpl y SpringDataPlotRepository para soportar findById(PlotId), findByIdAndOwnerUserId(PlotId, UserId) y validación de dependencias activas antes de eliminar. Implementar consultas existsByPlotId en los repositorios relacionados o consultas LINQ o FromSqlInterpolated en PostgreSQL para detectar dispositivos IoT, alertas, intervenciones, certificaciones o gastos vinculados. Implementar las consultas mediante LINQ sobre DbSet, usar Include/ThenInclude solo cuando sea necesario, aplicar AsNoTracking en lecturas y mantener la lógica SQL fuera de los Application Services. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Extender PlotQueryService para detalle & Implementar handle(GetPlotByIdQuery) en PlotQueryService, buscando la parcela con PlotRepository.findById(PlotId), retornando NOT\_FOUND si no existe y FORBIDDEN si no pertenece al usuario autenticado. & 1.0 & Santi, Fabrizio & Done \\ \text {3-8}
& & TK05 & Extender PlotCommandService para edición & Implementar handle(UpdatePlotCommand) en PlotCommandService, recuperando Plot, aplicando cambios mediante métodos del aggregate root, validando polígono y persistiendo con PlotRepository.save(Plot). & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK06 & Agregar Resources y assemblers de edición de parcela & Crear UpdatePlotResource y UpdatePlotCommandFromResourceAssembler, reutilizando PlotResourceFromPlotAssembler para la respuesta del endpoint de edición. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK07 & Exponer endpoints REST de detalle y edición de parcela & Añadir GET /api/v1/plots/{plotId} y PATCH /api/v1/plots/{plotId} en PlotsController, retornando 200 OK, 400 Bad Request, 403 Forbidden o 404 Not Found según el Result. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK08 & Crear DeletePlotFromDetailCommand & Crear DeletePlotFromDetailCommand en la capa de aplicación con PlotId y AuthenticatedUserId para cubrir la eliminación iniciada desde la vista de detalle de parcela, reutilizando las reglas de propiedad y trazabilidad ya definidas para eliminar parcelas. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK09 & Extender PlotCommandService para eliminación desde detalle & Implementar handle(DeletePlotFromDetailCommand) en PlotCommandService, validando existencia de Plot, propiedad del usuario autenticado y ausencia de alertas, intervenciones, certificaciones o dispositivos activos antes de eliminar. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK10 & Agregar DELETE al flujo de detalle de parcela & Añadir DELETE /api/v1/plots/{plotId} en PlotsController como acción disponible desde la vista de detalle, retornando 204 No Content, 403 Forbidden, 404 Not Found o 409 Conflict según el Result. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS11
TS11 & Eliminar parcela & TK01 & Crear DeletePlotCommand & Crear DeletePlotCommand en la capa de aplicación con PlotId y AuthenticatedUserId, validando que la eliminación siempre tenga contexto de parcela y usuario autenticado. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Implementar eliminación en PlotCommandService & Implementar handle(DeletePlotCommand) en PlotCommandService, recuperando Plot, verificando propiedad, validando que no existan dependencias activas y eliminando mediante PlotRepository.delete(Plot). & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Agregar regla de eliminación de parcela & Añadir domain logic en Plot para determinar si puede eliminarse según estado operativo, evitando eliminar parcelas con trazabilidad activa o relaciones que deban conservarse. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Implementar consultas de dependencias de parcela & Implementar en infraestructura las consultas necesarias para validar dependencias activas antes de eliminar una parcela usando EF Core y PostgreSQL. Crear métodos existsByPlotId en repositorios de IoTDevice, Alert, InterventionRequest, Certification y Expense, o consultas LINQ o FromSqlInterpolated específicas cuando la relación no sea directa. Implementar las consultas mediante LINQ sobre DbSet, usar Include/ThenInclude solo cuando sea necesario, aplicar AsNoTracking en lecturas y mantener la lógica SQL fuera de los Application Services. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de eliminación de parcela & Añadir DELETE /api/v1/plots/{plotId} en PlotsController, retornando 204 No Content, 403 Forbidden, 404 Not Found o 409 Conflict cuando existan dependencias activas. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS18
TS18 & Crear alerta preventiva (Reporte de síntomas) & TK01 & Definir Alert Aggregate Root & Definir Alert como aggregate root en la capa de dominio con AlertId, PlotId, ReporterUserId, Symptoms, Description, Severity y AlertStatus, aplicando invariantes de síntomas obligatorios y severidad válida. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Definir AlertRepository & Crear AlertRepository en la capa de dominio con métodos save(Alert), findById(AlertId), findAllBySeverityAndStatus(AlertSeverity, AlertStatus), findAllByStatus(AlertStatus) y existsByPlotIdAndStatus(PlotId, AlertStatus). & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Implementar AlertRepository con EF Core & Implementar AlertRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Alert> en AppDbContext, crear configuración con IEntityTypeConfiguration<Alert>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Crear AlertRiskEvaluator & Crear AlertRiskEvaluator como domain service para calcular AlertSeverity a partir de Symptoms y contexto de parcela, usando reglas determinísticas iniciales y dejando el contrato listo para integrar métricas agronómicas. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK05 & Crear CreateAlertCommand & Crear CreateAlertCommand en la capa de aplicación con PlotId, ReporterUserId, Symptoms y Description, validando que existan datos mínimos para registrar la alerta. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK06 & Implementar AlertCommandService & Implementar AlertCommandService con handle(CreateAlertCommand), validando propiedad de parcela, calculando severidad con AlertRiskEvaluator y persistiendo Alert mediante AlertRepository. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK07 & Exponer endpoint REST de creación de alerta & Crear AlertsController con POST /api/v1/alerts, usando CreateAlertResource, AlertResource y assemblers, retornando 201 Created o 400 Bad Request. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS19
TS19 & Listar alertas epidemiológicas zonales & TK01 & Crear AlertResource y assembler & Crear AlertResource y AlertResourceFromAlertAssembler con AlertId, PlotId, Severity, Status, Symptoms y CreatedAt para exponer alertas epidemiológicas zonales. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK02 & Crear GetRecentAlertsByUserIdQuery & Crear GetRecentAlertsByUserIdQuery en la capa de aplicación con UserId, AuthenticatedUserId y Limit, validando propiedad del usuario y usando un límite por defecto de tres alertas recientes. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK03 & Extender AlertRepository para alertas recientes & Extender SpringDataAlertRepository con consultas findAllBySeverityAndStatus, findAllByStatus, findTopByUserIdOrderByCreatedAtDesc y findTopByPlotIdsOrderByCreatedAtDesc. Implementar ordenamiento descendente por created\_at, límite parametrizable con Pageable o Limit y joins controlados con parcelas del productor para PostgreSQL. Implementar las consultas mediante LINQ sobre DbSet, usar Include/ThenInclude solo cuando sea necesario, aplicar AsNoTracking en lecturas y mantener la lógica SQL fuera de los Application Services. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK04 & Extender AlertQueryService con alertas recientes & Implementar handle(GetRecentAlertsByUserIdQuery) en AlertQueryService, validando propiedad, resolviendo parcelas del usuario y retornando una colección vacía cuando no existan alertas. & 1.0 & Santi, Fabrizio & Done \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de alertas recientes & Añadir GET /api/v1/alerts/recent?userId={userId}\&limit=3 en AlertsController, retornando 200 OK con lista de AlertResource, 200 OK con arreglo vacío o 403 Forbidden cuando falle la propiedad. & 1.0 & Santi, Fabrizio & Done \\ \hline

% TS24
TS24 & Registrar hallazgos de inspección física & TK01 & Definir Intervetion Aggregate & Definir Inspection como aggregate root en la capa de dominio con InspectionId, InterventionRequestId, SpecialistId, Findings y EvidenceImageUrls, aplicando invariantes de hallazgos no vacíos y URLs HTTPS para evidencia. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK02 & Definir InterventionRepository & Crear InspectionRepository en la capa de dominio con métodos save(Inspection), findAllByInterventionRequestId(InterventionRequestId) y existsByInterventionRequestId(InterventionRequestId). & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK03 & Crear CreateInterventionCommand & Crear CreateInterventionCommand en la capa de aplicación. & 1.0 & Espada, Piero & Done \\ \cline{3-8}
& & TK04 & Exponer endpoint REST de inspección física & Crear InspectionsController con POST /api/v1/interventions/{interventionId}/inspections, aceptando JSON o multipart/form-data, y retornando 201 Created con InspectionResource o 400 Bad Request. & 1.0 & Espada, Piero & Done \\ \hline

% US19 (Continuación To-Do)
US19 & Reporte de sintomatología y evaluación automática & TK01 & Creación manual de alerta & Implementación de formulario con selector de Parcela y multiselección de síntomas vistos & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Visualización de alertas por parcela & Implementación de filtro de alerta de acuerdo según parcela & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Mensaje de confirmación de alerta & Implementación de pop-up de alerta validada o archivada & 1.0 & Asignado & To-Do \\ \hline

% TS06
TS06 & Consultar y modificar perfil de usuario & TK01 & Definir Profile Aggregate Root & Definir la clase Profile como aggregate root en la capa de dominio con ProfileId, UserId, FullName, PhoneNumber, Role, AvailabilityStatus y ProfileImageUrl, aplicando invariantes de datos obligatorios, formato de teléfono, estado de disponibilidad permitido y actualización parcial controlada por lógica de dominio. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir ProfileRepository & Crear ProfileRepository en la capa de dominio con métodos save(Profile), findByUserId(UserId), existsByUserId(UserId) y findByUserIdAndRole(UserId, Role), para consultar y actualizar perfiles respetando propiedad del usuario. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Implementar ProfileRepository con EF Core & Implementar ProfileRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Profile> en AppDbContext, crear configuración con IEntityTypeConfiguration<Profile>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear GetProfileByUserIdQuery & Crear GetProfileByUserIdQuery en la capa de aplicación con UserId y AuthenticatedUserId, validando que la consulta solo pueda ejecutarse para el usuario autenticado o un perfil permitido por reglas de acceso. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Crear UpdateProfileCommand & Crear UpdateProfileCommand en la capa de aplicación con UserId, AuthenticatedUserId, FullName, PhoneNumber, AvailabilityStatus y ProfileImageUrl, permitiendo modificar únicamente los campos enviados y conservando los valores existentes cuando no se incluyan cambios. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Implementar ProfileQueryService & Implementar ProfileQueryService con handle(GetProfileByUserIdQuery), consultando ProfileRepository, validando propiedad del perfil y retornando Result success con Profile o failure con FORBIDDEN / PROFILE\_NOT\_FOUND. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & Implementar ProfileCommandService & Implementar ProfileCommandService con handle(UpdateProfileCommand), recuperando el Profile, aplicando cambios mediante métodos del aggregate root, persistiendo con ProfileRepository y retornando Result con INVALID\_PROFILE\_DATA cuando fallen invariantes. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK08 & Almacenamiento con Cloudflare Images & Implementar el servicio de infraestructura correspondiente usando HttpClientFactory, accountId, apiToken y deliveryBaseUrl configurados con Options Pattern. Validar content type permitido, tamaño máximo, archivos vacíos, respuesta del API de Cloudflare Images y devolver únicamente las URLs públicas necesarias para el dominio o Resource. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK09 & Exponer endpoints REST de perfil & Crear ProfilesController con GET /api/v1/users/{userId}/profile y PATCH /api/v1/users/{userId}/profile, usando ProfileResource, UpdateProfileResource y assemblers para transformar Resources a Query/Command y Profile a Resource. & 1.0 & Asignado & To-Do \\ \hline

% TS18 (Continuación To-Do)
TS18 & Crear alerta preventiva (Reporte de síntomas) & TK01 & Integrar difusión comunitaria en AlertCommandService & Extend AlertCommandService con la propagación de PreventiveNotice luego de crear una Alert crítica o alta, retornando Result success con Alert y conservando la alerta original como fuente de la difusión. & 1.0 & Asignado & To-Do \\ \hline

% TS19 (Continuación To-Do)
TS19 & Listar alertas epidemiológicas zonales & TK01 & Crear GetAlertsBySeverityQuery & Crear GetAlertsBySeverityQuery en la capa de aplicación con AlertSeverity opcional, permitiendo listar alertas activas filtradas o sin filtro de severidad. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Implementar AlertQueryService & Implementar AlertQueryService con handle(GetAlertsBySeverityQuery), consultando AlertRepository.findAllBySeverityAndStatus(AlertSeverity, ACTIVE) cuando exista filtro o findAllByStatus(ACTIVE) cuando no exista. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Exponer endpoint REST de alertas por severidad & Añadir GET /api/v1/alerts?severity={severity} en AlertsController, retornando 200 OK con lista de AlertResource o 400 Bad Request cuando severity no sea válido. & 1.0 & Asignado & To-Do \\ \hline

% TS20
TS20 & Crear solicitud de intervención técnica & TK01 & Definir InterventionRequest Aggregate Root & Definir InterventionRequest como aggregate root en la capa de dominio con InterventionRequestId, AlertId, ProducerUserId, SpecialistId y InterventionRequestStatus, inicializando estado en PENDING\_SPECIALIST\_REVIEW. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir InterventionRequestRepository & Crear InterventionRequestRepository en la capa de dominio con métodos save(InterventionRequest), findById(InterventionRequestId), existsByAlertIdAndStatusIn(AlertId, StatusCollection) y findByIdAndParticipant(InterventionRequestId, UserId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Implementar InterventionRequestRepository con EF Core & Implementar InterventionRequestRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<InterventionRequest> en AppDbContext, crear configuración con IEntityTypeConfiguration<InterventionRequest>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear CreateInterventionRequestCommand & Crear CreateInterventionRequestCommand en la capa de aplicación con AlertId, ProducerUserId y SpecialistId, validando identificadores obligatorios para abrir el caso de atención. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Implementar InterventionRequestCommandService & Implementar InterventionRequestCommandService con handle(CreateInterventionRequestCommand), verificando existencia de alerta, disponibilidad de especialista y ausencia de solicitud activa para la misma alerta. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de solicitud de intervención & Crear InterventionRequestsController con POST /api/v1/interventions/requests, usando CreateInterventionRequestResource y InterventionRequestResource, retornando 201 Created o 400 Bad Request. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & Definir SpecialistCandidateResource & Crear SpecialistCandidateResource en interfaces/rest con SpecialistId, FullName, ProfessionalSummary, AvailabilityStatus, ServiceZone, Rating y ProfileImageUrl para mostrar candidatos antes de crear la solicitud de intervención. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK08 & Crear GetSpecialistCandidatesByAlertIdQuery & Crear GetSpecialistCandidatesByAlertIdQuery en la capa de aplicación con AlertId y AuthenticatedProducerId, validando que la alerta pertenezca al productor autenticado antes de buscar candidatos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK09 & Implementar SpecialistCandidateQueryService & Implementar SpecialistCandidateQueryService con handle(GetSpecialistCandidatesByAlertIdQuery), recuperando especialistas disponibles por zona de atención, disponibilidad operativa y relación con la alerta, retornando Result con lista vacía cuando no existan candidatos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK10 & Exponer endpoint REST de especialistas candidatos & Añadir GET /api/v1/interventions/candidates?alertId={alertId} en InterventionRequestsController, retornando 200 OK con SpecialistCandidateResource, 200 OK con arreglo vacío, 403 Forbidden o 404 Not Found. & 1.0 & Asignado & To-Do \\ \hline

% TS21
TS21 & Consultar y actualizar estado de intervención & TK01 & Definir InterventionRequestStatusPolicy & Crear InterventionRequestStatusPolicy en la capa de dominio con canTransition(CurrentStatus, NextStatus), permitiendo solo transiciones válidas como PENDING\_SPECIALIST\_REVIEW a ACCEPTED o DECLINED. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Crear GetInterventionRequestByIdQuery & Crear GetInterventionRequestByIdQuery en la capa de aplicación con InterventionRequestId y AuthenticatedUserId para consultar una solicitud solo si el usuario participa en ella. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Crear UpdateInterventionRequestStatusCommand & Crear UpdateInterventionRequestStatusCommand en la capa de aplicación con InterventionRequestId, AuthenticatedUserId y NextStatus para aceptar o declinar una intervención. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Consultas para solicitudes y contexto técnico & Extender SpringDataInterventionRequestRepository con consultas por requestId, specialistId, status y participante. Para el contexto técnico, implementar consultas de soporte que recuperen Alert, Plot, AgronomicStatistic y eventos relevantes mediante repositorios existentes, evitando N+1 con Include/ThenInclude o proyecciones LINQ o consultas específicas cuando se necesite información agregada. Implementar las consultas mediante LINQ sobre DbSet, usar Include/ThenInclude solo cuando sea necesario, aplicar AsNoTracking en lecturas y mantener la lógica SQL fuera de los Application Services. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Implementar InterventionRequestQueryService & Implementar InterventionRequestQueryService con handle(GetInterventionRequestByIdQuery), recuperando la solicitud y retornando FORBIDDEN cuando el usuario autenticado no sea participante. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Actualización de estado de intervención & Implementar handle(UpdateInterventionRequestStatusCommand) en InterventionRequestCommandService, usando InterventionRequestStatusPolicy y persistiendo el nuevo estado con InterventionRequestRepository. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & Exponer endpoints REST de consulta y estado & Añadir GET /api/v1/interventions/requests/{requestId} y PATCH /api/v1/interventions/requests/{requestId}/status, retornando 200 OK, 400 Bad Request, 403 Forbidden o 404 Not Found. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK08 & Crear GetInterventionRequestsBySpecialistQuery & Crear GetInterventionRequestsBySpecialistQuery en la capa de aplicación con SpecialistId, AuthenticatedUserId y Status opcional para listar solicitudes entrantes del especialista autenticado. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK09 & Listado de solicitudes en QueryService & Implementar handle(GetInterventionRequestsBySpecialistQuery) en InterventionRequestQueryService, validando que SpecialistId corresponda al usuario autenticado y retornando InterventionRequestResource con resumen del problema, severidad y ubicación general. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK10 & Exponer endpoint REST de solicitudes entrantes & Añadir GET /api/v1/interventions/requests?specialistId={specialistId}\&status={status} en InterventionRequestsController, retornando 200 OK con lista de InterventionRequestResource o 403 Forbidden. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK11 & Definir InterventionTechnicalContextResource & Crear InterventionTechnicalContextResource en interfaces/rest con AlertSummary, PlotSummary, AgronomicHistory, Severity y LocationSummary para mostrar el contexto técnico de una solicitud aceptada. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK12 & Crear GetInterventionTechnicalContextQuery & Crear GetInterventionTechnicalContextQuery en la capa de aplicación con InterventionRequestId y AuthenticatedUserId, validando que el usuario participe en la solicitud antes de consultar el contexto técnico. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK13 & Contexto técnico en QueryService & Implementar handle(GetInterventionTechnicalContextQuery), consultando alerta activa, historial agronómico relevante, severidad y datos de parcela; retornar NOT\_FOUND si la solicitud no existe y FORBIDDEN si el usuario no participa. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK14 & Exponer endpoint REST de contexto técnico & Añadir GET /api/v1/interventions/requests/{requestId}/technical-context, retornando 200 OK con InterventionTechnicalContextResource, 403 Forbidden o 404 Not Found. & 1.0 & Asignado & To-Do \\ \hline

% TS22
TS22 & Formalizar propuesta de servicio & TK01 & Definir Proposal Aggregate Root & Definir Proposal como aggregate root en la capa de dominio con ProposalId, InterventionRequestId, SpecialistId, Budget, OperationalPlan y ProposalStatus, validando presupuesto positivo y plan operativo no vacío. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir ProposalRepository & Crear ProposalRepository en la capa de dominio con métodos save(Proposal), findByInterventionRequestId(InterventionRequestId) y existsByInterventionRequestId(InterventionRequestId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Implementar ProposalRepository con EF Core & Implementar ProposalRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Proposal> en AppDbContext, crear configuración con IEntityTypeConfiguration<Proposal>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear CreateProposalCommand & Crear CreateProposalCommand en la capa de aplicación con InterventionRequestId, SpecialistId, Budget y OperationalPlan, validando datos requeridos antes de formalizar la propuesta. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Implementar ProposalCommandService & Implementar ProposalCommandService con handle(CreateProposalCommand), validando intervención aceptada, especialista asignado, ausencia de propuesta previa y persistencia mediante ProposalRepository. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de propuesta de servicio & Añadir POST /api/v1/interventions/{interventionId}/proposals, usando CreateProposalResource y ProposalResource, retornando 201 Created o 400 Bad Request. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & Crear ResolveProposalStatusCommand & Crear ResolveProposalStatusCommand en la capa de aplicación con InterventionRequestId, ProposalId, ProducerUserId y ProposalStatus para aceptar o declinar una propuesta pendiente. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK08 & Agregar regla de transición en Proposal & Añadir domain logic en Proposal para permitir transición de PENDING a ACCEPTED o DECLINED, rechazando cambios cuando la propuesta ya fue resuelta. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK09 & Extender ProposalCommandService para resolución & Implementar handle(ResolveProposalStatusCommand) en ProposalCommandService, validando productor participante, propuesta existente, estado pendiente y persistiendo el nuevo estado mediante ProposalRepository. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK10 & Exponer endpoint REST de resolución de propuesta & Añadir PATCH /api/v1/interventions/{interventionId}/proposals/{proposalId}/status, usando UpdateProposalStatusResource y retornando 200 OK con ProposalResource, 400 Bad Request, 403 Forbidden o 404 Not Found. & 1.0 & Asignado & To-Do \\ \hline

% TS23
TS23 & Obtener datos de contacto directo protegidos & TK01 & Crear GetContactByInterventionIdQuery & Crear GetContactByInterventionIdQuery en la capa de aplicación con InterventionRequestId y AuthenticatedUserId, validando que el usuario participe en la intervención. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Implementar ContactQueryService & Implementar ContactQueryService con handle(GetContactByInterventionIdQuery), validando intervención existente, propuesta aceptada y participación del usuario antes de retornar datos de contacto. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Consultas protegidas de contacto & Crear un componente de infraestructura para recuperar datos de contacto desde ProfileRepository y ProposalRepository solo cuando la propuesta esté ACCEPTED. La consulta debe validar intervention\_request\_id, participante autenticado y estado confirmado antes de construir ContactResource, evitando exponer teléfonos o correos desde endpoints generales. Implementar las consultas mediante LINQ sobre DbSet, usar Include/ThenInclude solo cuando sea necesario, aplicar AsNoTracking en lecturas y mantener la lógica SQL fuera de los Application Services. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Definir ContactResource & Crear ContactResource en interfaces/rest con datos de contacto permitidos para productor y especialista, evitando exponer información cuando el acuerdo no esté confirmado. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de datos de contacto & Añadir GET /api/v1/interventions/{interventionId}/contacts, retornando 200 OK con ContactResource, 403 Forbidden cuando no exista acuerdo confirmado y 404 Not Found si la intervención no existe. & 1.0 & Asignado & To-Do \\ \hline

% TS24 (Continuación To-Do)
TS24 & Registrar hallazgos de inspección física & TK01 & Implementar InspectionRepository con EF Core & Implementar InspectionRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Inspection> en AppDbContext, crear configuración con IEntityTypeConfiguration<Inspection>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir PlotTraceabilityResource & Crear PlotTraceabilityResource en interfaces/rest con Certifications, Prescriptions, Expenses, Alerts y AgronomicEvents para mostrar la trazabilidad histórica durante la inspección. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Crear GetInterventionTraceabilityQuery & Crear GetInterventionTraceabilityQuery en la capa de aplicación con InterventionRequestId y AuthenticatedUserId, validando participación del especialista o productor antes de recuperar trazabilidad. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Implementar TraceabilityQueryService & Implementar TraceabilityQueryService con handle(GetInterventionTraceabilityQuery), recuperando eventos agronómicos, alertas, recetas, certificaciones y gastos vinculados a la parcela de la intervención. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de trazabilidad histórica & Añadir GET /api/v1/interventions/{interventionId}/traceability, retornando 200 OK con PlotTraceabilityResource, 403 Forbidden o 404 Not Found. & 1.0 & Asignado & To-Do \\ \hline

% TS25
TS25 & Emitir receta técnica fitosanitaria & TK01 & Definir Prescription Aggregate Root & Definir Prescription como aggregate root en la capa de dominio con PrescriptionId, InterventionRequestId, SpecialistId, Inputs, Dosage, ApplicationDate y WeatherWarning, validando insumos, dosis y fecha de aplicación obligatorios. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir PrescriptionRepository & Crear PrescriptionRepository en la capa de dominio con métodos save(Prescription), findByInterventionRequestId(InterventionRequestId) y existsByInterventionRequestId(InterventionRequestId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Implementar PrescriptionRepository con EF Core & Implementar PrescriptionRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Prescription> en AppDbContext, crear configuración con IEntityTypeConfiguration<Prescription>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear WeatherApplicationWindowValidator & Crear WeatherApplicationWindowValidator como domain service para evaluar ApplicationDate contra condiciones climáticas y retornar advertencias sin bloquear la generación de la receta. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Crear CreatePrescriptionCommand & Crear CreatePrescriptionCommand en la capa de aplicación con InterventionRequestId, SpecialistId, Inputs, Dosage y ApplicationDate, validando que exista inspección previa antes de emitir receta. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Implementar PrescriptionCommandService & Implementar PrescriptionCommandService con handle(CreatePrescriptionCommand), validando especialista asignado, ejecutando WeatherApplicationWindowValidator y persistiendo Prescription con PrescriptionRepository. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & Exponer endpoint REST de receta técnica & Crear PrescriptionsController con POST /api/v1/interventions/{interventionId}/prescriptions, usando CreatePrescriptionResource y PrescriptionResource, retornando 201 Created o 400 Bad Request. & 1.0 & Asignado & To-Do \\ \hline

% TS26
TS26 & Certificar ejecución de tratamientos en campo & TK01 & Definir Certification Aggregate Root & Definir Certification como aggregate root en la capa de dominio con CertificationId, PlotId, PrescriptionId, ProducerUserId y ExecutionDate, validando fecha de ejecución no futura y prescripción obligatoria. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir CertificationRepository & Crear CertificationRepository en la capa de dominio con métodos save(Certification), findByPrescriptionId(PrescriptionId), findAllByPlotId(PlotId) y existsByPrescriptionId(PrescriptionId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Implementar CertificationRepository con EF Core & Implementar CertificationRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Certification> en AppDbContext, crear configuración con IEntityTypeConfiguration<Certification>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear CreateCertificationCommand & Crear CreateCertificationCommand en la capa de aplicación con PlotId, PrescriptionId, ProducerUserId y ExecutionDate, validando datos necesarios para certificar ejecución. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Implementar CertificationCommandService & Implementar CertificationCommandService con handle(CreateCertificationCommand), validando propiedad de parcela, existencia de prescripción, ausencia de certificación previa y persistencia con CertificationRepository. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de certificación & Crear CertificationsController con POST /api/v1/plots/{plotId}/certifications, usando CreateCertificationResource y CertificationResource, retornando 201 Created, 400 Bad Request o 403 Forbidden. & 1.0 & Asignado & To-Do \\ \hline

% TS27
TS27 & Consolidar gastos operativos de mitigación & TK01 & Definir Expense Aggregate Root & Definir Expense como aggregate root en la capa de dominio con ExpenseId, PlotId, ProducerUserId, LaborCosts, InputCosts y TotalCost, calculando TotalCost desde reglas de dominio y rechazando costos negativos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir ExpenseRepository & Crear ExpenseRepository en la capa de dominio con métodos save(Expense), findAllByPlotId(PlotId) y sumTotalCostByPlotId(PlotId) para consolidar gastos por parcela. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Implementar ExpenseRepository con EF Core & Implementar ExpenseRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<Expense> en AppDbContext, crear configuración con IEntityTypeConfiguration<Expense>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear CreateExpenseCommand & Crear CreateExpenseCommand en la capa de aplicación con PlotId, ProducerUserId, LaborCosts e InputCosts, validando costos obligatorios y no negativos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Implementar ExpenseCommandService & Implementar ExpenseCommandService con handle(CreateExpenseCommand), validando propiedad de parcela, creando Expense, persistiendo el gasto y actualizando métricas financieras asociadas. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de gastos operativos & Crear ExpensesController con POST /api/v1/plots/{plotId}/expenses, usando CreateExpenseResource y ExpenseResource, retornando 201 Created, 400 Bad Request o 403 Forbidden. & 1.0 & Asignado & To-Do \\ \hline

% TS28
TS28 & Cerrar intervención y evaluar servicio público & TK01 & Crear CloseInterventionCommand & Crear CloseInterventionCommand en la capa de aplicación con InterventionRequestId, ProducerUserId, Score, Comment y RehirePreference, validando calificación permitida y preferencia obligatoria. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Cierre en InterventionRequest & Añadir close(Score, Comment, RehirePreference) en InterventionRequest, cambiando estado a CLOSED y evitando cierres duplicados mediante regla de dominio. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & ClosureCommandService & Implementar InterventionClosureCommandService con handle(CloseInterventionCommand), validando productor participante, intervención ejecutada y persistencia del cierre. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Actualización de reputación & Crear SpecialistReputationUpdater con updateAfterClosure(SpecialistId, Score), recalculando reputación pública del especialista a partir de intervenciones cerradas. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Exponer endpoint REST de cierre & Añadir POST /api/v1/interventions/{interventionId}/closure, usando CloseInterventionResource y InterventionResource, retornando 200 OK o 400 Bad Request. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Definir InterventionImpact Aggregate Root & Definir InterventionImpact como aggregate root en la capa de dominio con InterventionImpactId, InterventionRequestId, Outcome, ReportedByUserId y ReportedAt, validando que solo se registre después del periodo mínimo de evaluación. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & ImpactRepository con EF Core & Implementar InterventionImpactRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<InterventionImpact> en AppDbContext, crear configuración con IEntityTypeConfiguration<InterventionImpact>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK08 & CreateInterventionImpactCommand & Crear CreateInterventionImpactCommand en la capa de aplicación con InterventionRequestId, ProducerUserId y Outcome para registrar si la plaga fue controlada o persiste luego del tratamiento. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK09 & ImpactCommandService & Implementar InterventionImpactCommandService con handle(CreateInterventionImpactCommand), validando periodo mínimo, intervención cerrada o ejecutada y persistencia del impacto; retornar INVALID\_EVALUATION\_WINDOW cuando aún no corresponda reportar. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK10 & REST de impacto post-intervención & Añadir POST /api/v1/interventions/{interventionId}/impact-report, usando CreateInterventionImpactResource y retornando 201 Created con InterventionImpactResource o 400 Bad Request. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK11 & Definir RecoveryMonitoringResource & Crear RecoveryMonitoringResource en interfaces/rest con BeforeNdvi, AfterNdvi, RiskStatusBefore, RiskStatusAfter y RecoveryStatus para mostrar recuperación del vigor vegetal. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK12 & Crear GetRecoveryMonitoringQuery & Crear GetRecoveryMonitoringQuery en la capa de aplicación con InterventionRequestId y AuthenticatedUserId para comparar el vigor vegetal posterior contra el estado previo de la parcela intervenida. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK13 & RecoveryMonitoringQueryService & Implementar RecoveryMonitoringQueryService con handle(GetRecoveryMonitoringQuery), consultando métricas agronómicas antes y después de la intervención y retornando Result con RecoveryMonitoringResource. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK14 & REST de recuperación post-intervención & Añadir GET /api/v1/interventions/{interventionId}/recovery-monitoring, retornando 200 OK con RecoveryMonitoringResource, 403 Forbidden o 404 Not Found. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK15 & Definir SuccessCase Aggregate Root & Definir SuccessCase como aggregate root en la capa de dominio con SuccessCaseId, InterventionRequestId, SpecialistId, Title, Summary, PublishedAt y PublicationStatus, validando que solo se publique desde una intervención cerrada con impacto positivo. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK16 & Definir SuccessCaseRepository & Crear SuccessCaseRepository en la capa de dominio con métodos save(SuccessCase), findAllBySpecialistIdAndPublicationStatus(SpecialistId, PublicationStatus), findByInterventionRequestId(InterventionRequestId) y existsByInterventionRequestId(InterventionRequestId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK17 & SuccessCaseRepository con EF Core & Implementar SuccessCaseRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<SuccessCase> en AppDbContext, crear configuración con IEntityTypeConfiguration<SuccessCase>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK18 & Crear PublishSuccessCaseCommand & Crear PublishSuccessCaseCommand en la capa de aplicación con InterventionRequestId, SpecialistId, Title y Summary para publicar un caso de éxito validado en el portafolio profesional. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK19 & SuccessCaseCommandService & Implementar SuccessCaseCommandService con handle(PublishSuccessCaseCommand), validando intervención cerrada, impacto positivo y autorización de publicación antes de persistir SuccessCase. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK20 & REST para publicar caso de éxito & Añadir POST /api/v1/interventions/{interventionId}/success-case, retornando 200 OK con SuccessCaseResource o 400 Bad Request cuando la intervención no sea publicable. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK21 & GetSuccessCasesBySpecialistIdQuery & Crear GetSuccessCasesBySpecialistIdQuery en la capa de aplicación con SpecialistId para recuperar los casos de éxito publicados en el portafolio profesional. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK22 & SuccessCaseQueryService & Implementar SuccessCaseQueryService con handle(GetSuccessCasesBySpecialistIdQuery), consultando SuccessCaseRepository.findAllBySpecialistIdAndPublicationStatus(SpecialistId, PUBLISHED) y retornando lista vacía si no existen casos publicados. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK23 & REST de casos de éxito publicados & Añadir GET /api/v1/specialists/{specialistId}/success-cases, retornando 200 OK con lista de SuccessCaseResource o 404 Not Found si el especialista no existe. & 1.0 & Asignado & To-Do \\ \hline

% TS29
TS29 & Emitir reporte por inconducta contractual o falta ética & TK01 & Definir ModerationReport Aggregate Root & Definir ModerationReport como aggregate root en la capa de dominio con ModerationReportId, ReporterUserId, ReportedUserId, Category, Evidence y ReportStatus, validando categoría y evidencia obligatorias. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir ModerationReportRepository & Crear ModerationReportRepository en la capa de dominio con métodos save(ModerationReport), findAllByReportedUserId(UserId) y countByReportedUserId(UserId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & ModerationReportRepository con EF Core & Implementar ModerationReportRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<ModerationReport> en AppDbContext, crear configuración con IEntityTypeConfiguration<ModerationReport>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & CreateModerationReportCommand & Crear CreateModerationReportCommand en la capa de aplicación con ReporterUserId, ReportedUserId, Category y Evidence, impidiendo reportes contra el mismo usuario. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & ModerationReportCommandService & Implementar ModerationReportCommandService con handle(CreateModerationReportCommand), persistiendo ModerationReport e incrementando strikes del usuario denunciado mediante el servicio disciplinario. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & REST de reporte de moderación & Crear ModerationReportsController con POST /api/v1/moderation/reports, usando CreateModerationReportResource y ModerationReportResource, retornando 201 Created o 400 Bad Request. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK07 & Crear DisciplineThresholdPolicy & Crear DisciplineThresholdPolicy en la capa de dominio con evaluate(Strikes, CurrentStatus), retornando CLEAR, SUSPENDED o BANNED según umbrales configurados para suspensión temporal y expulsión definitiva. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK08 & Evaluación disciplinaria en CommandService & Extend ModerationReportCommandService para aplicar DisciplineThresholdPolicy después de registrar un reporte válido, actualizando DisciplineStatus a SUSPENDED o BANNED cuando corresponda. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK09 & Ajustar ReportResource con estado disciplinario & Update ReportResource y ReportResourceFromModerationReportAssembler para incluir DisciplineStatusResult cuando el reporte genere suspensión temporal o expulsión definitiva. & 1.0 & Asignado & To-Do \\ \hline

% TS30
TS30 & Consultar estado disciplinario del perfil & TK01 & Definir DisciplineStatus Aggregate Root & Definir DisciplineStatus como aggregate root en la capa de dominio con DisciplineStatusId, UserId, Strikes, Status y SuspendedUntil, validando strikes no negativos y estados permitidos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Definir DisciplineStatusRepository & Crear DisciplineStatusRepository en la capa de dominio con métodos save(DisciplineStatus), findByUserId(UserId) y existsByUserId(UserId). & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & DisciplineStatusRepository con EF Core & Implementar DisciplineStatusRepository en la capa de infraestructura con EF Core y PostgreSQL. Declarar DbSet<DisciplineStatus> en AppDbContext, crear configuración con IEntityTypeConfiguration<DisciplineStatus>, mapear la tabla en snake\_case, configurar claves primarias, claves foráneas, índices y conversiones de Value Objects mediante ValueConverter u Owned Entity según corresponda. Implementar los métodos definidos por el contrato del dominio usando LINQ, AsNoTracking para consultas de lectura y SaveChangesAsync para persistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK04 & Crear GetDisciplineStatusByUserIdQuery & Crear GetDisciplineStatusByUserIdQuery en la capa de aplicación con UserId, RequesterUserId y RequesterRoles, permitiendo consulta al propio usuario o a roles autorizados. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK05 & Implementar DisciplineStatusQueryService & Implementar DisciplineStatusQueryService con handle(GetDisciplineStatusByUserIdQuery), retornando CLEAR cuando no exista historial y FORBIDDEN cuando el solicitante no tenga permisos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK06 & Exponer endpoint REST de estado disciplinario & Crear DisciplineController con GET /api/v1/users/{userId}/discipline, retornando DisciplineResource con strikes, status y suspendedUntil. & 1.0 & Asignado & To-Do \\ \hline

% US15
US15 & Alerta por frío insuficiente & TK01 & Componente de alerta de frío & Implementación de tipo de alerta fenológica de frío y filtro & 1.0 & Asignado & To-Do \\ \hline

% US20
US20 & Difusión de alerta preventiva comunitaria & TK01 & Componente de alerta comunitaria & Implementación de tipo de alerta comunitaria y filtro & 1.0 & Asignado & To-Do \\ \hline

% US21
US21 & Consulta de zonas con alerta & TK01 & Radar fitosanitario con Mapbox & Implementación de mapa interactivo con marcadores georreferenciados de alertas epidemiológicas. & 1.0 & Asignado & To-Do \\ \hline

% US22
US22 & Filtrado de alertas por gravedad & TK01 & Filtro de severidad y tipo de plaga & Implementación de filtros dinámicos para alertas de plagas. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Panel de alertas filtradas & Implementación de listado sincronizado con las alertas visibles en el mapa. & 1.0 & Asignado & To-Do \\ \hline

% US24
US24 & Identificación de especialistas cercanos & TK01 & Lista de especialistas disponibles & Implementación de lista de técnicos con datos de disponibilidad. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Indisposición de especialistas & Implementación de componente de especialistas no disponibles & 1.0 & Asignado & To-Do \\ \hline

% US25
US25 & Solicitud formal de intervención & TK01 & Solicitud de invervención & Implementación de creación de solicitud con estado en espera. & 1.0 & Asignado & To-Do \\ \hline

% US26
US26 & Evaluación de disponibilidad operativa & TK01 & Lista de solicitudes en espera & Implementación de lista de solicitudes sin respuesta. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Información de solicitud & Implementación de popup con datos de la unidad productiva y alerta. & 1.0 & Asignado & To-Do \\ \hline

% US27
US27 & Resolución de la solicitud de intervención & TK01 & Aceptación de solicitud & Implementación de aceptación del especialista y visualización del productor. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Lista de solicitudes rechazadas & Implementación de lista de solicitudes rechazadas. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Lista de solicitudes en proceso & Implementación de lista de solicitudes recientemente aceptadas preeliminarmente. & 1.0 & Asignado & To-Do \\ \hline

% US28
US28 & Evaluación preliminar de la unidad productiva & TK01 & Información consolidada de la parcela & Implementación de resumen de últimos datos de trazabilidad de la parcela y últimas alertas recibidas & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Visualización del mapa de la parcela & Configurar Mapbox SDK para mostrar la parcela. & 1.0 & Asignado & To-Do \\ \hline

% US29
US29 & Emisión de propuesta de servicio & TK01 & Creación de presupuesto & Implementación de formulario relacionado con la parcela asignada. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Muestra de presupuesto & Implementación de cambio de estado de solicitud en aceptada & 1.0 & Asignado & To-Do \\ \hline

% US30
US30 & Resolución de la propuesta de servicio & TK01 & Resolución de propuesta & Implementación de visualización del formulario para solo leer con opciones de aceptar o rechazar. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Repetición del ciclo de búsqueda & Implementación de cambio de estado y retomar actividad de búsqueda de especialistas & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Lista de propuestas rechazadas & Implementación de lista de propuestas rechazadas del especialista & 1.0 & Asignado & To-Do \\ \hline

% US31
US31 & Habilitación de canal de comunicación directo & TK01 & Botón de contacto habilitado & Implementación de popup con datos de correo y whatsapp. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Botón de contacto deshabilitado & Implementación de tooltip para comunicar que se habilirá al aceptar una propuesta. & 1.0 & Asignado & To-Do \\ \hline

% US36
US36 & Revisión de antecedentes agronómicos en campo & TK01 & Información de trazabilidad de la parcela & Implementación de resumen de últimos datos de trazabilidad de la parcela & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Información de últimas alertas similares & Implementación de lista de alertas similares & 1.0 & Asignado & To-Do \\ \hline

% US37
US37 & Registro de datos de inspección física & TK01 & Formulario de inspección física & Implementación de formulario para registrar observaciones biológicas y daños detectados. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Registro de evidencias de inspección & Implementación de carga de imágenes y notas técnicas relacionadas a la parcela. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Resumen de hallazgos de campo & Implementación de componente con resumen de observaciones registradas. & 1.0 & Asignado & To-Do \\ \hline

% US38
US38 & Validación de ventana de aplicación & TK01 & Validación climática de aplicación & Implementación de validación de fecha de tratamiento según pronóstico climático. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Alerta de condiciones adversas & Implementación de mensaje de advertencia por lluvias o vientos fuertes. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Recomendación de nueva ventana & Implementación de sugerencia de reprogramación de aplicación fitosanitaria. & 1.0 & Asignado & To-Do \\ \hline

% US39
US39 & Emisión de prescripción de agrofármacos & TK01 & Formulario de receta técnica & Implementación de formulario para registrar agrofármacos, dosis y método de aplicación. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Resumen de prescripción emitida & Implementación de componente de visualización de receta técnica generada. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Notificación de nueva receta & Implementación de mensaje de disponibilidad de plan de tratamiento para el productor. & 1.0 & Asignado & To-Do \\ \hline

% US40
US40 & Certificación de aplicación de receta técnica & TK01 & Formulario de certificación de aplicación & Implementación de registro de fecha y dosificación aplicada en campo. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Actualización de historial de parcela & Implementación de consolidación de trazabilidad posterior a intervención. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Advertencia de aplicación fuera de ventana & Implementación de mensaje de posible reducción de eficacia climática. & 1.0 & Asignado & To-Do \\ \hline

% US17
US17 & Certificación de aplicación del plan de mitigación & TK01 & Formulario de certificación de intervención & Implementación de registro de fecha e insumos aplicados en campo. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Validación de datos obligatorios & Implementación de validación de insumos utilizados y fecha de intervención. & 1.0 & Asignado & To-Do \\ \hline

% US41
US41 & Consolidación del gasto de intervención & TK01 & Formulario de registro de gastos & Implementación de ingreso de costos operativos y agrofármacos utilizados. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Actualización de métricas financieras & Implementación de recálculo de rentabilidad asociado a la parcela. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Resumen económico de intervención & Implementación de visualización consolidada de gastos registrados. & 1.0 & Asignado & To-Do \\ \hline

% US18
US18 & Consolidación del gasto de mitigación climática & TK01 & Formulario de gasto de mitigación climática & Implementación de ingreso de costos asociados al plan nutricional. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Validación de declaración financiera & Implementación de bloqueo de cierre sin registro de costos. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Actualización de rentabilidad productiva & Implementación de recálculo financiero posterior a la mitigación climática. & 1.0 & Asignado & To-Do \\ \hline

% US43
US43 & Evaluación post-intervención del vigor vegetal & TK01 & Monitoreo NDVI post-intervención & Implementación de comparación de vigor vegetal antes y después del tratamiento. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Visualización de recuperación de parcela & Implementación de componente con estado epidemiológico actualizado. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Detección de rebrotes & Implementación de alerta de persistencia de estrés vegetal posterior a intervención. & 1.0 & Asignado & To-Do \\ \hline

% US44
US44 & Reporte de impacto fitosanitario post-intervención & TK01 & Formulario de reporte post-tratamiento & Implementación de confirmación de control o persistencia de plaga. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Registro de eficacia fitosanitaria & Implementación de almacenamiento de resultado positivo o negativo del tratamiento. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Resumen de impacto clínico & Implementación de visualización de estado posterior al periodo de gracia. & 1.0 & Asignado & To-Do \\ \hline

% US42
US42 & Cierre formal del servicio y evaluación de calidad & TK01 & Formulario de cierre de servicio & Implementación de vista para confirmar la finalización de la intervención técnica. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Calificación de especialista & Implementación de componente de evaluación cualitativa del Asesor Técnico mediante puntuación y comentario. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Visualización de reputación actualizada & Implementación de actualización del puntaje y estado reputacional del especialista en el perfil público. & 1.0 & Asignado & To-Do \\ \hline

% US45
US45 & Registro de disposición de recontratación & TK01 & Selector de preferencia de recontratación & Implementación de option favorable o desfavorable sobre futuras colaboraciones. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Historial privado de especialistas & Implementación de sección privada con preferencias registradas para futuras búsquedas. & 1.0 & Asignado & To-Do \\ \hline

% US46
US46 & Publicación de caso de éxito profesional & TK01 & Botón de publicación de caso exitoso & Implementación de acción para agregar intervenciones validadas al portafolio público. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Mensaje de restricción de publicación & Implementación de alerta para intervenciones con evaluación desfavorable. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Sección pública de casos de éxito & Implementación de galería de intervenciones destacadas dentro del perfil del especialista. & 1.0 & Asignado & To-Do \\ \hline

% US32
US32 & Emisión de reporte por inconducta profesional & TK01 & Formulario de denuncia & Implementación de formulario para registrar infracción ética o inasistencia. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Validación visual de campos obligatorios & Implementación de mensajes de error para categoría y sustento incompleto. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Mensaje de reporte enviado & Implementación de popup de confirmación de denuncia registrada. & 1.0 & Asignado & To-Do \\ \hline

% US33
US33 & Evaluación y penalización autónoma & TK01 & Indicador de strikes acumulados & Implementación de visualización de cantidad de penalizaciones del usuario. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Estado disciplinario del perfil & Implementación de badge de estado del usuario dentro del marketplace. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Alerta de límite de penalizaciones & Implementación de mensaje preventivo por acumulación de strikes. & 1.0 & Asignado & To-Do \\ \hline

% US34
US34 & Suspensión temporal preventiva & TK01 & Pantalla de suspensión temporal & Implementación de vista de acceso restringido por sanción preventiva. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Mensaje de suspensión preventiva & Implementación de notificación con motivo y duración de sanción. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Deshabilitación de acciones del marketplace & Implementación de bloqueo visual de botones y funcionalidades restringidas. & 1.0 & Asignado & To-Do \\ \hline

% US35
US35 & Expulsión definitiva de usuarios reincidentes & TK01 & Pantalla de expulsión definitiva & Implementación de vista de bloqueo permanente de acceso. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Ocultamiento de perfil sancionado & Implementación de invisibilización de perfil dentro de búsquedas y marketplace. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Mensaje de revocación permanente & Implementación de notificación de expulsión definitiva del ecosistema. & 1.0 & Asignado & To-Do \\ \hline

% US10
US10 & Gestión de estado de disponibilidad & TK01 & Selector de disponibilidad operativa & Implementación de interruptor visual para activar o pausar recepción de solicitudes. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Estado visible de disponibilidad & Implementación de badge de estado operativo mostrado en el perfil profesional. & 1.0 & Asignado & To-Do \\ \hline

% US09
US09 & Publicación de perfil profesional & TK01 & Formulario de perfil profesional & Implementación de vista para registrar experiencia y datos de contacto. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK02 & Ubicación geográfica del especialista & Implementación de selección y visualización de zona operativa mediante mapa interactivo. & 1.0 & Asignado & To-Do \\ \cline{3-8}
& & TK03 & Visualización pública del portafolio & Implementación de perfil público mostrado en terna de especialistas. & 1.0 & Asignado & To-Do \\ \hline

\end{longtable}

#### Deployment Evidence for Sprint Review

&nbsp;

#### Deployment Evidence for Sprint Review

Durante la tercera iteración, hubieron avances en el Web Service, Web Application y Website. Para garantizar la centralización, trazabilidad y correcta auditoría del código fuente, todas las contribuciones técnicas de este incremento fueron registradas e integradas.

A continuación, se presenta la matriz de control de versiones, la cual detalla el historial cronológico de commits realizados en el repositorio del proyecto.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 00d8620 | feat(assets): enhance general icons. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 5cfe813 | feat(assets): add effects sound for cards and about section. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | cc05465 | feat(assets): add angel teacher for learning of the best. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 9e845db | feat(assets): add ico for viora website. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 1cb4579 | feat(assets): add assets from pricing section. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 14d03f0 | feat(assets): enhance icons for feature section. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | f612bd8 | Merge pull request #15 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/refactor/about-us-layout | Refactor/about us layout | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 07e2581 | feat(about): add ambient sound functionality for about us section. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | fab3f5b | feat(about): enhance team members panel with improved images and interactive carousel. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 09b90bb | feat(assets) add images of members for about us section. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 28c39ae | Merge pull request #14 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/segment-summary | feat(segment-summary): add segment summary section with drag and soun | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 289e7c4 | feat(segment-summary): add segment summary section with drag and sound effects. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 1cbfb9b | Merge pull request #13 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/cta-section | feat(cta): add cta section component as contact replacement. | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 8ce5c31 | feat(cta): add cta section component as contact replacement. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 1424e09 | Merge pull request #12 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/chore/remove-contact-section | Chore/remove contact section | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 6a5adb1 | chore(contact): remove contact section component. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 15549e8 | chore(routes): remove contact anchor and dead references. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | a3fb604 | feat(weather-summary): update data for fake api. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | cd53d57 | feat(weather-summay): update data for fake api. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 4fbe831 | feat(weather-summary): add assets for background image and logo. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | e22b9aa | feat(weather-summary): update entity, assembler and card. | | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 14b8906 | merge pull request #24 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/release/1.0.0 | Release/1.0.0 | 22/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 0c4f4c2 | Merge pull request #22 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/chore/code-cleanup | chore(cleanup): remove unused imports, dead code and leftover comments. | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 9e82d52 | chore(cleanup): remove unused imports, dead code and leftover comments. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 7de0a0a | Merge pull request #21 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/ui-general-animations | feat(ui) update ui using the new behavior elements and styles. | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | dd6a3fc | feat(ui) update ui using the new behavior elements and styles. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | cdaf5c3 | Merge pull request #20 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/add-new-i18n | Feature/add new i18n | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 543afb4 | feat(effects) update main and sound. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 36af66b | feat(i18n) add i18n for internationalization. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 4de8620 | Merge pull request #19 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/add-new-effects | Feature/add new effects | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 092bf81 | feat(effects) enhance existing effects. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 384a8cd | feat(effects) add section ambient sound effect for hero and about. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 8566a27 | Merge pull request #18 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/improved-behavior-js | Feature/improved behavior js | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | be03e73 | feat(footer) recreate matter js physics with vanilla js. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | f9cccff | feat(hero) add sound ambient for hero section. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 0b289e8 | feat(hero) increase bottom depth. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 044311a | feat(parallax) add smooth scroll behavior to nav links. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 39ef7b2 | feat(parallax) add parallax effect to hero background. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | a021807 | refactor(ui) delete plan trials affiliate js. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | e652765 | feat(role-benefits): add behavior for scrollytelling. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 1b8bcaa | Merge pull request #17 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/improved-styles | Feature/improved styles | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 0db5609 | style(styles): enhance general styles for sections | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 4bdc504 | rafactor(styles): delete styles for landing button. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 30e973c | feat(styles): add magnetic target class and simplify button box shadows. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | eb76a12 | Merge pull request #16 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/enhanced-assets | Feature/enhanced assets | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 00a43f6 | feat(assets): add images of growers and specialist. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 12b47a9 | feat(assets): add video placeholder for about us section. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | e7ac543 | feat(assets): add images for scrollytelling. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | e68ac62 | merge pull request #26 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/iot-devices | feat(iot-devices): add cards, update fake api and change dashboard. | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 0d8f81e | Merge branch 'develop' of https://github.com/upc-pre-1asi0730-2610-10215-ArcadiaDevs/Viora-webapp into feature/iot-devices | # Conflicts:#\t.env.development#\tsrc/shared/presentation/components/layout.vue | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 238d1a8 | feat(iot-devices): add endpoint for iot device summaries. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 424f7a6 | feat: update plot overview widget height and create dashboard-toolbar. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 999aa53 | feat(i18n): update spanish and english files. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 8c3da09 | feat(iot-devices): update layout and dashboard producer. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 8fd7440 | feat(iot-devices): add cards for iot sensor and devices. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 2e89e43 | feat(iot-devices): update store and api for iot devices summary. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | a6bf82d | feat(iot-devices): add assembler for iot device summary. | | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 049d415 | merge pull request #25 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/feature/weather-summary | feat: add background image, update infrastructure and presentation for weather-summary. | 23/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1364d94 | Merge remote-tracking branch 'origin/feature/shared' into feature/shared | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 73cd0e6 | feat(shared): add iunitofwork contract for database commits. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 257cbb4 | feat(shared): add generic ibaserepository with basic async crud operations. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 66a901e | feat(shared): add iauditableentity contract for auditing. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e98c21b | Merge remote-tracking branch 'origin/feature/shared' into feature/shared | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c0d9f92 | feat(shared) add initial auditableentityinterceptor for automatic audit fields tracking. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | dcf545a | feat(shared) add appdbcontext with initial ef core configuration. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f284776 | feat(shared): create abstract record for result. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b109649 | chore: initialize viora platform backend project structure. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2bba1a6 | chore: initial commit. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | b5101e6 | Merge pull request #23 from upc-pre-1asi0730-2610-10215-ArcadiaDevs/chore/code-cleanup | Chore/code cleanup | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 3bed699 | chore(cta) update dashboard links. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 413b230 | style(team) start about text reveal earlier. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | c98b51c | fix(outcomes) scope parallax to media videos. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | c725d17 | chore(i18n) clean hardcoded landing copy. | | 26/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6281c5b | feat(shared) update shared infrastructure namespaces. | | 28/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3324347 | feat(shared) add db context. | | 28/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4e6fb63 | fix(shared) fix import name. | | 28/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9b1bdbd | feat(shared): introduce generic base repository for common ef core crud operations. | | 28/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8b56eda | feat(shared): add unitofwork implementation for ef core transaction management. | | 28/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5d659c8 | feat(shared): add stringextensions. | | 28/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | af9b2f5 | feat(index) add feature product video card markup. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 46c5c8a | feat(i18n) add feature product copy. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 74a9e60 | feat(js) add feature product video interactions. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | fffc030 | feat(js) add feature product video interactions. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | d4c8c29 | feat(css) style feature product video card layout. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 15d23e4 | feat(assets) add product video and carousel media. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | abe3e23 | feat(assets) add video controls and chevron icons. | | 29/05/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4059446 | fix: update routes to shared. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 28934d6 | feat(shared): add english localization strings for error messages. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f59ae20 | feat(shared): add spanish localization strings for error messages. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 07b68da | feat(shared): introduce error messages class for specific error localization. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1e91f35 | feat(shared): add base localization strings to common messages resource file. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 249b31b | feat(shared): introduce common messages class for shared resource localization. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8c60782 | fix(shared): delete unnecessary methods. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7de9df4 | build: add dependencies for documentation, database management and efc. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8b4d3c7 | feat(shared): update using route to entities. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0d97642 | feat(shared): update using route for i-auditable-entity. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | fd0174f | Merge remote-tracking branch 'origin/feature/shared' into feature/shared | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 680da87 | feat(shared): implement unit-of-work with app-db-context. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 129be60 | feat(shared): implement inteface for unit-of-work. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0ed19d0 | feat(shared): implement base-repositoru with ef-core. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | fee49de | feat(shared): update interface for base-repository. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 269e7fc | feat(shared): add extension method to register global exception handler. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 67dab45 | feat(shared): implement custom problem details factory with localization. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6d39a4b | refactor(shared): update namespaces to arcadiadevs.viora in global exception handler. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4f050a0 | feat(shared): implement global exception handling middleware. | | 02/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 93080a8 | Merge pull request #1 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/shared | feat: merge with shared. | 04/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | f3ff8cc | Merge pull request #26 from upc-pre-1asi0730-2610-10215-arcadiadevs/refactor/i18n | refactor(i18n): remove hardcoded text in index.html. | 05/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 837e603 | refactor(i18n): remove hardcoded text in index.html. | | 05/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | f5e40bd | Merge pull request #24 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/about-product-placeholder | Feature/about product placeholder | 05/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7ffa6d0 | Merge branch 'feature/agronomic/create-plot' into develop. | Related to TS08. | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2618b48 | chore: update .gitignore to exclude additional ide and build artifacts. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 32d4a1e | feat(agronomic): add dockerfile, global.json, and initial documentation files. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b6862d8 | feat(agronomic): refactor app-db-context for improved entity configuration. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4591fc8 | feat(agronomic): map plot entities to REST resources. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b1feb69 | feat(agronomic): map create plot resources to commands. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b7497e2 | feat(agronomic): add REST resource for plot responses. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 63d36c2 | feat(agronomic): add validated resource for plot creation. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 30e12d8 | feat(agronomic): implement entity framework plot repository. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 376145f | feat(agronomic): configure plot persistence mapping. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | dc4eb78 | feat(agronomic): add domain command for plot creation. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f08eac5 | feat(agronomic): add validated plot aggregate root. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 97158c7 | feat(agronomic): implement plot creation command service. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 183f095 | feat(agronomic): add plot command service contract. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | a803722 | feat(agronomic): configure in-memory database provider. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ae90a52 | feat(agronomic): remove default weather forecast model. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d5d721a | feat(agronomic): configure agronomic services and database providers. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 11842f3 | feat(agronomic): remove default weather forecast controller. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | af80797 | feat(agronomic): add HTTP request for plot creation. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7a0ec98 | feat(agronomic): align entity framework dependencies and add in-memory provider. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 96eeee6 | feat(agronomic): remove legacy create plot response DTO. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 547b918 | feat(agronomic): remove legacy create plot request DTO. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | fd74efa | feat(agronomic): remove mediator-based plots controller. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e3d3c88 | feat(agronomic): remove legacy plot response mapper. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0f3fa1b | feat(agronomic): remove legacy create plot request mapper. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f70c7fa | feat(agronomic): remove legacy plot entity configuration. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0838c04 | feat(agronomic): update plot repository aggregate reference. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | bb878f5 | feat(agronomic): strengthen polygon coordinate validation. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c9c5db9 | feat(agronomic): remove legacy plot aggregate location. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c3f1fcc | feat(agronomic): remove mediator-based plot command handler. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ef21c5c | feat(agronomic): remove legacy plot creation command. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 014d8cd | feat(agronomic): add plots rest endpoint with dtos and assemblers. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b4831cd | feat(agronomic): add plotrepository ef core implementation and di. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | fba5223 | feat(agronomic): add createplotcommand and handler. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1c7065a | feat(agronomic): add plot aggregate root and iplotrepository interface. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 33e8057 | feat(agronomic): add geopoint and polygoncoordinates value objects. | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 382037e | chore: update gitignore | | 09/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7806814 | Merge branch 'release/0.7.0' | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d592128 | Merge branch 'feature/agronomic/agronomic-statistics' into develop. | Related to TS016 and TS017. | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 213dc60 | chore:  update gitignore. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ae3a5d2 | feat(agronomic): register query services in di container | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e50432e | feat(agronomic): add rest controllers for agronomic statistics endpoints. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f11b977 | feat(agronomic): implement monitoring summary, statistics, and nutrition query services. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 01054ae | feat(agronomic): add query service interfaces for agronomic statistics. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b254a82 | feat(agronomic): add dtos for monitoring summary, statistics, and nutrition. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 714694b | feat(agronomic): add bulk query methods to plot and iotdevice repositories. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8ffd73b | feat(agronomic): add monitoring summary, statistics, and nutrition query records. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e2b1f47 | Merge branch 'release/0.6.0' into main | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 40caa4c | feat(agronomic): implement delete iot device functionality with validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6ae6544 | feat(agronomic): add authenticateduserid value object for user validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4f3cde3 | Merge branch 'feature/agronomic/delete-iot-device' into develop. | Related to TS015. | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e3d0c84 | feat(agronomic): implement delete iot device functionality with validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 559d548 | feat(agronomic): add authenticateduserid value object for user validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | bbdf449 | Merge branch 'release/0.5.0' into main | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | a611e5d | feat(agronomic): add patch endpoint to update iot device metadata. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9bfe33c | feat(agronomic): add updateiotdeviceresource record for patch request body. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5a8bcec | feat(agronomic): add assembler for transforming updateiotdeviceresource to updateiotdevicecommand. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | efea791 | feat(agronomic): add devicename value object for iot device naming validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | a292999 | feat(agronomic): refactor updateiotdevicecommand for improved validation and structure. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 847ce99 | feat(agronomic): update iotdeviceresource mapping to use current utc time. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9247709 | feat(agronomic): enhance iotdvicedommandservice with validation and update logic. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6a291fc | feat(agronomic): refactor iotdevice class for improved constructor and update method. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3fb2054 | feat(agronomic): update handle method signature for updateiotdevicecommand in iiotdevicecommandservice. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b3e3f29 | Merge branch 'feature/agronomic/update-iot-device' into develop. | Related to TS014. | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 36aa9f6 | feat(agronomic): add patch endpoint to update iot device metadata. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c86b1ed | feat(agronomic): add updateiotdeviceresource record for patch request body. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e4d36ee | feat(agronomic): add assembler for transforming updateiotdeviceresource to updateiotdevicecommand. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 02a310c | feat(agronomic): add devicename value object for iot device naming validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b90e0c6 | feat(agronomic): refactor updateiotdevicecommand for improved validation and structure. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d1d86c0 | feat(agronomic): update iotdeviceresource mapping to use current utc time. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3e295da | feat(agronomic): enhance iotdvicedommandservice with validation and update logic. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1407b29 | feat(agronomic): refactor iotdevice class for improved constructor and update method. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | a2eb271 | feat(agronomic): update handle method signature for updateiotdevicecommand in iiotdevicecommandservice. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 450c59e | Merge branch 'release/0.4.0' into main | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c4aaa01 | feat(agronomic): add post endpoint for creating iot devices in plotiotdevicescontroller. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | eca198f | feat(agronomic): implement iotdevicecommandservice for iot device operations. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0a28d15 | feat(agronomic): define application command service interface for iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 916bd70 | feat(agronomic): add createiotdeviceresource for creating new iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | aa19312 | feat(agronomic): add assembler for converting createiotdeviceresource to createiotdevicecommand. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d9998e0 | feat(agronomic): add commands for deleting and updating iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7db0d3a | feat(agronomic): add createiotdevicecommand for registering new iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2ca4c48 | Merge branch 'feature/agronomic/create-iot-device' into develop. | Reladed to TS013. | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f5e487f | feat(agronomic): add post endpoint for creating iot devices in plotiotdevicescontroller. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d6304fe | feat(agronomic): implement iotdevicecommandservice for iot device operations. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4e169f8 | feat(agronomic): define application command service interface for iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | eaaef63 | feat(agronomic): add createiotdeviceresource for creating new iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 23c5a62 | feat(agronomic): add assembler for converting createiotdeviceresource to createiotdevicecommand. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c8d0fe2 | feat(agronomic): add commands for deleting and updating iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6a90fb6 | feat(agronomic): add createiotdevicecommand for registering new iot devices. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7519e0d | Merge branch 'release/0.3.0' into main | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3a92b02 | Merge branch 'feature/agronomic/list-iot-devices' into develop. | Related to TS012. | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6ca0602 | feat(agronomic): add iotdevicerepository to service container. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c7969db | feat(agronomic): refactor iotdevicequeryservice to define interface for device queries. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d36c4a2 | feat(agronomic): update namespace for plotiotdevicesController and add iotdevice tag. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3b0e3d1 | feat(agronomic): delete iotdevicecommandservice. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9097816 | feat(agronomic): refactor iotdevice constructor for improved validation. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4877664 | feat(agronomic): enhance iotdevice model with devicename and createdat properties. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b9096da | feat(agronomic): add iotdeviceresource dto for iot device response. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 78a52f4 | feat(agronomic): add iotdeviceresourcefromentityassembler for mapping iotdevice aggregates to rest response dtos. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 29008b1 | feat(agronomic): add plotiotdevicescontroller for managing iot device endpoints by plot. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8724a67 | feat(agronomic): implement iotdevicequeryservice for querying devices by plot ownership. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b541392 | feat(agronomic): add getiotdevicesbyplotidquery for querying iot devices by plot id. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 15abf4b | feat(agronomic): add iotdeviceconfiguration for entity mapping and indexing. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | de57184 | feat(agronomic): implement iotdeviceRepository for managing iotdevice aggregates. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 12f415d | feat(agronomic): add modelbuilderextensions to apply agronomic entity configurations. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5eb8b05 | feat(agronomic): add iotdevice aggregate root with properties and constructor. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b0a5f24 | feat(agronomic): add iiotdevicerepository interface for iotdevice aggregate. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4a117e3 | feat(agronomic): add iotdeviceId and iotdevicestatus value objects. | | 10/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6637898 | Merge branch 'release/0.9.0' | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 82f737b | Merge branch 'feature/agronomic/agronomic-statistics' into develop. | Related to TS016 and TS017. | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5806886 | ci(deployment): add agromonitoring api key configuration for development environment. no public key is here. trust me. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | cfabae4 | feat(agronomic): integrate agromonitoring polygon registration in plot creation. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | eb47fad | feat(agronomic): implement monitoring summary, statistics, and nutrition query services. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f897e54 | feat(agronomic): add agromonitoring api client integration. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 08b00eb | feat(agronomic): register query services in di container. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0ff68c6 | Merge branch 'release/0.8.0' into main | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1bff838 | Merge branch 'feature/agronomic/current-monitoring-summary' into develop. | Related to TS016. | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d0b44d1 | feat(agronomic): configure postgresql environment variables for deployment. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 24dd909 | feat(agronomic): add yield projection value object for yield data representation. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8710c0d | feat(agronomic): add weather-snapshot value object for weather data representation. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9b530da | feat(agronomic): add user-id value object for user identification. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 92cbfbe | feat(agronomic): add assembler for converting monitoring-summary-dto to monitoring-summary-resource. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f1e99bf | feat(agronomic): add monitoring-summary-resource for kpi metrics representation. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1cda1b5 | feat(agronomic): add monitoring-summary-id value object for unique identification. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f5fde05 | feat(agronomic): add monitoring-summary aggregate for user agronomic data. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1b625c0 | feat(agronomic): add mitigation recommendation value object for climate risk management. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d7b821f | feat(agronomic): add last-synchronization-at value object for tracking synchronization timestamps. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 456de8b | feat(agronomic): add general-health-status enum and extension methods for monitoring summary. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 78d8ced | feat(agronomic): add climate risk evaluator service for mitigation recommendations. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b329c73 | feat(agronomic): add average-ndvi value object for ndvi calculations. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4a1211d | feat(agronomic): add accumulated-chill-hours value object for chill hour calculations. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ce0c3b4 | feat(agronomic): enhance current monitoring summary with simulated metrics and climate risk evaluation. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f27a61f | feat(agronomic): extend monitoring-summary-dto. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6626d9b | feat(agronomic): update current monitoring summary endpoint to use monitoring-summaryResource. | | 11/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9c6808a | feat(surveillance): add interface for external agronomic and implementation. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e8cbb65 | feature(surveillance): update pest sighting evaluated event and event handler. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | cc65b73 | feat(surveillance): add model builder for surveillance. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 44f2d32 | feat(surveillance): add assemblers for create pest sighting, pest sighting report and symptom resource. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 32c47c5 | feat(surveillance): update controllers and action result assembler | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 29d2edd | feat(surveillance): add create pest sighting report, pest sigthing report and sympton resources. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c78d411 | feat(surveillance): add pest sighting and symptom dictionary controllers. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 74bc302 | feat(surveillance): add alert, pest sighting, and symptom dictionary item repositories por efc. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 138e585 | feat(surveillance): add external agronomic service. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2d1c895 | feat(surveillance): add threat inference service with common threats. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5ec3878 | feat(surveillance): add repositories for alert, pest sigthing and sympton dictionary item. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | cafcf17 | feat(surveillance): add get all symptoms query. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c5f6ea4 | feat(surveillance): add pest sighting event and event handler. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 38ccca6 | feat(surveillance): add seed symptoms command and entity. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8fc87e5 | feat(surveillance): add alert aggregate. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d6cd4e2 | feat(surveillance): add symptom query service. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9789519 | feat(surveillance): add command service for alert, pest sighting and symptom. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 56dc9bc | feat(surveillance): add alert, pest sighting and symptom command services. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ceaf195 | feat(surveillance): create commands for create alert and create pest sighting report. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 129cbd1 | feat(surveillance): add aggregate for pest sighting report. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5fe72f1 | feat(surveillance): add symptom, symptoms and symptom types value objects. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 20d71db | feat(surveillance): add report status, risk zone, and threat type enums. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1f63faf | feat(surveillance): add value object for pest sighting report, plot and reporter user ids. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 950f935 | feat(surveillance): add alert id value object and alert sevirity, alert source, and alert status enums. | | 16/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | f2a4c68 | Merge branch 'feature/agronomic/plots' into develop | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 204647b | feat(agronomic): update db context and program. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | fbca440 | feat(agronomic): add external agronomic service. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | eed3512 | feat(agronomic): add deletion policy and query. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 9408b30 | feat(agronomic): update plot aggregate. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7b715b5 | feat(agronomic): update plot repository and assemblers. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8e89725 | feat(agronomic): update agronomic statistics, monitoring summaries and plots controllers. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e0cd0a9 | feat(agronomic): separate resources and delete dtos. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 51d0707 | feat(surveillance): add agromonitoring service, response, and integration. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 46e2e6c | feat(agronomic): separata queries. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | db9c4e9 | feat(agronomic): add command services and query service for monitoring summary. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | b1b8ce2 | feat(surveillance): separata query services. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d770094 | Merge branch 'feature/agronomic/chill-requirement' into develop | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d2fe104 | feat(surveillance): add command service, configuration and documentation for controller. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3ae3113 | feat(a) | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 091a967 | feat(agronomic): add chill metric model enum and chill requirement source enum. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8cb0e58 | feat(agronomic): add chill requirement resource and assembler. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6514b79 | feat(agronomic): add chille requirement policy, resolver and chill portions. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6d5d538 | Merge pull request #5 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/surveillance/get-recent-alerts | Feature/surveillance/get recent alerts | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1b95e95 | Merge branch 'feature/surveillance/get-recent-alerts' into develop | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 28d5757 | feat(surveillance): update al | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 61089ed | feat(surveillance): update external agronomic service with resources. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 36fe52b | feat(surveillance): update query service, repository and interfaces. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 52b97af | feat(surveillance): add query service and update repository for alert. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2c19b72 | Merge pull request #4 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/surveillance/review-alert | Feature/surveillance/review alert | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2df4656 | Merge branch 'feature/surveillance/review-alert' into develop | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0ea14fa | feat(surveillance): update alert and reviewed command. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5a66971 | feat(surveillance): create command service and exception for alert. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 06aeef4 | Merge pull request #3 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/surveillance/get-alert-detail | Feature/surveillance/get alert detail | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1935f17 | Merge branch 'feature/surveillance/get-alert-detail' into develop | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8f0d4d2 | feat(surveillance): add alert configuration and modify resource. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0936105 | feat(surveillance): create controller and resources for alert. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4600e2b | feat(surveillance): create command and event handler for alert. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 0bd2955 | feat(surveillance): create query service and get alert by id. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e54ccd0 | feat(surveillance): update alert and create alert timeline record. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 304b7bb | feat(agronomic): create recommend command. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | db511c1 | feat(agronomic): create dynamic nutrition command. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5af825f | Merge pull request #2 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/surveillance/create-pest-sighting | Feature/surveillance/create pest sighting | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6189996 | Merge branch 'feature/surveillance/create-pest-sighting' into develop | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 584c0a3 | feat(surveillance): add alert, pest sighting report and symptom dictionary configurations. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | dc232fa | feat(surveillance): update documentation and attributes. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 3a70472 | feat(surveillance): update model and add namespaces. | | 17/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 2e3eea6 | Merge branch 'feature/agronomic/statistics' into develop | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 19dfdb7 | feat(agronomic): update resource and controller for agronomic statistics. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 92641f2 | feat(agronomic): update progam for statistics. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | e5fad8a | feat(agronomic): update query service, repository, resource for agronomic statistics seroes. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 87576ab | feat(agornomic): add repository and controller. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 471b1a2 | feat(agronomic): add resources, adapters and assemblers. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 30e44fd | feat(agronomic): add service for agronomic statististics. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ca49afd | feat(agronomic): add agronomic statistics aggregate. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 58741c5 | feat(agronomic): add query service and queries for agronomic statistics. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4a3cffe | feat(agronomic): add value objects for data range, weather history, weather reading, chill model and data source metadata. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | c425d0a | feat(agronomic): add services for ingestion and interface for weather data. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | eff7d71 | feat(agronomic): add query service for agronomis statistics and agronomic statistics series. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d82ef70 | feat(agronomic): add time range and trend direction enums. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 82bc41b | Merge branch 'release/1.1.0' | # Conflicts:#\tpackage.json#\tsrc/surveillance/application/surveillance.store.js | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | e1345b8 | Merge branch 'feature/agronomic/ui-foundation' into develop. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | f37b2ec | feat(agronomic): align dashboard overview header and card layout. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 5a08c4c | feat(agronomic): map weather summary visuals from the condition. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 3566a22 | feat(shared): redesign the dashboard toolbar controls. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 7c0721d | feat(shared): add coming soon view and workspace placeholder routes. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | c22b4ac | feat(shared): add coming soon and dashboard overview translations. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 2e50e69 | feat(shared): remove the in-memory mock resources. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 8c1461d | feat(surveillance): route alerts to the mock api target. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | dca94a8 | feat(agronomic): consume platform endpoints directly via the api gateway. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | e30a2e5 | feat(shared): serve mock data through json-server with platform routes. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | b9c290b | feat(agronomic): align local platform contracts. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 31225ef | feat(agronomic): add dashboard ui foundation. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 4a8307c | Merge pull request #28 from upc-pre-1asi0730-2610-10215-arcadiadevs/release/2.0.0 | Release/2.0.0 | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | c7689f7 | Merge pull request #27 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/add-video-about-the-product | feat(video) add about the product section and team video playback con | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 76c7545 | feat(video) add about the product section and team video playback controls. | | 18/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | a5ff088 | Merge branch 'feature/agronomic/plot-registration-contract-fix' into develop. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 71db886 | feat(agronomic): enhance create-plotCommand with additional fields and area calculation. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8384b58 | Merge branch 'release/0.21.0' | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 238ca17 | Merge branch 'feature/hot-fix-to-database' into develop. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 677c218 | feat(database): update default schema handling and connection string for flexibility. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4edaecd | Merge branch 'release/0.20.0' | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 305c69d | feat(database): set default schema to 'public' and update connection string for postgre sql. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 162d83e | Merge branch 'release/0.19.0' | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 4a3ec16 | Merge branch 'feature/correct-environments' into develop | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 8540281 | fix: update environment variables. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 7540a2b | Merge branch 'release/0.18.0' | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | a9b2e70 | Merge branch 'feature/setup-deploy' into develop | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 6a7d290 | feat(database): update app setting and configurations. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | d0f61bf | Merge branch 'release/0.17.0' into main | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | dbe97ff | Merge branch 'feature/agronomic/dynamic-health' into develop | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 27c88c4 | feat(agronomic): update db context and program for dynamic nutrition. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 89edd5d | feat(agronomic): add controller, resources and assembler for dynamic nutrition. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 79890bb | feat(agronomic): add repository for dynamic nutrition. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 1eb2ad4 | feat(agronomic): add aggregate and value objects for dynamic nutrition. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | dcb1c95 | feat(agronomic): add query services and command for dynamic nutrition. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 5a34c4d | feat(agronomic): add dynamic nutrition event handler and events. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | 96a6062 | feat(agronomic): add command services for dynamic nutrition. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-platform | | ed32cde | feat(agronomic: add climate risk level, dose confirmation, nutrition input status, and nutrition plan status enums. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | b72921d | Merge branch 'release/1.3.0' | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 490b208 | Merge branch 'feature/agronomic/my-plots-management' into develop. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | a119191 | feat(agronomic): add my plots management flow. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 2d3f473 | Merge branch 'release/1.2.0' | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | d150df5 | Merge branch 'feature/agronomic/dashboard-weather-plot-overview' into develop. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-webapp | | 77b4d06 | feat(agronomic): add weather and plot overview views. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | a9aeaf6 | Merge pull request #32 from upc-pre-1asi0730-2610-10215-arcadiadevs/release/2.0.2 | release/2.0.2 | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 4c28e20 | Merge pull request #31 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/image-team | fix(presentationslides): correct images. | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 1186fee | fix(presentationslides): correct images. | | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | be645c4 | Merge pull request #30 from upc-pre-1asi0730-2610-10215-arcadiadevs/release/2.0.1 | Release/2.0.1 | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 2383213 | Merge pull request #29 from upc-pre-1asi0730-2610-10215-arcadiadevs/feature/members | fix(members): change team members panel. | 19/06/2026 |
| upc-pre-1asi0730-2610-10215-ArcadiaDevs/viora-website | | 0949da0 | fix(members): change team members panel. | | 19/06/2026 |

#### Execution Evidence for Sprint Review

&nbsp;

#### Services Documentation Evidence for Sprint Review

&nbsp;

#### Software Deployment Evidence for Sprint Review

&nbsp;

#### Team Collaboration Insights for Sprint Review

&nbsp;

Durante el Sprint 3, la dinámica de colaboración del equipo fue importante para que cada repositorio se esté desarrollando. El equipo mantuvo un flujo constante de contribuciones.

Como se evidencia en los analíticos de GitHub, la participación activa de todos los miembros permitió avanzar las tareas más importantes del sprint, destacando una distribución de tareas equilibrada entre la gestión de parcelas, los servicios para los bounded context de agronomic y surveillance, y las correciones de la Landing Page.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-3/website-commits.png}
\caption{Estadísticas de contribución (Top Committers) del Website - Sprint 3.}
\caption*{\textit{Nota.} La gráfica muestra el incremento en la frecuencia de commits realizados por el equipo durante el desarrollo del núcleo operativo de la plataforma. Elaboración propia a través de GitHub Insights.}
\end{figure}

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-3/webapp-commits.png}
\caption{Estadísticas de contribución (Top Committers) de la Web Application - Sprint 3.}
\caption*{\textit{Nota.} La gráfica muestra el incremento en la frecuencia de commits realizados por el equipo durante el desarrollo del núcleo operativo de la plataforma. Elaboración propia a través de GitHub Insights.}
\end{figure}

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-3/webservice-commits.png}
\caption{Estadísticas de contribución (Top Committers) del Web Service - Sprint 3.}
\caption*{\textit{Nota.} La gráfica muestra el incremento en la frecuencia de commits realizados por el equipo durante el desarrollo del núcleo operativo de la plataforma. Elaboración propia a través de GitHub Insights.}
\end{figure}

ewpage