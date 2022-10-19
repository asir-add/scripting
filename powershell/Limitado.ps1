Param(
    [ValidateSet("word","excel","powerpoint")][string] $Herramienta
)
Write-Host La herramienta seleccionada es $Herramienta