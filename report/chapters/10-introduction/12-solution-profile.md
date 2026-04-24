## Solution Profile

### Antecedentes y problemática

**Antecedentes productivos y relevancia**. El olivo es un cultivo estratégico para el sur del Perú por su alta concentración territorial y su impacto en cadenas de valor (aceituna de mesa y aceite). En Tacna se reporta una fuerte concentración del olivar nacional (Andina, 2024), lo que incrementa la vulnerabilidad sistémica: un shock climático o sanitario local puede afectar disponibilidad, precios y rentabilidad a escala regional y nacional. En 2023 se reportaron 52,000 toneladas en Tacna, con una distribución aproximada de 60 % para aceituna de mesa y el restante para aceite (Andina, 2024). Esta dualidad de destino exige gestionar no solo volumen, sino también variables que inciden en desempeño productivo y valor comercial.

La volatilidad reciente refuerza la necesidad de gestión basada en datos. En septiembre de 2025, el sector agropecuario creció 12.1 % (subsector agrícola 18.4 %) a nivel nacional, y se reportó un incremento de 18,615 % en aceituna para Tacna, explicado como recuperación respecto a 2024 afectado por altas temperaturas asociadas a El Niño (MIDAGRI, 2025).

\begin{table}[H]
\caption{Variación del Valor de la Producción Agropecuaria según subsectores mes de setiembre 2019 - 2025 (\%)}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/valor_produccion_midagri.png}
\caption\*{\textit{Nota.} En el mes de setiembre el sector agropecuario registró un crecimiento de 12,1 \% comparado con similar mes del 2024. Tomado de MIDAGRI, 2025.}
\end{table}

**Influencia del clima, ENOS y horas de frío en producción, calidad y vecería** En el caso de Tacna, se ha documentado que la sostenibilidad del olivo depende críticamente del clima, destacando la temperatura como variable clave; se reportan rangos de tolerancia y óptimos (Pino y Ascencios, 2022). La evidencia local reciente asocia olas de calor con fallas fisiológicas: en Yarada Los Palos se reportó merma “hasta 90 %” y proyecciones de cosecha equivalente a 10 % a 20 % del año previo, vinculadas a ausencia de “golpe de frío” nocturno necesario para el cuajado (Andina, 2024). Además, se registraron señales de impacto económico (p. ej., alzas de precio minorista) coherentes con shock de oferta (Andina, 2024).

La investigación aplicada también sustenta incorporar un rastreador de frío y un motor predictivo de vecería. En setos de olivo, un evento El Niño-Oscilación del Sur (ENOS) fuerte se asocia a aumento de temperaturas invernales (+2°C) y reducción de acumulación de frío (-23 %), con deterioro de productividad y alternancia; se reportan reducciones del frío en escenarios ENOS de -15 % a -23 % y, en campañas adversas, reducciones de rendimiento de aceite >85 % (Calvo et al., 2024). Estos hallazgos son consistentes con el patrón de alta variabilidad observado en Tacna (MIDAGRI, 2025) y justifican modelar vecería y requisitos de frío como componentes de decisión.

\begin{figure}[H]
\caption{Porciones acumuladas de frío, estimadas según el modelo dinámico entre el 1 de mayo y el 1 de septiembre para el período 2013-2023. Las porciones acumuladas de frío anuales promedio suavizadas desde 2013 hasta 2023 se destacan con una línea negra continua. (\%)}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/porciones_acumuladas_frio.png}
\caption\*{\textit{Nota.} ENOS, acumulación de frío y alternancia productiva — Calvo et al., 2024}
\end{figure}

\begin{figure}[H]
\caption{Rendimiento de aceite obtenido para cada tipo de poda durante el período experimental y reducciones en el rendimiento de aceite a lo largo de períodos de dos años (2020-2022 y 2022-2024). (\%)}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/calidad_aceite.png}
\caption\*{\textit{Nota.} Recuperado de Calvo et al., 2024}
\end{figure}

**Plagas, vigilancia fitosanitaria y riesgos regulatorios** La presión sanitaria constituye un riesgo productivo y regulatorio. SENASA informó acciones inmediatas y declaración de emergencia fitosanitaria ante Xylella fastidiosa, con medidas de vigilancia y contención (SENASA, 2024). Posteriormente, la Resolución Directoral que declara bajo control oficial Xylella fastidiosa subsp. pauca sustenta la dimensión del riesgo y la necesidad de intervención temprana: se reportan casos positivos en el país y se advierte impacto potencial de disminución productiva “hasta 25 % –30 %” en zonas vulnerables, así como pérdidas económicas potenciales superiores a US$ 3,245 millones anuales considerando varios cultivos (SENASA, 2025).

