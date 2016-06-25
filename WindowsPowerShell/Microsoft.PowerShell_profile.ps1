# posh-git
. "$env:LOCALAPPDATA\GitHub\shell.ps1"

# Modules (instead of $env:PSModulePath)
gci "$PSScriptRoot\PSMs" -Filter *.psm1 | % {
	Import-Module $_.FullName
}

# [System.EnvironmentVariableTarget]::Process
$env:Path = @(
	"C:\Scripts"
	"$env:ProgramFiles\Oracle\VirtualBox"
	$env:Path
) -join ";"

# Alias
sal gh Get-Help
sal vbm VBoxManage

# Special Folders
Set-Variable DOWNLOADS "$HOME\Downloads" -Option Constant
Set-Variable DOCUMENTS ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyDocuments)) -Option Constant
Set-Variable MUSIC     ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyMusic))     -Option Constant
Set-Variable PICTURES  ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyPictures))  -Option Constant
Set-Variable VIDEOS    ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyVideos))    -Option Constant

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
