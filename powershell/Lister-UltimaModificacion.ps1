
$ficheros = Get-ChildItem

foreach ($f in $ficheros) {

    Write-Host "El fichero" $f.Name "fue modificado el día" $f.LastWriteTime

}