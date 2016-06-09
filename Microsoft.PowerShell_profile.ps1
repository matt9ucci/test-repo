# load git
& "$env:LOCALAPPDATA\GitHub\shell.ps1"

# env
$env:GOROOT = "C:\Go\1.6.2"
$env:GOPATH = "$HOME\Gopath"

# PATH
$private:envPath = @(
    "C:\Scripts"
    "$env:USERPROFILE\OneDrive\Scripts"
    "$env:GOROOT\bin"
    "$env:ProgramFiles\Oracle\VirtualBox"
    $env:Path
)
$env:Path = $envPath -join ";"

# Alias
sal gh Get-Help

function prompt {
    $Host.UI.RawUI.WindowTitle = "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
    return "PS> "
    # .Link
    # http://go.microsoft.com/fwlink/?LinkID=225750
    # .ExternalHelp System.Management.Automation.dll-help.xml
}

sl C:\Scripts
