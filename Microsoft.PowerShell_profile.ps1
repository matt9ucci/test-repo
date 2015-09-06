# load git
& "$env:LOCALAPPDATA\GitHub\shell.ps1"

$host.PrivateData.ErrorBackgroundColor = "red"
$host.PrivateData.ErrorForegroundColor = "white"

$bs = $host.UI.RawUI.BufferSize
$bs.Width = 130
$bs.Height = 2000
$host.UI.RawUI.BufferSize = $bs

$ws = $host.UI.RawUI.WindowSize
$ws.Width = 130
$ws.Height = 60
$host.UI.RawUI.WindowSize = $ws

$env:Path += ";C:\Scripts"
Set-Location "C:\Scripts"

$transcript_path = Join-Path (Get-Item $PROFILE).DirectoryName "Transcript"
# clear small transcripts
Get-ChildItem $transcript_path | ? length -lt 3kb | Remove-Item
Start-Transcript -OutputDirectory $transcript_path