\begin{figure}[H]
\caption{Declaran bajo control oficial la plaga Xylella fastidiosa subsp. pauca, a nivel nacional.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/medida_plaga_senasa.png}
\caption\*{\textit{Nota.} Recuperado de SENASA, 2024}
\end{figure}

**Problemas actuales del caso de estudio** El caso de estudio evidencia problemas de gestión y gobernanza que amplifican los impactos del clima y las plagas. Primero, la captura de información tiende a ser reactiva: ante eventos extremos se recurre a empadronamientos y levantamiento posterior de daños (Andina, 2024), lo que limita la prevención y la planeación de campañas. Segundo, existen riesgos asociados al recurso hídrico: se reportaron alertas por desvío de energía para extracción de agua subterránea en Yarada Los Palos, con valores de potencia contratada y condiciones que sugieren presión sobre acuíferos (Contraloría, 2023). Tercero, la afectación sanitaria puede evaluarse a escala espacial: en La Yarada se estimó que el área de plantas enfermas oscila entre 42 % y 68 %, proponiendo umbrales por índices de vegetación (p. ej., NDVI) para niveles de severidad (Pino y Huayna, 2022). La guía técnica regional complementa estos antecedentes al consolidar prácticas de manejo, riego y nutrición para el cultivo en Tacna (Casanova, 2022).

\begin{figure}[H]
\caption{Severidad de ataque de las plagas en el olivo en la zona de estudio, desde un estado leve hasta un estado muy grave y en punto de marchitez permanente.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/ataque_plagas.png}
\caption\*{\textit{Nota.} Recuperado de Pino y Huayna, 2022}
\end{figure}

\begin{table}[H]
\caption{Rango de afectación del cultivo del olivo, según índices de vegetación}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/umbrales_ndvi.png}
\caption\*{\textit{Nota.} (a) La afectación es leve. (b) Ataque de plagas moderado. (c) Severidad del ataque de las plagas sumado al déficit hídrico. (d) Ataque de plagas muy fuerte y estado de marchitez permanente. Recuperado de Pino y Huayna, 2022}
\end{table}

**Sustentación de la solución SaaS y ampliaciones propuestas** La evidencia respalda una plataforma SaaS hiper‑especializada que convierta datos en decisiones: (i) Dashboard de finca con clima, suelo y sanidad para monitorear riesgo y desempeño (Andina, 2024; Pino y Huayna, 2022; MIDAGRI, 2025). (ii) Rastreador de horas/porciones de frío vs ENOS, para anticipar riesgo fenológico y productivo bajo escenarios ENOS (Calvo et al., 2024; Pino y Ascencios, 2022). (iii) Motor predictivo de vecería, apoyado en evidencia de alternancia asociada a variaciones de frío y en la volatilidad observada a nivel regional (Calvo et al., 2024; MIDAGRI, 2025). (iv) Motor de alertas epidemiológicas y trazabilidad de cumplimiento, alineado a vigilancia, control oficial y protocolos de contención (SENASA, 2024; SENASA, 2025). (v) Recomendaciones y nutrición dinámica, sustentadas en lineamientos técnicos regionales y variables edafológicas/ambientales relevantes para diagnóstico (Casanova, 2022; Pino y Huayna, 2022).

Como soporte de escalabilidad, investigaciones recientes demuestran viabilidad de analítica avanzada: mapeo integrado UAV‑satélite con modelos de aprendizaje automático y métricas de calidad de clasificación (Pino et al., 2026), y detección/conteo de frutos con deep learning sobre dataset amplio y métricas de desempeño (Osco‑Mamami et al., 2025). Estas capacidades habilitan un roadmap progresivo: del monitoreo básico (clima/suelo) hacia modelos predictivos y visión computacional para estimar carga, anticipar alternancia y ajustar nutrición. Adicionalmente, la experiencia del Niño costero 2017 evidencia que los eventos extremos pueden intensificarse abruptamente y superar capacidades de respuesta si no existe preparación basada en información (Yglesias‑González et al., 2023), reforzando el valor de una solución preventiva y orientada a riesgo.

