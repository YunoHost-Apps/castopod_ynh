# Castopod pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/castopod.svg)](https://dash.yunohost.org/appci/app/castopod) ![](https://ci-apps.yunohost.org/ci/badges/castopod.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/castopod.maintain.svg)  
[![Installer Castopod avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Castopod rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Castopod Server est une plate-forme d'hébergement open source conçue pour les podcasteurs qui souhaitent s'engager et interagir avec leur public. Veuillez noter que Castopod est toujours en développement: il n'est peut-être pas stable à 100% et certaines fonctionnalités sont encore en développement.

**Version incluse :** 1.0.0 alpha.41

## Captures d'écran

![](https://podlibre.org/content/images/2020/12/Parisian-Podcast.png)

## Démo

 * [podcast.podlibre.org](https://podcast.podlibre.org/@podlibre_fr)

## Configuration

 * Allez dans `domain.ltd/cp-install` pour créer un utilisateur administrateur.
 * Comment configurer cette application : via le panneau d'administration `domain.ltd/cp-admin`.

## Documentation

 * Documentation : https://podlibre.org/create-a-podcast-in-3mn-with-castopod/
 * Documentation YunoHost : Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **Non**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **Oui**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/castopod%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/castopod/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/castopod%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/castopod/)

## Limitations

* :warning: Installation possible uniquement sur un domaine racine ou sous-domaine.

## Informations additionnelles

* Autres informations que vous souhaitez ajouter sur cette application.

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/castopod_ynh/issues
 * Site de l'application : https://podlibre.org/
 * Dépôt de l'application principale : https://code.podlibre.org/podlibre/castopod
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
ou
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```
