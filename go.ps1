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

# eclipse
# goclipse
# Golang, $GOPATH(, $GOROOT)
# GitHub or msysgit
# gocode for goclipse. see: https://github.com/nsf/gocode
go get -u -ldflags -H=windowsgui github.com/nsf/gocode
# oracle for goclipse. see: http://golang.org/s/oracle-user-manual
go get golang.org/x/tools/cmd/oracle
