# Path
Write-Host "### Machine ###"
$pm = [System.Environment]::GetEnvironmentVariable("Path", "Machine")
$pm.Split(";")
Write-Host "### User ###"
$pu = [System.Environment]::GetEnvironmentVariable("Path", "User")
$pu.Split(";")
Write-Host "### Process ###"
$pp = $env:Path
$pp.Split(";")
