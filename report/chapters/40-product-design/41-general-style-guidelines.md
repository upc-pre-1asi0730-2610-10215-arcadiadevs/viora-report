# Capítulo IV: Product Design

## Style Guidelines

### General Style Guidelines

La siguiente guía se implementa operativamente bajo las directrices del lenguaje de diseño **Material Design**, sirviendo de base para la construcción de interfaces en **Vue.js** a través del framework de componentes **PrimeVue**.

1. **Identidad Visual y Concepto: Viora**
   El elemento iconográfico identitario de Viora (conocido coloquialmente como 'logo') se define técnicamente como un imagotipo. Su diseño no es casual, sino que representa la intersección estratégica entre la agronomía tradicional y la inteligencia tecnológica.
   - **Simbología del Ciclo:** La letra "O" actúa como una síntesis visual del ciclo de producción de la aceituna. Al encerrar la hoja dentro de esta forma circular, representamos el monitoreo integral y el control que el agricultor ejerce sobre su cultivo.
   - **Propuesta de Valor:** El diseño proyecta crecimiento y protección. La integración de la hoja sugiere una producción saludable, mientras que la estructura que la rodea simboliza la tecnología de Viora actuando como una barrera de seguridad frente a plagas y factores externos.
   - **Sustento de diseño:** Se apuesta por un estilo minimalista y moderno para transmitir solidez. En un sector donde la rentabilidad depende de variables críticas, la marca proyecta una imagen de evolución tecnológica que brinda confianza y estabilidad al agricultor.
   - **Reglas de uso:**
     - **Área de Reserva y Respeto Visual:** Se establece un perímetro de seguridad obligatorio alrededor del imagotipo para garantizar su jerarquía y evitar la contaminación visual con otros elementos gráficos. Este espacio de reserva, determinado proporcionalmente por la altura de la vocal "o" del logotipo, asegura que la marca respire y mantenga su impacto visual independientemente del soporte donde se aplique. Al respetar este vacío técnico, se previene que textos, bordes o imágenes externas interfieran con la lectura de la identidad, preservando la integridad del diseño en interfaces complejas.
     - **Escalabilidad y Dimensiones Mínimas:** Para salvaguardar la legibilidad del elemento iconográfico, especialmente la síntesis de la hoja dentro del ciclo de producción, se han definido límites de reducción técnica. En entornos digitales, el **imagotipo** no deberá aplicarse en un ancho inferior a los 80 píxeles, mientras que en medios impresos el límite se establece en 20 milímetros. Estas restricciones son críticas, ya que aseguran que se pueda identificar la marca claramente desde dispositivos móviles, incluso bajo condiciones de iluminación exterior o en pantallas de baja resolución.
     - **Comportamiento Cromático y Contraste:** La identidad visual de Viora debe adaptarse a diversas condiciones de visualización mediante el uso de variantes en positivo y negativo. La versión principal en verde orgánico se empleará sobre fondos claros para transmitir frescura y conexión con la agronomía, mientras que la versión en blanco (negativa) se reserva para fondos oscuros o fotográficos, optimizando el contraste. Esta versatilidad permite que la plataforma mantenga una estética sólida tanto en interfaces de usuario diurnas como en modos oscuros diseñados para reducir la fatiga visual durante el monitoreo nocturno o técnico.
     - **Restricciones y Preservación de la Forma:** Cualquier alteración en la morfología del imagotipo queda estrictamente prohibida para evitar la degradación de la identidad de marca. Esto incluye la prohibición de estirar, comprimir o rotar el diseño, ya que cualquier distorsión anularía la percepción de estabilidad y solvencia que la plataforma busca proyectar. Asimismo, la relación espacial entre la intervención de la "o" y el resto de la tipografía debe permanecer inalterable, asegurando que el mensaje del "ciclo de producción controlado" se comunique siempre de manera coherente y profesional.
     - **Integración sobre Fondos Complejos:** Dada la naturaleza del sector, el **imagotipo** frecuentemente convivirá con material fotográfico de olivares o entornos rurales. En estos casos, se prohíbe la aplicación del logo directamente sobre fondos con texturas visuales densas que dificulten la lectura de la hoja integrada. Para estas situaciones, se debe priorizar el uso de la variante monocromática blanca o la implementación de una caja de color sólido con opacidad controlada, garantizando que el símbolo de Viora destaque como un sello de tecnología y protección sobre la imagen de la producción real.

<br>

\begin{figure}[H]
\caption{Imagen del Branding y logo de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/05-Logo.jpg}
\caption*{\textit{Nota.} Visualización correspondiente a la identidad visual y marca. Elaboración propia.}
\end{figure}

<br>

