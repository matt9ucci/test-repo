sal gh Get-Help

function Edit-Profiles { ise "$PROFILE,$($PROFILE.CurrentUserAllHosts)" }
function Get-Env($Include) { gci Env: | ? { $_.Name -match $Include } }
function New-Directory([string[]]$Path) { ni $Path -Force -ItemType Directory }

function prompt {
	$Host.UI.RawUI.WindowTitle = "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
	return "PS> "
	# .Link
	# http://go.microsoft.com/fwlink/?LinkID=225750
	# .ExternalHelp System.Management.Automation.dll-help.xml
}
