# POWERSHELL -ExecutionPolicy Bypass -File .\remove_default_apps.ps1

$appname = @(
"*DellFreeFallDataProtection*"
"*GetHelp*"
"*Getstarted*"
"*Microsoft3DViewer*"
"*BingWeather*"
"*MicrosoftOfficeHub*"
"*MicrosoftStickyNotes*"
"*MicrosoftSolitaireCollection*"
"*Microsoft.People*"
"*Microsoft.ScreenSketch*"
"*Microsoft.XboxApp*"
"*Microsoft.XboxGamingOverlay*"
"*Microsoft.YourPhone*"
"*MixedReality.Portal*"
"*MSPaint*"
"*Office.OneNote*"
"*SkypeApp*"
"*WindowsAlarms*"
"*WindowsCalculator*"
"*WindowsCamera*"
"*windowscommunicationsapps*"
"*WindowsMaps*"
"*WindowsFeedbackHub*"
"*WindowsSoundRecorder*"
"*Windows.Photos*"
"*Yandex.Music*"
"*ZuneMusic*"
"*ZuneVideo*"
)

ForEach($app in $appname){
Get-AppxProvisionedPackage -Online | where {$_.PackageName -like $app} | Remove-AppxProvisionedPackage -Online -ErrorAction Continue
Get-AppxPackage -Name $app | Remove-AppxPackage -ErrorAction SilentlyContinue
}