\begin{figure}[H]
\caption{( a ) UAV Matrice 350 integrado con el sENOSr Altum PT, ( b ) cámara Altum PT, ( c ) puntos de control terrestre (GCP) y ( d ) plan de vuelo para la imagen de estudio.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/uso_drones_uav.png}
\caption\*{\textit{Nota.} Recuperado de Pino et al., 2026}
\end{figure}

\begin{figure}[H]
\caption{Inferencia del mejor modelo YOLOv8m en una imagen recortada.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/graphics/uso_deep_learning.png}
\caption\*{\textit{Nota.} Osco‑Mamami et al., 2025}
\end{figure}

---

**Problemática (5W + 2H)**

**What (Qué)**

¿Cuál es el problema?

El problema central radica en la alta vulnerabilidad sistémica del ciclo de producción del olivo frente a la variabilidad climática extrema y las emergencias fitosanitarias, las cuales actualmente se abordan mediante una gestión puramente reactiva en lugar de preventiva (Andina, 2024). La falta de anticipación ante anomalías ambientales, como el déficit de horas de frío provocado por las fluctuaciones térmicas, altera dramáticamente la fenología del cultivo y desencadena el fenómeno de la vecería o alternancia productiva (Calvo et al., 2024). Simultáneamente, esta vulnerabilidad estructural se agrava por el surgimiento de plagas cuarentenarias severas, cuya detección tardía impide una respuesta oportuna y genera pérdidas millonarias irremediables para el ecosistema agrícola de la región (SENASA, 2025).

**Who (Quién)**

¿Quiénes son los usuarios?

Los principales afectados son los productores agropecuarios y las instituciones ligadas a la cadena de valor del olivo, segmento que abarca desde pequeños agricultores y cooperativas hasta grandes empresas de producción tecnificada orientadas a la comercialización de la aceituna de mesa y la extracción de aceite (Andina, 2024). Asimismo, el problema impacta directamente a los profesionales y técnicos especializados en control de plagas agrícolas, quienes carecen de plataformas digitales integradas que les permitan conectar sus servicios de diagnóstico e intervención temprana con los productores afectados en el momento exacto en que los índices de vegetación o los factores edafológicos sugieren un riesgo inminente (Pino y Huayna, 2022).

- **Productores olivareros:** Este grupo comprende a los gestores de parcelas que enfrentan una vulnerabilidad crítica ante la variabilidad climática, la cual altera los ciclos de acumulación de frío necesarios para la productividad (Calvo et al., 2024). Su principal dolor es la falta de predictibilidad sobre el fenómeno de la vecería, lo que puede derivar en pérdidas de cosecha de hasta el 90% y una desestabilización económica severa si no se cuenta con datos para una gestión proactiva (Andina, 2024).

- **Profesionales especializados en control de plagas agrícolas:** Ingenieros agrónomos y técnicos fitosanitarios que requieren de un sistema de monitoreo constante para la detección precoz de amenazas biológicas como la Xylella fastidiosa (SENASA, 2024). Estos usuarios necesitan herramientas de análisis geoespacial y alertas epidemiológicas para ejecutar protocolos de contención que eviten perjuicios económicos superiores a los US$ 3,245 millones anuales en el sector (SENASA, 2025).

**When (Cuándo)**

¿Cuándo sucede el problema?

Esta problemática se manifiesta de forma crítica a lo largo de las etapas fenológicas más sensibles del olivo, presentándose con mayor severidad durante la temporada invernal, cuando la planta requiere imperativamente acumular porciones de frío necesarias para un adecuado cuajado y floración (Calvo et al., 2024). El problema se agudiza drásticamente durante la ocurrencia de eventos climáticos anómalos como El Niño Oscilación del Sur (ENOS) o El Niño Costero, períodos en los cuales se registra un aumento de las temperaturas que bloquea el proceso fisiológico normal de la planta (Yglesias-González et al., 2023). De igual forma, el riesgo fitosanitario es inminente y continuo frente a la propagación acelerada de patógenos letales ante la ausencia de un monitoreo constante de las variables del microclima y del suelo a lo largo de toda la campaña (SENASA, 2024).

**Where (Dónde)**

¿Dónde ocurre?

El impacto se concentra de manera alarmante en la macro-región sur del Perú, particularmente en la región de Tacna, territorio que alberga una extrema concentración de la producción olivarera nacional, habiendo reportado **52,000 toneladas** en recientes campañas (Andina, 2024). Dentro de esta región, distritos agroindustriales clave como La Yarada Los Palos evidencian escenarios críticos donde la afectación climática y sanitaria se agrava profundamente por problemas subyacentes de gobernanza de recursos, incluyendo el estrés hídrico y la presión desmedida sobre los acuíferos subterráneos (Contraloría, 2023). Esta altísima concentración territorial significa que cualquier shock climático o sanitario local se traduce de forma inmediata en un déficit de oferta a escala nacional (MIDAGRI, 2025).

