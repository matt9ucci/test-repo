sv FIREFOX_PROFILES "$env:APPDATA\Mozilla\Firefox\Profiles" -Option ReadOnly, AllScope

function Out-UserJsToFirefoxProfile($Name = '*') {
	Get-ChildItem -Directory $FIREFOX_PROFILES -Filter *.$Name | % {
		$js = Join-Path $_.FullName user.js
		New-Item $js -Force
		Add-Content $js 'user_pref("browser.tabs.warnOnClose", false);'
		Add-Content $js 'user_pref("browser.tabs.warnOnCloseOtherTabs", false);'
		Add-Content $js 'user_pref("browser.tabs.closeWindowWithLastTab", false);'
		Add-Content $js 'user_pref("general.warnOnAboutConfig", false);'
		Add-Content $js 'user_pref("places.history.expiration.max_pages", 10000);'
		Add-Content $js 'user_pref("extensions.selectedsearch.autocptext", true);'
	}
}

function Clear-Firefox {
	Remove-Item -Confirm -Recurse $env:APPDATA\Mozilla\Firefox
	Remove-Item -Confirm -Recurse $env:LOCALAPPDATA\Mozilla\Firefox
}

Export-ModuleMember -Function * -Variable *
