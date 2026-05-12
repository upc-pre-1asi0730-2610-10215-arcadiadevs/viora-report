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