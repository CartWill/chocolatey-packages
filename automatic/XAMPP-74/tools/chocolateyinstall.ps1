﻿$ErrorActionPreference = 'Stop';
$checksum = '665c13f7e3b6a828209d1dd8de9f190225ab44076c955cdfc68aac053e968502'
$url = 'https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.13/xampp-windows-x64-7.4.13-0-VC15-installer.exe'

$packageArgs = @{
  packageName    = 'XAMPP-74'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'exe'
  url            = $url
  silentArgs     = "--mode unattended"
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'xampp*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