1. **Tipografía:**
   La plataforma Viora presentará dashboards, por lo que la lectura rápida y la claridad en la densidad de datos son primordiales.
   - **Sustento de diseño:** Se ha definido un sistema tipográfico dual que combina estética y funcionalidad:
     - **Caros:** Utilizada principalmente para la identidad y encabezados de alto impacto. Sus variantes Bold y Regular aportan personalidad y estructura visual a la marca.
     - **Inter:** Seleccionada como la fuente principal de la interfaz debido a su excepcional legibilidad en pantallas digitales. Al ser una fuente diseñada específicamente para UI, dictará la configuración principal tipográfica en toda la aplicación bajo Vue.js, garantizando que las métricas agrícolas sean fáciles de leer en diversos pesos (Regular y Semibold).
     - **Jerarquía Visual:** Se implementa una escala técnica estandarizada (desde tamaños Display a Body) que estructura todos los bloques de texto y componentes visuales dentro de PrimeVue, logrando una estética sin saturación visual.

  <br>

\begin{figure}[H]
\caption{Imagen de la tipografía de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/02-Typography-1.jpg}

\newpage

\vspace{1em}
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/02-Typography-2.jpg}
\caption*{\textit{Nota.} Selección de fuentes para títulos y cuerpo de texto que garantizan legibilidad. Elaboración propia.}
\end{figure}

<br>

3. **Colores:**
   Nuestra paleta de colores cromática está enfocada en el aspecto agrícola. Será implementada mediante el potente sistema de Theming (variables CSS) de **PrimeVue**, aplicando de forma nativa los colores primarios e instancias semánticas a todos los componentes de la interfaz, en estricto cumplimiento del **Material Design**.
   - **Sustento de diseño:**
     - Colores Primarios: Tonos basados en la naturaleza (verdes olivo, tonos tierra) que anclan la aplicación en su contexto real, configurados como el tema base global en Vue.js.
     - Colores Secundarios: Azules tecnológicos que representan variables climáticas (como el fenómeno ENOS) y el análisis de datos interactivos.
     - Colores Semánticos: Uso estricto de colores cálidos (rojos/amarillos) para el sistema de alertas tempranas y de validaciones ui, vitales para advertir sobre plagas como la Xylella fastidiosa.

  <br>

\begin{figure}[H]
\caption{Paleta de colores de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/01-Colors.jpg}
\caption*{\textit{Nota.} Definición de códigos hexadecimales y jerarquía cromática para la interfaz. Elaboración propia.}
\end{figure}

<br>

4. **Espaciado:** El uso del espacio en blanco es fundamental para evitar la sobrecarga de información.
   - **Sustento de diseño:** Hemos adoptado un sistema de espaciado basado en una cuadrícula base y apoyado en la biblioteca de utilidades **PrimeFlex**. Esto asegura consistencia visual en todas las pantallas, proporcionando a Vue.js las clases necesarias para separar adecuadamente los paneles de monitoreo y lograr un alivio de la carga visual de manera responsiva, permitiendo que la interfaz mantenga el estricto orden de las directivas de Material Design.

  <br>

\begin{figure}[H]
\caption{Espaciado de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/04-Spacing.jpg}
\caption*{\textit{Nota.} Guía de alineación y márgenes para la consistencia visual en web. Elaboración propia.}
\end{figure}

<br>

5. **Iconografía:** Los iconos funcionan como atajos visuales esenciales, especialmente en el trabajo de campo.
   - **Sustento de diseño:** Utilizamos **PrimeIcons** como conjunto base para las interacciones comunes (menús, notificaciones), complementado con vectores SVG exclusivos diseñados a la medida para variables de clima y gráficas exclusivas de la agrotecnología, manteniendo líneas limpias consistentes con el stroke natural de PrimeVue.

  <br>

\begin{figure}[H]
\caption{Sistema de iconografía para Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/03-Iconography.jpg}
\caption*{\textit{Nota.} Conjunto de símbolos visuales para la navegación y estados del sistema. Elaboración propia.}
\end{figure}

<br>

6. **Tono de Comunicación:** Dado el perfil de nuestros usuarios y la seriedad del contexto, nuestro tono de comunicación se define bajo las siguientes dimensiones:
   - **Serio:** Tratamos con el sustento económico de los productores y la salud de sus cultivos. El tono debe ser profesional y directo.
   - **Formal pero accesible:** Mantenemos la formalidad para proyectar autoridad técnica y confiabilidad, pero evitamos la jerga informática innecesaria para asegurar que los agricultores comprendan las alertas y recomendaciones fácilmente.
   - **Respetuoso:** Validamos el esfuerzo diario del productor, ofreciendo información sin ser condescendientes.
   - **Sereno:** Ante advertencias de riesgos climáticos o fitosanitarios, la plataforma debe transmitir control y calma, orientando al usuario hacia soluciones concretas en lugar de generar alarma innecesaria.

  <br>

\begin{figure}[H]
\caption{Definición del tono de voz y personalidad de Viora.}
\centering
\includegraphics[width=0.8\textwidth]{report/assets/style-guidelines/06-Communication-tone.jpg}
\caption*{\textit{Nota.} Atributos de comunicación que definen la personalidad de la marca: un equilibrio entre lo formal, serio, respetuoso y entusiasta. Elaboración propia.}
\end{figure}

<br>

\newpage
