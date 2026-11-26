# Achille LLM — préparation d’une future version ouverte

**État : prototype d’outillage et documentation. Aucun modèle Achille entraîné, poids, adaptateur ou résultat d’évaluation n’est livré par ce dépôt.**

Ce dépôt prépare les éléments réutilisables de la future version LLM d’Achille. Il reprend une sélection des scripts et documents Apache-2.0 du dépôt `julien2364/achille-ia`, avec une nouvelle documentation de statut. Le cœur applicatif privé d’Achille et Propecto ne sont pas inclus.

## Disponible aujourd’hui
- Catalogue structuré de modèles à poids ouverts et liens vers leurs licences : `modeles/catalogue.json` et `modeles/CATALOGUE.md` (instantané documentaire du 11 novembre 2026, à revalider avant usage).
- Générateur de catalogue en Python standard : `python3 outils/generer-catalogue.py`.
- Scripts Ollama et llama.cpp : versions épinglées, vérification SHA-256 avant extraction, écoute locale par défaut. Les empreintes ont été rapprochées des métadonnées de publication GitHub le 26 novembre 2026 ; l’exécution des binaires et l’inférence ne sont pas validées ici.
- [Contrôles structurels hors réseau](outils/verifier-catalogue.py) du catalogue, avec tests de régression. Ils ne vérifient ni les licences, ni la disponibilité des URL, ni le fonctionnement des modèles.
- [Guide de contribution](CONTRIBUTING.md), sécurité et feuille de route.

## Future version LLM
Voir [MODEL_CARD.md](MODEL_CARD.md) et [ROADMAP.md](ROADMAP.md). Le modèle de base, le mode d’adaptation, les données autorisées, les métriques et la licence des éventuels poids restent à décider. Une application qui orchestre des modèles tiers n’est pas un nouveau modèle entraîné. Les futures publications devront distinguer ces deux cas.

## Usage et limites
Les scripts peuvent télécharger plusieurs gigaoctets d’outils et de modèles. Ne pas les lancer sur une machine dont l’espace disponible est insuffisant. Lire la licence du modèle choisi avant tout téléchargement ou redistribution. Les poids ouverts ne sont pas tous sous licence open source reconnue.

Aucune revendication de performance, d’adoption externe, de dépendants ou de soutien d’un éditeur tiers n’est faite. Les objectifs futurs ne constituent pas des résultats.

## Licence et provenance
Scripts et documentation : Apache-2.0, voir LICENSE et NOTICE. Les modèles et outils tiers conservent leurs licences. Le dossier `applications/` contient uniquement des instructions historiques, pas des applications ni des releases de ce nouveau dépôt ; ne pas le considérer comme une livraison.

## English
Preparation repository for a future Achille LLM release. Current deliverables are model-catalogue tooling, pinned installer scripts and documentation. No trained Achille model, weights, adapters or benchmark results are released here. Base-model choice, training/adaptation, dataset rights and weight licensing remain undecided. Code and documentation: Apache-2.0; third-party assets retain their own licences.
