<#
    case condicion in
    patron1) comandos ;;
    patron2) comandos ;;
    *) comandos;;
    esac
#>

Write-Host "a. Mostrar la fecha y hora"
Write-Host "b. Listar usuarios"
$opcion=Read-Host -Prompt "Elige una opción"

switch ($opcion) {
    {$_ -in "a","A"} {
        Get-Date
        break
    }
    {$_ -in "b","B"} {
        Get-LocalUser
        break
    }
    default {
        Write-Host -ForegroundColor Red "Opción incorrecta"
    }
}