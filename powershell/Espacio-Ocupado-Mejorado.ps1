<#
.Synopsis
   Este script devuelve el espacio ocupado por un directorio o directorios.
.DESCRIPTION
   Este script toma un directorio/s y una unidad (Bytes, KB, MB o GB) especificados por parámetro y devuelve el espacio que ocupa dicho directorio o directorios en el disco.
.EXAMPLE
   .\espacio-ocupado-mejorado -Directorios 'C:\Users\Manolo\Downloads', 'C:\Users\Manolo\Documentos' -MB
   Devuelve el espacio ocupado por los dos directorios indicados en megabytes.
.EXAMPLE
   .\espacio-ocupado-mejorado -Directorios C:\Users\Manolo -GB
   Devuelve el espacio ocupado por el directorio personal del usuario en gigabytes.
#>

param(
    [Switch]$Bytes,
    [Switch]$KB,
    [Switch]$MB,
    [Switch]$GB,
    [Parameter(Mandatory=$true)][String[]]$Directorios
)

# calcula el espacio total ocupada por los ficheros de un directorio concreto (OJO! no es recursivo)
function Espacio-Total([string]$directorio) {
    return (Get-ChildItem $Directorio -ErrorAction SilentlyContinue| Measure-Object -Property Length -Sum).Sum
}

# cambia de magnitud la cantidad especificada en bytes (si el formato es nulo o no es válido, lo devuelve en bytes)
function Cambio-Magnitud([long]$cantidad, [string]$formato) {
    switch($formato.ToUpper()) {
        "KB" { $resultado = "$($cantidad / 1kb) KB" }
        "MB" { $resultado = "$($cantidad / 1mb) MB" }
        "GB" { $resultado = "$($cantidad / 1gb) GB" }
        default { $resultado = "$cantidad bytes" }
    }
    return $resultado
}

# calcula el espacio total ocupado por todos los directorios pasados por parámetro al script
$total = 0
foreach ($directorio in $directorios){
    $espacio = Espacio-Total($directorio)
    $total += $espacio
    Write-Output "El directorio $directorio ocupa $espacio bytes"
}

# en función del modificador especificado por parámetro, devuelve el resultado en la magnitud indicada (si no se indica ningún modificador devuelve bytes)
if ($KB) { $magnitud = "KB" }
elseif ($MB) { $magnitud = "MB" }
elseif ($GB) { $magnitud = "GB" }
else { $magnitud = $null } 

# cambia la magnitud del total de bytes y muestra el resultado
$total_en_magnitud = Cambio-Magnitud $total $magnitud
Write-Output "Total $total_en_magnitud"


<#
foreach ($directorio in $directorios){
    $comprobar=Test-Path $directorio
    if ($comprobar -eq $False){
        Write-Host "El directorio indicado no existe"
    }
    elseif (($comprobar -eq $True) -and ($KB -eq $True)){
        $espacio=((Get-ChildItem $Directorio -ErrorAction SilentlyContinue| Measure-Object -Property Length -Sum).Sum / 1kb -as [int])

        Write-Host "Espacio ocupado por el directorio $directorio en kilobytes: $espacio `n"
    }
    elseif (($comprobar -eq $True) -and ($MB -eq $True)){
        $espacio=((Get-ChildItem $Directorio -ErrorAction SilentlyContinue| Measure-Object -Property Length -Sum).Sum / 1mb -as [int])
        Write-Host "Espacio ocupado por el directorio $directorio en megabytes: $espacio `n"
    }
    elseif (($comprobar -eq $True) -and ($Bytes -eq $True)){
        $espacio=((Get-ChildItem $Directorio -ErrorAction SilentlyContinue| Measure-Object -Property Length -Sum).Sum)
        Write-Host "Espacio ocupado por el directorio $directorio en bytes: $espacio `n"
    }
    elseif (($comprobar -eq $True) -and ($GB -eq $True)){
        $espacio=((Get-ChildItem $Directorio -ErrorAction SilentlyContinue| Measure-Object -Property Length -Sum).Sum / 1gb -as [int])
        Write-Host "Espacio ocupado por el directorio $directorio en gigabytes: $espacio `n"
    }
    else {
        Write-Host "Indique una unidad de espacio a mostrar: Bytes, KB, MB o GB"
    }
}

#>
