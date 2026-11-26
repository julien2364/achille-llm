> Document historique repris de achille-ia. Aucune application ni release n’est publiée dans achille-llm à ce stade. Les disponibilités décrites ci-dessous ne sont pas revérifiées.

# Applications Achille — téléchargement

Les applications publiques d'Achille sont publiées **uniquement** dans les
[Releases GitHub de ce dépôt](https://github.com/julien2364/achille-ia/releases).
Aucun binaire n'est conservé dans l'arborescence du dépôt.

> État actuel : **aucune version publiée pour l'instant.** Cette page décrit les fichiers attendus.

| Plateforme | Configuration minimale | Fichier de la release |
|---|---|---|
| Android | Android 11 (API 30) ou plus | `achille-<version>-android.apk` |
| macOS | macOS universelle (Apple Silicon et Intel) | `achille-<version>-macos-universal.dmg` |
| Windows | Windows 10 ou 11, x64 | `achille-<version>-windows-x64.exe` |
| Linux | x86_64, glibc récente | `achille-<version>-linux-x86_64.AppImage` |

Chaque release contient aussi un fichier **`SHA256SUMS`** listant l'empreinte de chaque fichier.
Lien direct vers la dernière version : `https://github.com/julien2364/achille-ia/releases/latest`.

## Vérifier un téléchargement (SHA-256)

Téléchargez le fichier voulu **et** `SHA256SUMS` depuis la même release, dans le même dossier, puis :

**Linux**

```bash
sha256sum --check --ignore-missing SHA256SUMS
```

**macOS**

```bash
shasum -a 256 --check --ignore-missing SHA256SUMS
```

**Windows (PowerShell)**

```powershell
$attendu = (Select-String -Path SHA256SUMS -Pattern "achille-<version>-windows-x64.exe").Line.Split(" ")[0]
$calcule = (Get-FileHash -Algorithm SHA256 .\achille-<version>-windows-x64.exe).Hash.ToLower()
if ($calcule -eq $attendu) { "Empreinte conforme" } else { "EMPREINTE DIFFÉRENTE : ne pas installer" }
```

**Android** : vérifiez l'APK sur un ordinateur avec l'une des commandes ci-dessus avant de le copier
sur le téléphone, puis autorisez l'installation depuis cette source pour l'application utilisée
(Paramètres > Applications > Accès spécial > Installer des applications inconnues).

Le résultat doit indiquer `OK` (ou « Empreinte conforme »). **En cas de différence, n'installez pas
le fichier** et signalez-le à contact@achille-ia.com (voir [SECURITY.md](../SECURITY.md)).

L'empreinte prouve que le fichier est identique à celui publié dans la release ; elle ne remplace pas
la signature de l'application par le système (Gatekeeper sur macOS, SmartScreen sur Windows,
signature APK sur Android).
