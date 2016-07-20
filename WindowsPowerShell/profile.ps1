function Edit-Profiles { ise "$PROFILE,$($PROFILE.CurrentUserAllHosts)" }
function Get-Env($Include) { gci Env: | ? { $_.Name -match $Include } }
function New-Directory([string[]]$Path) { ni $Path -Force -ItemType Directory }

function sl..   { sl .. }
function sl...  { sl ..\.. }
function sl.... { sl ..\..\.. }

sal gh Get-Help

sv DOWNLOADS $HOME\Downloads -Option ReadOnly, AllScope
sv DOCUMENTS ([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyDocuments)) -Option ReadOnly, AllScope

ri Alias:ls
function ls { Get-ChildItem -Exclude .* -Name }
function ll { Get-ChildItem -Exclude .* }

sal cd..   sl..
sal cd...  sl...
sal cd.... sl....

function prompt {
	$Host.UI.RawUI.WindowTitle = "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) "
	return "PS> "
	# .Link
	# http://go.microsoft.com/fwlink/?LinkID=225750
	# .ExternalHelp System.Management.Automation.dll-help.xml
}
