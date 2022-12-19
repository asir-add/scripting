Param(
    [Parameter(Mandatory=$true)][string] $Script
)

Write-Host "`n********************************************************************************"
Write-Host "* TESTEANDO SCRIPT $script"

if (-not (Test-Path -Path $Script -PathType Leaf)) {
    Write-Host "Script no encontrado"
    exit 1
}

Write-Host "`n================================================================================"
Write-Host "TEST 1: Calculando IMC con parámetros"
Write-Host "================================================================================`n"
& .\$Script -Peso 80 -Altura 175

Write-Host "`n================================================================================"
Write-Host "TEST 2: Calculando IMC con entrada estándar"
Write-Host "================================================================================`n"
& { "80`n175" | powershell -noprofile -command .\$Script }
