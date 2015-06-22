$packageName = 'virtualmachineconverter'
$installerType = 'MSI'
$url = 'http://download.microsoft.com/download/9/1/E/91E9F42C-3F1F-4AD9-92B7-8DD65DA3B0C2/mvmc_setup.msi'
$silentArgs = '/qn /l*v $env:temp\uninstallvirtualmachineconverter.log'
$validExitCodes = @(0,3010)
$InstallerLogLocation = "$env:temp\uninstallvirtualmachineconverter.log"

Try 
  {
  msiexec.exe /x "{332C1E78-1D2F-4A64-B718-68095DC6254B}" "$silentArgs"
  }

Catch 
  {
  "The installation of $packageName failed, please see installer log files at `"$InstallerLogLocation`" for more details." | write-host -foregroundcolor yellow
  }