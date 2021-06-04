# Castopod pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/castopod.svg)](https://dash.yunohost.org/appci/app/castopod) ![](https://ci-apps.yunohost.org/ci/badges/castopod.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/castopod.maintain.svg)  
[![Installer Castopod avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Castopod rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

Plateforme d'hébergement conçue pour les podcasteurs

**Version incluse :** 1.0.0-57~ynh2

**Démo :** https://podcast.podlibre.org/@podlibre_fr

## Avertissements / informations importantes

## Configuration

 * How to configure this app: Go to `domain.ltd/cp-admin` to connect to the administration panel.

#### Multi-user support

 * Are LDAP and HTTP auth supported? **No**
 * Can the app be used by multiple users? **Yes**

## Limitations

* :warning: Installation possible only on a root domain or subdomain.

## Documentations et ressources

* Site officiel de l'app : https://podlibre.org/
* Documentation officielle utilisateur : https://yunohost.org/apps
* Documentation officielle de l'admin : https://podlibre.org/create-a-podcast-in-3mn-with-castopod/
* Dépôt de code officiel de l'app : https://code.podlibre.org/podlibre/castopod-host
* Documentation YunoHost pour cette app : https://yunohost.org/app_castopod
* Signaler un bug : https://github.com/YunoHost-Apps/castopod_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
ou
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps