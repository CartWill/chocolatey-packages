﻿$ErrorActionPreference = 'Stop'
 
$checksum = 'bd00112fcbc924f998d5c1a61715784914350b420cdd809356665f472226396d'
$url = 'https://zoom.us/client/5.0.25694.0524/ZoomInstallerFull.msi'

$packageArgs = @{
  packageName    = 'zoom-outlook'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType       = 'msi'
  url            = $url
  silentArgs     = '/quiet /norestart'
  validExitCodes = @(0)
  softwareName   = 'zoom-outlook*'
  checksum       = $checksum
  checksumType   = 'sha256'
}

Install-ChocolateyPackage @packageArgs
