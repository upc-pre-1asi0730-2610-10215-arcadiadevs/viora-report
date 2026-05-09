## Needfinding

### User Personas

En la presente sección se elaboran dos fichas de User Persona, una por cada segmento objetivo definido en el capítulo anterior: productores olivareros de la región sur y profesionales especializados en control de plagas agrícolas. Estos arquetipos surgen de la síntesis entre las entrevistas a profundidad y el análisis competitivo, y condensan los rasgos que realmente hacen diferencia para el diseño: nivel de alfabetización digital, forma actual de registrar y consultar información, dependencia de observación manual, respuesta ante alertas climáticas y fitosanitarias, y necesidad de coordinar acciones en campo. Cada ficha reúne los elementos básicos del arquetipo -perfil, contexto, objetivos, necesidades, frustraciones y comportamientos- para asegurar que Viora responda a necesidades reales y no a supuestos genéricos.

<br>

El User Persona de Pedro Huamán representa al productor olivarero tradicional de la región sur. Su gestión se apoya en experiencia empírica, observación directa y apoyo familiar, por lo que prioriza simplicidad, acceso oportuno a alertas climáticas y una vista clara del riesgo de su parcela. Este arquetipo permite entender la transición desde una administración reactiva hacia una gestión más preventiva y basada en datos. Elaboración propia.

<br>

\begin{figure}[H]
\caption{User Persona del segmento Productor Olivarero.}
\centering
\includegraphics[width=0.4\textwidth]{report/assets/needfinding/Pedro Huaman.png}
\caption*{\textit{Nota.} La ficha de User Persona de Pedro Huamán detalla el arquetipo del productor olivarero tradicional, integrando sus objetivos, frustraciones, comportamientos y necesidades tecnológicas clave identificadas durante la fase de investigación para el diseño de la plataforma Viora. Elaboración propia.}
\end{figure}

<br>

El User Persona de Paco Pérez representa al profesional especializado en control de plagas agrícolas de la región sur. Este arquetipo combina movilidad constante entre fundos, uso de herramientas digitales básicas y una necesidad alta de priorizar visitas, registrar hallazgos y coordinar el seguimiento técnico. Su perfil sirve para definir una experiencia orientada a la eficiencia operativa, la trazabilidad y la respuesta temprana ante alertas fitosanitarias. Elaboración propia.

<br>

\begin{figure}[H]
\caption{User Persona del segmento Profesional Especializado En Control De Plagas Agrícolas.}
\centering
\includegraphics[width=0.4\textwidth]{report/assets/needfinding/Paco Perez.png}
\caption*{\textit{Nota.} La ficha de User Persona de Paco Pérez detalla el arquetipo del profesional especializado en control de plagas agrícolas, integrando sus objetivos, frustraciones, comportamientos y necesidades tecnológicas clave identificadas durante la fase de investigación para el diseño de la plataforma Viora. Elaboración propia.}
\end{figure}

\clearpage

### User Task Matrix

En esta sección se presenta la User Task Matrix, que concentra las tareas actuales que los User Persona realizan para cumplir sus objetivos. Para este análisis se consideran dos segmentos: Paco Pérez, profesional especializado en control de plagas agrícolas, y Pedro Huamán, productor olivarero. Es importante precisar que las tareas listadas corresponden a actividades del estado actual de cada usuario y que se ejecutan independientemente de la existencia de una solución de software; por tanto, no deben confundirse con funciones, opciones o características del sistema. La matriz organiza una columna por cada User Persona y, para cada una, sus subcolumnas de frecuencia e importancia, de modo que se identifiquen las tareas críticas, la frecuencia de ejecución y el nivel de atención que requieren. Después del cuadro se explica cuáles son las tareas más frecuentes y críticas, qué apoyo necesitan para completarlas y cuáles son las coincidencias y diferencias entre ambos perfiles.

