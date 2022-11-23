# recuperamos la primera linea del fichero de control
$directorio = (Get-Content .\info.txt)[0]

# obtenemos todos los ficheros del directorio a controlar
$ficheros = Get-ChildItem $directorio

# recorremos la lista de ficheros para comprobar si están en el fichero de control y comprobar sus fechas
foreach ($fichero in $ficheros) {

    # compruebo si en el fichero de control hay una línea que comience con el nombre del fichero
    # (busco el fichero en el control)
    $linea = Get-Content .\info.txt | Where-Object { $_ -match "^$fichero," }

    # existe el fichero (se encontró una línea para el fichero)
    if ($linea) {

        # sacamos la fecha de última modificación del fichero y quitamos los milisegundos
        $fechaReal = Get-Date -Format "dd/MM/yyyy HH:MM:ss" $((Get-ChildItem $fichero).LastWriteTime)
        $fechaReal = Get-Date $fechaReal

        # saco la fecha de última modificación registrada en el fichero de control
        $fechaRegistrada = Get-Date $linea.Split(",")[1]

        # compruebo si la fecha actual (real) y la registrada son distintas
        if ($fechaRegistrada -ne $fechaReal) {
            # indico que el fichero ha cambiado
            Write-Host "El fichero $fichero ha cambiado"
        }

    } else {

        # si el fichero no existe en el control (no hay una línea), es que es un fichero nuevo
        Write-Host "El fichero $fichero se ha creado"

    }

}

# comprobamos qué ficheros se han eliminado (es decir, que estén en el directorio pero no en el fichero de control)
$lineas = Get-Content .\info.txt
$primera = $true # booleano para saltarnos la primera línea de fichero de control
foreach ($linea in $lineas) {

    # si es la primera línea, saltamos a la siguiente iteración del bucle (continue)
    if ($primera) {
        $primera = $false
        continue        
    }

    # saco el nombre de la línea (es el primer campo antes de la coma)
    $nombre = $linea.Split(",")[0]

    # compruebo si el fichero existe en el directorio (-ErrorAction SilentlyContinue es para que no salga mensaje de error si no existe)
    $fichero = Get-ChildItem $nombre -ErrorAction SilentlyContinue

    # si no hay fichero, mostramos mensaje
    if ($fichero -eq $null) {
        Write-Host "El fichero $nombre se ha eliminado"
    }

}