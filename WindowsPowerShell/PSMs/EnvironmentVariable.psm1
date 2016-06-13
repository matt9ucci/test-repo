function Get-Path {
	Param(
		[ValidateSet("Machine", "User", "Process")]
		[string]$Target
	)

	switch ($Target) {
		"Machine" { [System.Environment]::GetEnvironmentVariable("PATH", [System.EnvironmentVariableTarget]::Machine).Split(";") }
		"User"    { [System.Environment]::GetEnvironmentVariable("PATH", [System.EnvironmentVariableTarget]::User).Split(";") }
		"Process" { $env:Path.Split(";") }
		Default   { $env:Path.Split(";") }
	}
}

function Get-Env([string]$Pattern = "") {
	$hashtable = @{}
	gci Env: | ? { $_.Name -ne "Path" }  | ? { $_.Name -match $Pattern } | % {
		$hashtable.Add($_.Key, $_.Value)
	}
	return $hashtable
}

Export-ModuleMember -Function "*"
