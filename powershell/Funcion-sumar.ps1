Param(
    [int]$numero1 = 5,
    [int]$numero2 = 6
)

function imc([int]$altura,[int]$peso) {
    $alturaM = $altura / 100.0
    return $peso / [Math]::pow($alturaM, 2)
}

$s = imc 176 80

Write-Host $s