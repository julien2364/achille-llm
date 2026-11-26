#!/usr/bin/env bash
# Lance un modèle ouvert en local avec Ollama (macOS, Linux).
# Version épinglée, archive vérifiée par SHA-256 avant extraction. Aucun « curl | sh ».
# Usage : ./ollama.sh [modele]        ex. ./ollama.sh ministral-3:8b
# Licence : Apache-2.0 (voir LICENSE du dépôt).
set -euo pipefail

VERSION="v0.40.16"   # publiée le 09/11/2026 : https://github.com/ollama/ollama/releases/tag/v0.40.16
MODELE="${1:-ministral-3:8b}"
DEST="${ACHILLE_DEST:-$HOME/.local/achille-ia/ollama-$VERSION}"

# Empreintes SHA-256 publiées par GitHub pour les fichiers de la release (vérifiées le 11/11/2026).
case "$(uname -s)-$(uname -m)" in
  Darwin-*)       FICHIER="ollama-darwin.tgz";        SHA="a743717494315da7cd352982b805f6b992d4b4452ca117fd5fbf86c4ee46fca0" ;;
  Linux-x86_64)   FICHIER="ollama-linux-amd64.tar.zst"; SHA="87bfafb2acbc89b2e6a1be0a9043de6aa75fb450696f86bc426e65fc448f788d" ;;
  Linux-aarch64)  FICHIER="ollama-linux-arm64.tar.zst"; SHA="e45b8e6dcb86cb9f3057396351655079c9a4879b4ced2678c9350d375dcbc224" ;;
  *) echo "Système non pris en charge : $(uname -s)-$(uname -m)" >&2; exit 1 ;;
esac

sha256() { if command -v sha256sum >/dev/null; then sha256sum "$1" | cut -d' ' -f1; else shasum -a 256 "$1" | cut -d' ' -f1; fi; }

if [ ! -x "$DEST/bin/ollama" ] && [ ! -x "$DEST/ollama" ]; then
  TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
  echo "Téléchargement de $FICHIER ($VERSION)… (l'archive Linux pèse environ 1,5 Go)"
  curl -fL --proto '=https' --tlsv1.2 -o "$TMP/$FICHIER" \
    "https://github.com/ollama/ollama/releases/download/$VERSION/$FICHIER"
  CALC="$(sha256 "$TMP/$FICHIER")"
  if [ "$CALC" != "$SHA" ]; then
    echo "ÉCHEC : empreinte SHA-256 inattendue ($CALC). Arrêt sans rien installer." >&2; exit 1
  fi
  echo "Empreinte SHA-256 conforme."
  mkdir -p "$DEST"
  case "$FICHIER" in
    *.tgz)     tar -xzf "$TMP/$FICHIER" -C "$DEST" ;;
    *.tar.zst) command -v zstd >/dev/null || { echo "Installer zstd d'abord (paquet « zstd »)." >&2; exit 1; }
               zstd -dc "$TMP/$FICHIER" | tar -xf - -C "$DEST" ;;
  esac
fi

BIN="$DEST/bin/ollama"; [ -x "$BIN" ] || BIN="$DEST/ollama"
export OLLAMA_HOST="${OLLAMA_HOST:-127.0.0.1:11434}"   # écoute locale uniquement

if ! "$BIN" list >/dev/null 2>&1; then
  echo "Démarrage du serveur Ollama local ($OLLAMA_HOST)…"
  "$BIN" serve >"$DEST/serveur.log" 2>&1 &
  for _ in $(seq 1 30); do "$BIN" list >/dev/null 2>&1 && break; sleep 1; done
fi

echo "Avant usage, lisez la licence du modèle : modeles/CATALOGUE.md"
exec "$BIN" run "$MODELE"
