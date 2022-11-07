$numeros = 4,6,7.5,8
$nombres = "chuck", "jackie", "charles"

Function Sumatorio([double[]]$numeros) {
    $total=0
    foreach ($numero in $numeros) {
        $total += $numero    
    }
    return $total
}

Write-Host "El total es $(Sumatorio $numeros)"

Write-Host "Vamos a saludar a $($nombres.Length) personas"
foreach ($nombre in $nombres) {

    if ($nombre -match "^c.*") {
        Write-Host "Hola $nombre!"
    }

}

Write-Host "El 2º elemento del array es" $nombres[1]