**Why (Por qué)**

¿Por qué ocurre?

La situación ocurre fundamentalmente por la carencia de herramientas de agricultura de precisión y la fuerte dependencia de modelos de gestión empíricos que no integran datos ambientales para la toma de decisiones estratégicas (Pino et al., 2026). Actualmente, la captura de información en el campo es tardía y suele limitarse a empadronamientos y levantamientos posteriores a los desastres, lo que imposibilita la prevención y el diseño de planes de contingencia eficaces (Andina, 2024). Al no emplear índices de vegetación como el NDVI o sistemas predictivos que evalúen la humedad y temperatura del suelo frente a umbrales de severidad, los agricultores operan a ciegas y no pueden anticiparse a la merma productiva ni a la proliferación silenciosa de plagas (Pino y Huayna, 2022).

**How (Cómo)**

¿Cómo surge el problema?

El problema surge a nivel fisiológico y operativo cuando las anomalías térmicas interrumpen abruptamente el ciclo natural del olivo. Específicamente, el incremento de las temperaturas invernales en aproximadamente **2 °C** provoca una drástica reducción en la acumulación de horas de frío, estimada entre un **15 % y un 23 %** respecto a los promedios históricos requeridos por el cultivo (Calvo et al., 2024). Esta alteración bloquea el necesario "golpe de frío" nocturno que la planta requiere para inducir una floración y un cuajado de frutos exitosos, generando fallas fisiológicas masivas que merman de forma irreversible el rendimiento de la campaña (Andina, 2024). De forma paralela, esta disrupción fenológica debilita los mecanismos de defensa del árbol, facilitando que patógenos destructivos y de rápida propagación ataquen los tejidos vegetales antes de que los agricultores puedan accionar los protocolos preventivos sugeridos en las guías técnicas regionales (Casanova, 2022; SENASA, 2025).

¿En qué condición?

Esta altísima vulnerabilidad se agudiza y se vuelve inmanejable bajo condiciones severas de estrés hídrico y eventos climáticos extremos, particularmente durante las fases activas del fenómeno ENOS o El Niño Costero (Yglesias-González et al., 2023). A nivel territorial, estas anomalías térmicas operan bajo condiciones de una precaria gobernanza de los recursos naturales, evidenciada por extracciones irregulares de agua subterránea y desvíos de energía eléctrica que incrementan peligrosamente la presión sobre los acuíferos locales en zonas productoras críticas como La Yarada Los Palos (Contraloría, 2023). Bajo este escenario combinado de déficit hídrico, estrés térmico y una nula capacidad de monitoreo tecnológico preventivo, se crea la condición microclimática perfecta para la proliferación descontrolada de enfermedades fitosanitarias, contexto que explica por qué la proporción de plantas enfermas en determinadas áreas del desierto de Atacama peruano ha llegado a oscilar críticamente entre el **42 % y el 68 %** de la superficie cultivada (Pino y Huayna, 2022).

**How much (Cuánto)**

¿Cuál es la magnitud del problema?

La magnitud del problema se refleja en indicadores económicos y productivos sumamente críticos para el sector agrario. Las recientes olas de calor han provocado mermas que alcanzan hasta un **90 %** de pérdida en campos de La Yarada Los Palos, reduciendo drásticamente las proyecciones de cosecha a apenas un **10 %** o **20 %** del volumen obtenido en el año previo (Andina, 2024). Bajo escenarios ENOS fuertes, la investigación advierte reducciones alarmantes en el rendimiento de aceite que pueden superar el **85 %** en las peores campañas documentadas (Calvo et al., 2024). A nivel fitosanitario, la inacción frente a patógenos letales como la Xylella fastidiosa amenaza con disminuir la capacidad productiva entre un **25 %** y un **30 %** en las zonas declaradas vulnerables, proyectando pérdidas económicas multisectoriales que podrían sobrepasar holgadamente los **3,245 millones** de dólares anuales a nivel nacional (SENASA, 2025). Asimismo, rigurosas evaluaciones espaciales han revelado que la proporción de plantas enfermas en determinadas zonas geográficas de Tacna ya oscila peligrosamente entre el **42 %** y el **68 %** del área total cultivada (Pino y Huayna, 2022).

