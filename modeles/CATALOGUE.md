# Catalogue des modèles d'IA à poids ouverts

> Fichier généré par `outils/generer-catalogue.py` à partir de `catalogue.json` : ne pas modifier à la main.

Mise à jour : 2026-11-11. Informations indicatives, sans valeur de conseil juridique. Seul fait foi le texte officiel de chaque licence, à relire avant tout usage. Aucun poids de modèle n'est distribué par ce dépôt.

**Méthode de vérification** : Licence lue dans les métadonnées officielles Hugging Face de l'éditeur (champ license) et, pour les licences propres, dans le texte officiel publié par l'éditeur ; liens contrôlés (HTTP 200) le 2026-11-11.

Mémoire indiquée : ordre de grandeur pour charger les poids (quantification Q4 GGUF, ou BF16 pour vLLM), hors contexte long. Un mélange d'experts (MoE) charge tous ses paramètres mais calcule avec les seuls paramètres actifs.

## Sommaire par catégorie de licence

- **Licence libre (Apache 2.0, MIT) : usage commercial permis** : `mistral-7b-instruct-v0.3`, `mistral-nemo-instruct-2407`, `ministral-3-3b-instruct-2512`, `ministral-3-8b-instruct-2512`, `ministral-3-14b-instruct-2512`, `mistral-small-3.2-24b-instruct-2506`, `magistral-small-2509`, `devstral-small-2-24b-instruct-2512`, `mixtral-8x7b-instruct-v0.1`, `mixtral-8x22b-instruct-v0.1`, `pixtral-12b-2409`, `mamba-codestral-7b-v0.1`, `voxtral-mini-3b-2507`, `mistral-large-3-675b-instruct-2512`, `grok-1`, `qwen3-4b-instruct-2507`, `qwen3-8b`, `qwen3-30b-a3b-instruct-2507`, `qwen3-32b`, `qwen3-235b-a22b-instruct-2507`, `qwen3.8-27b`, `gemma-4-e4b-it`, `gemma-4-12b-it`, `gemma-4-26b-a4b-it`, `gemma-4-31b-it`, `deepseek-r1-distill-qwen-7b`, `deepseek-r1`, `deepseek-v3.2`, `deepseek-v4.1-flash`, `phi-4-mini-instruct`, `phi-4`, `phi-4-reasoning`, `olmo-2-1124-7b-instruct`, `olmo-2-1124-13b-instruct`, `olmo-3-7b-instruct`, `olmo-3.1-32b-instruct`, `gpt-oss-20b`, `gpt-oss-120b`, `whisper-large-v3`, `whisper-large-v3-turbo`, `flux.1-schnell`
- **Poids ouverts sous conditions propres à l'éditeur** : `mistral-large-4-1t-a52b`, `devstral-2-123b-instruct-2512`, `llama-3.1-8b-instruct`, `llama-3.2-3b-instruct`, `llama-3.3-70b-instruct`, `grok-2`, `qwen3.8-flash-next`, `qwen2.5-72b-instruct`, `gemma-3-4b-it`, `gemma-3-27b-it`, `gemma-3n-e4b-it`, `piper-voix`, `stable-diffusion-xl-base-1.0`, `stable-diffusion-3.5-large`
- **Poids ouverts, droits non accordés aux entreprises établies dans l'UE** : `llama-4-scout-17b-16e-instruct`
- **Recherche ou usage non commercial uniquement** : `mistral-large-instruct-2411`, `ministral-8b-instruct-2410`, `codestral-22b-v0.1`, `qwen2.5-3b-instruct`, `flux.1-dev`

## Licences

### Apache License 2.0

- Catégorie : Licence libre (Apache 2.0, MIT) : usage commercial permis
- Texte officiel : https://www.apache.org/licenses/LICENSE-2.0
- Conditions principales : Usage commercial libre. Conserver le texte de licence et les avis (NOTICE), signaler les modifications. Aucune licence de marque.

### MIT License

- Catégorie : Licence libre (Apache 2.0, MIT) : usage commercial permis
- Texte officiel : texte LICENSE du dépôt de chaque modèle
- Conditions principales : Usage commercial libre. Conserver l'avis de copyright et le texte de licence.

### Apache License 2.0 (Gemma 4)

- Catégorie : Licence libre (Apache 2.0, MIT) : usage commercial permis
- Texte officiel : https://ai.google.dev/gemma/apache_2
- Conditions principales : Gemma 4 est publié sous Apache 2.0 (page officielle Google). Le nom « Gemma » reste une marque de Google.

### Llama 3.1 Community License Agreement

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://www.llama.com/llama3_1/license/
- Politique d'usage : https://www.llama.com/llama3_1/use-policy/
- Conditions principales : Afficher « Built with Llama » sur le site, l'interface ou la documentation ; fournir une copie de l'accord avec toute redistribution ; nom de tout modèle dérivé commençant par « Llama » ; au-delà de 700 millions d'utilisateurs actifs mensuels, licence à demander à Meta ; respect de la politique d'usage acceptable. Accès au dépôt soumis à acceptation (gated).

