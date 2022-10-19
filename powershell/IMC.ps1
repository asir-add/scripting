<#
.SYNOPSIS
    Calcular el IMC
        
.DESCRIPTION
    Calcular el índice de masa corporal (IMC):
    IMC=peso/(altura^2) 
    * Altura en metros

.NOTES
    Author: Fran Vargas (fvarrui@canariaseducacion.es)

.EXAMPLE
    .\IMC.ps1
    ¿Cuál es tu peso (kg)? 80
    ¿Cuánto mides (cm)? 176
    Tu IMC es 25,82

.EXAMPLE
    .\IMC.ps1 -Peso 80 -Altura 176
    Tu IMC es 25,82

.EXAMPLE
    .\IMC.ps1 -Peso 80
    ¿Cuánto mides (cm)? 176
    Tu IMC es 25,82

    [Bajo peso|Normal|Sobrepeso|Obeso] ??? pendiente
#>