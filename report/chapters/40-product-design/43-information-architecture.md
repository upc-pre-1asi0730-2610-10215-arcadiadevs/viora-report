## Information Architecture

Esta arquitectura de información es una estructura de alto nivel, modular y centrada en el usuario para la plataforma digital Viora, diseñada para facilitar el monitoreo agrícola y la conexión entre productores y especialistas agrónomos. Se organiza lógicamente en pilares funcionales que cubren desde el descubrimiento del servicio (Landing Page) y el acceso a la plataforma (Autenticación y Registro de roles), hasta la gestión operativa en campo (Dashboard del Productor, Dashboard del Especialista) y la ejecución de la asistencia técnica (Alertas Tempranas y Panel de Intervención). La arquitectura enfatiza tanto la simplicidad y segmentación de datos como la fluidez operativa para la toma de decisiones informada.

La arquitectura de Viora es sólida, clara y orientada a la acción. Su estructura modular permite una navegación intuitiva que guía al usuario a través de procesos críticos de forma transparente (como la trazabilidad de parcelas y el registro de intervenciones) y eficiente. Más allá de la simple visualización de información del entorno agrícola, integra una red de colaboración y prospección territorial, convirtiéndola en un ecosistema que no solo reporta el estado de los cultivos (Índice de Vigor, NDVI), sino que promueve activamente intervenciones fitosanitarias oportunas y protección compartida.

### Labeling Systems

El sistema de etiquetado de Viora se basa en la claridad semántica y la adaptación al vocabulario del sector agroindustrial, buscando reducir la carga cognitiva de nuestros perfiles clave. Se han validado términos para que resulten familiares, precisos y orientados a la operatividad.

- **Navigation Labels**: Elementos que guían los menús a través de la interfaz. En la Landing Page usamos "Problem & Solution", "Segment Benefits" y "Access Model". En la Web App integramos módulos directos como "Dashboard", "Mis Parcelas", "Trazabilidad", "Alertas Epidemiológicas" y "Directorio de Especialistas".
- **Action Labels (Botones y CTAs)**: Orientados a la conversión y productividad. Incluyen "Start Free Trial", "Log In", "Registrar Nueva Parcela", "Contactar Especialista" y "Confirmar Aplicación en Campo".
- **System & Context Labels (Estados e Indicadores)**: Etiquetas que reportan situaciones en tiempo real, vitales para decisiones de riesgo, tales como "Severidad Alta/Media", "Estado de Vigor (NDVI)", "Riesgo Fitosanitario" y "Disponible / En ruta" (para el estado del especialista).
- **Identity Labels**: Clasificación de los usuarios según su acceso, denominados estrictamente "Productor" (Producer) y "Especialista Agrónomo" (Agro Specialist), para configurar las reglas de negocio específicas de cada dashboard.

### Organization Systems

La organización de la información en Viora intercala esquemas lógicos diseñados para estructurar y presentar los datos evitando la confusión técnica.

- **Estructura Jerárquica y Modular:** El ecosistema de la Web App está orientado a un esquema Hub & Spoke adaptado, donde los Dashboards fungen como ejes principales de información general que derivan hacia flujos de trabajo específicos (como el Panel de Intervención).

- **Ontología:** Representación en red sobre las interconexiones cognitivas entre las entidades fundamentales de nuestro dominio. Las siguientes visualizaciones expresan cómo los conceptos interactúan mutuamente en la experiencia de Viora.

\begin{figure}[H]
\caption{Ontología de la Landing Page.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/information-architecture/landingpage-ontology.png}
\caption*{\textit{Nota.} Relaciones conceptuales entre los elementos clave de la oferta de valor al público. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Ontología de la Web App.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/information-architecture/app-web-ontology.png}
\caption*{\textit{Nota.} Interacciones sistémicas en la plataforma operativa. Elaboración propia.}
\end{figure}

- **Taxonomía y Sitemaps:** En las siguientes figuras se muestra la manera en la que clasificamos el contenido y cómo este se distribuye a lo largo de las distintas pantallas y módulos, tanto a nivel corporativo (Landing Page) como de la aplicación (Web App).

\begin{figure}[H]
\caption{Taxonomía de la Landing Page de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/information-architecture/landingpage-taxonomy.png}
\caption*{\textit{Nota.} Clasificación de contenidos informativos públicos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Sitemap de la Landing Page de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/information-architecture/landingpage-taxonomy-sitemap.png}
\caption*{\textit{Nota.} Estructura de navegación jerárquica del sitio público. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Taxonomía de la Web App de Viora - Parte 1.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/information-architecture/app-web-taxonomy-1.png}
\caption*{\textit{Nota.} Esquema de contenidos para la aplicación privada. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Taxonomía de la Web App de Viora - Parte 2.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/information-architecture/app-web-taxonomy-2.png}
\caption*{\textit{Nota.} Continuación del esquema de contenidos. Elaboración propia.}
\end{figure}

- **Visitor Choreography:** Para asegurar una conversión eficiente, modelamos los flujos de recorrido (choreography) de los visitantes durante su paso por la Landing Page, asegurando la integración fluida con los embudos de registro.

\begin{figure}[H]
\caption{Leyenda de la Visitor Choreography.}
\centering
\includegraphics[width=0.4\textwidth]{report/assets/information-architecture/landing-page-visitor-choreograpy-legend.png}
\caption*{\textit{Nota.} Simbología utilizada para las interacciones. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Visitor Choreography de la Landing Page.}
\centering
\includegraphics[width=0.9\textwidth]{report/assets/information-architecture/landing-page-visitor-choreograpy.png}
\caption*{\textit{Nota.} Flujo de embudo de conversión y decisión del usuario visitante en Viora. Elaboración propia.}
\end{figure}

