$yo = Get-LocalUser $env:USERNAME
Write-Host $yo.FullName "(" $yo.Name ")"