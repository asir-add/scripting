Function Cuadrado([double] $numero) {
    return [Math]::pow($numero, 2)
}

Function Get-AreaRectangulo([double] $ancho, [double] $alto) {
    return $ancho * $alto
}

Function Get-Hipotenusa([double] $cateto1, [double] $cateto2) {
    return [Math]::Sqrt($(Cuadrado($cateto1)) + $(Cuadrado($cateto2)))
}

Export-ModuleMember -Function Get-AreaRectangulo,Get-Hipotenusa