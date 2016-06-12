# load git
. "$env:LOCALAPPDATA\GitHub\shell.ps1"

gci "$PSScriptRoot\Modules" -Filter *.psm1 | % {
	$moduleInfo = Import-Module $_.FullName
}

# env
$env:GOROOT = "C:\Go\1.6.2"
$env:GOPATH = "$HOME\Gopath"

# PATH
$private:envPath = @(
	"C:\Scripts"
	"$env:USERPROFILE\OneDrive\Scripts"
	"$env:ProgramFiles\Oracle\VirtualBox"
	"$env:GOPATH\bin"
	"$env:GOROOT\bin"
	$env:Path
)
$env:Path = $envPath -join ";"

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

function Get-Path {
	$env:Path.Split(";")
}

function Get-Env {
	gci Env: | ? { $_.Name -NotMatch "Path" } | Format-Table -AutoSize -Wrap
	Write-Host "Path"
	Write-Host "----"
	Get-Path
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
