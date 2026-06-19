# C4 Diagram Sources

Archivos fuente PlantUML de los diagramas C4 de la plataforma Viora.

## Diagramas

| Archivo | Nivel C4 | Descripcion |
|---------|----------|-------------|
| `VioraSystemContext.puml` | Level 1 - System Context | Vista general del sistema, actores y sistemas externos |
| `VioraContainer.puml` | Level 2 - Container | Contenedores internos: Landing Page, Web App, API, DB, Media Storage |
| `VioraApiComponents.puml` | Level 3 - Component | Componentes internos de la API Application (Spring Boot) |
| `VioraLandingComponents.puml` | Level 3 - Component | Componentes internos de la Landing Page (Angular) |
| `VioraWebAppComponents.puml` | Level 3 - Component | Componentes internos de la Web Application (Angular) |

## Como regenerar las imagenes

### Con PlantUML (CLI)

```bash
# Instalar PlantUML (requiere Java)
# https://plantuml.com/download

# Generar PNG desde un archivo .puml
plantuml VioraSystemContext.puml

# Generar todos los PNG de la carpeta
plantuml *.puml
```

### Con VS Code

1. Instalar la extension **PlantUML** de jebbs
2. Abrir cualquier archivo `.puml`
3. Usar `Alt + D` para previsualizar o `Alt + Shift + D` para exportar PNG

### Con Docker

```bash
docker run --rm -v "$(pwd)":/data plantuml/plantuml *.puml
```

## Notas

- Los PNG generados deben colocarse en `report/assets/design-level-eventstorming/c4-diagrams/`
- Los nombres de archivo PNG deben coincidir con los nombres de los `@startuml` para mantener consistencia
