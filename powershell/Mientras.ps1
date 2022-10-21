<#
    while condicion
    do
        comandos
    done
#>

$a=1
while ($a -le 100) {
    Write-Host $a
    $a++ # $a=$a+1 .... a=$((a + 1))
}