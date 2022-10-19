Param(
    [Parameter(Mandatory=$true)][float] $operando1,
    [Parameter(Mandatory=$true)][float] $operando2
)

$resultado = $operando1 + $operando2
Write-Host "El resultado de sumar $operando1 y $operando2 es $resultado"