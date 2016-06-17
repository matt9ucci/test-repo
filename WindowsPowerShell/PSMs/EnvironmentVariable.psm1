# Default proxy settings
$PROXY_SERVER = "my.proxy.server"
$PROXY_PORT = "9999"
$PROXY_USER = ""
$PROXY_PASSWORD = ""

function Get-Env([string]$Include = "") {
	return gci Env: | ? { $_.Name -match $Include }
}

function Get-PathEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process
	)

	[System.Environment]::GetEnvironmentVariable("PATH", $Target).Split(";")
}

function Add-PathEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process,
		[string]$LiteralPath
	)

	$path = [System.Environment]::GetEnvironmentVariable("PATH", $Target).Split(";")
	if ($path -notcontains $LiteralPath) {
		$path = @($LiteralPath) + $path
		[System.Environment]::SetEnvironmentVariable("PATH", ($path -join ";"), $Target)
	}
}

function Remove-PathEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process,
		[string]$LiteralPath
	)

	[System.Collections.ArrayList]$path = [System.Environment]::GetEnvironmentVariable("PATH", $Target).Split(";")
	if ($path -contains $LiteralPath) {
		$path.Remove($LiteralPath)
		[System.Environment]::SetEnvironmentVariable("PATH", ($path -join ";"), $Target)
	}
}

function Set-HttpProxyEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process,
		[string]$Server = $PROXY_SERVER,
		[string]$Port = $PROXY_PORT,
		[string]$User = $PROXY_USER,
		[string]$Password = $PROXY_PASSWORD
	)

	$proxy = "${Server}:${Port}"
	if ($User -and $Password) {
		$proxy = "${User}:${Password}@${proxy}"
	}

	[System.Environment]::SetEnvironmentVariable("http_proxy", "http://$proxy", $Target)
	[System.Environment]::SetEnvironmentVariable("https_proxy", "https://$proxy", $Target)
}

function Remove-HttpProxyEnv {
	Param(
		[System.EnvironmentVariableTarget]$Target = [System.EnvironmentVariableTarget]::Process
	)

	[System.Environment]::SetEnvironmentVariable("http_proxy", $null, $Target)
	[System.Environment]::SetEnvironmentVariable("https_proxy", $null, $Target)
}

Export-ModuleMember -Function "*"
