$ErrorActionPreference = 'Stop'; 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://hb.bizmrg.com/icq-www/win/x32/icqsetup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'icq' 

  checksum      = '058BBC8F26A3DF31A1639D6EC517A57F949E1BCC3FF24C37541132EA436F8758'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '-appx' 
}

Install-ChocolateyPackage @packageArgs 




