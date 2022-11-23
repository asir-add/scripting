Param (
    [switch]$Help,
    [switch]$Quaratine
)

$i=0
$Check=$null
while ($i -lt $args.Length) {
    if ($args[$i] -eq "-Check") {
        Write-Host "Check encontrado"
        if ($i+1 -lt $args.Length) {
            $Check = @( $args[$i+1] )
        } else {
            $Check = $(Get-PSDrive | Where-Object { $_.Provider.Name -eq "FileSystem" -and $_.Free -ne $null }).Root
        }
        break
    }
    $i+=1
}

foreach($unidad in $Check) {
    Write-Host "unidad a chequear: $unidad"
}