# =============================================================================
# build.ps1 — Wrapper para generar el PDF del informe Viora
# =============================================================================
# Uso:
#   scripts\build.ps1          → genera el PDF
#   scripts\build.ps1 -Target docx  → genera el DOCX
#   scripts\build.ps1 -Target all   → genera PDF y DOCX
#   scripts\build.ps1 -Clean        → elimina el directorio build/
# =============================================================================

param(
    [ValidateSet("pdf", "docx", "all", "diagrams")]
    [string]$Target = "pdf",

    [switch]$Clean
)

$ErrorActionPreference = "Stop"

# ─── Asegurarse de que el script corra desde la raíz del repo ─────────────────
$repoRoot = Split-Path -Parent $PSScriptRoot
Push-Location $repoRoot

try {
    # ─── Agregar git usr/bin al PATH de esta sesión ───────────────────────────
    $scoopEnv = [System.Environment]::GetEnvironmentVariable("SCOOP", "User")
    if (-not $scoopEnv) { $scoopEnv = "$env:USERPROFILE\scoop" }
    $gitUsrBin = "$scoopEnv\apps\git\current\usr\bin"

    if (Test-Path $gitUsrBin) {
        $env:PATH = "$gitUsrBin;$env:PATH"
    } else {
        Write-Warning "No se encontró sh.exe en '$gitUsrBin'."
        Write-Warning "Asegúrate de tener Git instalado via Scoop (scoop install git)."
    }

    # ─── Verificar herramientas mínimas ──────────────────────────────────────
    foreach ($tool in @("make", "pandoc", "xelatex", "java")) {
        if (-not (Get-Command $tool -ErrorAction SilentlyContinue)) {
            Write-Error "Herramienta no encontrada: '$tool'. Ejecuta: powershell -File scripts\setup.ps1"
        }
    }

    # ─── Limpiar si se solicitó ───────────────────────────────────────────────
    if ($Clean) {
        Write-Host "Limpiando directorio build/..." -ForegroundColor Yellow
        make clean
    }

    # ─── Ejecutar make ────────────────────────────────────────────────────────
    Write-Host "`nGenerando: $Target`n" -ForegroundColor Cyan
    $sw = [System.Diagnostics.Stopwatch]::StartNew()

    make $Target

    $sw.Stop()
    $elapsed = $sw.Elapsed.ToString("mm\:ss")
    Write-Host "`n✅ Completado en $elapsed min." -ForegroundColor Green

    # Mostrar los archivos generados
    if (Test-Path "build") {
        Write-Host "`nArchivos en build/:" -ForegroundColor Cyan
        Get-ChildItem "build" | ForEach-Object {
            $sizeMB = [math]::Round($_.Length / 1MB, 1)
            Write-Host "   $($_.Name)  ($sizeMB MB)" -ForegroundColor White
        }
    }

} finally {
    Pop-Location
}
