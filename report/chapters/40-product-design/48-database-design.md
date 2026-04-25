## Database Design

En esta sección se presentan los diagramas de base de datos que modelan la persistencia de información para cada bounded context identificado en la arquitectura de Viora. El diseño ha sido elaborado de forma consistente con los diagramas de clases del Software Object-Oriented Design presentados en la sección anterior, traduciendo las entidades del dominio a un esquema relacional que refleja fielmente las responsabilidades de cada contexto delimitado.

El motor de base de datos seleccionado es **PostgreSQL**, desplegado como servicio gestionado mediante **Azure Database for PostgreSQL**. Esta elección responde a la necesidad de contar con un sistema relacional open-source, robusto y escalable, que además permite la integración nativa de la extensión **PostGIS** para el almacenamiento y procesamiento de datos geoespaciales, indispensable para la gestión de polígonos de parcelas y el análisis territorial dentro de los bounded contexts de monitoreo agronómico y vigilancia epidemiológica. La capa de acceso a datos se implementa mediante **Entity Framework Core** como ORM, facilitando el mapeo objeto-relacional y la gestión de migraciones.

Las convenciones adoptadas en el diseño son las siguientes:

- **Nomenclatura en inglés**: Todos los nombres de tablas, columnas y restricciones se encuentran en idioma inglés, en coherencia con las convenciones de codificación del proyecto.
- **Naming convention**: Se utiliza **PascalCase** para los nombres de tablas y columnas, alineándose con las convenciones de Entity Framework Core y C\#.
- **Claves primarias**: Cada tabla cuenta con una columna `Id` de tipo `INT` con autoincremento como clave primaria.
- **Claves foráneas**: Las relaciones entre tablas se expresan mediante columnas que referencian la clave primaria de la tabla relacionada, con la restricción `FOREIGN KEY` correspondiente.
- **Tipos de datos**: Se emplean tipos estándar de PostgreSQL (`VARCHAR`, `INT`, `DECIMAL`, `TIMESTAMP`, `BOOLEAN`, `DOUBLE PRECISION`, `TEXT`) y, donde corresponde, tipos geoespaciales de PostGIS (`GEOMETRY`).
- **Constraints**: Se incluyen restricciones `NOT NULL`, `UNIQUE`, `CHECK` y `DEFAULT` según la lógica de negocio de cada entidad.

A continuación se presentan los diagramas de base de datos organizados por bounded context.

### Database Diagrams

#### IAM Bounded Context

Este diagrama modela la persistencia del módulo de Identity & Access Management, responsable del registro, autenticación mediante JWT y el control de acceso basado en roles. La tabla `Users` constituye la raíz de identidad del sistema y es referenciada por múltiples bounded contexts como clave foránea.

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context IAM.}
    \centering
    \includegraphics[width=0.45\textwidth]{report/assets/datbase-design/iam-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente al módulo de Identity \& Access Management. Elaboración propia.}
\end{figure}

#### Profile & Asset Management Bounded Context

Este diagrama cubre la gestión de perfiles de usuarios (productores y especialistas), incluyendo la información personal base y la extensión diferenciada para especialistas con sus credenciales, área de especialización y estado de disponibilidad. La tabla `Profiles` mantiene una relación uno a uno con `Users`, mientras que `SpecialistProfiles` extiende opcionalmente la información del perfil para el rol de especialista.

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context Profile \& Asset Management.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/datbase-design/profile-and-asset-management-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente a la gestión de perfiles de productores y especialistas. Elaboración propia.}
\end{figure}

#### Agronomic Monitoring & Prediction Bounded Context

