# C4 Diagram Sources

Archivos fuente en Structurizr DSL de los diagramas C4 de la plataforma Viora.

## Diagramas

| Archivo | Nivel C4 | Descripcion |
|---------|----------|-------------|
| `VioraSystemContext.dsl` | Level 1 - System Context | Vista general del sistema, actores y sistemas externos |
| `VioraContainer.dsl` | Level 2 - Container | Contenedores internos: Landing Page, Web App, API, DB, Media Storage |
| `VioraApiComponents.dsl` | Level 3 - Component | Componentes internos de la API Application (ASP.NET Core) |
| `VioraLandingComponents.dsl` | Level 3 - Component | Componentes internos de la Landing Page (Vue.js) |
| `VioraWebAppComponents.dsl` | Level 3 - Component | Componentes internos de la Web Application (Vue.js) |

## Como regenerar las imagenes

### Con Structurizr CLI

```bash
# Descargar structurizr-cli desde https://github.com/structurizr/cli/releases

# Generar PNG desde un archivo .dsl
structurizr-cli export -w VioraSystemContext.dsl -f png

# Generar todos los PNG de la carpeta
for f in *.dsl; do structurizr-cli export -w "$f" -f png; done
```

### Con VS Code

1. Instalar la extension **Structurizr** 
2. Abrir cualquier archivo `.dsl`
3. Usar la vista previa del diagrama

### Con Docker

```bash
docker run --rm -v "$(pwd)":/data structurizr/cli export -w /data/VioraSystemContext.dsl -f png
```

## Notas

- Los PNG generados deben colocarse en `report/assets/design-level-eventstorming/c4-diagrams/`
- Los nombres de archivo PNG deben coincidir con los nombres de los workspaces para mantener consistencia
