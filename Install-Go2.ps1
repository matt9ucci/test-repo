#golang
$ver = "1.6.2"
$uri = "https://storage.googleapis.com/golang/go$ver.windows-amd64.zip"
$dest = "C:\Go"
$checksum = "4367a147b6351c4975732375a21a098c90d26ca0e948245f602295aab389e0d0"

Get-Variable ver,uri,dest -ValueOnly

$outdir = "C:\Go"
$outname = Split-Path $uri -Leaf
$outfile = Join-Path -Path $outdir -ChildPath $outname
if (-not (Test-Path $outfile)) {
    Invoke-WebRequest -Uri $uri -OutFile $outfile
}

Get-Variable outfile -ValueOnly

$fileHash = Get-FileHash $outfile -Algorithm SHA256
if ($checksum -ne $fileHash.hash) {
    Write-Host "The file is corrupt: $outfile" -ForegroundColor Red
    Write-Host "FileHash: $($fileHash.hash)" -ForegroundColor Red
    Write-Host "Checksum: $checksum" -ForegroundColor Red
    exit
}

$expanded = Join-Path $dest "go"
if (-not (Test-Path $expanded)) {
    Expand-Archive $outfile $dest
}
Rename-Item $expanded $ver