---

**Enunciado del problema (Problem Statement)**

Los productores olivareros y especialistas en control de plagas agrícolas enfrentan una alta vulnerabilidad ante la variabilidad climática extrema y plagas cuarentenarias debido a la carencia de herramientas tecnológicas preventivas y una gestión puramente reactiva. Esta falta de anticipación impide monitorear eficazmente alteraciones fenológicas como la vecería y la propagación de patógenos letales, lo que resulta en pérdidas productivas de hasta el 90% y pone en riesgo la rentabilidad y el patrimonio agrícola del sector.

\clearpage

**Objetivos del proyecto**

Objetivos generales

1. **Optimizar la estabilidad financiera del productor olivarero:** Reducir la incertidumbre económica causada por la alternancia productiva extrema, mediante el uso de analítica de datos que permita estabilizar los ingresos campaña tras campaña.
2. **Garantizar la resiliencia fitosanitaria del sector:** Establecer un ecosistema de vigilancia activa que proteja el patrimonio agrícola contra amenazas letales, aumentando la capacidad de respuesta proactiva de los especialistas y productores.
3. **Proporcionar inteligencia agrícola oportuna y accionable:** Ofrecer a los usuarios datos procesados sobre acumulación de frío y estados fenológicos para la toma de decisiones informadas que maximicen la calidad del producto final.

Objetivos específicos

- **Maximizar la previsibilidad de la cosecha:** Lograr que al menos el 40% de los usuarios activos utilicen el motor predictivo para ajustar sus planes de inversión y nutrición antes del cierre del primer trimestre de operación.
- **Fortalecer la red de respuesta ante plagas:** Firmar al menos 3 convenios de colaboración con asociaciones agrarias o consultoras fitosanitarias para el intercambio de datos en un plazo de 6 meses tras el lanzamiento.
- **Asegurar la eficiencia en la comunicación técnica:** Garantizar que las alertas epidemiológicas lleguen a los especialistas y productores en menos de 10 minutos tras la detección de una anomalía térmica, métrica que será auditada mensualmente durante el primer semestre.
- **Consolidar una base de usuarios especializada:** Alcanzar una meta de 150 productores registrados y 30 profesionales de control de plagas agrícolas interactuando en la plataforma en un periodo máximo de 4 meses.
- **Garantizar la seguridad de los datos del usuario:** Mantener un registro de 0 brechas de seguridad en el manejo de información sensible de las parcelas, con reportes de cumplimiento técnico emitidos cada trimestre.
- **Optimizar la gestión operativa y toma de decisiones:** Lograr que al menos el 25% de los usuarios activos consulten el dashboard de finca un mínimo de 3 veces por semana para monitorear indicadores de clima, suelo y sanidad durante el primer trimestre de uso.

---

**Restricciones**

- **Alcance tecnológico:** La solución abarcará el desarrollo de software para el Frontend y Web Services. La _Landing Page_ utilizará HTML5, CSS3 y JavaScript. La aplicación web (_Frontend_) se desarrollará con Vue Framework, empleando PrimeVue como biblioteca de componentes UI bajo las directrices de Material Design. El servicio web (_Backend_) será un RESTful API desarrollado con ASP.NET Core Framework y C#, y su documentación se expondrá mediante OpenAPI Specification a través de Swagger.
- **Exclusión de implementaciones físicas:** El proyecto se limita al desarrollo de software; no incluye la implementación de hardware, sENOSres físicos ni tecnologías de conectividad IoT de campo.
- **Estandarización de idioma:** Toda la experiencia de usuario, incluyendo mensajes, interfaces y la documentación técnica de los servicios, debe estar desarrollada exclusivamente en idioma inglés.
- **Fidelidad arquitectónica:** El diseño de software debe seguir estrictamente el Modelo C4 (Context, Container, Component) y el patrón Domain-Driven Design (DDD).
- **Disponibilidad en la nube:** Los productos finales deben estar desplegados en plataformas Server-Side o Cloud, permitiendo el acceso público mediante URL para validación.

\clearpage

### Lean UX Process

#### Lean UX Problem Statements

- **Problem Statement 1: Gestión de la incertidumbre climática y fenológica**

