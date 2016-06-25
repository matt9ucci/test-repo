function Get-WebResource {
	Param(
		$Uri,
		$OutDir = "$HOME\Downloads",
		$OutName = (Split-Path $Uri -Leaf)
	)

	if (!(Test-Path $OutDir)) {
		Write-Host "$OutDir does not exist."
		$OutDir = Split-Path $PSCommandPath -Parent
	}

	$outFile = Join-Path $OutDir $OutName
	if (Test-Path $outFile -IsValid) {
		Invoke-WebRequest -Uri $Uri -OutFile $outFile
	} else {
		throw "$outFile is invalid path."
	}

	$result = New-Object PSObject -Property @{
		Uri = $uri
		Path = $outFile
		SHA256 = (Get-FileHash $outFile -Algorithm SHA256).hash
	}
	return $result
}

Export-ModuleMember -Function "*"
