Param(
    [string] $username
)

if ($username -eq "") {
    $username=Read-Host -Prompt "Introduce el nombre del usuario"
}

$user = Get-LocalUser $username -ErrorAction SilentlyContinue
if ($user) {
    Write-Host "Nombre del usuario      : $($user.Name)"
    Write-Host "Nombre completo         : $($user.FullName)"
    Write-Host "SID                     :" $user.SID
    Write-Host "Último inicio de sesión :" $user.LastLogon
} else {
    Write-Host -ForegroundColor Red "El usuario $username no existe"
}