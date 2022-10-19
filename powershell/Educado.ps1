
# En BASH sería así:
# read -p "¿Cómo te llamas?" nombre
$nombre = Read-Host -Prompt "¿Cómo te llamas? "
Write-Host "Hola $nombre"
Write-Host "¿Cómo estás?"