$usuarios = Get-LocalUser

$html = $env:TEMP + "\usuarios.html"

$listado=""
foreach ($usuario in $usuarios) {
    $listado = @"
        $listado
        $usuario</br>
"@
}

@"
<html>
    <head>
        <title>Usuarios</title>
    </head>
    <body>
$listado
    </body>
</html>
"@ > $html

Invoke-Item $html