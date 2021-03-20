# Castopod for YunoHost

[![Integration level](https://dash.yunohost.org/integration/castopod.svg)](https://dash.yunohost.org/appci/app/castopod) ![](https://ci-apps.yunohost.org/ci/badges/castopod.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/castopod.maintain.svg)  
[![Install Castopod with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Castopod quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Castopod Server is an open-source hosting platform made for podcasters who want engage and interact with their audience. Please note that Castopod is still under heavy development: it may not be 100% stable and some features are still being developed.

**Shipped version:** 1.0.0 alpha.40

## Screenshots

![](https://podlibre.org/content/images/2020/12/Parisian-Podcast.png)

## Demo

 * [podcast.podlibre.org](https://podcast.podlibre.org/@podlibre_fr)

## Configuration

 * Go to `domain.ltd/cp-install` to creat an admin user.
 * How to configure this app: From an admin panel `domain.ltd/cp-admin`.

## Documentation

 * Documentation: https://podlibre.org/create-a-podcast-in-3mn-with-castopod/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

 * Are LDAP and HTTP auth supported?
 * Can the app be used by multiple users?

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/castopod%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/castopod/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/castopod%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/castopod/)

## Limitations

* :warning: Installation possible only on a root domain or subdomain.

## Additional information

* Other info you would like to add about this app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/castopod_ynh/issues
 * App website: https://podlibre.org/
 * Upstream app repository: https://code.podlibre.org/podlibre/castopod
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
or
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```
