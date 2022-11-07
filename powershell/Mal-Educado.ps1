# Implementar una función que reciba la hora por parámetro y un nombre

function Saludar([int]$hora, [string]$nombre) {
    if ($hora -ge 6 -and $hora -lt 12) {
        $saludo="¡Malos días $nombre!"
    } elseif ($hora -ge 12 -and $hora -lt 18) {
        $saludo="¡$nombre! Levántate ya, que se te hace tarde para la siesta."
    } elseif ($hora -ge 18 -and $hora -le 23) {
        $saludo="Vete a acostarte $nombre"
    } else {
        $saludo="¡Tira ya del cable, simplón!"
    }
    return $saludo
}

Write-host $(Saludar 8 Fulanito)
Write-host $(Saludar 13 Fulanito)
Write-host $(Saludar 18 Fulanito)
Write-host $(Saludar 5 Fulanito)

$hora=(Get-Date).Hour
Write-host $(Saludar $hora Fulanito)
