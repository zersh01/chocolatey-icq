$ErrorActionPreference = 'Stop'; 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://hb.bizmrg.com/icq-www/win/x32/icqsetup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'icq' 

  checksum      = '95412F7C8D00529A78BBC0EDDA899B05E24A1095A3D0550E49B6EA3A29A620AD'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '-appx' 
}

Install-ChocolateyPackage @packageArgs 




