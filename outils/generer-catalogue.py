#!/usr/bin/env python3
"""Génère modeles/CATALOGUE.md à partir de modeles/catalogue.json (source unique).

Usage : python3 outils/generer-catalogue.py
"""
import json
from pathlib import Path

RACINE = Path(__file__).resolve().parent.parent
SOURCE = RACINE / "modeles" / "catalogue.json"
CIBLE = RACINE / "modeles" / "CATALOGUE.md"

CATEGORIES = {
    "libre": "Licence libre (Apache 2.0, MIT) : usage commercial permis",
    "conditions": "Poids ouverts sous conditions propres à l'éditeur",
    "restreinte-ue": "Poids ouverts, droits non accordés aux entreprises établies dans l'UE",
    "recherche": "Recherche ou usage non commercial uniquement",
}


def memoire(p):
    """Mémoire indicative (Go) : Q4 ~0,6 octet/paramètre + marge ; BF16 2 octets/paramètre."""
    if not p:
        return "voir note"
    q4 = p * 0.6 + 1.5
    bf16 = p * 2
    return f"Q4 ≈ {q4:.0f} Go · BF16 ≈ {bf16:.0f} Go"


def taille(x):
    p, a = x["parametres_milliards"], x.get("parametres_actifs_milliards")
    if not p:
        return "voir note"
    t = f"{p:g} Md"
    return t + (f" ({a:g} Md actifs)" if a else "")


def main():
    d = json.loads(SOURCE.read_text(encoding="utf-8"))
    lic = d["licences"]
    o = [
        "# Catalogue des modèles d'IA à poids ouverts",
        "",
        "> Fichier généré par `outils/generer-catalogue.py` à partir de `catalogue.json` : ne pas modifier à la main.",
        "",
        f"Mise à jour : {d['mis_a_jour']}. {d['avertissement']}",
        "",
        f"**Méthode de vérification** : {d['methode_verification']}",
        "",
        "Mémoire indiquée : ordre de grandeur pour charger les poids (quantification Q4 GGUF, ou BF16 pour vLLM), "
        "hors contexte long. Un mélange d'experts (MoE) charge tous ses paramètres mais calcule avec les seuls paramètres actifs.",
        "",
        "## Sommaire par catégorie de licence",
        "",
    ]
    for c, titre in CATEGORIES.items():
        ids = [x["id"] for x in d["modeles"] if lic[x["licence"]]["categorie"] == c]
        o.append(f"- **{titre}** : " + ", ".join(f"`{i}`" for i in ids))
    o += ["", "## Licences", ""]
    for k, l in lic.items():
        lien = l["lien"] or "texte LICENSE du dépôt de chaque modèle"
        o.append(f"### {l['nom']}")
        o.append("")
        o.append(f"- Catégorie : {CATEGORIES[l['categorie']]}")
        o.append(f"- Texte officiel : {lien}")
        if l.get("usage"):
            o.append(f"- Politique d'usage : {l['usage']}")
        o.append(f"- Conditions principales : {l['conditions']}")
        o.append("")
    familles = []
    for x in d["modeles"]:
        if x["famille"] not in familles:
            familles.append(x["famille"])
    o += ["## Modèles", ""]
    for f in familles:
        o += [f"### {f}", ""]
        o.append("| Modèle | Éditeur | Licence | Paramètres (milliards) | Mémoire (indicatif) | Usage conseillé |")
        o.append("|---|---|---|---|---|---|")
        for x in [m for m in d["modeles"] if m["famille"] == f]:
            o.append(
                f"| [{x['id']}]({x['depot_officiel']}) | {x['editeur']} | [{lic[x['licence']]['nom']}]({x['lien_licence']}) "
                f"| {taille(x)} | {memoire(x['parametres_milliards'])} | {x['usage_conseille']} |"
            )
        o.append("")
        for x in [m for m in d["modeles"] if m["famille"] == f]:
            s = x["servir"]
            lignes = [f"**{x['id']}** — modalités : {x['modalites']} ; licence {x['licence_verifiee']}."]
            for nom, cle in (("Ollama", "ollama"), ("llama.cpp", "llama_cpp"), ("vLLM", "vllm")):
                if s.get(cle):
                    lignes.append(f"  - {nom} : `{s[cle]}`")
            if not s.get("llama_cpp") and s.get("vllm"):
                lignes.append("  - llama.cpp : pas de GGUF officiel relevé ; convertir avec `convert_hf_to_gguf.py` ou choisir un GGUF communautaire de confiance.")
            if x.get("note"):
                lignes.append(f"  - Note : {x['note']}")
            o += lignes + [""]
    CIBLE.write_text("\n".join(o).rstrip() + "\n", encoding="utf-8")
    print(f"{CIBLE.relative_to(RACINE)} : {len(d['modeles'])} modèles")


if __name__ == "__main__":
    main()
