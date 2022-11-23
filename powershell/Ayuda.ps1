<#
.SYNOPSIS
	Breve descripción de lo que hace nuestro script.
.DESCRIPTION
	Descripción detallada de nuestro script.
.NOTES
	File Name      : <script.ps1>
	Author         : Fran Vargas (mi@email.com)
	Prerequisite   : PowerShell vX sobre Windows X o superior.
	Copyright 2018 - Fran Vargas (IES Domingo Pérez Minik)
.LINK
	Script publicado en:
	http://fvarrui.github.io/ADD
#>
Param(
    [switch]$Help
)

if ($Help) {
    # ·PSScriptRoot contiene la ruta del script
    Get-Help "$PSScriptRoot\$($MyInvocation.MyCommand)" # la variable $MyInvocation.MyCommand contiene el nombre del script (del fichero)
    Get-Help "$PSScriptRoot\Ayuda.ps1" # si cambiamos nombre al fichero, esta opción ya no funciona
}
