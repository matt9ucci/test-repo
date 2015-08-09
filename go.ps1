if (Test-Path Env:\GOROOT) {
    Write-Host '$env:GOROOT =' $env:GOROOT
} else {
    Write-Host "Set $env:GOROOT"
}

$gobin = $env:GOROOT + 'bin'
if ($env:Path.Contains($gobin)) {
    Write-Host 'Go bin =' $gobin
} else {
    Write-Host 'Set Go bin'
}
