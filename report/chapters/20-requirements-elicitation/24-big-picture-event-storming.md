## Big Picture Event Storming

En esta sección se presenta el Big Picture Event Storming, una metodología de modelado colaborativo empleada por el equipo para explorar el dominio del negocio de manera holística. Para el contexto de nuestro proyecto —una startup en fase de concepción—, este ejercicio adopta un enfoque **"As-Is"** (Estado Actual). El objetivo primario no es traducir requisitos de una plataforma de software inexistente, sino realizar un acto de descubrimiento colectivo y aprendizaje masivo sobre cómo lidian actualmente los productores y especialistas con el clima, las plagas y la comunicación en el campo. De esta manera, el modelo refleja la situación real y los puntos de dolor que justifican la creación de Viora.

### Fase 1: Exploración Caótica y Generación de Eventos

En la primera fase, el proceso comenzó con lo que la metodología denomina el "caos silencioso". Aplicando la regla de "Adivinar Primero" (Guess First) —típica en entornos de startup para extraer suposiciones—, el equipo se enfocó en la identificación de los Domain Events actuales. Estos se definen como hechos relevantes que ocurren en el ecosistema agrícola sin la intervención de Viora. Se estableció la regla de redactar los eventos en inglés y en tiempo pasado para asegurar que representen cambios de estado verificables.

Durante esta etapa, se generaron clústeres locales instintivos con eventos que evidencian lo empírico y reactivo del manejo actual, tales como: *ClimaticAnomalyPerceived*, *ChillHoursMissed*, *SpecialistContactedByPhone*, hasta *HarvestReduced*. Además, aquellos eventos que resultaron demasiado genéricos fueron rotados 45° (en forma de rombo) para recordar que ocultan complejidad y requieren mayor desglose.

<br>

\begin{figure}[H]
\caption{Fase 1: Exploración no estructurada de eventos de dominio actuales.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-1.png}
\caption*{\textit{Nota.} Captura de la lluvia de ideas inicial sobre los eventos significativos en el proceso orgánico del olivo. Elaboración propia.}
\end{figure}

<br>

### Fase 2: Imponer la Línea de Tiempo

Una vez superada la exploración caótica, se procedió a imponer una validación cronológica. Para lograr consistencia de izquierda a derecha sin forzar una secuencia irreal e ininterrumpida, se implementaron **Eventos Pivote** y se fijaron grandes **Hitos Temporales** (*Temporal Milestones*) correspondientes al ciclo agrícola real (Letargo Invernal, Brotación, Búsqueda Reactiva, Intervención y Cosecha). 

Bajo cada hito se estructuraron los eventos como "islas" independientes que solo utilizan flechas cuando existe una relación estricta de causa y efecto en el mundo físico (ej. *FoliageDamageObserved* -> *PestVisuallyIdentified*).

<br>

\begin{figure}[H]
\caption{Fase 2: Línea de tiempo estructurada mediante Hitos y Pivotes (Vista general).}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-2-vista-general.png}
\caption*{\textit{Nota.} Organización cronológica de los eventos reales mediante anclas temporales. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Fase 2: Detalle de flujos por Hitos Temporales.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-2-1.png}
\vspace{0.5cm}
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-2-2.png}
\caption*{\textit{Nota.} Acercamiento a los clústeres estructurados en islas y validación cronológica. Elaboración propia.}
\end{figure}

<br>

### Fase 3: Integración de Personas y Sistemas Externos

En la fase de estructuración lógica, el equipo mapeó los roles humanos y las herramientas externas que intervienen activamente en el día a día. Se constató que los productores dependen netamente de mecanismos básicos e informales.

**Personas (Actores):**
- **Olive Farmer:** Depende de experiencia propia y observación visual in situ.
- **Pest Control Specialist:** Trabaja presencialmente, sobreexigido de tiempo y sin rutas coordinadas.
- **Neighbor:** Ejerce el rol de "soporte de campo" inexperto.

**Sistemas Externos:**
- **WhatsApp & Phone:** Medios reactivos de ayuda inicial.
- **SENAMHI / SENASA:** Fuentes macro de clima y alertas, sin granularidad a nivel parcela.
- **Field Notebook:** Cuaderno físico vulnerable y no analítico.

<br>

\begin{figure}[H]
\caption{Fase 3: Línea de tiempo validada con External Systems y Personas (Vista general).}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-vista-general.png}
\caption*{\textit{Nota.} Mapeo general que vincula a los productores y especialistas con sus flujos de trabajo físico. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Fase 3: Detalle de integración de Actores y Sistemas Externos.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-1.png}
\vspace{0.5cm}
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-2.png}
\caption*{\textit{Nota.} Acercamiento a la ubicación de Actores (amarillo) y Sistemas Externos (rosa) dentro del flujo. Elaboración propia.}
\end{figure}

