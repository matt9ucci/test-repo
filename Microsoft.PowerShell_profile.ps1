# load git
& "$env:LOCALAPPDATA\GitHub\shell.ps1"

# env
$env:GOPATH = "$HOME\Gopath"

# PATH
$private:envPath = @(
    "C:\Scripts"
    "$env:USERPROFILE\OneDrive\Scripts"
    "C:\Go\bin"
    "$env:ProgramFiles\Oracle\VirtualBox"
    $env:Path
)
$env:Path = $envPath -join ";"

# Alias
sal gh Get-Help

sl C:\Scripts

$transcript_path = Join-Path (Get-Item $PROFILE).DirectoryName "Transcript"
# clear small transcripts
Get-ChildItem $transcript_path | ? length -lt 3kb | Remove-Item
Start-Transcript -OutputDirectory $transcript_path
