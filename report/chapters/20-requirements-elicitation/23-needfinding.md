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

El User Journey Map de Pedro Huamán expone una caída crítica en la experiencia del agricultor durante las etapas de primer contacto y diagnóstico. El análisis revela que la excesiva dependencia de recomendaciones 'boca a boca' y la carencia de datos climáticos precisos de su propia parcela sumergen al productor en un estado de alerta constante e inseguridad. Esta falta de visibilidad técnica impacta directamente en la rentabilidad de su cosecha, validando la urgencia de implementar un sistema de alertas proactivas que reduzca la frustración y el riesgo de pérdida del patrimonio familiar. Elaboración propia.

<br>

\begin{figure}[H]
\caption{User Journey Map del segmento Productor Olivarero - Pedro Huamán.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/needfinding/Journey Map Pedro Huaman.png}
\caption*{\textit{Nota.} El diagrama detalla las fases de interacción, estados emocionales y puntos de dolor identificados para el arquetipo del productor tecnificado. Elaboración propia.}
\end{figure}

<br>

El User Journey Map de Paco Pérez evidencia una degradación en la eficiencia del servicio durante las fases de logística y prospección. El diagnóstico destaca que la gestión basada en canales informales y la recolección manual de datos ambientales dispersos limitan su capacidad de respuesta inmediata y la precisión de sus recetas fitosanitarias. Esta fragmentación de la información genera una carga administrativa que compromete su prestigio profesional, fundamentando la necesidad de una plataforma centralizada que automatice el monitoreo y permita una intervención técnica preventiva y basada en evidencia. Elaboración propia.

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
