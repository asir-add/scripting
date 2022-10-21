$ip = "192.168.1.243"
do {
    
    Write-Host -NoNewline "Comprobando conexión a $ip..."
    $test = Test-Connection -ComputerName $ip -Count 1 -ErrorAction SilentlyContinue
    if ($test -eq $null) {
        Write-Host "[ERROR]"
    } else {
        Write-Host "[OK]"
    }

} until ($test -ne $null) # } while ($test -eq $null)