# =============================================================================
# setup.ps1 — Instalación de dependencias para generar el PDF del informe
# =============================================================================
# Ejecutar UNA SOLA VEZ desde la raíz del repositorio:
#
#   powershell -ExecutionPolicy Bypass -File scripts/setup.ps1
#
# Requisitos previos: ninguno (el script instala Scoop si no está presente)
# =============================================================================

param(
    [switch]$SkipJava  # Usa -SkipJava si ya tienes un JDK instalado
)

$ErrorActionPreference = "Stop"

function Write-Step([string]$msg) {
    Write-Host "`n==> $msg" -ForegroundColor Cyan
}
function Write-Ok([string]$msg) {
    Write-Host "    [OK] $msg" -ForegroundColor Green
}
function Write-Warn([string]$msg) {
    Write-Host "    [!]  $msg" -ForegroundColor Yellow
}

Write-Host @"

  ╔══════════════════════════════════════════════════════════╗
  ║   Viora Report — Setup de herramientas para PDF          ║
  ╚══════════════════════════════════════════════════════════╝

"@ -ForegroundColor Magenta

# ─── 1. Instalar Scoop (si no está) ──────────────────────────────────────────
Write-Step "Verificando Scoop..."
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Warn "Scoop no encontrado. Instalando..."
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
    # Recargar PATH
    $env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","User") + ";" +
                [System.Environment]::GetEnvironmentVariable("PATH","Machine")
    Write-Ok "Scoop instalado."
} else {
    Write-Ok "Scoop ya instalado: $(scoop --version)"
}

# ─── 2. Agregar buckets necesarios ───────────────────────────────────────────
Write-Step "Configurando buckets de Scoop..."
scoop bucket add extras 2>$null
scoop bucket add main  2>$null
Write-Ok "Buckets: main, extras"

# ─── 3. Instalar herramientas ─────────────────────────────────────────────────
$tools = @(
    @{ name = "git";     check = "git";     bucket = "main" },
    @{ name = "make";    check = "make";    bucket = "main" },
    @{ name = "pandoc";  check = "pandoc";  bucket = "main" },
    @{ name = "miktex";  check = "xelatex"; bucket = "main" }
)

Write-Step "Instalando herramientas de compilación..."
foreach ($tool in $tools) {
    if (-not (Get-Command $tool.check -ErrorAction SilentlyContinue)) {
        Write-Warn "$($tool.name) no encontrado. Instalando..."
        scoop install "$($tool.bucket)/$($tool.name)"
        Write-Ok "$($tool.name) instalado."
    } else {
        Write-Ok "$($tool.name) ya instalado."
    }
}

# ─── 4. Java / JDK ───────────────────────────────────────────────────────────
if (-not $SkipJava) {
    Write-Step "Verificando Java (necesario para PlantUML)..."
    $javaOk = Get-Command java -ErrorAction SilentlyContinue
    if (-not $javaOk) {
        Write-Warn "Java no encontrado. Instalando OpenJDK via Scoop..."
        scoop install main/openjdk
        Write-Ok "OpenJDK instalado."
    } else {
        $javaVersion = & java -version 2>&1 | Select-String "version"
        Write-Ok "Java ya instalado: $javaVersion"
    }
} else {
    Write-Warn "Omitiendo instalación de Java (-SkipJava). Asegúrate de tener un JDK en PATH."
}

# ─── 5. Paquetes LaTeX necesarios (MiKTeX) ───────────────────────────────────
Write-Step "Instalando paquetes LaTeX requeridos por la plantilla Eisvogel..."
$latexPkgs = @(
    "adjustbox", "babel-german", "background", "bidi", "collectbox",
    "csquotes", "everypage", "filehook", "footmisc", "footnotebackref",
    "framed", "fvextra", "koma-script", "letltxmacro", "ly1",
    "mdframed", "mweights", "needspace", "pagecolor", "sourcecodepro",
    "sourcesanspro", "titling", "ucharcat", "ulem", "unicode-math",
    "upquote", "xecjk", "xurl", "zref", "multirow", "booktabs",
    "longtable", "float", "hyperref", "caption", "geometry"
)

foreach ($pkg in $latexPkgs) {
    miktex packages install $pkg 2>$null
}
Write-Ok "Paquetes LaTeX instalados."

# ─── 6. Verificación final ───────────────────────────────────────────────────
Write-Step "Verificación final..."
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","User") + ";" +
            [System.Environment]::GetEnvironmentVariable("PATH","Machine")

$checks = @(
    @{ cmd = "make";    args = "--version" },
    @{ cmd = "pandoc";  args = "--version" },
    @{ cmd = "xelatex"; args = "--version" },
    @{ cmd = "java";    args = "-version"  }
)

$allOk = $true
foreach ($c in $checks) {
    $found = Get-Command $c.cmd -ErrorAction SilentlyContinue
    if ($found) {
        Write-Ok "$($c.cmd): $($found.Source)"
    } else {
        Write-Warn "$($c.cmd): NO ENCONTRADO"
        $allOk = $false
    }
}

# Verificar plantuml.jar
if (Test-Path "lib/plantuml.jar") {
    Write-Ok "plantuml.jar: lib/plantuml.jar"
} else {
    Write-Warn "lib/plantuml.jar: NO ENCONTRADO — descárgalo desde https://plantuml.com/download"
    $allOk = $false
}

Write-Host ""
if ($allOk) {
    Write-Host "  ✅ Todo listo. Ejecuta: make report`n" -ForegroundColor Green
} else {
    Write-Host "  ⚠️  Hay herramientas faltantes. Revisa los avisos anteriores.`n" -ForegroundColor Yellow
}

Write-Host "  ⚡ IMPORTANTE: Abre una terminal NUEVA para que el PATH tenga efecto.`n" -ForegroundColor Cyan
