$saveName = "autosave2.zip"
$repoSavePath = ".\saves\$saveName"
$factorioSavePath = "$env:APPDATA\Roaming\Factorio\saves\$saveName"

git pull

Copy-Item $repoSavePath $factorioSavePath -Force

Write-Host "Copied $saveName to Factorio saves folder."