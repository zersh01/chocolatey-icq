$ErrorActionPreference = 'Stop'; 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://hb.bizmrg.com/icq-www/win/x32/icqsetup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'icq' 

  checksum      = '8B967DEF8ED171D415325EEAD416EE56FC0E4599B0F7E0D9ECA3D25139E4D261'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '-appx' 
}

Install-ChocolateyPackage @packageArgs 




