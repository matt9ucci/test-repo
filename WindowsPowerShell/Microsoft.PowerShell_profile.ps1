# posh-git
. "$env:LOCALAPPDATA\GitHub\shell.ps1"

# Instead of $env:PSModulePath
gci "$PSScriptRoot\PSMs" -Filter *.psm1 | % {
	Import-Module $_.FullName
}

function Edit-Profile { ise $PROFILE }
function Import-Profile { . $PROFILE }

function Set-Constant([string]$Name, $Value) { sv $Name $Value -Option Constant -Scope Global }
function ConvertTo-ArrayList([array]$Array) { New-Object System.Collections.ArrayList @(,$Array) }
function Get-Env([string]$Include = "") { gci Env: | ? { $_.Name -match $Include } }
function New-Directory([string[]]$Path) { ni -Force -ItemType Directory -Path $Path }

function ConvertTo-OutFile($Uri) { Join-Path $DOWNLOADS (Split-Path $Uri -Leaf) }
function Test-OutFile($Uri) { Test-Path (ConvertTo-OutFile $Uri) }
function Get-OutFileHash($Uri) { Get-FileHash (ConvertTo-OutFile $Uri) }
function Save-WebResource($Uri) { (Test-OutFile $Uri) -or (iwr $Uri -OutFile (ConvertTo-OutFile $Uri)) > $null; Get-OutFileHash $Uri | fl }

function Save-GoDistribution($Version = "1.6.2") { Save-WebResource "https://storage.googleapis.com/golang/go${Version}.windows-amd64.zip" }

# Alias
sal gh Get-Help
sal vbm VBoxManage

# Special Folders
Set-Constant DOWNLOADS "$HOME\Downloads"
Set-Constant DOCUMENTS ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyDocuments))
Set-Constant MUSIC     ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyMusic))
Set-Constant PICTURES  ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyPictures))
Set-Constant VIDEOS    ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyVideos))

# [System.EnvironmentVariableTarget]::Process
$env:Path = @(
	"C:\Scripts"
	"$env:ProgramFiles\Oracle\VirtualBox"
	$env:Path
) -join ";"


function prompt {
	$Host.UI.RawUI.WindowTitle = "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
	return "PS> "
	# .Link
	# http://go.microsoft.com/fwlink/?LinkID=225750
	# .ExternalHelp System.Management.Automation.dll-help.xml
}

sl C:\Scripts