\begin{table}[H]
\centering
\small
\begin{tabular}{|p{5.6cm}|c|c|c|c|}
\hline
\multirow{2}{*}{\textbf{Tarea (Task)}} & \multicolumn{2}{c|}{\textbf{Paco Pérez}} & \multicolumn{2}{c|}{\textbf{Pedro Huamán}} \\
\cline{2-5}
 & \textbf{Frecuencia} & \textbf{Importancia} & \textbf{Frecuencia} & \textbf{Importancia} \\
\hline
Monitoreo de variables climáticas & Alta & \textbf{Crítica} & Media & \textbf{Crítica} \\
\hline
Inspección física de parcelas (plagas/riego) & Alta & \textbf{Crítica} & Alta & \textbf{Crítica} \\
\hline
Registro y análisis de trazabilidad histórica & Alta & \textbf{Crítica} & Baja & \textbf{Alta} \\
\hline
Búsqueda de especialistas & N/A & N/A & Media & \textbf{Crítica} \\
\hline
Emisión de diagnósticos y recetas técnicas & Alta & \textbf{Crítica} & N/A & N/A \\
\hline
Gestión de captación de nuevos clientes & Baja & \textbf{Alta} & N/A & N/A \\
\hline
Evaluación fenológica (predicción de vecería) & Media & Media & Alta & \textbf{Crítica} \\
\hline
Aplicación de controles y fertilizantes & N/A & N/A & Media & \textbf{Alta} \\
\hline
\end{tabular}
\caption{User Task Matrix de los segmentos considerados.}
\end{table}

<br>

La matriz muestra una coincidencia clara entre ambos perfiles en dos tareas del estado actual: el monitoreo de variables climáticas y la inspección física de parcelas, que concentran una frecuencia alta y una importancia crítica para la toma de decisiones. También comparten la necesidad de mantener trazabilidad histórica, aunque con distinto peso operativo: para Paco Pérez es clave porque sustenta sus diagnósticos técnicos, mientras que para Pedro Huamán funciona como apoyo para organizar el manejo del cultivo.

En términos de apoyo para la ejecución, Paco Pérez requiere información consolidada, historial técnico, registros de campo y elementos que le permitan priorizar visitas y emitir recomendaciones con rapidez; Pedro Huamán necesita alertas oportunas, acceso simple a orientación especializada y referencias claras para decidir cuándo inspeccionar, corregir o escalar un problema. Esta lectura permite ver que la matriz no solo lista tareas, sino también el tipo de soporte que cada rol demanda para avanzar en su trabajo.

Las diferencias más marcadas aparecen en el foco de trabajo. Paco Pérez concentra mayor frecuencia en la emisión de diagnósticos y recetas técnicas, así como en la captación y seguimiento de clientes, lo que refleja una rutina más orientada al servicio especializado y a la coordinación técnica. Pedro Huamán, en cambio, asigna mayor importancia a la búsqueda de especialistas, a la evaluación fenológica y a la aplicación de controles y fertilizantes, lo que evidencia una gestión más centrada en la producción y en la respuesta directa sobre la parcela. En conjunto, la matriz describe el estado actual de ambos usuarios y permite identificar dónde Viora debe reducir fricción sin convertir estas tareas reales en funcionalidades del software.

\clearpage

### User Journey Mapping

En esta sección se presentan los User Journey Maps, herramientas que permiten visualizar la experiencia actual de los segmentos objetivo mediante una síntesis de los hallazgos obtenidos en las entrevistas y las fichas de User Persona. Estos artefactos diagraman el recorrido cronológico del usuario a través de cinco etapas fundamentales: Aware (descubrimiento), Join (búsqueda de soporte), Use (intervención), Develop (aplicación) y Leave (cierre). La estructura permite contrastar las acciones y metas del usuario con sus fluctuaciones emocionales, facilitando la identificación de puntos de dolor donde la plataforma Viora puede optimizar procesos que hoy son puramente manuales o reactivos.

<br>