### Llama 3.2 Community License Agreement

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://www.llama.com/llama3_2/license/
- Politique d'usage : https://www.llama.com/llama3_2/use-policy/
- Conditions principales : Mêmes conditions que Llama 3.1 (« Built with Llama », copie de l'accord, seuil de 700 millions d'utilisateurs actifs mensuels, politique d'usage acceptable). ATTENTION : pour les modèles MULTIMODAUX de Llama 3.2 (11B/90B Vision), la politique d'usage acceptable n'accorde pas les droits aux personnes domiciliées ou aux entreprises ayant leur établissement principal dans l'Union européenne (sauf utilisateurs finaux d'un produit qui les intègre). Les modèles texte 1B/3B ne sont pas concernés.

### Llama 3.3 Community License Agreement

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://www.llama.com/llama3_3/license/
- Politique d'usage : https://www.llama.com/llama3_3/use-policy/
- Conditions principales : « Built with Llama » affiché ; copie de l'accord avec toute redistribution ; nom des dérivés commençant par « Llama » ; au-delà de 700 millions d'utilisateurs actifs mensuels, licence à demander à Meta ; politique d'usage acceptable. Accès gated.

### Llama 4 Community License Agreement

- Catégorie : Poids ouverts, droits non accordés aux entreprises établies dans l'UE
- Texte officiel : https://www.llama.com/llama4/license/
- Politique d'usage : https://www.llama.com/llama4/use-policy/
- Conditions principales : « Built with Llama », copie de l'accord, seuil de 700 millions d'utilisateurs actifs mensuels, politique d'usage acceptable. ATTENTION : Llama 4 est multimodal ; la politique d'usage acceptable n'accorde PAS les droits aux personnes domiciliées ou aux entreprises ayant leur établissement principal dans l'Union européenne (sauf utilisateurs finaux d'un produit qui l'intègre). Une entreprise française ne peut donc pas l'héberger elle-même.

### Gemma Terms of Use

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://ai.google.dev/gemma/terms
- Politique d'usage : https://ai.google.dev/gemma/prohibited_use_policy
- Conditions principales : Usage commercial permis. Respect de la Gemma Prohibited Use Policy (intégrée par référence) ; toute redistribution transmet ces restrictions et s'accompagne d'un fichier « Notice » : « Gemma is provided under and subject to the Gemma Terms of Use found at ai.google.dev/gemma/terms » ; Google se réserve le droit de restreindre (à distance ou non) un usage contraire. Accès gated sur Hugging Face.

### Mistral AI Research License (MRL 0.1)

- Catégorie : Recherche ou usage non commercial uniquement
- Texte officiel : https://mistral.ai/licenses/MRL-0.1.md
- Conditions principales : Recherche uniquement : usage personnel, scientifique ou académique, non productif. Tout usage commercial ou en production exige une licence commerciale de Mistral AI.

### Mistral AI Non-Production License (MNPL 0.1)

- Catégorie : Recherche ou usage non commercial uniquement
- Texte officiel : https://mistral.ai/licences/MNPL-0.1.md
- Conditions principales : Usage hors production uniquement (tests, recherche, évaluation). Production ou usage commercial : licence commerciale Mistral AI.

### Modified MIT License (Mistral AI, Devstral 2)

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/mistralai/Devstral-2-123B-Instruct-2512/blob/main/LICENSE
- Conditions principales : MIT avec condition : aucun droit si le chiffre d'affaires mensuel consolidé de l'entreprise (ou de l'employeur) dépasse 20 millions de dollars le mois précédent ; au-delà, licence commerciale Mistral AI.

### Mistral Ecosystem Open-Weight License

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/mistralai/Mistral-Large-4-1T-A52B/blob/main/LICENSE
- Conditions principales : MIT modifiée : une entité qui exerce une activité de « Model as a Service » (donner à un tiers un accès d'inférence ou de post-entraînement avec un contrôle réel sur les entrées ou paramètres, par API par exemple) doit signer une licence commerciale avec Mistral avant tout usage commercial. Usage interne libre. Un service d'IA hébergé ouvert au public relève vraisemblablement de ce cas : avis juridique conseillé.

### Qwen License Agreement

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/Qwen/Qwen2.5-72B-Instruct/blob/main/LICENSE
- Conditions principales : Usage commercial permis ; au-delà de 100 millions d'utilisateurs actifs mensuels, licence à demander à Alibaba Cloud ; mentions d'attribution prévues par le texte.

### Qwen Research License Agreement

- Catégorie : Recherche ou usage non commercial uniquement
- Texte officiel : https://huggingface.co/Qwen/Qwen2.5-3B-Instruct/blob/main/LICENSE
- Conditions principales : Recherche et usage non commercial uniquement ; usage commercial sur autorisation d'Alibaba Cloud.

### Qwen Community License 1.0

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/Qwen/Qwen3.8-Flash-Next/blob/main/LICENSE
- Conditions principales : Au-delà de 100 millions d'utilisateurs actifs mensuels ou de 20 millions de dollars de revenu mensuel, afficher le nom du modèle dans l'interface ; une activité de « Model as a Service » ou d'« AI Work Assistant » exige une licence séparée de Qwen avant tout usage commercial (usage interne libre).

### Grok 2 Community License Agreement

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/xai-org/grok-2/blob/main/LICENSE
- Conditions principales : Usage non commercial et recherche ; usage commercial seulement en respectant la politique d'usage acceptable de xAI ; afficher « Powered by xAI » ; interdiction d'utiliser le modèle ou ses sorties pour entraîner ou améliorer d'autres modèles de fondation (hors ajustement de Grok lui-même). Licence révocable.

### CreativeML Open RAIL++-M License

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/blob/main/LICENSE.md
- Conditions principales : Usage commercial permis sous réserve des restrictions d'usage de l'annexe A, à transmettre à tout utilisateur et redistributeur.

### Stability AI Community License

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/stabilityai/stable-diffusion-3.5-large/blob/main/LICENSE.md
- Conditions principales : Gratuit pour la recherche, l'usage non commercial et l'usage commercial sous un seuil de chiffre d'affaires annuel ; au-delà, licence Entreprise. Montant exact du seuil : à vérifier (texte accessible seulement après acceptation sur Hugging Face).

### FLUX.1 [dev] Non-Commercial License

- Catégorie : Recherche ou usage non commercial uniquement
- Texte officiel : https://huggingface.co/black-forest-labs/FLUX.1-dev/blob/main/LICENSE.md
- Conditions principales : Usage non commercial uniquement ; les sorties peuvent être utilisées selon les termes du texte (à relire).

### Licence propre à chaque voix

- Catégorie : Poids ouverts sous conditions propres à l'éditeur
- Texte officiel : https://huggingface.co/rhasspy/piper-voices
- Conditions principales : Le dépôt des voix est sous MIT, mais chaque voix hérite de la licence de son jeu de données (fichier MODEL_CARD). Voix françaises relevées : siwis CC-BY 4.0, upmc CC-BY-SA 4.0, gilles CC0, tom AGPLv3 (contaminante : à éviter dans un service). Le moteur actif (OHF-Voice/piper1-gpl) est sous GPL-3.0 ; l'ancien rhasspy/piper (MIT) est archivé.

## Modèles

### Mistral

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [mistral-7b-instruct-v0.3](https://huggingface.co/mistralai/Mistral-7B-Instruct-v0.3) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 7.2 Md | Q4 ≈ 6 Go · BF16 ≈ 14 Go | Assistant généraliste léger, poste de travail. |
| [mistral-nemo-instruct-2407](https://huggingface.co/mistralai/Mistral-Nemo-Instruct-2407) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 12.2 Md | Q4 ≈ 9 Go · BF16 ≈ 24 Go | Assistant multilingue (bon français), contexte long. |
| [ministral-3-3b-instruct-2512](https://huggingface.co/mistralai/Ministral-3-3B-Instruct-2512) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 3.8 Md | Q4 ≈ 4 Go · BF16 ≈ 8 Go | Très petit modèle : mobile, embarqué, tri de requêtes. |
| [ministral-3-8b-instruct-2512](https://huggingface.co/mistralai/Ministral-3-8B-Instruct-2512) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 8.9 Md | Q4 ≈ 7 Go · BF16 ≈ 18 Go | Assistant local rapide, bon rapport qualité/coût. |
| [ministral-3-14b-instruct-2512](https://huggingface.co/mistralai/Ministral-3-14B-Instruct-2512) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 13.9 Md | Q4 ≈ 10 Go · BF16 ≈ 28 Go | Assistant généraliste sur une carte graphique grand public. |
| [mistral-small-3.2-24b-instruct-2506](https://huggingface.co/mistralai/Mistral-Small-3.2-24B-Instruct-2506) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 24 Md | Q4 ≈ 16 Go · BF16 ≈ 48 Go | Assistant de production polyvalent, vision, appels d'outils. |
| [magistral-small-2509](https://huggingface.co/mistralai/Magistral-Small-2509) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 24 Md | Q4 ≈ 16 Go · BF16 ≈ 48 Go | Raisonnement pas à pas. |
| [devstral-small-2-24b-instruct-2512](https://huggingface.co/mistralai/Devstral-Small-2-24B-Instruct-2512) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 24 Md | Q4 ≈ 16 Go · BF16 ≈ 48 Go | Agent de développement logiciel. |
| [mixtral-8x7b-instruct-v0.1](https://huggingface.co/mistralai/Mixtral-8x7B-Instruct-v0.1) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 46.7 Md (12.9 Md actifs) | Q4 ≈ 30 Go · BF16 ≈ 93 Go | Mélange d'experts historique ; remplacé par Mistral Small 3.x. |
| [mixtral-8x22b-instruct-v0.1](https://huggingface.co/mistralai/Mixtral-8x22B-Instruct-v0.1) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 140.6 Md (39 Md actifs) | Q4 ≈ 86 Go · BF16 ≈ 281 Go | Grand mélange d'experts, serveur multi-GPU. |
| [pixtral-12b-2409](https://huggingface.co/mistralai/Pixtral-12B-2409) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 12.4 Md | Q4 ≈ 9 Go · BF16 ≈ 25 Go | Compréhension d'images et de documents. |
| [mamba-codestral-7b-v0.1](https://huggingface.co/mistralai/Mamba-Codestral-7B-v0.1) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 7.3 Md | Q4 ≈ 6 Go · BF16 ≈ 15 Go | Complétion de code (architecture Mamba). |
| [voxtral-mini-3b-2507](https://huggingface.co/mistralai/Voxtral-Mini-3B-2507) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 4.7 Md | Q4 ≈ 4 Go · BF16 ≈ 9 Go | Transcription et compréhension audio. |
| [mistral-large-3-675b-instruct-2512](https://huggingface.co/mistralai/Mistral-Large-3-675B-Instruct-2512) | Mistral AI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 675 Md | Q4 ≈ 406 Go · BF16 ≈ 1350 Go | Très grand modèle de pointe, grappe de GPU. |
| [mistral-large-4-1t-a52b](https://huggingface.co/mistralai/Mistral-Large-4-1T-A52B) | Mistral AI | [Mistral Ecosystem Open-Weight License](https://huggingface.co/mistralai/Mistral-Large-4-1T-A52B/blob/main/LICENSE) | 1000 Md (52 Md actifs) | Q4 ≈ 602 Go · BF16 ≈ 2000 Go | Modèle de pointe ; licence restrictive pour un service hébergé. |
| [devstral-2-123b-instruct-2512](https://huggingface.co/mistralai/Devstral-2-123B-Instruct-2512) | Mistral AI | [Modified MIT License (Mistral AI, Devstral 2)](https://huggingface.co/mistralai/Devstral-2-123B-Instruct-2512/blob/main/LICENSE) | 125 Md | Q4 ≈ 76 Go · BF16 ≈ 250 Go | Agent de code ; réservé aux entreprises sous 20 M$ de CA mensuel. |
| [mistral-large-instruct-2411](https://huggingface.co/mistralai/Mistral-Large-Instruct-2411) | Mistral AI | [Mistral AI Research License (MRL 0.1)](https://mistral.ai/licenses/MRL-0.1.md) | 122.6 Md | Q4 ≈ 75 Go · BF16 ≈ 245 Go | Recherche uniquement. |
| [ministral-8b-instruct-2410](https://huggingface.co/mistralai/Ministral-8B-Instruct-2410) | Mistral AI | [Mistral AI Research License (MRL 0.1)](https://mistral.ai/licenses/MRL-0.1.md) | 8 Md | Q4 ≈ 6 Go · BF16 ≈ 16 Go | Recherche uniquement (remplacé par Ministral 3, Apache 2.0). |
| [codestral-22b-v0.1](https://huggingface.co/mistralai/Codestral-22B-v0.1) | Mistral AI | [Mistral AI Non-Production License (MNPL 0.1)](https://mistral.ai/licences/MNPL-0.1.md) | 22.2 Md | Q4 ≈ 15 Go · BF16 ≈ 44 Go | Code, hors production uniquement. |

**mistral-7b-instruct-v0.3** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run mistral:7b`
  - vLLM : `vllm serve mistralai/Mistral-7B-Instruct-v0.3 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**mistral-nemo-instruct-2407** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run mistral-nemo:12b`
  - vLLM : `vllm serve mistralai/Mistral-Nemo-Instruct-2407 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**ministral-3-3b-instruct-2512** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run ministral-3:3b`
  - vLLM : `vllm serve mistralai/Ministral-3-3B-Instruct-2512 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**ministral-3-8b-instruct-2512** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run ministral-3:8b`
  - llama.cpp : `llama-server -hf mistralai/Ministral-3-8B-Instruct-2512-GGUF:Q4_K_M`
  - vLLM : `vllm serve mistralai/Ministral-3-8B-Instruct-2512 --tokenizer-mode mistral --config-format mistral --load-format mistral`

**ministral-3-14b-instruct-2512** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run ministral-3:14b`
  - vLLM : `vllm serve mistralai/Ministral-3-14B-Instruct-2512 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**mistral-small-3.2-24b-instruct-2506** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run mistral-small3.2:24b`
  - llama.cpp : `llama-server -hf unsloth/Mistral-Small-3.2-24B-Instruct-2506-GGUF:Q4_K_M`
  - vLLM : `vllm serve mistralai/Mistral-Small-3.2-24B-Instruct-2506 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - Note : GGUF cité : conversion communautaire (unsloth), pas l'éditeur.

**magistral-small-2509** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run magistral:24b`
  - vLLM : `vllm serve mistralai/Magistral-Small-2509 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**devstral-small-2-24b-instruct-2512** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run devstral:24b`
  - vLLM : `vllm serve mistralai/Devstral-Small-2-24B-Instruct-2512 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Le tag Ollama « devstral:24b » peut pointer vers une autre version de Devstral Small : vérifier la page du tag.

**mixtral-8x7b-instruct-v0.1** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run mixtral:8x7b`
  - vLLM : `vllm serve mistralai/Mixtral-8x7B-Instruct-v0.1 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**mixtral-8x22b-instruct-v0.1** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run mixtral:8x22b`
  - vLLM : `vllm serve mistralai/Mixtral-8x22B-Instruct-v0.1 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**pixtral-12b-2409** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Pixtral-12B-2409 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Taille indiquée par l'éditeur (12B + encodeur de vision) ; poids au format natif Mistral.

**mamba-codestral-7b-v0.1** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Note : Architecture Mamba2 : prise en charge vLLM / llama.cpp à vérifier selon la version.

**voxtral-mini-3b-2507** — modalités : audio, texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Voxtral-Mini-3B-2507 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**mistral-large-3-675b-instruct-2512** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Mistral-Large-3-675B-Instruct-2512 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Taille déduite du nom (675B) ; nombre de paramètres actifs : à vérifier sur la fiche.

**mistral-large-4-1t-a52b** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run mistral-large-4`
  - vLLM : `vllm serve mistralai/Mistral-Large-4-1T-A52B --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Taille déduite du nom (1T, 52B actifs).

**devstral-2-123b-instruct-2512** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Devstral-2-123B-Instruct-2512 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**mistral-large-instruct-2411** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Mistral-Large-Instruct-2411 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**ministral-8b-instruct-2410** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Ministral-8B-Instruct-2410 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**codestral-22b-v0.1** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve mistralai/Codestral-22B-v0.1 --tokenizer-mode mistral --config-format mistral --load-format mistral`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

### Llama

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [llama-3.1-8b-instruct](https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct) | Meta | [Llama 3.1 Community License Agreement](https://www.llama.com/llama3_1/license/) | 8 Md | Q4 ≈ 6 Go · BF16 ≈ 16 Go | Assistant généraliste léger. |
| [llama-3.2-3b-instruct](https://huggingface.co/meta-llama/Llama-3.2-3B-Instruct) | Meta | [Llama 3.2 Community License Agreement](https://www.llama.com/llama3_2/license/) | 3.2 Md | Q4 ≈ 3 Go · BF16 ≈ 6 Go | Petit modèle texte (non concerné par la restriction UE multimodale). |
| [llama-3.3-70b-instruct](https://huggingface.co/meta-llama/Llama-3.3-70B-Instruct) | Meta | [Llama 3.3 Community License Agreement](https://www.llama.com/llama3_3/license/) | 70.6 Md | Q4 ≈ 44 Go · BF16 ≈ 141 Go | Assistant de haut niveau sur 1 à 2 GPU de 80 Go. |
| [llama-4-scout-17b-16e-instruct](https://huggingface.co/meta-llama/Llama-4-Scout-17B-16E-Instruct) | Meta | [Llama 4 Community License Agreement](https://www.llama.com/llama4/license/) | 108.6 Md (17 Md actifs) | Q4 ≈ 67 Go · BF16 ≈ 217 Go | Non utilisable par une entreprise établie dans l'UE (voir licence). |

**llama-3.1-8b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run llama3.1:8b`
  - vLLM : `vllm serve meta-llama/Llama-3.1-8B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**llama-3.2-3b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run llama3.2:3b`
  - vLLM : `vllm serve meta-llama/Llama-3.2-3B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**llama-3.3-70b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run llama3.3:70b`
  - vLLM : `vllm serve meta-llama/Llama-3.3-70B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**llama-4-scout-17b-16e-instruct** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run llama4:scout`
  - vLLM : `vllm serve meta-llama/Llama-4-Scout-17B-16E-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

### Grok

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [grok-1](https://huggingface.co/xai-org/grok-1) | xAI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 314 Md (86 Md actifs) | Q4 ≈ 190 Go · BF16 ≈ 628 Go | Intérêt surtout historique et de recherche ; très lourd, non ajusté pour le dialogue. |
| [grok-2](https://huggingface.co/xai-org/grok-2) | xAI | [Grok 2 Community License Agreement](https://huggingface.co/xai-org/grok-2/blob/main/LICENSE) | voir note | voir note | Recherche ; service commercial sous conditions strictes de xAI. |

**grok-1** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Note : 314B paramètres (86B actifs environ) selon l'annonce de xAI ; code de référence JAX : github.com/xai-org/grok-1. Tailles : à vérifier sur la source xAI.

**grok-2** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Note : Poids d'environ 500 Go, 8 GPU de plus de 40 Go recommandés par xAI (SGLang). Nombre de paramètres non publié sur la fiche : à vérifier.

### Qwen

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [qwen3-4b-instruct-2507](https://huggingface.co/Qwen/Qwen3-4B-Instruct-2507) | Alibaba Cloud (Qwen) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 4 Md | Q4 ≈ 4 Go · BF16 ≈ 8 Go | Petit assistant multilingue, poste ou mobile haut de gamme. |
| [qwen3-8b](https://huggingface.co/Qwen/Qwen3-8B) | Alibaba Cloud (Qwen) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 8.2 Md | Q4 ≈ 6 Go · BF16 ≈ 16 Go | Assistant local, mode réflexion activable. |
| [qwen3-30b-a3b-instruct-2507](https://huggingface.co/Qwen/Qwen3-30B-A3B-Instruct-2507) | Alibaba Cloud (Qwen) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 30.5 Md (3.3 Md actifs) | Q4 ≈ 20 Go · BF16 ≈ 61 Go | Mélange d'experts rapide (3B actifs) : très bon débit. |
| [qwen3-32b](https://huggingface.co/Qwen/Qwen3-32B) | Alibaba Cloud (Qwen) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 32.8 Md | Q4 ≈ 21 Go · BF16 ≈ 66 Go | Assistant dense de qualité sur un GPU de 48 à 80 Go. |
| [qwen3-235b-a22b-instruct-2507](https://huggingface.co/Qwen/Qwen3-235B-A22B-Instruct-2507) | Alibaba Cloud (Qwen) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 235.1 Md (22 Md actifs) | Q4 ≈ 143 Go · BF16 ≈ 470 Go | Modèle de pointe, serveur multi-GPU. |
| [qwen3.8-27b](https://huggingface.co/Qwen/Qwen3.8-27B) | Alibaba Cloud (Qwen) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 27.8 Md | Q4 ≈ 18 Go · BF16 ≈ 56 Go | Dernière génération Qwen dense, vision. |
| [qwen3.8-flash-next](https://huggingface.co/Qwen/Qwen3.8-Flash-Next) | Alibaba Cloud (Qwen) | [Qwen Community License 1.0](https://huggingface.co/Qwen/Qwen3.8-Flash-Next/blob/main/LICENSE) | 180 Md | Q4 ≈ 110 Go · BF16 ≈ 360 Go | Grand modèle ; licence restrictive pour un service hébergé. |
| [qwen2.5-72b-instruct](https://huggingface.co/Qwen/Qwen2.5-72B-Instruct) | Alibaba Cloud (Qwen) | [Qwen License Agreement](https://huggingface.co/Qwen/Qwen2.5-72B-Instruct/blob/main/LICENSE) | 72.7 Md | Q4 ≈ 45 Go · BF16 ≈ 145 Go | Génération précédente ; préférer Qwen3 (Apache 2.0). |
| [qwen2.5-3b-instruct](https://huggingface.co/Qwen/Qwen2.5-3B-Instruct) | Alibaba Cloud (Qwen) | [Qwen Research License Agreement](https://huggingface.co/Qwen/Qwen2.5-3B-Instruct/blob/main/LICENSE) | 3.1 Md | Q4 ≈ 3 Go · BF16 ≈ 6 Go | Recherche uniquement. |

**qwen3-4b-instruct-2507** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run qwen3:4b`
  - llama.cpp : `llama-server -hf Qwen/Qwen3-4B-GGUF:Q4_K_M`
  - vLLM : `vllm serve Qwen/Qwen3-4B-Instruct-2507`
  - Note : Le GGUF officiel cité correspond à Qwen3-4B (version initiale), pas à la révision 2507.

**qwen3-8b** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run qwen3:8b`
  - llama.cpp : `llama-server -hf Qwen/Qwen3-8B-GGUF:Q4_K_M`
  - vLLM : `vllm serve Qwen/Qwen3-8B`

**qwen3-30b-a3b-instruct-2507** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run qwen3:30b`
  - vLLM : `vllm serve Qwen/Qwen3-30B-A3B-Instruct-2507`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**qwen3-32b** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run qwen3:32b`
  - vLLM : `vllm serve Qwen/Qwen3-32B`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**qwen3-235b-a22b-instruct-2507** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run qwen3:235b`
  - vLLM : `vllm serve Qwen/Qwen3-235B-A22B-Instruct-2507`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**qwen3.8-27b** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run qwen3.8:27b`
  - vLLM : `vllm serve Qwen/Qwen3.8-27B`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**qwen3.8-flash-next** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve Qwen/Qwen3.8-Flash-Next`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**qwen2.5-72b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve Qwen/Qwen2.5-72B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**qwen2.5-3b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve Qwen/Qwen2.5-3B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

### Gemma

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [gemma-4-e4b-it](https://huggingface.co/google/gemma-4-E4B-it) | Google | [Apache License 2.0 (Gemma 4)](https://ai.google.dev/gemma/apache_2) | 8 Md | Q4 ≈ 6 Go · BF16 ≈ 16 Go | Modèle embarqué (poste, mobile), multimodal. |
| [gemma-4-12b-it](https://huggingface.co/google/gemma-4-12B-it) | Google | [Apache License 2.0 (Gemma 4)](https://ai.google.dev/gemma/apache_2) | 12 Md | Q4 ≈ 9 Go · BF16 ≈ 24 Go | Assistant généraliste sur GPU grand public. |
| [gemma-4-26b-a4b-it](https://huggingface.co/google/gemma-4-26B-A4B-it) | Google | [Apache License 2.0 (Gemma 4)](https://ai.google.dev/gemma/apache_2) | 25.8 Md (4 Md actifs) | Q4 ≈ 17 Go · BF16 ≈ 52 Go | Mélange d'experts rapide (4B actifs). |
| [gemma-4-31b-it](https://huggingface.co/google/gemma-4-31B-it) | Google | [Apache License 2.0 (Gemma 4)](https://ai.google.dev/gemma/apache_2) | 31.3 Md | Q4 ≈ 20 Go · BF16 ≈ 63 Go | Assistant dense de qualité. |
| [gemma-3-4b-it](https://huggingface.co/google/gemma-3-4b-it) | Google | [Gemma Terms of Use](https://ai.google.dev/gemma/terms) | 4.3 Md | Q4 ≈ 4 Go · BF16 ≈ 9 Go | Génération précédente (conditions Gemma). |
| [gemma-3-27b-it](https://huggingface.co/google/gemma-3-27b-it) | Google | [Gemma Terms of Use](https://ai.google.dev/gemma/terms) | 27.4 Md | Q4 ≈ 18 Go · BF16 ≈ 55 Go | Génération précédente (conditions Gemma). |
| [gemma-3n-e4b-it](https://huggingface.co/google/gemma-3n-E4B-it) | Google | [Gemma Terms of Use](https://ai.google.dev/gemma/terms) | 7.8 Md | Q4 ≈ 6 Go · BF16 ≈ 16 Go | Mobile et embarqué (conditions Gemma). |

**gemma-4-e4b-it** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma4:e4b`
  - vLLM : `vllm serve google/gemma-4-E4B-it`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**gemma-4-12b-it** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma4:12b`
  - vLLM : `vllm serve google/gemma-4-12B-it`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**gemma-4-26b-a4b-it** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma4:26b`
  - vLLM : `vllm serve google/gemma-4-26B-A4B-it`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**gemma-4-31b-it** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma4:31b`
  - vLLM : `vllm serve google/gemma-4-31B-it`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**gemma-3-4b-it** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma3:4b`
  - llama.cpp : `llama-server -hf ggml-org/gemma-3-4b-it-GGUF:Q4_K_M`
  - vLLM : `vllm serve google/gemma-3-4b-it`

**gemma-3-27b-it** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma3:27b`
  - vLLM : `vllm serve google/gemma-3-27b-it`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**gemma-3n-e4b-it** — modalités : texte, image, audio ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gemma3n:e4b`
  - vLLM : `vllm serve google/gemma-3n-E4B-it`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

### DeepSeek

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [deepseek-r1-distill-qwen-7b](https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-7B) | DeepSeek | [MIT License](https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-7B/blob/main/LICENSE) | 7.6 Md | Q4 ≈ 6 Go · BF16 ≈ 15 Go | Raisonnement sur poste de travail. |
| [deepseek-r1](https://huggingface.co/deepseek-ai/DeepSeek-R1) | DeepSeek | [MIT License](https://huggingface.co/deepseek-ai/DeepSeek-R1/blob/main/LICENSE) | 684.5 Md (37 Md actifs) | Q4 ≈ 412 Go · BF16 ≈ 1369 Go | Raisonnement de pointe, grappe de GPU. |
| [deepseek-v3.2](https://huggingface.co/deepseek-ai/DeepSeek-V3.2) | DeepSeek | [MIT License](https://huggingface.co/deepseek-ai/DeepSeek-V3.2/blob/main/LICENSE) | 685.4 Md (37 Md actifs) | Q4 ≈ 413 Go · BF16 ≈ 1371 Go | Grand modèle généraliste, grappe de GPU. |
| [deepseek-v4.1-flash](https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash) | DeepSeek | [MIT License](https://huggingface.co/deepseek-ai/DeepSeek-V4.1-Flash/blob/main/LICENSE) | 763.2 Md | Q4 ≈ 459 Go · BF16 ≈ 1526 Go | Dernière génération, grappe de GPU. |

**deepseek-r1-distill-qwen-7b** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run deepseek-r1:7b`
  - vLLM : `vllm serve deepseek-ai/DeepSeek-R1-Distill-Qwen-7B`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Distillé sur une base Qwen2.5 : licence de la base (Apache 2.0 annoncée par DeepSeek) à vérifier.

**deepseek-r1** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run deepseek-r1:671b`
  - vLLM : `vllm serve deepseek-ai/DeepSeek-R1`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**deepseek-v3.2** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve deepseek-ai/DeepSeek-V3.2`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**deepseek-v4.1-flash** — modalités : texte, image ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve deepseek-ai/DeepSeek-V4.1-Flash`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Paramètres actifs : à vérifier sur la fiche.

### Phi

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [phi-4-mini-instruct](https://huggingface.co/microsoft/Phi-4-mini-instruct) | Microsoft | [MIT License](https://huggingface.co/microsoft/Phi-4-mini-instruct/blob/main/LICENSE) | 3.8 Md | Q4 ≈ 4 Go · BF16 ≈ 8 Go | Petit modèle pour poste et mobile. |
| [phi-4](https://huggingface.co/microsoft/phi-4) | Microsoft | [MIT License](https://huggingface.co/microsoft/phi-4/blob/main/LICENSE) | 14.7 Md | Q4 ≈ 10 Go · BF16 ≈ 29 Go | Raisonnement compact, surtout en anglais. |
| [phi-4-reasoning](https://huggingface.co/microsoft/Phi-4-reasoning) | Microsoft | [MIT License](https://huggingface.co/microsoft/Phi-4-reasoning/blob/main/LICENSE) | 14.7 Md | Q4 ≈ 10 Go · BF16 ≈ 29 Go | Raisonnement mathématique et scientifique. |

**phi-4-mini-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run phi4-mini:3.8b`
  - vLLM : `vllm serve microsoft/Phi-4-mini-instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**phi-4** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run phi4:14b`
  - vLLM : `vllm serve microsoft/phi-4`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**phi-4-reasoning** — modalités : texte ; licence vérifiée le 2026-11-11.
  - vLLM : `vllm serve microsoft/Phi-4-reasoning`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

### OLMo

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [olmo-2-1124-7b-instruct](https://huggingface.co/allenai/OLMo-2-1124-7B-Instruct) | Allen Institute for AI (Ai2) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 7.3 Md | Q4 ≈ 6 Go · BF16 ≈ 15 Go | Modèle entièrement ouvert (données et code publiés). |
| [olmo-2-1124-13b-instruct](https://huggingface.co/allenai/OLMo-2-1124-13B-Instruct) | Allen Institute for AI (Ai2) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 13.7 Md | Q4 ≈ 10 Go · BF16 ≈ 27 Go | Modèle entièrement ouvert. |
| [olmo-3-7b-instruct](https://huggingface.co/allenai/Olmo-3-7B-Instruct) | Allen Institute for AI (Ai2) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 7.3 Md | Q4 ≈ 6 Go · BF16 ≈ 15 Go | Modèle entièrement ouvert, génération 3. |
| [olmo-3.1-32b-instruct](https://huggingface.co/allenai/Olmo-3.1-32B-Instruct) | Allen Institute for AI (Ai2) | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 32.2 Md | Q4 ≈ 21 Go · BF16 ≈ 64 Go | Modèle entièrement ouvert de qualité. |

**olmo-2-1124-7b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run olmo2:7b`
  - vLLM : `vllm serve allenai/OLMo-2-1124-7B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**olmo-2-1124-13b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run olmo2:13b`
  - vLLM : `vllm serve allenai/OLMo-2-1124-13B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**olmo-3-7b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run olmo-3:7b`
  - vLLM : `vllm serve allenai/Olmo-3-7B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

**olmo-3.1-32b-instruct** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run olmo-3.1:32b`
  - vLLM : `vllm serve allenai/Olmo-3.1-32B-Instruct`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.

### gpt-oss

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [gpt-oss-20b](https://huggingface.co/openai/gpt-oss-20b) | OpenAI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 20.9 Md (3.6 Md actifs) | Q4 ≈ 14 Go · BF16 ≈ 42 Go | Raisonnement et outils sur un GPU de 16 Go (MXFP4). |
| [gpt-oss-120b](https://huggingface.co/openai/gpt-oss-120b) | OpenAI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 116.8 Md (5.1 Md actifs) | Q4 ≈ 72 Go · BF16 ≈ 234 Go | Raisonnement de haut niveau sur un GPU de 80 Go. |

**gpt-oss-20b** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gpt-oss:20b`
  - vLLM : `vllm serve openai/gpt-oss-20b`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Paramètres actifs selon l'annonce d'OpenAI : à vérifier. Une politique d'usage accompagne le dépôt.

**gpt-oss-120b** — modalités : texte ; licence vérifiée le 2026-11-11.
  - Ollama : `ollama run gpt-oss:120b`
  - vLLM : `vllm serve openai/gpt-oss-120b`
  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.
  - Note : Paramètres actifs selon l'annonce d'OpenAI : à vérifier.

### Whisper

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [whisper-large-v3](https://huggingface.co/openai/whisper-large-v3) | OpenAI | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 1.55 Md | Q4 ≈ 2 Go · BF16 ≈ 3 Go | Transcription multilingue de référence. |
| [whisper-large-v3-turbo](https://huggingface.co/openai/whisper-large-v3-turbo) | OpenAI | [MIT License](https://huggingface.co/openai/whisper-large-v3-turbo/blob/main/LICENSE) | 0.81 Md | Q4 ≈ 2 Go · BF16 ≈ 2 Go | Transcription rapide, légère. |

**whisper-large-v3** — modalités : audio → texte ; licence vérifiée le 2026-11-11.
  - Note : Servir avec whisper.cpp, faster-whisper ou transformers. Le code github.com/openai/whisper est sous MIT.

**whisper-large-v3-turbo** — modalités : audio → texte ; licence vérifiée le 2026-11-11.
  - Note : Servir avec whisper.cpp ou faster-whisper.

### Piper

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [piper-voix](https://huggingface.co/rhasspy/piper-voices) | Open Home Foundation (ex-Rhasspy) | [Licence propre à chaque voix](https://huggingface.co/rhasspy/piper-voices) | voir note | voir note | Synthèse vocale locale très légère (CPU, Raspberry Pi). |

**piper-voix** — modalités : texte → audio ; licence vérifiée le 2026-11-11 pour le dépôt et quatre voix françaises ; autres voix à vérifier une par une.
  - Note : Moteur : github.com/OHF-Voice/piper1-gpl (GPL-3.0). Chaque voix pèse 20 à 120 Mo environ (à vérifier) et tourne sur CPU.

### FLUX

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [flux.1-schnell](https://huggingface.co/black-forest-labs/FLUX.1-schnell) | Black Forest Labs | [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) | 11.9 Md | Q4 ≈ 9 Go · BF16 ≈ 24 Go | Génération d'images rapide (1 à 4 étapes), usage commercial permis. |
| [flux.1-dev](https://huggingface.co/black-forest-labs/FLUX.1-dev) | Black Forest Labs | [FLUX.1 [dev] Non-Commercial License](https://huggingface.co/black-forest-labs/FLUX.1-dev/blob/main/LICENSE.md) | 11.9 Md | Q4 ≈ 9 Go · BF16 ≈ 24 Go | Images de qualité, non commercial. |

**flux.1-schnell** — modalités : texte → image ; licence vérifiée le 2026-11-11.
  - Note : Dépôt gated : acceptation des conditions sur Hugging Face. Servir avec diffusers ou ComfyUI.

**flux.1-dev** — modalités : texte → image ; licence vérifiée le 2026-11-11.

### Stable Diffusion

| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |
|---|---|---|---|---|---|
| [stable-diffusion-xl-base-1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0) | Stability AI | [CreativeML Open RAIL++-M License](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/blob/main/LICENSE.md) | 2.6 Md | Q4 ≈ 3 Go · BF16 ≈ 5 Go | Génération d'images éprouvée, GPU de 8 à 12 Go. |
| [stable-diffusion-3.5-large](https://huggingface.co/stabilityai/stable-diffusion-3.5-large) | Stability AI | [Stability AI Community License](https://huggingface.co/stabilityai/stable-diffusion-3.5-large/blob/main/LICENSE.md) | 8.1 Md | Q4 ≈ 6 Go · BF16 ≈ 16 Go | Images de qualité ; commercial sous seuil de chiffre d'affaires. |

**stable-diffusion-xl-base-1.0** — modalités : texte → image ; licence vérifiée le 2026-11-11.
  - Note : Taille : poids du réseau principal ; servir avec diffusers ou ComfyUI.

**stable-diffusion-3.5-large** — modalités : texte → image ; licence partiellement vérifiée le 2026-11-11 (type de licence lu via l'API Hugging Face ; seuil de chiffre d'affaires à vérifier).
