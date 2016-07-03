
function Rename-Items {
	[CmdletBinding(SupportsShouldProcess = $true)]
	Param(
		[string]$Path = ".",
		[string]$Filter = "*",
		[string]$Old,
		[string]$New
	)

	gci $Path -Filter $Filter | Rename-Item -NewName {$_.Name -replace $Old, $New}
}

function Assert-SHA256($path, $sha256) {
	$fileHash = (Get-FileHash $path -Algorithm SHA256).hash
	$result = $sha256 -eq $fileHash
	if (!$result) {
		Write-Host "The file is corrupt: $path" -ForegroundColor Red
		Write-Host "FileHash: $fileHash" -ForegroundColor Red
		Write-Host "Checksum: $sha256" -ForegroundColor Red
	}
	return $result
}
