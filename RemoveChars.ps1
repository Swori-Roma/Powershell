$Text = Read-Host "`r`nEnter characters that you want to be processed"

$Matched = Read-Host "`r`nEnter characters (or regex) you want to be replaced"

$Chars = Read-Host "`r`nEnter characters replace to what"

Write-Host "`r`n"

$Text -replace $Matched,$Chars | Tee-Object -Variable result

Set-Clipboard -Value $result

Write-Host "`r`n"