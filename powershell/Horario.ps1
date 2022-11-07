$horarios=Import-CSv .\horario.csv
$actual=""

while ($true) {

    $diaSemana=(Get-Date).DayOfWeek
    $hora=Get-Date -UFormat %H:%M
    foreach ($asignatura in $horarios) {

        if ($asignatura.DayOfWeek -eq $diaSemana -and $hora -ge $asignatura.Start -and $hora -le $asignatura.End) {

            if ($asignatura.Subject -ne $actual) {

                $resultado = [System.Windows.MessageBox]::Show("Ahora tienes: " + $asignatura.Subject)
                $actual = $asignatura.Subject

            }

        }

    }

    Start-Sleep -Seconds 60

}