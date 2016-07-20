function Clear-Atom() {
	[CmdletBinding(SupportsShouldProcess = $true)]
	Param()

	Remove-Item -Recurse $HOME\.atom
}

function Clear-VirtualBox() {
	[CmdletBinding(SupportsShouldProcess = $true)]
	Param()

	Remove-Item -Recurse $HOME\.VirtualBox
}

function Clear-Git() {
	[CmdletBinding(SupportsShouldProcess = $true)]
	Param()

	Remove-Item -Recurse $HOME\.gitconfig
	Remove-Item -Recurse $env:LOCALAPPDATA\GitHub
}
