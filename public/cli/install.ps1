$ErrorActionPreference = "Stop"

$binUrl = "https://labs.365softlabs.com/cli/365soft.exe"
$targetDir = Join-Path $env:USERPROFILE ".365soft\bin"
$targetBin = Join-Path $targetDir "365soft.exe"

New-Item -ItemType Directory -Path $targetDir -Force | Out-Null

Invoke-WebRequest -Uri $binUrl -OutFile $targetBin -UseBasicParsing

Write-Host "Installed 365soft to $targetBin"
Write-Host "Add $targetDir to your PATH if needed."
