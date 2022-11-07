Param(
    [int]$peso = 80,
    [int]$altura = 176
)

function imc([int]$altura,[int]$peso) {
    $alturaM = $altura / 100.0 # convertimos la altura de cm a metros
    return $peso / [Math]::pow($alturaM, 2) # imc = peso / altura^2
}

function redondear([double]$numero) {
    return [Math]::Round($numero, 2)
}

$imc = imc $altura $peso

Write-Host "IMC: $(redondear $imc 2)"