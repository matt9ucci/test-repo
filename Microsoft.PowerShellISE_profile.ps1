# load git
& "$env:LOCALAPPDATA\GitHub\shell.ps1"

$psISE.Options.FontSize = 10

$host.PrivateData.ErrorBackgroundColor = "red"
$host.PrivateData.ErrorForegroundColor = "white"

$env:Path += ";C:\Scripts"
Set-Location "C:\Scripts"

$transcript_path = Join-Path (Get-Item $PROFILE).DirectoryName "Transcript"
# clear small transcripts
Get-ChildItem $transcript_path | ? length -lt 3kb | Remove-Item
Start-Transcript -OutputDirectory $transcript_path
