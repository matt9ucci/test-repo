gci Env: | Where-Object { $_.Name -NotMatch "Path"} | Format-Table -AutoSize -Wrap
Write-Host "Path"
Write-Host "----"
$env:Path.Split(";")
