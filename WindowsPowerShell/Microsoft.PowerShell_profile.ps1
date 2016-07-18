# posh-git
. "$env:LOCALAPPDATA\GitHub\shell.ps1"

# Instead of $env:PSModulePath
gci "$PSScriptRoot\PSMs" -Filter *.psm1 | % {
	Import-Module $_.FullName
}

function Set-Constant($Name, $Value) { sv $Name $Value -Option Constant -Scope Global }
function ConvertTo-ArrayList([array]$Array) { New-Object System.Collections.ArrayList @(,$Array) }

function ConvertTo-OutFile($Uri) { Join-Path $DOWNLOADS (Split-Path $Uri -Leaf) }
function Test-OutFile($Uri) { Test-Path (ConvertTo-OutFile $Uri) }
function Get-OutFileHash($Uri) { Get-FileHash (ConvertTo-OutFile $Uri) }
function Save-WebResource($Uri) { (Test-OutFile $Uri) -or (iwr $Uri -OutFile (ConvertTo-OutFile $Uri)) > $null; Get-OutFileHash $Uri | fl }

function Save-GoDistribution($Version = "1.6.2") { Save-WebResource "https://storage.googleapis.com/golang/go${Version}.windows-amd64.zip" }
function Save-DockerWindowsBinary($Version = "latest") { Save-WebResource "https://get.docker.com/builds/Windows/x86_64/docker-${Version}.zip" }
function Save-DockerSource($Version = "master") { Save-WebResource "https://github.com/docker/docker/archive/${Version}.zip" }

# Alias
sal vbm VBoxManage

# Special Folders
Set-Constant DOWNLOADS "$HOME\Downloads"
Set-Constant DOCUMENTS ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyDocuments))
Set-Constant MUSIC     ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyMusic))
Set-Constant PICTURES  ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyPictures))
Set-Constant VIDEOS    ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyVideos))

Set-Constant FIREFOX_PROFILES "$env:APPDATA\Mozilla\Firefox\Profiles"
Set-Constant GITHUB_REPOSITORIES "$HOME\GitHub"

$GOROOT = "C:\Go"
$GOPATH = "$HOME\Gopath"
$env:GOROOT = $GOROOT
$env:GOPATH = $GOPATH

# [System.EnvironmentVariableTarget]::Process
$env:Path = @(
	"C:\Scripts"
	"$env:GOPATH\bin"
	"$env:GOROOT\bin"
	"$env:ProgramFiles\Oracle\VirtualBox"
	$env:Path
) -join ";"

sl C:\Scripts
