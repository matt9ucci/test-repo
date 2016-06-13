# posh-git
. "$env:LOCALAPPDATA\GitHub\shell.ps1"

# Modules (instead of $env:PSModulePath)
gci "$PSScriptRoot\PSMs" -Filter *.psm1 | % {
	Import-Module $_.FullName
}

# [System.EnvironmentVariableTarget]::Process
$env:GOROOT = "C:\Go\1.6.2"
$env:GOPATH = "$HOME\Gopath"
$env:Path = @(
	"C:\Scripts"
	"$env:ProgramFiles\Oracle\VirtualBox"
	"$env:GOPATH\bin"
	"$env:GOROOT\bin"
	$env:Path
) -join ";"

# Alias
sal gh Get-Help
sal vbm VBoxManage

function Rename-Files {
	[CmdletBinding(SupportsShouldProcess = $true)]
	Param(
		[string]$Path = ".",
		[string]$Filter = "*",
		[string]$Old,
		[string]$New
	)

	gci $Path -Filter $Filter | Rename-Item -NewName {$_.Name -replace $Old, $New}
}

function Assert-SHA256($path, $sha256) {
	$fileHash = (Get-FileHash $path -Algorithm SHA256).hash
	$result = $sha256 -eq $fileHash
	if (!$result) {
		Write-Host "The file is corrupt: $path" -ForegroundColor Red
		Write-Host "FileHash: $fileHash" -ForegroundColor Red
		Write-Host "Checksum: $sha256" -ForegroundColor Red
	}
	return $result
}

function prompt {
	$Host.UI.RawUI.WindowTitle = "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
	return "PS> "
	# .Link
	# http://go.microsoft.com/fwlink/?LinkID=225750
	# .ExternalHelp System.Management.Automation.dll-help.xml
}

sl C:\Scripts
