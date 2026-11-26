"""Cas de régression pour les erreurs qui rendraient le catalogue incohérent."""
import copy
import importlib.util
import json
from pathlib import Path
import unittest

RACINE = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('validateur', RACINE / 'outils/verifier-catalogue.py')
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class CatalogueTests(unittest.TestCase):
    def setUp(self):
        self.data = json.loads((RACINE / 'modeles/catalogue.json').read_text())

    def test_catalogue_actuel(self):
        self.assertEqual([], module.verifier(self.data))

    def test_identifiant_duplique(self):
        self.data['modeles'].append(copy.deepcopy(self.data['modeles'][0]))
        self.assertTrue(any('doublon' in e for e in module.verifier(self.data)))

    def test_reference_licence_inconnue(self):
        self.data['modeles'][0]['licence'] = 'licence-absente'
        self.assertTrue(any('référence inconnue' in e for e in module.verifier(self.data)))

    def test_url_avec_identifiants_refusee(self):
        self.data['modeles'][0]['depot_officiel'] = 'https://user:password@example.org/model'
        self.assertTrue(any('URL HTTPS' in e for e in module.verifier(self.data)))

    def test_taille_invalide(self):
        for valeur in (-1, True, float('nan'), '7'):
            with self.subTest(valeur=valeur):
                self.data['modeles'][0]['parametres_milliards'] = valeur
                self.assertTrue(any('nombre positif' in e for e in module.verifier(self.data)))

    def test_structure_invalide(self):
        for valeur in ([], {}, {'licences': {}, 'modeles': [None]}):
            with self.subTest(valeur=valeur):
                self.assertTrue(module.verifier(valeur))


if __name__ == '__main__':
    unittest.main()