El User Journey Map de Pedro Huamán revela una degradación crítica en la experiencia del productor durante las fases de contacto y diagnóstico. El análisis destaca que la dependencia de canales informales y la falta de datos climáticos locales generan una incertidumbre que impacta directamente en la rentabilidad de la cosecha, validando la necesidad de un sistema de alertas proactivas. Elaboración propia.

<br>

\begin{figure}[H]
\caption{User Journey Map del segmento Productor Olivarero - Pedro Huamán.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/Journey Map Pedro Huaman.png}
\caption*{\textit{Nota.} El diagrama detalla las fases de interacción, estados emocionales y puntos de dolor identificados para el arquetipo del productor tecnificado. Elaboración propia.}
\end{figure}

<br>

El User Journey Map de Paco Pérez expone la ineficiencia operativa del especialista debido a la fragmentación de la información y la captación pasiva de clientes. El diagrama evidencia una desconexión crítica entre el levantamiento de datos en campo y la gestión administrativa en gabinete, subrayando la urgencia de centralizar el historial técnico y georreferenciar la demanda para maximizar la productividad del profesional. Elaboración propia.

<br>

\begin{figure}[H]
\caption{User Journey Map del segmento Profesional Especializado En Control De Plagas Agrícolas - Paco Pérez.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/Journey Map Paco Perez.png}
\caption*{\textit{Nota.} El diagrama detalla las fases de interacción, estados emocionales y puntos de dolor identificados para el arquetipo del ingeniero fitosanitario. Elaboración propia.}
\end{figure}

### Empathy Mapping

En esta sección se detalla el proceso de elaboración de los Empathy Maps, herramientas diseñadas para comprender el espectro emocional y cognitivo de nuestros segmentos objetivo. El proceso comenzó con el análisis de los User Persona (Pedro Huamán y Paco Pérez), situándolos en el centro del ejercicio para alinear la visión del equipo con su realidad cotidiana. A través de este análisis, se clasificaron las percepciones sobre su entorno, sus círculos de influencia, sus acciones habituales y las preocupaciones que manifiestan en su día a día.
Se identificó los Pains (puntos de dolor y frustraciones) y los Gains (beneficios y resultados esperados) de cada perfil. De esta manera, se establece una base de conocimiento empático que justifica las funcionalidades de la plataforma Viora, asegurando que la solución responda a las necesidades humanas y operativas detectadas en el sector olivícola.

El Empathy Map de Pedro Huamán sintetiza la experiencia de un productor que gestiona sus cultivos bajo una constante vulnerabilidad climática. El análisis resalta su preocupación por la seguridad de su patrimonio y la falta de soporte técnico oportuno, lo que motiva su deseo de contar con herramientas que le brinden mayor control y previsibilidad sobre su producción. Elaboración propia.

<br>

\begin{figure}[H]
\caption{Empathy Map del segmento Productor Olivarero - Pedro Huamán.}
\centering
\includegraphics[width=0.3\textwidth]{report/assets/needfinding/Empathy_map_Pedro_Huaman.png}
\caption*{\textit{Nota.} El mapa de empatía de Pedro Huamán describe su entorno y estado mental, identificando la incertidumbre climática como el principal motor de cambio tecnológico. Elaboración propia.}
\end{figure}

<br>

El Empathy Map de Paco Pérez refleja la saturación de un especialista fitosanitario debido a la carga administrativa y la falta de herramientas para organizar su trabajo en campo. El mapa evidencia su necesidad de profesionalizar sus servicios mediante la digitalización, buscando eliminar la ineficiencia logística y recuperar el rigor técnico en sus recomendaciones. Elaboración propia.

<br>

\begin{figure}[H]
\caption{Empathy Map del segmento Profesional Especializado En Control De Plagas Agrícolas - Paco Pérez.}
\centering
\includegraphics[width=0.3\textwidth]{report/assets/needfinding/Empathy_map_Paco_Perez.png}
\caption*{\textit{Nota.} El mapa de empatía de Paco Pérez destaca el agotamiento por procesos manuales y su aspiración hacia una gestión técnica basada en datos precisos. Elaboración propia.}
\end{figure}