Nuestro servicio ofrece un ecosistema digital de agricultura de precisión enfocado en el monitoreo térmico y la predicción fenológica del olivo. A través de nuestra plataforma, los productores pueden visualizar la acumulación de "porciones de frío" y anticipar el impacto de la vecería en sus cosechas. A diferencia de soluciones basadas exclusivamente en hardware como Pessl Instruments (Metos), que se centran en la venta de sENOSres y entrega de datos meteorológicos brutos, Viora transforma dicha información en proyecciones de rendimiento y alertas de riesgo fenológico personalizadas por parcela.
Hemos identificado que un factor crítico que desestabiliza la economía del sector es la incapacidad de predecir la alternancia productiva extrema causada por la variabilidad térmica. Según Calvo et al. (2024), los eventos de El Niño-Oscilación del Sur (ENOS) alteran significativamente la productividad y el crecimiento vegetativo de los setos de olivo. Esta situación afecta directamente a los productores olivareros de la región sur que dependen de cosechas constantes. Actualmente, existe un vacío tecnológico ya que los productores dependen de reportes de emergencia posteriores a la crisis (Andina, 2024), careciendo de una herramienta que organice datos climáticos para predecir ciclos de producción de forma anticipada.
¿Cómo reducir la incertidumbre económica de los productores olivareros de la región sur mediante la predicción temprana de los ciclos de vecería basada en datos climáticos?

- **Problem Statement 2: Vigilancia epidemiológica y control de amenazas**

Nuestro servicio provee un sistema de alertas tempranas y protocolos de intervención ante amenazas fitosanitarias de alto impacto. A través de esta herramienta, los especialistas pueden identificar zonas de riesgo biológico mediante el análisis de factores ambientales. A diferencia del Sistema de Vigilancia Fitosanitaria de SENASA, que opera bajo un esquema de reporte manual y suele ser reactivo tras la aparición de síntomas visibles, Viora permite una vigilancia proactiva que conecta los servicios de diagnóstico con factores edafológicos en tiempo real.
Hemos identificado que un factor crítico que complica la sanidad vegetal es la dificultad para detectar de manera ágil la propagación de plagas letales. Según el Servicio Nacional de Sanidad Agraria (2024), la bacteria Xylella fastidiosa exige acciones inmediatas de contención debido a su alto potencial destructivo. Esta limitación perjudica especialmente a los profesionales especializados en control de plagas, quienes necesitan datos precisos para intervenir oportunamente (Pino y Huayna, 2022). Actualmente, los especialistas no cuentan con una plataforma integrada que centralice los indicadores de riesgo fitosanitario con la agilidad que requiere una emergencia sanitaria.
¿Cómo facilitar a los profesionales especializados en control de plagas el acceso a datos procesados para acelerar el diagnóstico y la contención de plagas cuarentenarias?

- **Problem Statement 3: Trazabilidad y toma de decisiones agroindustriales**

Nuestro servicio permite optimizar la gestión operativa de las empresas olivareras mediante dashboards de trazabilidad y análisis histórico. A través de indicadores visuales, los gestores pueden evaluar la eficacia de sus estrategias de manejo. A diferencia del Portal de Información Agraria (MIDAGRI) o el Buscador SEACE, que ofrecen datos estadísticos generales o registros de transacciones comerciales pasivas, Viora proporciona un análisis dinámico que vincula el estado fitosanitario del campo con la rentabilidad proyectada del negocio.
Hemos identificado que un factor crítico que retrasa la eficiencia sectorial es la dispersión de datos y la ausencia de herramientas que permitan detectar patrones de productividad de forma automática. La accesibilidad y el procesamiento rápido de información son fundamentales para reducir el tiempo de respuesta ante crisis de producción (Pino y Huayna, 2022). Esta carencia impacta en la visión estratégica de los productores olivareros de la región sur que necesitan asegurar la calidad del producto para exportación. Actualmente, la toma de decisiones suele ser empírica debido a que no existe una plataforma que proporcione un análisis enriquecido y procesado de la historia productiva de la parcela.
¿Cómo mejorar la capacidad de gestión de los productores olivareros de la región sur asegurando que cuenten con herramientas de análisis de datos integradas?

#### Lean UX Assumptions \

