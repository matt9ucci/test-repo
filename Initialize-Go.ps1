function Install-GoTools {
	go get -u -v github.com/nsf/gocode
	go get -u -v github.com/rogpeppe/godef
	go get -u -v github.com/golang/lint/golint
	go get -u -v github.com/lukehoban/go-outline
	go get -u -v github.com/tpng/gopkgs
	go get -u -v golang.org/x/tools/cmd/gorename
	go get -u -v sourcegraph.com/sqs/goreturns
	go get -u -v github.com/newhook/go-symbols
	go get -u -v golang.org/x/tools/cmd/guru
	go get -u -v github.com/derekparker/delve/cmd/dlv
}

function New-Gopath {
	ni -Force -ItemType Directory -Path $env:GOPATH
	ni -Force -ItemType Directory -Path (Join-Path $env:GOPATH bin)
	ni -Force -ItemType Directory -Path (Join-Path $env:GOPATH pkg)
	ni -Force -ItemType Directory -Path (Join-Path $env:GOPATH src)
}

function Set-Env {
	[System.Environment]::SetEnvironmentVariable("GOROOT", $env:GOROOT, [System.EnvironmentVariableTarget]::User)
	[System.Environment]::SetEnvironmentVariable("GOPATH", $env:GOPATH, [System.EnvironmentVariableTarget]::User)
	$envPath = @(
		"$env:GOPATH\bin"
		"$env:GOROOT\bin"
		[System.Environment]::GetEnvironmentVariable("PATH", [System.EnvironmentVariableTarget]::User)
	)
	[System.Environment]::SetEnvironmentVariable("PATH", $envPath -join ";", [System.EnvironmentVariableTarget]::User)
}

#golang
$ver = "1.6.2"
$uri = "https://storage.googleapis.com/golang/go$ver.windows-amd64.zip"
$dest = "C:\Go"
$checksum = "4367a147b6351c4975732375a21a098c90d26ca0e948245f602295aab389e0d0"

$outFile = Join-Path $dest (Split-Path $uri -Leaf)
if (!(Test-Path $outFile)) {
	Invoke-WebRequest -Uri $uri -OutFile $outFile
}

if (!(Assert-SHA256 $outfile $checksum)) {
	exit
}

$expanded = Join-Path $dest "go"
if (!(Test-Path $expanded)) {
    Expand-Archive $outfile $dest
}
Rename-Item $expanded $ver
