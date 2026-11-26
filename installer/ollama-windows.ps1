# Lance un modèle ouvert en local avec Ollama (Windows x64, PowerShell).
# Version épinglée, archive vérifiée par SHA-256 avant extraction. Aucun « irm | iex ».
# Usage : .\ollama-windows.ps1 [-Modele ministral-3:8b]
# Licence : Apache-2.0 (voir LICENSE du dépôt).
param([string]$Modele = "ministral-3:8b")
$ErrorActionPreference = "Stop"

$Version = "v0.40.16"   # https://github.com/ollama/ollama/releases/tag/v0.40.16
$Fichier = "ollama-windows-amd64.zip"   # environ 1,6 Go
$Sha     = "50fcf5ad54277f2fa5d173ebfc93bcb017adbc0c9ef2314daabc96ca9e6aa64e"   # vérifiée le 11/11/2026
$Dest    = Join-Path $env:LOCALAPPDATA "achille-ia\ollama-$Version"
$Bin     = Join-Path $Dest "ollama.exe"

if (-not (Test-Path $Bin)) {
  $Tmp = Join-Path $env:TEMP $Fichier
  Write-Host "Téléchargement de $Fichier ($Version)…"
  Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/ollama/ollama/releases/download/$Version/$Fichier" -OutFile $Tmp
  $Calc = (Get-FileHash -Algorithm SHA256 $Tmp).Hash.ToLower()
  if ($Calc -ne $Sha) { Remove-Item $Tmp; throw "ÉCHEC : empreinte SHA-256 inattendue ($Calc). Rien n'est installé." }
  Write-Host "Empreinte SHA-256 conforme."
  Expand-Archive -Path $Tmp -DestinationPath $Dest -Force
  Remove-Item $Tmp
  $Bin = (Get-ChildItem -Path $Dest -Recurse -Filter ollama.exe | Select-Object -First 1).FullName
}

$env:OLLAMA_HOST = "127.0.0.1:11434"   # écoute locale uniquement
try { & $Bin list *> $null } catch { }
if ($LASTEXITCODE -ne 0) {
  Start-Process -FilePath $Bin -ArgumentList "serve" -WindowStyle Hidden
  Start-Sleep -Seconds 5
}
Write-Host "Avant usage, lisez la licence du modèle : modeles\CATALOGUE.md"
& $Bin run $Modele
