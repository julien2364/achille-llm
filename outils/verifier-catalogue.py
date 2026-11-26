#!/usr/bin/env python3
"""Contrôle hors réseau des entrées utilisées par le générateur du catalogue."""
import argparse
import json
import math
from pathlib import Path
from urllib.parse import urlsplit


def verifier(data):
    erreurs = []
    if not isinstance(data, dict):
        return ['La racine doit être un objet JSON.']
    licences = data.get('licences')
    modeles = data.get('modeles')
    if not isinstance(licences, dict) or not isinstance(modeles, list) or not modeles:
        return ['licences doit être un objet et modeles une liste non vide.']
    ids = set()
    for i, modele in enumerate(modeles):
        prefixe = f'modeles[{i}]'
        if not isinstance(modele, dict):
            erreurs.append(f'{prefixe}: objet attendu')
            continue
        for cle in ('id', 'famille', 'editeur', 'licence', 'modalites', 'licence_verifiee', 'usage_conseille'):
            if not isinstance(modele.get(cle), str) or not modele[cle].strip():
                erreurs.append(f'{prefixe}.{cle}: texte non vide attendu')
        identifiant = modele.get('id')
        if isinstance(identifiant, str):
            if identifiant in ids:
                erreurs.append(f'{prefixe}.id: doublon {identifiant}')
            ids.add(identifiant)
        licence = modele.get('licence')
        if not isinstance(licence, str) or licence not in licences:
            erreurs.append(f'{prefixe}.licence: référence inconnue')
        for cle in ('depot_officiel', 'lien_licence'):
            url = modele.get(cle)
            try:
                parsed = urlsplit(url) if isinstance(url, str) else None
                valide = parsed and parsed.scheme == 'https' and parsed.hostname and not parsed.username and not parsed.password
            except ValueError:
                valide = False
            if not valide:
                erreurs.append(f'{prefixe}.{cle}: URL HTTPS sans identifiants attendue')
        for cle in ('parametres_milliards', 'parametres_actifs_milliards'):
            valeur = modele.get(cle)
            if valeur is not None and (type(valeur) not in (int, float) or not math.isfinite(valeur) or valeur <= 0):
                erreurs.append(f'{prefixe}.{cle}: nombre positif fini ou null attendu')
        if not isinstance(modele.get('servir'), dict):
            erreurs.append(f'{prefixe}.servir: objet attendu')
    return erreurs


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('fichier', nargs='?', type=Path,
                        default=Path(__file__).resolve().parents[1] / 'modeles/catalogue.json')
    args = parser.parse_args()
    try:
        data = json.loads(args.fichier.read_text(encoding='utf-8'))
    except (OSError, ValueError) as exc:
        parser.exit(1, f'Lecture impossible : {exc}\n')
    erreurs = verifier(data)
    if erreurs:
        parser.exit(1, '\n'.join(erreurs) + '\n')
    print(f"OK : {len(data['modeles'])} entrées ; cohérence structurelle contrôlée hors réseau.")
    print('Ne valide ni les licences, ni les liens distants, ni le fonctionnement des modèles.')


if __name__ == '__main__':
    main()
