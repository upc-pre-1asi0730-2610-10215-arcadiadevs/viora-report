### Sprint 2

#### Sprint Planning 2



#### Execution Evidence for Sprint Review

En esta sección se presenta la evidencia del incremento de software desarrollado durante el Sprint 2, centrado en la implementación del núcleo operativo de la plataforma Viora: el Dashboard de Monitoreo Agrícola. Este panel ha sido diseñado para transformar datos climáticos y satelitales complejos en indicadores visuales accionables para productores y especialistas fitosanitarios.
El objetivo principal de esta ejecución fue consolidar una interfaz centralizada que permitiera la supervisión multizona en tiempo real. A continuación, se detallan los componentes clave implementados:

**Logros principales**
- KPIs de Estado General: Se desarrollaron tarjetas de indicadores críticos que muestran la salud de las parcelas, el estado del índice de vegetación (NDVI), la acumulación de horas frío (Chill Hours) y proyecciones de rendimiento.
- Gestión Geoespacial y Clima: Se integró un módulo de Plot Overview con mapas satelitales detallados (vía Mapbox), permitiendo la identificación precisa de sectores. Este se complementa con un resumen meteorológico local que incluye pronósticos a 3 días y detección de anomalías térmicas.
- Sistema de Alertas Inteligentes: Se implementó una tabla de notificaciones recientes categorizadas por severidad (Crítica, Alta, Media). Este sistema permite rastrear reportes de plagas, zonas de bajo NDVI y riesgos fenológicos de manera eficiente.
- Análisis de Tendencias: Se incorporó una herramienta de visualización avanzada (Trend Analysis) que correlaciona el índice NDVI con las porciones de frío acumuladas. Esta gráfica permite a los usuarios validar la recuperación del cultivo frente a eventos de bajo vigor y monitorear umbrales críticos de producción.

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-1.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-2.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-3.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\begin{figure}[H] \caption{Landing page - Parte 1.} \centering \includegraphics[width=0.8\textwidth]{report/assets/sprint-2/sprint-2-4.png} \caption*{\textit{Nota.} Visualización correspondiente del sprint 2. Elaboración propia.} \end{figure}

\textbf{Enlace al video:} \url{https://tinyurl.com/viora-sprint2}

#### Services Documentation Evidence for Sprint Review

Para el presente Sprint, no se ha incluido documentación de Web Services debido a que el desarrollo se ha concentrado en el núcleo operativo del Frontend (Dashboard de Monitoreo Agrícola) y la visualización de datos. La arquitectura de los servicios web y la especificación de Endpoints en OpenAPI se integrarán en ciclos futuros; por ahora, la plataforma utiliza datos simulados (mock data) para validar la experiencia de usuario y el despliegue de los indicadores agrícolas.

#### Software Deployment Evidence for Sprint Review

Durante el transcurso del Sprint 2, el equipo de desarrollo enfocó sus esfuerzos de despliegue en la transición de las aplicaciones hacia un entorno de producción altamente disponible. Tras haber consolidado la infraestructura base en el sprint anterior, en esta etapa se priorizó el despliegue de la Web Application (Dashboard de Monitoreo) y la actualización de los Web Services necesarios para la visualización de datos en tiempo real.

Evidencia de Implementación de Despliegue

A continuación, se detalla el proceso técnico ejecutado para publicar la versión estable de la plataforma:

1. Compilación y Despliegue de la Aplicación Web
El proceso inicia con la ejecución del comando npm run deploy, el cual dispara una cadena de eventos automatizados: primero, la compilación del entorno de producción mediante Vite, y posteriormente, la transferencia de los archivos generados hacia los servidores de Firebase Hosting.

\begin{figure}[H]
\centering
\includegraphics[width=0.8\textwidth]{report/assets/sprint-2/image1.jpg}
\caption{Ejecución exitosa del comando de despliegue y build de producción.}
\caption*{\textit{Nota.} La imagen muestra la transformación de módulos, la generación de la carpeta "dist" y la finalización del despliegue en la URL oficial. Elaboración propia.}
\end{figure}