<br>

### Fase 4: Narrativa Reversa (Verificación de Solidez)

Para evitar el sesgo de optimismo, el equipo recorrió el tablero de derecha a izquierda, partiendo del evento final (*CropSoldAtLowerMargin*), y cuestionando paso a paso qué eventos intermedios fueron omitidos. Esta técnica permitió descubrir flujo oculto, integrando nuevos eventos de suma importancia para la trazabilidad, tales como:
- *CropQualityGraded* (Clasificación de calibre de la aceituna).
- *HarvestWeighed* (Registro del peso cosechado).
- *RemedyGoogled* (Búsqueda inicial infructuosa en internet al notar la plaga).

<br>

\begin{figure}[H]
\caption{Fase 4: Narrativa Reversa y descubrimiento de eventos perdidos (Vista general).}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-4-vista-general.png}
\caption*{\textit{Nota.} Tablero tras la aplicación de la narrativa reversa para descubrir flujos ocultos. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Fase 4: Detalle de los nuevos eventos descubiertos.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-4-1.png}
\vspace{0.5cm}
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-4-2.png}
\caption*{\textit{Nota.} Acercamiento a los eventos integrados tras verificar la solidez del flujo hacia atrás. Elaboración propia.}
\end{figure}

<br>

### Fase 5: Puntos Calientes, Oportunidades y Políticas

Al consolidar la narrativa, el equipo identificó los vacíos de valor actuales categorizándolos visualmente en el tablero:

**Hotspots (Púrpura - Riesgos y Fricciones):**
- **Hotspot 1 (Blind Weather):** El productor carece de visibilidad climática a nivel de fundo.
- **Hotspot 2 (Pest Isolation):** Detección visual tardía de plagas, sin proactividad.
- **Hotspot 3 (Search By Contacts):** Faltas de referencias técnicas, retrasando intervenciones.
- **Hotspot 4 (Lack of History):** Manejo manual de diagnósticos impidiendo seguimiento.

**Oportunidades (Verde):**
- Conexión con APIs climatológicas (estimación autónoma de vecería).
- Matchmaking instantáneo para asegurar disponibilidad de agrónomos en la zona.

**Políticas Empíricas (Lila):**
- "*Si el especialista tarda más de 3 días en diagnosticar, aplicar agroquímico genérico de reserva para ganar tiempo*".

<br>

\begin{figure}[H]
\caption{Fase 5: Mapeo de Puntos Calientes, Oportunidades y Políticas (Vista general).}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-5-vista-general.png}
\caption*{\textit{Nota.} Categorización visual de los riesgos (morado), políticas (lila) y oportunidades (verde). Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Fase 5: Detalle de fricciones comerciales y operativas.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-5-1.png}
\vspace{0.5cm}
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-5-2.png}
\caption*{\textit{Nota.} Acercamiento a los Hotspots identificados en las islas temporales críticas. Elaboración propia.}
\end{figure}

<br>

### Fase 6: Definición del MVP (Votación)

A diferencia de la modernización de sistemas heredados donde se votan características funcionales, en este entorno de Startup se utilizaron votos de dirección (Flechas Azules) para determinar qué **hipótesis de negocio representaban el mayor riesgo** y requerían conformar el MVP. 

La mayoría de los votos estratégicos confirmaron priorizar el **Search By Contacts** (validar el flujo de conexión productor-especialista) y el **Blind Weather** (integración del ecosistema predictivo).

<br>

\begin{figure}[H]
\caption{Fase 6: Votación de Riesgos e Hipótesis del MVP (Vista general).}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-6-vista-general.png}
\caption*{\textit{Nota.} Distribución final de los votos de equipo sobre las áreas de mayor fricción. Elaboración propia.}
\end{figure}

\begin{figure}[H]
\caption{Fase 6: Detalle de las áreas prioritarias seleccionadas.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-6-1.png}
\vspace{0.5cm}
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-6-2.png}
\caption*{\textit{Nota.} Acercamiento a los Hotspots con mayor concentración de votos azules. Elaboración propia.}
\end{figure}

<br>

Como resultado de este taller de visualización del "As-Is", el equipo logró transformar suposiciones vagas en un mapa de fricciones reales y estructuradas, entregando los focos de acción primarios de certidumbre que Viora intentará solucionar.