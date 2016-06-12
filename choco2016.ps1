<#
# Choco Installation
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

#>

function Install-Essential() {
	choco install vlc
	choco install 7zip
	choco install virtualbox
}

choco list --local-only
