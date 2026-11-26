# Lancer un modèle ouvert en local

Scripts courts et lisibles : lisez-les avant de les lancer. Chaque script télécharge une **version
épinglée** depuis la release officielle sur GitHub, **vérifie son empreinte SHA-256** (écrite dans le
script) avant toute extraction, installe dans `~/.local/achille-ia/` (aucun droit administrateur) et
n'écoute que sur `127.0.0.1`.

| Script | Outil | Version | Systèmes |
|---|---|---|---|
| `llama-cpp.sh` | [llama.cpp](https://github.com/ggml-org/llama.cpp) (`llama-server`) | b12200 | macOS arm64/x64, Linux x64 (CPU ou Vulkan avec `ACHILLE_VULKAN=1`), Linux arm64 |
| `ollama.sh` | [Ollama](https://github.com/ollama/ollama) | v0.40.16 | macOS, Linux x64/arm64 (`zstd` requis sous Linux) |
| `ollama-windows.ps1` | Ollama | v0.40.16 | Windows x64 |

Exemples :

```bash
./llama-cpp.sh mistralai/Ministral-3-8B-Instruct-2512-GGUF:Q4_K_M 8080   # interface : http://127.0.0.1:8080
./ollama.sh qwen3:8b
```

```powershell
powershell -ExecutionPolicy Bypass -File .\ollama-windows.ps1 -Modele gemma4:e4b
```

Les poids du modèle sont téléchargés au premier lancement depuis Hugging Face (llama.cpp) ou depuis
la bibliothèque Ollama, sous la licence de leur éditeur : vérifiez-la dans
[`../modeles/CATALOGUE.md`](../modeles/CATALOGUE.md).

Pour un serveur avec GPU NVIDIA, vLLM est en général plus adapté :
`pip install vllm` dans un environnement virtuel, puis la commande `vllm serve …` du catalogue.

Mettre à jour une version : remplacer le numéro et les empreintes par ceux affichés sur la page de la
release (champ « sha256 » de chaque fichier), puis tester le script.
