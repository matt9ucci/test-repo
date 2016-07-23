sv FIREFOX_PROFILES "$env:APPDATA\Mozilla\Firefox\Profiles" -Option ReadOnly, AllScope -Scope Global

function Out-UserJsToFirefoxProfile($Name = '*') {
	$content = @"
user_pref("browser.tabs.warnOnClose", false);
user_pref("browser.tabs.warnOnCloseOtherTabs", false);
user_pref("browser.tabs.closeWindowWithLastTab", false);
user_pref("general.warnOnAboutConfig", false);
user_pref("places.history.expiration.max_pages", 10000);
user_pref("extensions.selectedsearch.autocptext", true);
"@

	Get-ChildItem -Directory $FIREFOX_PROFILES -Filter *.$Name | % {
		$js = Join-Path $_.FullName user.js
		New-Item $js -Force
		Set-Content $js $content
	}
}

function Clear-Firefox {
	Remove-Item -Confirm -Recurse $env:APPDATA\Mozilla\Firefox
	Remove-Item -Confirm -Recurse $env:LOCALAPPDATA\Mozilla\Firefox
}

Export-ModuleMember -Function * -Variable *
