Param(
    [string] $Primero,
    [string] $Segundo = "valor por defecto",
    [switch] $Tercero,
    [Parameter(Mandatory=$true)][bool] $Cuarto,
    [int] $Quinto,
    [float] $Sexto
)

Write-Host "primero=$Primero"
Write-Host "segundo=$Segundo"
Write-Host "tercero=$Tercero"
Write-Host "cuarto=$Cuarto"
Write-Host "quinto=$Quinto"
Write-Host "sexto=$Sexto"