Creemos que nuestros clientes necesitan mayor previsibilidad y capacidad de respuesta anticipada ante la variabilidad climática y las emergencias fitosanitarias, ya que actualmente enfrentan una alta vulnerabilidad por operar bajo una gestión puramente reactiva que puede generar pérdidas de hasta el 90% en sus cosechas frente a anomalías térmicas (Andina, 2024). Estas necesidades se pueden resolver con Viora, una plataforma SaaS B2B hiper-especializada que convierte datos en decisiones mediante la integración del monitoreo de clima, rastreo de horas de frío y alertas tempranas epidemiológicas (Pino y Huayna, 2022). En un primer momento, nuestros clientes iniciales serán los productores olivareros de la región sur y los profesionales técnicos especializados en sanidad agrícola. El valor número uno que un cliente quiere de nuestro servicio es recibir información útil para la toma de decisiones relacionadas al ciclo productivo de sus plantaciones, además de alertas epidemiológicas con sus respectivas recomendaciones inteligentes y planes de nutrición dinámica generados automáticamente por la plataforma, sustentados en lineamientos técnicos locales y variables ambientales (Casanova, 2022; Pino y Huayna, 2022), optimizando la calidad de su producción para que su negocio crezca. Para adquirir la mayoría de nuestros clientes, nos apoyaremos en alianzas estratégicas con asociaciones agrarias y en un modelo de afiliados, donde el agricultor obtiene beneficios por recomendar el servicio a sus conocidos. Además, haremos dinero a través de un modelo de suscripción mensual o anual para acceder a la plataforma, incluyendo un periodo de prueba (trial) en el que, si el cliente no queda satisfecho, recibe el retorno de su dinero. Nuestra competencia principal en el mercado serán los proveedores de soluciones basadas exclusivamente en hardware, soluciones enfocadas en control de plagas y satelital, y los sistemas estatales de vigilancia reactiva; sin embargo, los venceremos debido al valor diferencial de nuestra propuesta: es la propia plataforma la que procesa los datos y emite recomendaciones agronómicas accionables, además de funcionar como un puente para contactar profesionales en caso de emergencias críticas. A pesar de esto, reconocemos que el mayor riesgo de producto es la baja adopción tecnológica y la brecha digital de los agricultores tradicionales. Por ello, resolveremos este desafío mediante un diseño de interfaz altamente intuitivo y la entrega de alertas simplificadas, fomentando la colaboración en campo.

**Business Assumptions**

- **El problema:** El sector olivarero es altamente vulnerable a las fallas fisiológicas (vecería) y plagas debido a variaciones térmicas, requiriendo decisiones apoyadas en datos que actualmente suelen ser empíricas o reactivas (Calvo et al., 2024).

- **La solución:** Una plataforma SaaS hiper-especializada que convierte datos en decisiones automatizadas, emitiendo diagnósticos, alertas epidemiológicas y recomendaciones directas de nutrición dinámica y agrofármacos basadas en guías técnicas.

- **Segmentos iniciales:** Productores de la cadena de valor de la aceituna y especialistas fitosanitarios.

- **Modelo de monetización:** Suscripción mensual o anual con un periodo de prueba (trial) libre de riesgo (retorno de dinero garantizado en caso de insatisfacción), respaldado por un programa de referidos que incentiva la adopción orgánica mediante validación de pares.

- **Ventaja competitiva:** La capacidad autónoma del sistema para traducir variables edafológicas y ambientales en prescripciones precisas, sumado a la creación de una red directa entre productores y técnicos de campo.

**Business Outcome Assumptions**

- Lograr que al menos el 40% de los usuarios activos utilicen el motor predictivo para ajustar sus planes de inversión o poda antes del cierre del primer trimestre.

- Alcanzar una adopción temprana de 150 productores y 30 profesionales especializados en control de plagas agrícola e interactuando en la plataforma en los primeros 4 meses de lanzamiento.

- Lograr que al menos el 35% de los usuarios que inician el periodo de prueba (**_trial_**) se conviertan en suscriptores recurrentes de pago dentro de los primeros 3 meses de operación, validando que la garantía de devolución y el modelo de afiliados eliminan la fricción inicial.

- Firmar al menos 3 convenios de colaboración con asociaciones agrarias o consultoras fitosanitarias para el intercambio de datos en un plazo de 6 meses tras el lanzamiento.

**User Assumptions**

- **¿Quiénes son?** Productores olivareros de la región sur que buscan hacer crecer su negocio mediante la mejora de la calidad de sus cultivos, y profesionales en control de plagas que buscan canales para ofrecer sus servicios.

- **¿Cuál es su comportamiento actual?** Su captura de información es tardía y operan "a ciegas" frente a la evolución térmica, reaccionando cuando la merma o la enfermedad ya es visible (Andina, 2024).

- **¿Cuándo ocurre?** El problema se agudiza drásticamente durante el ciclo fenológico invernal o durante anomalías climáticas como el fenómeno ENOS (Yglesias-González et al., 2023).

