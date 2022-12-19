Param(
    [Parameter(Mandatory=$true)][string] $Script
)

Write-Host "' n********************************************************************************"
Write-Host "* TESTEANDO SCRIPT $script"

if (!-not (Test-Path -Path $Script -PathType Leaf)) {
    Write-Error "Script no encontrado"
    exit 1
}

Write-Host "`n================================================================================"
Write-Host "TEST 1: Calculando 3!"
Write-Host "================================================================================`n"
& $Script 4

Write-Host "`n================================================================================"
Write-Host "TEST 2: Calculando 1!"
Write-Host "================================================================================`n"
& $Script 1

Write-Host "`n================================================================================"
Write-Host "TEST 3: Calculando 0!"
Write-Host "================================================================================`n"
& $Script 0

Write-Host "`n================================================================================"
Write-Host "TEST 4: Calculando factorial de número negativo"
Write-Host "================================================================================`n"
& $Script -5

Write-Host "`n================================================================================"
Write-Host "TEST 5: Ejecutando script sin parámetros"
Write-Host "================================================================================`n"
& $Script