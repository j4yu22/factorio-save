$saveName = "squidgame.zip"

$factorioSavePath = "$env:APPDATA\Factorio\saves\$saveName"
$repoSavePath = ".\$saveName"

if (-not (Test-Path $factorioSavePath)) {
    Write-Host "ERROR: Save file not found in Factorio saves folder."
    Write-Host "Expected: $factorioSavePath"
    exit 1
}

Copy-Item $factorioSavePath $repoSavePath -Force

git status
git add $repoSavePath
git commit -m "Update Factorio save"
git push

Write-Host "Copied $saveName from Factorio saves folder and pushed changes to GitHub."