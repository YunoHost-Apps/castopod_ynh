<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Castopod pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/castopod)](https://ci-apps.yunohost.org/ci/apps/castopod/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/castopod)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/castopod)

[![Installer Castopod avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Castopod rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Castopod est une plate-forme d'hébergement gratuite et open source conçue pour les podcasteurs qui souhaitent interagir avec leur public.


### Caractéristiques

- Axé sur la souveraineté des données : votre contenu, votre audience et vos analyses vous appartiennent, et vous seul
- Fonctionnalités du podcasting 2.0 : GUID, verrouillé, transcriptions, financement, chapitres, localisation, personnes, extraits sonores…
- Réseau social intégré, outils d'analyse et de marketing
- Monétisation
- Publiez vos épisodes partout avec RSS
- Importation de podcast : déplacez votre podcast existant dans Castopod
- Déplacez votre podcast hors de Castopod
- Multi-locataire : hébergez autant de podcasts que vous le souhaitez
- Multi-utilisateur : ajouter des contributeurs et définir des rôles

**Version incluse :** 1.13.4~ynh1

**Démo :** <https://podcast.podlibre.org/@podlibre_fr>

## Captures d’écran

![Capture d’écran de Castopod](./doc/screenshots/screenshot.png)

## Documentations et ressources

- Site officiel de l’app : <https://castopod.org/>
- Documentation officielle de l’admin : <https://docs.castopod.org/>
- Dépôt de code officiel de l’app : <https://code.castopod.org/adaures/castopod>
- YunoHost Store : <https://apps.yunohost.org/app/castopod>
- Signaler un bug : <https://github.com/YunoHost-Apps/castopod_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
ou
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
