$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://hb.bizmrg.com/icq-www/win/x32/icqsetup.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url


  softwareName  = 'icq' 

  checksum      = '6BBADD5926E8B9D918B29903447EB1A251DBDECD65C5F275B6A7004A99094D37'
  checksumType  = 'sha256'

#  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" 
  validExitCodes= @(0, 3010, 1641)

  silentArgs   = '-appx' 
}

Install-ChocolateyPackage @packageArgs 

