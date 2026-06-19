# Lance un serveur local dans le dossier du projet et ouvre le navigateur
# Usage: Exécutez ce script depuis PowerShell avec autorisation d'exécution si nécessaire

$ProjectPath = "C:\Program Files\nodejs\github\NASA"
Set-Location -LiteralPath $ProjectPath

if (Get-Command python -ErrorAction SilentlyContinue) {
    Write-Host "Lancement du serveur Python sur http://localhost:8000/..."
    python -m http.server 8000
} elseif (Get-Command npx -ErrorAction SilentlyContinue) {
    Write-Host "Lancement de http-server (npx) sur http://localhost:8000/..."
    npx http-server -p 8000
} else {
    Write-Host "Aucun serveur disponible: installez Python ou http-server (npm i -g http-server)"
    Start-Sleep -Seconds 8
}
