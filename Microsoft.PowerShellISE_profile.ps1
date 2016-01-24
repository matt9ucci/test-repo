# load git
& "$env:LOCALAPPDATA\GitHub\shell.ps1"

$env:Path += ";$env:ProgramFiles\Oracle\VirtualBox"

# golang
$workspace="$HOME\Gopath"
$env:GOPATH = $workspace
$env:Path = "C:\Go\bin;" + $env:Path

# PATH: PowerShell Scripts
$env:Path = "C:\Scripts;" + $env:Path
Set-Location "C:\Scripts"

$transcript_path = Join-Path (Get-Item $PROFILE).DirectoryName "Transcript"
# clear small transcripts
Get-ChildItem $transcript_path | ? length -lt 3kb | Remove-Item
Start-Transcript -OutputDirectory $transcript_path
