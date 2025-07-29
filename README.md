# nettoie_mdtidf
Script de nettoyage de l'image Win 10 IDF ATOS

## Que fait ce script ?

Ce script permet de :
- Supprimer le raccourci non fonctionnel de **SumatraPDF** présent dans le menu Démarrer.
- Désinstaller l’ancienne version de **VLC Media Player** (installée via un fichier `.MSI`), afin de pouvoir installer une version plus récente via un exécutable `.EXE`.

## Pourquoi ?

L’image **Windows 10 Education** fournie par **ATOS** n’est pas à jour :

- Le raccourci vers **SumatraPDF** est présent par défaut, mais l'installation du logiciel n'est pas obligatoire, ce qui le rend inutile. De plus, **SumatraPDF** est difficile à désinstaller correctement : il est donc déconseillé de l’installer sur cette base.
- **VLC Media Player** est préinstallé dans une version trop ancienne (au format `.MSI`). Désormais, **VLC** s’installe via un exécutable `.EXE`. Si l’on installe la nouvelle version sans désinstaller l’ancienne, deux versions coexistent, ce qui peut poser des problèmes.

## Prérequis

⚠️ **Important : ce script ne désinstalle pas SumatraPDF.**  
Il se contente uniquement de supprimer le **raccourci non fonctionnel** présent dans le menu Démarrer.

Pour éviter que SumatraPDF soit installé sur les postes :
- Supprimer son installation dans la séquence de tâches du **MDT** (Microsoft Deployment Toolkit), **ou**
- Veiller à **ne pas sélectionner SumatraPDF** lors du processus de déploiement de l’image Windows.
