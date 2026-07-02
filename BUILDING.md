# Guía de Compilación del Informe

Esta guía explica cómo cualquier integrante del equipo puede generar el PDF del informe en **Windows** desde cero.

---

## Requisitos previos

Solo necesitas **Windows 10/11** y conexión a internet. El script de setup instala todo lo demás automáticamente.

---

## 1. Clonar el repositorio

```powershell
git clone https://github.com/upc-pre-1asi0730-2610-10215-arcadiadevs/viora-report.git
cd viora-report
```

---

## 2. Instalar dependencias (una sola vez)

Abre **PowerShell** (no hace falta ser administrador) y ejecuta:

```powershell
powershell -ExecutionPolicy Bypass -File scripts\setup.ps1
```

Este script instala y configura automáticamente:

| Herramienta | Versión mínima | Para qué sirve |
|-------------|---------------|----------------|
| [Scoop](https://scoop.sh) | cualquiera | Gestor de paquetes (instala todo lo demás) |
| [Git for Windows](https://git-scm.com) | 2.x | Necesario para compilar el proyecto |
| GNU Make | 4.x | Orquesta el proceso de compilación |
| Pandoc | 3.x | Convierte Markdown → PDF |
| MiKTeX | 25.x | Motor LaTeX (`xelatex`) para generar el PDF |
| Java (OpenJDK) | 11+ | Necesario para ejecutar PlantUML |

> **Nota:** El script también agrega los paths necesarios al PATH de usuario y descarga los paquetes LaTeX requeridos por la plantilla Eisvogel.

### ⚡ Abre una terminal nueva antes de continuar

El PATH solo se actualiza en terminales nuevas.

---

## 3. Verificar instalación

En una **terminal nueva**, ejecuta:

```powershell
make --version    # GNU Make 4.x
pandoc --version  # pandoc 3.x
xelatex --version # MiKTeX ...
java -version     # openjdk ...
```

---

## 4. Generar el informe

### Opción A — con `make` (directo)

```powershell
make report
```

El PDF se genera en `build/upc-pre-202610-1asi0730-10215-ArcadiaDevs-report-avXtbX.pdf`.

---

## 5. Otros targets disponibles

| Comando | Descripción |
|---------|-------------|
| `make report` | Genera el informe completo (PDF) |
| `make c4-diagrams` | Solo regenera los diagramas PlantUML |
| `make clean` | Elimina el directorio `build/` |
| `make help` | Muestra la lista de comandos disponibles |

---

## 6. Tiempos de compilación esperados

| Fase | Tiempo aprox. |
|------|--------------|
| Generación de diagramas (PlantUML) | 10–30 s |
| Compilación del PDF (xelatex) | 3–10 min (según tu hardware) |

> La primera compilación puede tardar más porque MiKTeX descarga paquetes LaTeX faltantes automáticamente.

---

## Solución de problemas

### `xelatex not found`

MiKTeX no está en el PATH. Reinstala con:
```powershell
scoop uninstall miktex
scoop install miktex
```

### `java not found` / diagramas no se generan

```powershell
scoop install openjdk
```

O instala cualquier JDK 11+ y asegúrate de que `java` esté en el PATH.

### Paquete LaTeX faltante (`!LaTeX Error: File '...' not found`)

Ejecuta el setup de nuevo para reinstalar paquetes:
```powershell
powershell -ExecutionPolicy Bypass -File scripts\setup.ps1
```

O instala el paquete manualmente:
```powershell
miktex packages install <nombre-del-paquete>
```

### Warnings en la salida (no son errores)

Los siguientes mensajes son **warnings inofensivos** — el PDF se genera correctamente:

- `LaTeX Warning: Label 'fig:...' multiply defined` → hay labels duplicados en el markdown
- `Missing character: There is no ^^B in font` → caracteres de control invisibles, sin impacto visual

---

## Estructura del proyecto

```
viora-report/
├── Makefile                    # Orquestación del build
├── scripts/
│   └── setup.ps1               # Instala dependencias (ejecutar una vez)
├── pandoc/
│   ├── report.yaml             # Configuración de pandoc
│   ├── csl/apa-7.csl           # Estilo de citas APA 7
│   └── templates/eisvogel.tex  # Plantilla LaTeX
├── lib/
│   └── plantuml.jar            # Generador de diagramas
├── report/
│   ├── front-matter/           # Portada, versiones, índice, etc.
│   ├── chapters/               # Capítulos del informe (10–50)
│   ├── back-matter/            # Conclusiones, bibliografía, anexos
│   ├── bibliography/           # references.bib
│   └── assets/                 # Imágenes y diagramas
└── build/                      # Salida del build (ignorado en git)
```

---

## Personalizar el JAVA_HOME

Si tienes un JDK instalado en una ruta distinta a la predeterminada de Scoop, puedes sobrescribir:

```powershell
make report JAVA_HOME="C:/ruta/a/tu/jdk"
```