## Big Picture Event Storming

En esta sección se presenta el Big Picture Event Storming, una metodología de modelado colaborativo empleada por el equipo para explorar el dominio del negocio de manera holística. El proceso se centró en alinear la visión técnica y de negocio de Viora, permitiéndonos visualizar el flujo completo de eventos. Mediante esta sesión, el equipo logró identificar no solo la secuencia lógica del sistema, sino también las áreas de mayor incertidumbre y las oportunidades críticas para aportar valor al sector agrícola.

En la primera fase, el equipo se enfocó en la identificación de los Domain Events. Esta exploración permitió mapear de forma cronológica los cambios de estado significativos en el ecosistema, asegurando que todos los eventos críticos del ciclo de cultivo y control de plagas fueran capturados sin restricciones iniciales.

<br>

\begin{figure}[H]
\caption{Fase 1: Exploración no estructurada de eventos de dominio.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-1.jpg}
\caption*{\textit{Nota.} Captura de la lluvia de ideas inicial sobre los eventos significativos en el proceso agrícola. Elaboración propia.}
\end{figure}

<br>

Durante la segunda fase, se procedió a organizar los eventos en una línea de tiempo lógica y a identificar los Hotspots. Estos puntos señalan áreas de fricción, cuellos de botella o dudas técnicas, permitiendo al equipo priorizar las zonas donde Viora debe aportar una solución más robusta para reducir la incertidumbre del usuario.

<br>

\begin{figure}[H]
\caption{Fase 2: Línea de tiempo.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-2.jpg}
\caption*{\textit{Nota.} Organización de los eventos. Elaboración propia.}
\end{figure}

<br>

En la fase final, se integraron los External Systems y los Actors. Esta etapa permitió definir las responsabilidades dentro del sistema y cómo las interacciones humanas y automáticas transforman los datos recolectados en acciones ejecutables.

<br>

\begin{figure}[H]
\caption{Fase 3: Definición de External Systems y Actors del sistema.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3.jpg}
\caption*{\textit{Nota.} External Systems y Actors identificados. Elaboración propia.}
\end{figure}

<br>

\begin{figure}[H]
\caption{Fase 4: Linea de tiempo con External Systems y Actors.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-2.jpg}
\caption*{\textit{Nota.} Mapeo final que vincula a los usuarios con las External Systems y Actors dentro de la plataforma. Elaboración propia.}
\end{figure}

<br>

\begin{figure}[H]
\caption{Fase 4: Linea de tiempo con External Systems y Actors.}
\centering
\includegraphics[width=0.6\textwidth]{report/assets/needfinding/fase-3-2-1.jpg}
\caption*{\textit{Nota.} Las capturas representan acercamientos específicos al tablero de la Fase 4, facilitando la lectura de los External Systems y Actors que intervienen en cada etapa del proceso agrícola. Elaboración propia.}
\end{figure}

<br>

\begin{figure}[H]
\caption{Fase 4: Linea de tiempo con External Systems y Actors.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-2-2.jpg}
\caption*{\textit{Nota.} Las capturas representan acercamientos específicos al tablero de la Fase 4, facilitando la lectura de los External Systems y Actors que intervienen en cada etapa del proceso agrícola. Elaboración propia.}
\end{figure}

<br>

\begin{figure}[H]
\caption{Fase 4: Linea de tiempo con External Systems y Actors.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-2-3.jpg}
\caption*{\textit{Nota.} Las capturas representan acercamientos específicos al tablero de la Fase 4, facilitando la lectura de los External Systems y Actors que intervienen en cada etapa del proceso agrícola. Elaboración propia.}
\end{figure}

<br>

\begin{figure}[H]
\caption{Fase 4: Linea de tiempo con External Systems y Actors.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-2-4.jpg}
\caption*{\textit{Nota.} Las capturas representan acercamientos específicos al tablero de la Fase 4, facilitando la lectura de los External Systems y Actors que intervienen en cada etapa del proceso agrícola. Elaboración propia.}
\end{figure}

