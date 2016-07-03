$GOROOTROOT = "C:\Go"
$VERSION = "1.6.2"

# Go Env
$GOROOT = Join-Path $GOROOTROOT $VERSION
$GOPATH = Join-Path $HOME "Gopath"

function Set-GoEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process,
		[string]$GoRoot = $GOROOT,
		[string]$GoPath = $GOPATH
	)

	[System.Environment]::SetEnvironmentVariable("GOROOT", $GoRoot, $Target)
	[System.Environment]::SetEnvironmentVariable("GOPATH", $GoPath, $Target)

	Add-PathEnv -Target $Target -LiteralPath (Join-Path $GoRoot "bin")
	Add-PathEnv -Target $Target -LiteralPath (Join-Path $GoPath "bin")
}

function Remove-GoEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process
	)

	Remove-PathEnv -Target $Target -LiteralPath (Join-Path ([System.Environment]::GetEnvironmentVariable("GOROOT", $Target)) "bin")
	Remove-PathEnv -Target $Target -LiteralPath (Join-Path ([System.Environment]::GetEnvironmentVariable("GOPATH", $Target)) "bin")

	[System.Environment]::SetEnvironmentVariable("GOROOT", $null, $Target)
	[System.Environment]::SetEnvironmentVariable("GOPATH", $null, $Target)
}

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

function Get-GoDistributionSHA256Checksum($Version = "1.6.2") {
	(Invoke-WebRequest "https://golang.org/dl/").ParsedHtml.getElementById("go$Version").getElementsByTagName("tr") | ? { $_.className -ne "first" } | % {
		$_.getElementsByClassName("download")[0].innerText
		$_.getElementsByTagName("tt")[0].innerText
	}
}

Export-ModuleMember -Function "*"