### SEO Tags and Meta Tags

Para la arquitectura informacional de Viora, los metadatos se organizan con una lógica dual. La Landing Page concentra la visibilidad orgánica corporativa y funciona como una URL indexable que articula sus secciones internas de la taxonomía. En la Web Application, la prioridad es operativa y de privacidad de datos agrícolas; por ello, la gran mayoría de sus flujos (onboarding, dashboards, paneles de trazabilidad y configuración) deben permanecer fuera del índice público con una intención estrictamente transaccional (`noindex, nofollow`).

Sin embargo, a partir de la taxonomía establecida, existe una excepción clave para el crecimiento orgánico (Growth Loop): el **Portafolio Público del Especialista**. Estas páginas son de acceso público para indexar la oferta de asesores técnicos en motores de búsqueda y atraer tráfico cualificado.

| Capa | Página o flujo | Title | Meta Description | Meta Keywords | Robots |
| :--- | :--- | :--- | :--- | :--- | :--- |
| Landing Page | Homepage | Viora | Plataforma digital para monitoreo del olivo, alerta temprana y conexión con especialistas agrícolas. | viora, olive monitoring, phytosanitary alert, precision agriculture, agricultural specialists | index, follow |
| Web App | Portafolio de Especialista | Viora | Perfil profesional y casos de éxito del especialista agrícola en el manejo de olivos y control fitosanitario. | agricultural specialist, agronomist advisor, phytosanitary control, professional portfolio, viora quote | index, follow |
| Web App | Log In & Recuperar Cuenta | Viora | Accede de forma segura al panel privado de Viora según tu perfil de usuario. | viora, login, secure access, private dashboard, producer, specialist, password recovery | noindex, nofollow |
| Web App | Registro de Productor | Viora | Crea tu cuenta y accede a herramientas de monitoreo (NDVI), trazabilidad y alertas fenológicas en Viora. | producer registration, olive producer, satellite monitoring, traceability, weather alerts | noindex, nofollow |
| Web App | Registro de Especialista | Viora | Crea tu cuenta como Especialista, habilita tu portafolio público y cotiza servicios en Viora. | specialist registration, agricultural specialist, agricultural marketplace, agronomist profile, quote | noindex, nofollow |
| Web App | Centro de Configuraciones | Viora | Gestiona tu perfil, preferencias de notificaciones push, suscripción y programa de referidos. | account settings, push notifications, agricultural referrals, payment management, user profile | noindex, nofollow |
| Web App | Dashboard del Productor | Viora | Consulta el estado de tu parcela, vigor vegetal y alertas de riesgo fenológico desde tu panel. | producer dashboard, ndvi, plant vigor, phenological risk, zonal weather summary | noindex, nofollow |
| Web App | Dashboard del Especialista | Viora | Gestiona solicitudes, radar de prospección y alertas comunitarias desde tu panel profesional. | specialist dashboard, prospecting radar, zonal opportunities, community alerts | noindex, nofollow |
| Web App | Tracker & Trazabilidad | Viora | Gestiona el historial de intervenciones, registro de podas, fertilizaciones y control de gastos. | agricultural traceability, plots history, field log, expense control, pruning | noindex, nofollow |
| Web App | Panel de Intervención | Viora | Revisa alertas activas, evaluación física, receta digital y confirmación de aplicación en campo. | phytosanitary intervention, digital prescription, plot evaluation, technical application, traceability | noindex, nofollow |

### Navigation Systems

El sistema de navegación garantiza la orientación constante del usuario y la finalización exitosa de sus tareas operativas a través de tres niveles:

Navegación Global: Se centraliza en una Navbar para la Landing Page y una Sidebar para la Web App. Estos elementos permiten el acceso permanente a los módulos principales desde cualquier nivel de la plataforma.

Navegación Local y Contextual: Se emplean Tabs para organizar métricas específicas en una sola vista. Además, se integran enlaces contextuales que guían al usuario a través de la Choreography de conversión y registro.

Sistemas de Orientación: Se utilizan Breadcrumbs y botones de retroceso claros. Esto permite que el usuario identifique su ubicación jerárquica y pueda retornar a estados anteriores sin perder el progreso de su trabajo

### Searching Systems

Para resolver las necesidades de localización de expertos y detección de riesgos detectadas en el modelo de negocio, Viora implementa mecanismos de búsqueda que transforman los datos del entorno en conexiones operativas:

Specialist Selection System: Este motor permite al productor obtener una terna de candidatos idóneos mediante el cruce de variables de cercanía geográfica y el Availability status de los asesores. Los resultados se priorizan según la afinidad técnica y las credenciales registradas en el Technical portfolio, facilitando una respuesta rápida ante emergencias.

Zonal Prospecting Radar: Es una herramienta de búsqueda visual y territorial diseñada para que los especialistas localicen Epidemiological alerts y unidades productivas con anomalías de vigor vegetal (NDVI). Este sistema permite aplicar filtros avanzados por nivel de Severity (High/Medium) y tipo de patógeno probable, optimizando la identificación de oportunidades de intervención.

Traceability & History Queries: La plataforma permite realizar búsquedas precisas dentro del historial acumulado de la cuenta. Los usuarios pueden filtrar registros de su Plot traceability y consultar Application logs previos para auditar la ejecución de recetas agrícolas, el control de gastos y la efectividad de campañas pasadas.

\newpage
