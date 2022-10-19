Write-Host $args[0]     # echo $1
Write-Host $args[1]     # echo $2
Write-Host $args.Count  # echo $# --- número de parámetros

$texto="soy un objeto de tipo string"
Write-Host $texto.Length

date
Write-Host "Valor de retorno del último comando ejecutado" $LASTEXITCODE # $?