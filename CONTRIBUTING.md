# Contribuer

Merci de votre aide. Ce dépôt est volontairement simple.

- **Catalogue** : modifiez seulement `modeles/catalogue.json`, puis lancez
  `python3 outils/generer-catalogue.py` et joignez les deux fichiers à votre demande de fusion.
  Toute licence ajoutée ou modifiée doit citer le **texte officiel de l'éditeur** (lien direct).
  Si vous ne pouvez pas la vérifier, écrivez « à vérifier » dans `licence_verifiee`.
- **Scripts** : versions épinglées, empreinte SHA-256 vérifiée avant extraction, pas de `curl | sh`,
  écoute sur `127.0.0.1` par défaut, `shellcheck` sans avertissement.
- **Interdit** : poids de modèles, binaires, secrets ou jetons, données personnelles.
- Pas d'intégration continue automatique : indiquez dans la demande les commandes lancées et leur résultat.
- Les contributions sont acceptées sous licence Apache 2.0.

Langue de travail : français (l'anglais est accepté).

## Vérifications reproductibles du catalogue

Python 3.9 ou ultérieur, bibliothèque standard uniquement. Depuis la racine :

```sh
python3 outils/verifier-catalogue.py
python3 -B -m unittest discover -s tests -v
python3 outils/generer-catalogue.py
git diff -- modeles/CATALOGUE.md
```

Le validateur doit afficher `OK` et sortir avec le code 0 ; les tests doivent réussir. Après génération, vérifier que les différences correspondent uniquement aux entrées modifiées. Pour ajouter un modèle : lire sa licence officielle, compléter une entrée JSON et sa référence de licence, lancer les contrôles, joindre les liens et expliquer le changement dans la pull request.

Ces contrôles sont hors réseau : ils ne valident ni la disponibilité des liens, ni l’exactitude juridique des licences, ni les modèles ou installateurs. Ne pas inclure de poids, de données privées ni de secrets dans une contribution.
