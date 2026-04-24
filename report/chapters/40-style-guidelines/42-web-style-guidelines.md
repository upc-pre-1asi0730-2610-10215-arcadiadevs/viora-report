### Web Style Guidelines

Los diferentes marcos y elementos interactivos que definen la plataforma de Viora se materializan operativamente mediante el uso extensivo de los componentes nativos de la librería **PrimeVue**, aprovechando el ecosistema reactivo de **Vue.js** y garantizando la modularidad técnica de todos nuestros diseños.

1. **Grid System**

   Para mantener la consistencia en el diseño de paneles complejos y dashboards de monitoreo, la interfaz adopta el sistema de retículas CSS de la librería **PrimeFlex** sobre una estructura central de **Vue Framework**.
   - **Sustento de diseño:** Se utiliza inherentemente una rejilla de _12 columnas_ sumamente flexible de la capa de PrimeFlex. Este estándar CSS adaptado agiliza el re-ordenamiento automatizado de los widgets de datos. Como resultado, gráficos de temperatura y umbrales de plagas no solo escalan, sino que previenen la sobrecarga visual.

  <br>

\begin{figure}[H]
\caption{Sistema de retícula y grilla responsiva para Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/01-Grid-System.jpg}
\caption*{\textit{Nota.} Configuración de columnas, márgenes y canales para Desktop HD, Desktop y Mobile. Elaboración propia.}
\end{figure}

<br>

2. **Textfields**

   La entrada de datos precisa es soportada desde el componente **InputText** o selectores predeterminados de **PrimeVue** (ej., InputNumber o FloatLabel) de forma directa en vue.js.
   - **Sustento de diseño:** Integrar formularios envueltos en _FloatLabel_ nativos garantiza la visualización inmediata de estados clave de Material Design, simplificándose el ingreso técnico. Esto resulta especialmente importante al teclear coordenadas en campo o al definir umbrales sanitarios de Xylella fastidiosa.

  <br>

\begin{figure}[H]
\caption{Especificaciones de campos de entrada de texto de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/02-Textfields.jpg}
\caption*{\textit{Nota.} Definición de variantes (con iconos, etiquetas) y estados del sistema (Focus, Error, Disabled). Elaboración propia.}
\end{figure}

<br>

3. **Button & Link**

   La interactividad para las tareas operativas de monitoreo será cubierta primordialmente por las diversas directivas del componente `<Button />` de PrimeVue que materializan el Material Design mediante estilos precargados.
   - **Sustento de diseño:** Este framework dicta jerarquías estandarizadas:
     - Primarios (_Severity Primary_): Colores fuertes y predefinidos.
     - Secundarios (_Outlined Buttons_): Bordes remarcados para atenuar acciones que no requieran prioridad.
     - Enlaces y Terciarios (_Text Buttons_): Sin fondo para navegación directa a pantallas anidadas en el **Vue Router**.

  <br>

\begin{figure}[H]
\caption{Estilos de botones, enlaces y acciones interactivas de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/03-Button-&-Link.jpg}
\caption*{\textit{Nota.} Jerarquía de botones por tamaño (Small, Medium, Large) y estilos aplicados a dispositivos móviles. Elaboración propia.}
\end{figure}

<br>

4. **Shadows & Blurs**

   Utilizamos la profundidad visual para organizar la información en capas lógicas.
   - **Sustento de diseño:** Se aplican sombras suaves (soft shadows) para dar elevación a elementos interactivos como tarjetas de resumen de sensores o cuadros de mando. Los efectos de desenfoque (blurs) se reservan para fondos de ventanas modales o menús desplegables, lo que ayuda a mantener la atención del usuario en la tarea activa (como la confirmación de un riego) sin perder el contexto de la pantalla principal.

  <br>

\begin{figure}[H]
\caption{Guía de elevación, sombras y efectos de transparencia de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/04-Shadows-&-Blurs.jpg}
\caption*{\textit{Nota.} Parámetros técnicos de Drop Shadows y efectos de Glassmorphism para la profundidad visual. Elaboración propia.}
\end{figure}

<br>

5. **Components**

   La reutilización operativa de UI pre-construida de **PrimeVue** anula la sobrecarga técnica, reduciendo el código fuente.
   - **Sustento de diseño:** Integración expedita de componentes funcionales listos, como `<Checkbox>`, `<RadioButton>`, o controles de estado como `<InputSwitch>`, y el versátil `<Avatar />` para la visibilidad de perfiles. Enlazar componentes nativos a modelos reactivos de **Vue** (`v-model`) nos asegura una estandarización veloz en todo el back-office del sistema Viora.

  <br>

\begin{figure}[H]
\caption{Componentes de selección y elementos de identidad de usuario de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/05-Components.jpg}
\caption*{\textit{Nota.} Definición de estilos para herramientas de selección (Checkbox, Radio, Toggle) y variantes de avatares con estados activos. Elaboración propia.}
\end{figure}

<br>

\newpage
