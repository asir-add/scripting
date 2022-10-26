$titulo = "Hola"
$texto = @"
<html>
    <head>
        <title>$titulo</title>
    </head>
    <body>
        <h1>Prueba</h1>
    </body>
</html>
"@
$texto > prueba.html
Invoke-Item prueba.html