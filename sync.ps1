$saveName = "squidgame.zip"

$repoSavePath = ".\$saveName"
$factorioSavePath = "$env:APPDATA\Factorio\saves\$saveName"

git pull

if (-not (Test-Path $repoSavePath)) {
    Write-Host "ERROR: Save file not found at $repoSavePath"
    exit 1
}

if (-not (Test-Path "$env:APPDATA\Factorio\saves")) {
    Write-Host "ERROR: Factorio saves folder not found."
    Write-Host "Expected: $env:APPDATA\Factorio\saves"
    exit 1
}

Copy-Item $repoSavePath $factorioSavePath -Force

Write-Host "Copied $saveName to Factorio saves folder."