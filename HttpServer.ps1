$serverName = "localhost"
$port = 8080

$httpListener = New-Object System.Net.HttpListener

function Open-HttpListener    { $httpListener.Start() }
function Suspend-HttpListener { $httpListener.Stop() }
function Close-HttpListener   { $httpListener.Close() }

function Add-HttpListenerPrefixes([string[]] $prefixes) {
	foreach ($p in $prefixes) {
		$httpListener.Prefixes.Add($p)
	}
	Write-Host $httpListener.Prefixes -ForegroundColor Green
}

function Get-ResponseContent ([System.Net.HttpListenerRequest]$request) {
	$rawUrl = $request.RawUrl
	Write-Host "rawURL is [$rawUrl]"
	switch -Wildcard ($rawUrl) {
		"/echo/*" {
			$echoString = [System.Net.WebUtility]::UrlDecode(($rawUrl -replace '/echo/', ''))
			"<h1>$echoString</h1>"
		} "/file/*" {
			$filePath = '.'
			($rawUrl -replace '/file/', '').Split('/') | % { $filePath = Join-Path $filePath $_ }
			Get-Content $filePath
		} default { "<h1>Hello world!</h1>" }
	}
}

Add-HttpListenerPrefixes "http://${serverName}:${port}/"
Open-HttpListener

$context = $httpListener.GetContext()
$request = $context.Request
$response = $context.Response

$responseContent = Get-ResponseContent $request
$buffer = [System.Text.Encoding]::UTF8.GetBytes($responseContent)
$offset = 0

# Content-Length
$response.ContentLength64 = $buffer.Length - $offset

$responseStream = $response.OutputStream
$responseStream.Write($buffer, $offset, $buffer.Length)
$responseStream.Close()

Suspend-HttpListener
Close-HttpListener