<br>

\begin{figure}[H]
\caption{Fase 4: Linea de tiempo con External Systems y Actors.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/fase-3-2-5.jpg}
\caption*{\textit{Nota.} Las capturas representan acercamientos específicos al tablero de la Fase 4, facilitando la lectura de los External Systems y Actors que intervienen en cada etapa del proceso agrícola. Elaboración propia.}
\end{figure}

<br>

Como resultado de estas tres fases, el equipo ha logrado consolidar una visión compartida y profunda del dominio. La transición desde la exploración libre de eventos hasta la estructuración de comandos y actores ha permitido que Viora no se perciba solo como una herramienta técnica, sino como una solución integrada que responde a eventos reales del campo. Este mapa de dominio servirá como el cimiento principal para el diseño de la arquitectura de software y la definición de las historias de usuario en las siguientes etapas del proyecto.

## Ubiquitous Language

- **Alternate bearing (vecería o alternancia productiva)**: Fenómeno fisiológico del cultivo del olivo caracterizado por la alternancia de ciclos de alta producción con años de escasa o nula cosecha, fuertemente condicionado por la variabilidad térmica y las fallas fisiológicas.
- **Agrochemicals / phytosanitary products (agrofármacos / fitosanitarios)**: Sustancias o insumos químicos aplicados reactiva o preventivamente al cultivo para controlar plagas y enfermedades, o para estabilizar la producción de la planta.
- **Chill portions / chill hours (porciones de frío / horas de frío)**: Medida agronómica que cuantifica la acumulación de frío invernal nocturno que la planta requiere de forma imperativa para lograr un adecuado proceso de floración y cuajado.
- **Dynamic nutrition (nutrición dinámica)**: Planes de fertilización y abono que no siguen un calendario fijo, sino que se ajustan de manera proactiva según las variaciones del clima, las características edafológicas del suelo y las necesidades de la planta.
- **El Niño-Southern Oscillation / ENSO (fenómeno ENOS)**: Evento climático anómalo que genera un incremento perjudicial de las temperaturas invernales en la zona agrícola, bloqueando el desarrollo fisiológico normal del olivo y reduciendo drásticamente su productividad.
- **Epidemiological alert / phytosanitary alert (alerta epidemiológica / alerta fitosanitaria)**: Aviso temprano dirigido a productores y especialistas sobre el riesgo inminente de propagación de enfermedades en las parcelas, calculado a partir de anomalías térmicas e índices de vegetación.
- **Fruit set (cuajado)**: Etapa crítica en el desarrollo fenológico del olivo en la cual la flor se transforma exitosamente en fruto, proceso que depende de haber acumulado el frío necesario.
- **Olive yield / oil yield (rendimiento del olivar / rendimiento de aceite)**: Volumen total y calidad de la cosecha obtenida en una campaña, cuyo destino comercial se divide principalmente entre aceituna de mesa y extracción de aceite.
- **Phenology (fenología)**: Estudio de las diferentes etapas de desarrollo del ciclo natural del cultivo a lo largo del año, las cuales sufren alteraciones severas cuando ocurren variaciones climáticas extremas.
- **Plot traceability (trazabilidad de la parcela / historial de campo)**: Registro detallado y acumulativo del manejo de un fundo (incluyendo fechas de podas, fertilizaciones previas y análisis de suelo) que el especialista necesita para emitir un diagnóstico preciso y recetar soluciones.
- **Pruning (poda)**: Práctica física de manejo agronómico (unilateral o bilateral) sobre los árboles de olivo, ejecutada para controlar el crecimiento vegetativo y mitigar los efectos negativos de la alternancia productiva.
- **Quarantine pest (plaga cuarentenaria)**: Patógeno letal y de altísima capacidad de propagación (como la _Xylella fastidiosa_) cuya detección exige protocolos inmediatos de contención para evitar millonarias pérdidas a nivel regional.
- **Vegetation index (índice de vegetación)**: Indicador geoespacial, como el NDVI, que permite evaluar a distancia el nivel de vigor, la salud foliar o la severidad del daño en las plantas sin necesidad de sensores físicos en tierra.
- **Water stress (estrés hídrico)**: Condición fisiológica adversa que sufre el cultivo debido a la deficiencia de agua o a la presión excesiva sobre los recursos hídricos, agravando el impacto de cualquier plaga.
- **Wilting (marchitez)**: Estado visible de afectación en los tejidos de la planta provocado por ataque avanzado de plagas o déficit de agua, que puede evolucionar hasta un punto permanente de no retorno.
- **Plot condition assessment (evaluación de condición de parcela):** Revisión técnica preliminar que realiza el especialista sobre los datos satelitales y el contexto de la alerta para medir la gravedad del problema en campo _antes_ de aceptar un caso o emitir una cotización.
- **Technical portfolio (portafolio técnico):** Perfil público, dinámico y editable del especialista fitosanitario en el directorio, donde formaliza su metodología, áreas de dominio y casos de éxito para permitir una elección basada en afinidad técnica.
- **Availability status (estado de disponibilidad):** Interruptor lógico que permite al especialista ocultarse temporalmente de las búsquedas del directorio y del motor de _matchmaking_ cuando no tiene capacidad operativa para atender nuevas emergencias.
- **Service quote (cotización de servicio):** Propuesta económica formal enviada por el especialista al productor para la atención de una alerta. Su aceptación desencadena la apertura del canal directo de comunicación.
- **Private recommendation log (bitácora de recomendación privada):** Sistema interno de _feedback_ donde el productor registra si estaría dispuesto a contactar con el mismo especialista.
- **Application window (ventana de aplicación):** Rango de tiempo óptimo, validado algorítmicamente por el sistema contra pronósticos climáticos (precipitación, humedad), que asegura la efectividad del tratamiento fitosanitario y evita riesgos de lavado o degradación.
- **Application log (confirmación de aplicación):** Acción digital inmutable mediante la cual el productor certifica haber ejecutado la receta agrícola o el plan de nutrición sugerido, cerrando el bucle de trazabilidad para que el algoritmo predictivo aprenda para la siguiente campaña.
- **Intervention expense (gasto de intervención):** Registro financiero de control interno del productor que consolida el pago de honorarios del especialista y el costo real de los insumos químicos, permitiendo visibilizar la rentabilidad tras la crisis.
- **Preventive management plan (plan de manejo preventivo):** Estrategia a largo plazo estructurada por el especialista tras resolver una intervención reactiva, diseñada para estabilizar la parcela y migrar hacia un modelo de negocio de asesoría continua.
- **Misconduct report (reporte de mala conducta):** Queja o denuncia formal emitida por cualquier usuario respecto a infracciones éticas, inasistencias en campo o cobros abusivos.
- **Trial subscription (suscripción de prueba):** Periodo inicial con garantía de retorno o libre de riesgo que reduce la fricción financiera, permitiendo a productores y especialistas experimentar el valor del monitoreo y la conexión en el ecosistema.
- **Strike / Penalty point (penalización / marca de inconducta)**: Unidad de sanción acumulativa y oculta al público, asignada automáticamente por el sistema al perfil de un usuario (Productor o Especialista) tras la validación de un Misconduct report. Alcanzar umbrales específicos de strikes detona acciones autónomas de moderación, tales como la inhabilitación temporal (AccountSuspended) o la expulsión definitiva del ecosistema (AccountBanned).
- **Viora Ecosystem (Ecosistema Viora):** Entorno digital colaborativo y transaccional donde productores y especialistas interactúan para la gestión de riesgos fitosanitarios. Ambos actores están sujetos a las mismas reglas de moderación y permanencia en la plataforma.

\clearpage


