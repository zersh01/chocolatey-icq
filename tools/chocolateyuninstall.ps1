$packageName = 'icq'
$fileType = 'exe'
$silentArgs = '-uninstall'
$PATH = $Env:APPDATA
$uninstallString = "$PATH/ICQ/bin/icqsetup.exe"

if ($uninstallString -ne "") {
    Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $uninstallString
}