Este bounded context concentra la mayor densidad de tablas del sistema, abarcando la gestión de parcelas con datos geolocalizados, los registros agrometeorológicos sincronizados periódicamente desde APIs externas, el registro de horas frío para fenología del olivo, las predicciones de alternancia productiva, las estimaciones de rendimiento, las evaluaciones de riesgo y las alertas generadas por el motor de análisis predictivo. La tabla `Plots` actúa como aggregate root, concentrando las relaciones con los registros derivados del monitoreo y las predicciones. El campo `PolygonCoordinates` utiliza el tipo `GEOMETRY` de PostGIS para el almacenamiento nativo de polígonos geoespaciales. La tabla `Alerts`, si bien es consumida por el centro de notificaciones de la aplicación web, forma parte de este bounded context dado que su generación es responsabilidad directa del Risk Engine que evalúa amenazas fenológicas, meteorológicas, epidemiológicas y de facturación sobre las parcelas.

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context Agronomic Monitoring \& Prediction.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/datbase-design/agronomic-monitoring-and-prediction-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente al core domain de monitoreo agronómico y predicción. Elaboración propia.}
\end{figure}

#### Epidemiological Surveillance Bounded Context

El bounded context de vigilancia epidemiológica gestiona el ciclo completo desde el reporte de síntomas fitosanitarios hasta la validación de brotes, la declaración de zonas de cuarentena y la emisión de alertas comunitarias. Las tablas reflejan la trazabilidad del flujo: un `SymptomReport` puede derivar en una `OutbreakValidation`, la cual puede activar una `QuarantineZone` que a su vez genera `CommunityAlerts`. El campo `PolygonCoordinates` en `QuarantineZones` emplea el tipo `GEOMETRY` de PostGIS para la delimitación geoespacial de las zonas de riesgo.

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context Epidemiological Surveillance.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/datbase-design/epidemiological-surveillance-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente al core domain de vigilancia epidemiológica y prospección territorial. Elaboración propia.}
\end{figure}

#### Intervention Marketplace Bounded Context

El marketplace de intervenciones modela el flujo transaccional completo entre productores y especialistas: desde la solicitud de intervención, pasando por la cotización económica, hasta la emisión de la prescripción técnica post-inspección. La tabla `InterventionRequests` actúa como aggregate root, vinculando al productor solicitante, la parcela objetivo, el especialista asignado, y las entidades derivadas de cotización y prescripción con relaciones de composición (uno a uno opcional).

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context Intervention Marketplace.}
    \centering
    \includegraphics[width=1\textwidth]{report/assets/datbase-design/intervention-marketplace-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente al core domain del marketplace de intervenciones especializadas. Elaboración propia.}
\end{figure}

#### Subscription, Billing & Referral Bounded Context

Este diagrama modela la lógica de suscripciones y facturación de la plataforma SaaS. La tabla `Subscriptions` registra el plan activo de cada usuario, su vigencia y si se trata de un periodo de prueba, mientras que `PaymentTransactions` almacena el historial de transacciones procesadas a través de la pasarela MercadoPago, incluyendo el identificador de transacción externo para la conciliación financiera.

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context Subscription, Billing \& Referral.}
    \centering
    \includegraphics[width=0.85\textwidth]{report/assets/datbase-design/suscription-billing-and-referral-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente al módulo de suscripciones y facturación. Elaboración propia.}
\end{figure}

#### Community Governance & Reputation Bounded Context

El bounded context de gobernanza comunitaria modela el sistema de moderación y penalizaciones de la plataforma. La tabla `StrikeRecords` registra cada sanción aplicada a un usuario, incluyendo el motivo, la fecha y su estado de vigencia, permitiendo al módulo de moderación evaluar el historial acumulado y aplicar restricciones progresivas —incluyendo el bloqueo definitivo— a los usuarios que incumplan los términos de servicio.

\begin{figure}[H]
    \caption{Diagrama de base de datos para el bounded context Community Governance \& Reputation.}
    \centering
    \includegraphics[width=0.55\textwidth]{report/assets/datbase-design/community-governance-and-reputation-bounded-context-database-diagram.png}
    \caption*{\textit{Nota.} Esquema relacional correspondiente al módulo de moderación y sistema de penalizaciones. Elaboración propia.}
\end{figure}

\newpage