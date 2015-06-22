$packageName = 'virtualmachineconverter'
$installerType = 'MSI'
$url = 'http://download.microsoft.com/download/9/1/E/91E9F42C-3F1F-4AD9-92B7-8DD65DA3B0C2/mvmc_setup.msi'
$url64 = 'http://download.microsoft.com/download/9/1/E/91E9F42C-3F1F-4AD9-92B7-8DD65DA3B0C2/mvmc_setup.msi'
$silentArgs = "/qn /l*v $env:temp\virtualmachineconverter.log"
$validExitCodes = @(0,3010)
#$InstallerLogLocation = "$env:temp\virtualmachineconverter.log"

Try 
  {
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
  }

Catch 
  {
  "The installation of $packageName failed, please see installer log files at `"$InstallerLogLocation`" for more details." | write-host -foregroundcolor yellow
  }