**User Outcome & Benefits**

- **Decisiones estratégicas y crecimiento del negocio:** El productor recibe información oportuna y útil sobre el ciclo productivo de sus plantaciones, lo que le permite optimizar y mejorar la calidad de su producción, contribuyendo a la escalabilidad y rentabilidad de su negocio.

- **Recomendaciones inteligentes y locales:** La plataforma entrega automáticamente recomendaciones de agrofármacos y nutrición dinámica, sustentadas rigurosamente en lineamientos técnicos regionales y en el análisis de variables edafológicas y ambientales relevantes para el diagnóstico (Casanova, 2022; Pino y Huayna, 2022).

- **Conexión de alto valor:** Para los profesionales especializados, la plataforma sirve como una vitrina efectiva para conectar con productores cuyas parcelas reportan alertas de riesgo, creando un ecosistema de asistencia bidireccional.

**Feature Assumptions**

- **Dashboard de finca:** Panel central con datos de clima, suelo y sanidad para monitorear riesgo y desempeño general (Andina, 2024; Pino y Huayna, 2022; MIDAGRI, 2025).

- **Rastreador de horas/porciones de frío:** Módulo diseñado para anticipar el riesgo fenológico y productivo bajo escenarios ENOS (Calvo et al., 2024; Pino y Ascencios, 2022).

- **Motor Predictivo de vecería:** Algoritmo apoyado en la evidencia de alternancia asociada a variaciones de frío y la volatilidad regional (Calvo et al., 2024; MIDAGRI, 2025).

- **Motor de alertas epidemiológicas:** Sistema para la trazabilidad de cumplimiento, alineado a la vigilancia, control oficial y protocolos de contención de plagas (SENASA, 2024; SENASA, 2025).

- **Módulo de recomendaciones y nutrición dinámica:** Herramienta automatizada que cruza variables ambientales y del suelo para sugerir planes de acción apoyados en literatura técnica (Casanova, 2022; Pino y Huayna, 2022).

- **Panel de suscripción y afiliados:** Área de gestión donde los usuarios administran su periodo de prueba y obtienen sus enlaces para el programa de recomendaciones.

#### Lean UX Hypothesis Statements

- **Creemos que lograremos** que al menos el 40% de los usuarios ajusten su inversión o poda antes del cierre del trimestre, **si** los productores olivareros de la región sur **alcanzan** la reducción de la incertidumbre económica mediante predicciones climáticas, con un motor predictivo de vecería basado en datos históricos.

- **Creemos que lograremos** una adopción temprana de 150 productores y 30 especialistas en 4 meses, **si** los ingenieros y técnicos en control de plagas **alcanzan** una gestión ágil y oportuna ante crisis fitosanitarias, con un sistema de alertas tempranas en tiempo real sobre riesgos de plagas.

- **Creemos que lograremos** firmar al menos 3 convenios de colaboración con asociaciones agrarias, **si** las agroindustrias y gestores agrícolas **alcanzan** una toma de decisiones optimizada gracias a datos procesados, con un dashboard interactivo que integre datos de clima, suelo y sanidad.

- **Creemos que lograremos** que el 35% de los usuarios de prueba se conviertan en suscriptores de pago, **si** los productores tradicionales con aversión al riesgo **alcanzan** una reducción de la fricción tecnológica y financiera, con un modelo de suscripción que incluya periodos de prueba y garantía de devolución.

- **Creemos que lograremos** reducir el gasto operativo en insumos químicos en un 15%, **si** los productores olivareros **alcanzan** una optimización de recursos basada en evidencia técnica, con un módulo de recomendaciones y nutrición dinámica que cruza variables de suelo y clima.
- **Creemos que lograremos** que al menos el 25% de los usuarios activos consulten el panel al menos 3 veces por semana durante el primer trimestre tras el lanzamiento, **si** los productores olivareros de la región sur **alcanzan** una toma de decisiones basada en evidencia con un dashboard centralizado que integre datos de clima, suelo y sanidad.

#### Lean UX Canvas

&nbsp;

\begin{figure}[H]
\caption{Lean UX Canvas de la solución Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/leanUX-canvas/Lean UX Canvas Viora.png}
\caption\*{\textit{Nota.} El Lean UX Canvas presenta la identificación del problema, segmentos de usuarios, propuestas de solución, hipótesis y el enfoque de producto mínimo viable (MVP) para la validación de la plataforma Viora. Elaboración propia.}
\end{figure}

\clearpage
