#!/usr/bin/env bash
# Lance un modèle GGUF en local avec llama.cpp (llama-server, API compatible OpenAI).
# Version épinglée, archive vérifiée par SHA-256 avant extraction. Aucun « curl | sh ».
# Usage : ./llama-cpp.sh [depot-gguf:quantification] [port]
#   ex.  ./llama-cpp.sh mistralai/Ministral-3-8B-Instruct-2512-GGUF:Q4_K_M 8080
# Licence : Apache-2.0 (voir LICENSE du dépôt).
set -euo pipefail

VERSION="b12200"   # publiée le 08/11/2026 : https://github.com/ggml-org/llama.cpp/releases/tag/b12200
MODELE="${1:-mistralai/Ministral-3-8B-Instruct-2512-GGUF:Q4_K_M}"
PORT="${2:-8080}"
DEST="${ACHILLE_DEST:-$HOME/.local/achille-ia/llama.cpp-$VERSION}"

# Empreintes SHA-256 publiées par GitHub pour les fichiers de la release (vérifiées le 11/11/2026).
# Linux x86_64 : variante Vulkan (GPU AMD, Intel, NVIDIA) si ACHILLE_VULKAN=1, sinon CPU.
case "$(uname -s)-$(uname -m)" in
  Darwin-arm64)  F="llama-$VERSION-bin-macos-arm64.tar.gz";  SHA="5e7be50755d8016cee3c4c1ebba8321fe260a6323b61141a2dc7c50ee3d77cce" ;;
  Darwin-x86_64) F="llama-$VERSION-bin-macos-x64.tar.gz";    SHA="d5c74c6abfcd2376c2fe581ab333ea7f2cd9436ea24d72eb1c2ad770c953d5db" ;;
  Linux-x86_64)
    if [ "${ACHILLE_VULKAN:-0}" = "1" ]; then
               F="llama-$VERSION-bin-ubuntu-vulkan-x64.tar.gz"; SHA="cb394dcf28580fca94830ddb499d9ffe989bc3a8ec4b8f9da772394cd71f067c"
    else       F="llama-$VERSION-bin-ubuntu-x64.tar.gz";        SHA="38f7018ee6b2f42dd5313fb5fd13a39fdddcd4d6dd0b8333cb4d3c0b85e48644"; fi ;;
  Linux-aarch64) F="llama-$VERSION-bin-ubuntu-arm64.tar.gz";  SHA="cd29f19cafc21a8dd610e6aa2477e408762a78e7e8787afeedfcb52076133052" ;;
  *) echo "Système non pris en charge : $(uname -s)-$(uname -m)" >&2; exit 1 ;;
esac

sha256() { if command -v sha256sum >/dev/null; then sha256sum "$1" | cut -d' ' -f1; else shasum -a 256 "$1" | cut -d' ' -f1; fi; }

BIN="$(find "$DEST" -type f -name llama-server 2>/dev/null | head -n1 || true)"
if [ -z "$BIN" ]; then
  TMP="$(mktemp -d)"; trap 'rm -rf "$TMP"' EXIT
  echo "Téléchargement de $F…"
  curl -fL --proto '=https' --tlsv1.2 -o "$TMP/$F" \
    "https://github.com/ggml-org/llama.cpp/releases/download/$VERSION/$F"
  CALC="$(sha256 "$TMP/$F")"
  if [ "$CALC" != "$SHA" ]; then
    echo "ÉCHEC : empreinte SHA-256 inattendue ($CALC). Arrêt sans rien installer." >&2; exit 1
  fi
  echo "Empreinte SHA-256 conforme."
  mkdir -p "$DEST" && tar -xzf "$TMP/$F" -C "$DEST"
  BIN="$(find "$DEST" -type f -name llama-server | head -n1)"
fi

echo "Avant usage, lisez la licence du modèle : modeles/CATALOGUE.md"
echo "Le modèle est téléchargé depuis Hugging Face au premier lancement (cache local)."
echo "Interface et API : http://127.0.0.1:$PORT (écoute locale uniquement)"
exec "$BIN" -hf "$MODELE" --host 127.0.0.1 --port "$PORT"
