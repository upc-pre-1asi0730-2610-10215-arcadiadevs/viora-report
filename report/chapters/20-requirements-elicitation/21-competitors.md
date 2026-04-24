\newpage
# Capítulo II: Requirements Elicitation & Analysis

## Competidores.

| Tipo | Competidor | Descripción | Características | Website |
|---|---|---|---|---|
| Directo | ![Metos](report/assets/competitors/metos.png){width=80px} | Plataforma global que integra datos de sensores de suelo y clima (IoT) con modelos matemáticos predictivos de enfermedades. | - Integración directa con hardware propio (estaciones meteorológicas)<br />- Modelos de enfermedades para múltiples cultivos<br />- Pronóstico hiperlocal. | [metos.global](https://metos.global/es/) |
| Directo | ![Agroptima](report/assets/competitors/agroptima.png){width=80px} | Software de gestión agrícola muy popular en España y LATAM, fuertemente utilizado en el sector olivarero para la trazabilidad. | - Cuaderno de campo digital<br />- Registro geolocalizado de aplicación de fitosanitarios<br />- Control de costos<br />- App funcional en modo offline | [agroptima.com](https://www.agroptima.com) |
| Directo | ![Xarvio](report/assets/competitors/xarvio.png){width=80px} | Plataforma de agricultura digital de BASF especializada en modelos de riesgo de enfermedades y apoyo a decisiones fitosanitarias. | - Mapas de riesgo sanitario en tiempo real<br />- Alertas de protección de cultivos<br />- Recomendaciones precisas de fungicidas e insecticidas. | [xarvio.com](https://www.xarvio.com) |
| Indirecto | ![OneSoil](report/assets/competitors/onesoil.png){width=80px} | Aplicación gratuita de agricultura de precisión basada en el análisis de imágenes satelitales e índices de vegetación. | - Monitoreo remoto del vigor del cultivo (NDVI)<br />- Notas de campo (scouting) geolocalizadas<br />- Pronóstico del clima. | [onesoil.com](https://onesoil.ai) |
| Indirecto | ![Auravant](report/assets/competitors/auravant.png){width=80px} | Plataforma "todo en uno" para agricultura digital enfocada en agrónomos y empresas tecnificadas, con fuerte presencia en LATAM. | - Creación de zonas de manejo<br />- Prescripciones de insumos variables<br />- Análisis de capas de información (suelo, clima, rendimiento). | [auravant.com](https://www.auravant.com) |
| Indirecto | ![SENASA](report/assets/competitors/senasa.png){width=80px} | Sistema público oficial del Estado Peruano encargado de monitorear, alertar y contener plagas cuarentenarias (ej. Xylella fastidiosa). | - Emisión de alertas epidemiológicas regionales<br />- Normativas de control oficial<br />- Red de inspectores en campo<br />- Acceso gratuito pero no personalizado. | [gob.pe/senasa](https://www.gob.pe/senasa) |

\newpage

### Análisis competitivo

Análisis competitivo para competidores **directos**

**¿Por qué llevar a cabo este análisis?**

¿Qué soluciones AgTech de gestión y prevención de plagas existen a nivel global, y cómo Viora puede penetrar en el mercado sur peruano aprovechando las barreras de entrada (como altos costos de hardware o falta de enfoque local) de los líderes internacionales?

| Criterio |  ![Viora](report/assets/viora-brand/viora-isologotipo-green.png){width=60px} |  ![Metos](report/assets/competitors/metos.png){width=60px} |  ![Agroptima](report/assets/competitors/agroptima.png){width=60px} |  ![Xarvio](report/assets/competitors/xarvio.png){width=60px} |
|---|---|---|---|---|
| **PERFIL** | | | | |
| Overview | Plataforma SaaS B2B hiper-especializada en el ciclo de producción del olivo, que integra datos ambientales para emitir alertas y conecta a productores con agrónomos. | Plataforma global que integra hardware IoT (estaciones meteorológicas) con software predictivo de enfermedades (FieldClimate). | Software líder de gestión agrícola enfocado en el cuaderno de campo, trazabilidad de operaciones y control de costos. | Plataforma de agricultura digital de BASF especializada en modelos de riesgo sanitario y apoyo a decisiones fitosanitarias. |
| Ventaja competitiva | Alertas predictivas hiper-locales exclusivas para la fenología del olivo y un marketplace integrado para contratar la solución inmediata. | Precisión extrema al basar sus predicciones en datos extraídos por sus propios sensores físicos instalados en la parcela del cliente. | Usabilidad superior para el agricultor en el campo (funciona 100% offline) y simplificación del cumplimiento legal. | Algoritmos respaldados por años de I+D de BASF, con alta precisión en la recomendación del momento exacto para aplicar fungicidas. |
| **MARKETING** | | | | |
| Mercado Objetivo | Pequeños/medianos productores de olivo del sur del Perú y especialistas técnicos en control de plagas agrícolas. | Grandes corporaciones agroindustriales y fundos de cultivos de alto valor que pueden permitirse invertir en infraestructura (hardware). | Agricultores profesionales, cooperativas y gerentes de fundos de todos los tamaños, principalmente en España y LATAM. | Productores agrícolas que buscan optimizar su inversión en agroquímicos y proteger el rendimiento de sus cultivos intensivos/extensivos. |
| Estrategias de Marketing | Growth Loop basado en referidos/afiliados, alianzas estratégicas con cooperativas locales y asociaciones de productores. | Venta consultiva corporativa B2B y asociaciones con distribuidores locales de maquinaria y hardware agrícola. | Fuerte Content Marketing, prueba gratuita (Trial) de 15 días, embajadores de marca y presencia en ferias agrícolas. | Inbound Marketing, Product-Led Growth (versión freemium) e integraciones con productos químicos de su empresa matriz (BASF). |
| **PRODUCTO** | | | | |
| Servicios | - Dashboard de finca<br />- Motor predictivo de vecería/clima<br />- Alertas fitosanitarias<br />- Directorio de especialistas | - Hardware meteorológico<br />- FieldClimate app<br />- Suscripciones matemáticas | - Cuaderno de campo digital<br />- Registro geolocalizado<br />- Reportes de costos | - Mapas de riesgo de enfermedades<br />- Alertas de protección de cultivos |
| Precios | Modelo SaaS puro con periodo de prueba de riesgo cero. | Alto costo de entrada (hardware) + suscripción anual al software. | Modelo SaaS con suscripción anual basada en módulos según tamaño. | Modelo Freemium; funciones gratuitas y versiones PRO de pago. |
| Distribución | Web App responsiva y Landing Page orientada a conversión. | Distribuidores físicos exclusivos, Web App y App Móvil. | Web Application y App Móvil nativa. | Web Application y App Móvil nativa. |
| **SWOT** | | | | |
| Fortalezas | Especialización en el olivo. Resuelve el problema completo conectando la alerta con el técnico. | Datos hiper-precisos reales. Modelos matemáticos de enfermedades muy maduros. | Interfaz offline a prueba de fallos. Liderazgo en registro de costos operativos. | Fuerte respaldo corporativo. Modelos ampliamente entrenados. |
| Debilidades | Nueva sin base histórica propia. Depende de adopción de dos frentes. | Costo inaccesible para pequeño agricultor. Requiere mantenimiento físico. | Es un ERP, no un sistema predictivo especializado en alertas de plagas. | Sus modelos pueden no estar finamente calibrados para el microclima sur. |
| Oportunidades | Capturar al mercado olivarero golpeado por anomalías térmicas y olas de calor extremas asociadas al fenómeno ENOS, que exige soluciones preventivas de bajo costo (Andina, 2024; Yglesias-González et al., 2023; Calvo et al., 2024). | Integrar sus APIs con startups locales (SaaS) para vender el acceso a sus datos climáticos (Yglesias-González et al., 2023; Pino y Ascencios, 2022). | Desarrollar sus propios módulos predictivos de plagas para complementar su cuaderno de campo (SENASA, 2024; Osco-Mamani et al., 2025). | Localizar sus modelos predictivos para plagas peruanas evaluando la severidad mediante índices de vegetación avanzados (Pino y Huayna, 2022; Pino et al., 2026). |
| Amenazas | Competidores gigantes desarrollando módulos específicos para el olivo o integrando marketplaces en sus sistemas, atraídos por el crecimiento y la volatilidad reciente del sector (MIDAGRI, 2025; Andina, 2024). | Vandalismo, uso irregular o vulnerabilidad de infraestructura y recursos en zonas rurales (Contraloría General de la República, 2023). - Llegada de hardware IoT de bajo costo que reduzca las barreras de entrada para nuevos actores tecnológicos (Pino-Vargas et al., 2026). | Aparición de soluciones locales más económicas y adaptadas a la normativa tributaria y agrícola específica de Perú (Casanova Núñez-Melgar, 2022; MIDAGRI, 2025). | Desconfianza del agricultor al ser “juez y parte” un software de una empresa química recomendando aplicar químicos (Pino y Ascencios, 2022; SENASA, 2024). |

<br />

Análisis competitivo para competidores **indirectos**

**¿Por qué llevar a cabo este análisis?**

¿Qué alternativas públicas o plataformas satelitales globales utilizan actualmente los productores olivareros para informarse sobre su campo, y cómo Viora puede diferenciarse en la mitigación específica de riesgos fitosanitarios y climáticos en la región sur?

| Criterio | ![Viora](report/assets/viora-brand/viora-isologotipo-green.png){width=60px} | ![SENASA](report/assets/competitors/senasa.png){width=60px} | ![OneSoil](report/assets/competitors/onesoil.png){width=60px} | ![Auravant](report/assets/competitors/auravant.png){width=60px} |
|---|---|---|---|---|
| **PERFIL** | | | | |
| Overview | Plataforma SaaS B2B hiper-especializada en el ciclo de producción del olivo, que integra datos ambientales para emitir alertas tempranas y conecta a productores con agrónomos locales. | Sistema público oficial del Estado Peruano encargado de monitorear, alertar y ejecutar el control oficial de plagas cuarentenarias a nivel nacional. | App global gratuita de agricultura de precisión basada en imágenes satelitales (NDVI). | Plataforma integral "todo en uno" para agricultura digital, diseñada para maximizar el rendimiento mediante zonificación y prescripciones variables. |
| Ventaja competitiva |Alertas predictivas hiper-locales específicas para la fenología del olivo y conexión directa e instantánea con un marketplace de especialistas agrícolas. | Autoridad normativa oficial, respaldo estatal e infraestructura física de respuesta ante emergencias nacionales (ej. Xylella fastidiosa). | Acceso masivo, gratuito y de usabilidad extremadamente simple a mapas de vigor (NDVI) satelitales actualizados constantemente. | Ecosistema robusto y altamente escalable con integraciones y algoritmos potentes para agrónomos y corporaciones agroindustriales. |
| **MARKETING** | | | | |
| Mercado Objetivo | Pequeños/medianos productores olivareros y especialistas técnicos en control de plagas agrícolas del sur del Perú (ej. Tacna). | Todo el sector agropecuario nacional (productores de todos los rubros, importadores y exportadores). | Agricultores y técnicos agrícolas de todo el mundo, orientada fuertemente a cultivos de áreas extensivas. | Ingenieros agrónomos, asesores técnicos y empresas agrícolas en LATAM. |
| Estrategias de Marketing | Growth Loop basado en referidos/afiliados, alianzas estratégicas con cooperativas locales y juntas de usuarios de agua. | Difusión pública mediante resoluciones directorales, campañas de prensa del Estado, y capacitaciones en campo. | Crecimiento orgánico apalancado por su modelo 100% gratuito (PLG - Product-Led Growth), SEO y redes sociales. | Ventas B2B consultivas (Outbound), webinars especializados, certificaciones para agrónomos y casos de éxito corporativos. |
| **PRODUCTO** | | | | |
| Servicios | - Dashboard de finca<br>- Motor predictivo de vecería/clima.<br>- Sistema de alertas fitosanitarias tempranas.<br>- Directorio de especialistas. | - Alertas epidemiológicas regionales.<br>- Inspecciones físicas de campo.<br>- Emisión de certificados fitosanitarios y guías técnicas. | - Mapas de vigor del cultivo<br>- Notas de campo geolocalizadas<br>- Análisis de parcelas | - Mapas de productividad<br>- Pescripciones de insumos<br>- Reportes de ambientación |
| Precios | Modelo SaaS (Suscripciones mensuales/anuales escalonadas) con periodo Trial y garantía de devolución. | Gratuito (servicio público financiado por el Estado), aunque ciertos certificados tienen tasas administrativas. | 100% Gratuito para el usuario final (monetizan mediante la venta de datos agregados y macro a corporaciones). | Modelo Freemium con límites; planes premium cobrados mensualmente por cantidad de hectáreas analizadas. |
| Distribución | Web Application responsiva y Landing Page informativa. | Portal institucional (gob.pe), oficinas desconcentradas regionales y canales telefónicos. | Aplicación Móvil (Android/iOS) y Web Application. | Web Application (principal) y App Móvil de soporte para campo. |
| **SWOT** | | | | |
| Fortalezas | - Hiper-especialización en la problemática del olivo (vecería, horas de frío).<br>- Resuelve el problema End-to-End al incluir el servicio del agrónomo. | - Poder coercitivo y legal para cuarentenas.<br>- Información oficial irrefutable.<br>- Alcance nacional gratuito.  | - UX/UI impecable y curva de aprendizaje nula.<br>- Acceso inmediato a data satelital sin costo para el agricultor. | - Análisis de datos sumamente profundo y científico.<br>- Integración con maquinaria agrícola avanzada.|
| Debilidades | - Startup nueva sin base de datos histórica propia.<br>- Dependencia de adopción de dos frentes (productor y especialista).  | - Alertas regionales (no por parcela específica).<br>- Lentitud en la gestión altamente reactiva. | El NDVI satelital es genérico; avisa que hay un problema, pero no te dice qué plaga exacta es hasta que vas al campo. | Curva de aprendizaje alta e interfaz muy compleja ("Overkill"). |
| Oportunidades | - Mercado olivarero altamente golpeado por ENOS buscando digitalizarse (Andina, 2024; Yglesias-González et al., 2023).<br>- Absorber la lentitud del Estado mediante alertas más rápidas frente a brotes fitosanitarios (SENASA, 2024; SENASA, 2025). | - Colaborar con startups AgTech (como Viora) para masificar sus protocolos oficiales de contención (SENASA, 2024; SENASA, 2025). | - Implementar modelos de IA para detectar plagas específicas desde imágenes (Osco-Mamani et al., 2025; Pino et al., 2026). | - Expandir su alcance hacia cultivos intensivos de menor escala sustentados por la agricultura familiar si simplifican su interfaz (MIDAGRI, 2025). |
| Amenazas | - Limitaciones de conectividad a internet en zonas rurales (Casanova Núñez-Melgar, 2022).| - Recortes o limitaciones de capacidad operativa estatal que reduzcan el monitoreo presencial ante nuevos brotes (SENASA, 2024; SENASA, 2025). | - AgTechs de nicho (como Viora) que ofrezcan un valor mucho más específico, localizado y adaptado al enfoque climatológico árido que un simple mapa de colores (Pino y Ascencios, 2022; Andina, 2024). | - Plataformas gratuitas (como OneSoil) que eduquen al usuario base y le quiten mercado en la base de la pirámide (MIDAGRI, 2025). |

<br />

\newpage

### Estrategias y tácticas frente a competidores

| Competidor | Táctica diferenciadora | Fortaleza del rival que enfrentamos | Debilidad del rival que aprovechamos |
|---|---|---|---|
| ![Metos](report/assets/competitors/metos.png){width=80px} | **"Software-only escalable y predictivo"**: Ingesta de datos ambientales mediante APIs y algoritmos sin obligar al productor a comprar infraestructura. | Gran precisión de datos de campo y modelos matemáticos de enfermedades. Extraen datos de estaciones propias. | Altos costos de entrada y mantenimiento de hardware para el pequeño productor, así como exposición a vandalismo en campo. |
| ![Agroptima](report/assets/competitors/agroptima.png){width=80px} | **"Motor predictivo vs. Registro pasivo"**: Viora procesa el clima y advierte automáticamente; no es solo una libreta digital de data-entry. | Usabilidad en campo líder europea y potente registro de costos operativos y trazabilidad. | Es un sistema pasivo; sin registro del agricultor, no emite alertas epidemiológicas predictivas autónomas ante crisis climáticas. |
| ![Xarvio](report/assets/competitors/xarvio.png){width=80px} | **"Hiper-nicho olivarero + Marketplace humano"**: Foco en la vecería y enlace físico-tecnológico para la aplicación agronómica inmediata con un experto humano. | Profundidad técnica corporativa, excelente análisis algorítmico y UX simple (mapas de colores intuitivos). | Aislamiento corporativo: Solo te alertan y derivan a químicos propios sin asistencia técnica humana. Riesgo de mala calibración. |

<br />

<!-- Test markdown + latex -->

\newpage

### Matriz F.O.D.A y C.A.M.E.

\definecolor{fodaDark}{RGB}{47,84,63}
\definecolor{fodaLight}{RGB}{183,198,190}
\definecolor{fodaWhite}{RGB}{245,245,245}

\setlength{\tabcolsep}{8pt}
\renewcommand{\arraystretch}{1.35}

\noindent
\begin{tabular}{|p{4.2cm}|p{5.3cm}|p{5.3cm}|}
\hline
\cellcolor{fodaDark}
\begin{minipage}[t][16cm][c]{\linewidth}
\centering
\vspace{1.2cm}
{\color{white}\bfseries\LARGE Matriz\\[0.15cm]F.O.D.A.\\y\\C.A.M.E.}

\vspace{1.3cm}

\includegraphics[width=2.2cm]{report/assets/viora-brand/viora-isologotipo-white.png}
\end{minipage}
&
\cellcolor{fodaLight}
\begin{minipage}[t][16cm][t]{\linewidth}
\centering
{\bfseries\Large Oportunidades (O)}

\vspace{0.35cm}
\raggedright
\textbullet\ Creciente urgencia por mitigar mermas asociadas al fenómeno ENOS y a la variabilidad climática en el cultivo de olivo (Calvo et al., 2024; Agencia Andina, 2024).\\[0.28cm]
\textbullet\ Lentitud y enfoque reactivo de las alertas estatales frente a eventos climáticos y sanitarios, lo que abre espacio para soluciones preventivas más ágiles (Yglesias-González et al., 2023; Servicio Nacional de Sanidad Agraria del Perú, 2024).\\[0.28cm]
\textbullet\ Potencial de alianzas con cooperativas y actores olivareros locales, dada la necesidad de fortalecer la resiliencia productiva y la gestión técnica del cultivo en Tacna (MIDAGRI, 2025).\\[0.28cm]
\textbullet\ Competidores globales relativamente inaccesibles para pequeños productores debido a los requisitos de analítica avanzada, teledetección e infraestructura tecnológica especializada (Pino et al., 2026; Osco-Mamani et al., 2025).
\end{minipage}
&
\cellcolor{fodaLight}
\begin{minipage}[t][18cm][t]{\linewidth}
\centering
{\bfseries\Large Amenazas (A)}

\vspace{0.35cm}
\raggedright
\textbullet\ Resistencia tecnológica y brecha digital en la agricultura familiar (MIDAGRI, 2025).\\[0.28cm]
\textbullet\ Limitada conectividad a internet y restricciones operativas en fundos rurales, lo que puede afectar el uso continuo de soluciones digitales en campo (Casanova Núñez-Melgar, 2022).\\[0.28cm]
\textbullet\ Competidores consolidados como Xarvio o Agroptima con mayor capacidad de inversión, expansión e integración tecnológica en mercados agrícolas digitalizados (Ministerio de Desarrollo Agrario y Riego, 2025).\\[0.28cm]
\textbullet\ Anomalías climáticas impredecibles que desestabilicen algoritmos (Pino y Ascencios, 2022; Calvo et al., 2024).
\end{minipage}
\\
\hline
\end{tabular}

\newpage

\noindent
\begin{tabular}{|p{4.2cm}|p{5.3cm}|p{5.3cm}|}
\hline
\cellcolor{fodaLight}
\begin{minipage}[t][16cm][t]{\linewidth}
\centering
{\bfseries\Large Fortalezas (F)}

\vspace{0.35cm}
\raggedright
\textbullet\ Hiper-especialización en fenología del olivo (vecería, horas de frío).\\[0.28cm]
\textbullet\ Marketplace integrado (conecta la alerta con el agrónomo).\\[0.28cm]
\textbullet\ Modelo SaaS predictivo, ágil y de bajo costo (sin hardware).\\[0.28cm]
\textbullet\ Alertas micro-locales específicas por parcela.
\end{minipage}
&
\cellcolor{fodaWhite}
\begin{minipage}[t][16cm][t]{\linewidth}
\centering
{\bfseries\Large Estrategia Ofensiva}

\vspace{0.35cm}
\raggedright
\textbf{FO1 – Paquetes "Cooperativa Preventiva":} Usar el bajo costo del modelo SaaS (F3) para cerrar convenios B2B masivos con cooperativas olivareras (O3) que urgen mitigar el ENOS (O1).\\[0.55cm]

\textbf{FO2 – Alerta Temprana Ágil:} Aprovechar la lentitud del Estado (O2) emitiendo notificaciones predictivas por parcela (F4), ofreciendo la inmediatez que el agricultor no encuentra en canales públicos.\\[0.55cm]

\textbf{FO3 – Marketplace de Intervención:} Posicionar nuestra red de especialistas (F2) como el "brazo ejecutor" que soluciona inmediatamente las alertas que competidores globales solo reportan de forma pasiva (O4).
\end{minipage}
&
\cellcolor{fodaWhite}
\begin{minipage}[t][16cm][t]{\linewidth}
\centering
{\bfseries\Large Estrategia Defensiva}

\vspace{0.35cm}
\raggedright
\textbf{FA1 – Valor Humano vs. Algoritmo:} Defender nuestro nicho frente a gigantes AgTech (A3) destacando la conexión directa con agrónomos locales reales (F2), algo que el software extranjero no puede replicar.\\[0.55cm]

\textbf{FA2 – App Resiliente y Ligera:} Frente a la baja conectividad (A2), asegurar que el dashboard y las alertas (F4) funcionen con caché offline y notificaciones ultraligeras (SMS/WhatsApp push).\\[0.55cm]

\textbf{FA3 – Especialización Endémica:} Frente al cambio climático impredecible (A4), usar nuestra hiper-especialización en el olivo (F1) para calibrar modelos mucho más rápido que las plataformas generalistas.
\end{minipage}
\\
\hline
\end{tabular}

\newpage

\noindent
\begin{tabular}{|p{4.2cm}|p{5.3cm}|p{5.3cm}|}
\hline
\cellcolor{fodaLight}
\begin{minipage}[t][16cm][t]{\linewidth}
\centering
{\bfseries\Large Debilidades (D)}

\vspace{0.35cm}
\raggedright
\textbullet\ Baja confianza inicial por ser una marca/startup nueva.\\[0.28cm]
\textbullet\ Carencia de data histórica climática propia (uso de APIs).\\[0.28cm]
\textbullet\ Requiere atraer productores y agrónomos a la vez.\\[0.28cm]
\textbullet\ Presupuesto de marketing y desarrollo limitado.
\end{minipage}
&
\cellcolor{fodaWhite}
\begin{minipage}[t][16cm][t]{\linewidth}
\centering
{\bfseries\Large Estrategia de Reorientación}

\vspace{0.35cm}
\raggedright
\textbf{DO1 – Pilotos de Validación Local:} Vencer la baja confianza (D1) aliándonos con líderes de juntas de usuarios en Tacna (O3) para hacer pilotos gratuitos que generen "casos de éxito" rápidos y reales.\\[0.55cm]

\textbf{DO2 – Data Colaborativa:} Ante la falta de data histórica propia (D2), aprovechar la urgencia del agricultor por digitalizarse (O1) para retroalimentar nuestros propios algoritmos climáticos según el comportamiento real reportado en la app.\\[0.55cm]

\textbf{DO3 – Growth Loop de Especialistas:} Usar a los agrónomos (que buscan clientes) como nuestros principales evangelizadores, recomendando Viora a sus propios agricultores de confianza, resolviendo así la falta de adopción dual (D3).
\end{minipage}
&
\cellcolor{fodaWhite}
\begin{minipage}[t][18cm][t]{\linewidth}
\centering
{\bfseries\Large Estrategia de Supervivencia}

\vspace{0.35cm}
\raggedright
\textbf{DA1 – Foco Láser Olivarero:} Dada la limitación financiera (D4) y la amenaza de gigantes (A3), no expandir la app a otros cultivos; dominar absoluta y exclusivamente la región sur olivarera antes de pensar en escalar.\\[0.55cm]

\textbf{DA2 – Onboarding Asistido:} Para combatir la resistencia tecnológica (A1) y nuestra falta de reconocimiento (D1), realizar talleres presenciales en campo con las cooperativas para instalar y configurar la app en los celulares de los usuarios.\\[0.55cm]

\textbf{DA3 – Protocolos "Fallback":} Ante fallos en la predicción por anomalías extremas (A4), asegurar que el sistema derive inmediatamente el caso al directorio de agrónomos locales (Marketplace) para evaluación humana (minimizando la D2).
\end{minipage}
\\
\hline
\end{tabular}

\newpage