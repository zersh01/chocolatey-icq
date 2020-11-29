$ErrorActionPreference = 'Stop'; 
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://hb.bizmrg.com/icq-www/win/x32/icqsetup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'icq' 

  checksum      = 'E99D0A2328FB432991DEC2AC371A7C9B00383744F52FC97D5E7DE747E5BB3A15'
  checksumType  = 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '-appx' 
}

Install-ChocolateyPackage @packageArgs 




