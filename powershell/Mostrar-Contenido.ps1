Param(
    [Parameter(Mandatory=$True)][string] $fichero
)
$contenido = Get-Content $fichero -Encoding UTF8
$numero = 0
while ($numero -lt $contenido.Length) {
    Write-Host ($numero + 1) " : " $contenido[$numero]
    $numero++
}
