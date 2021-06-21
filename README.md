<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# Castopod for YunoHost

[![Integration level](https://dash.yunohost.org/integration/castopod.svg)](https://dash.yunohost.org/appci/app/castopod) ![](https://ci-apps.yunohost.org/ci/badges/castopod.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/castopod.maintain.svg)  
[![Install Castopod with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Castopod quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Hosting platform made for podcasters

**Shipped version:** 1.0.0-60~ynh1

**Demo:** https://podcast.podlibre.org/@podlibre_fr

## Screenshots

![](./doc/screenshots/activity-feed.png)

## Disclaimers / important information

## Configuration

 * How to configure this app: Go to `domain.ltd/cp-admin` to connect to the administration panel.

#### Multi-user support

 * Are LDAP and HTTP auth supported? **No**
 * Can the app be used by multiple users? **Yes**

## Limitations

* :warning: Installation possible only on a root domain or subdomain.

## Documentation and resources

* Official app website: https://podlibre.org/
* Official admin documentation: https://podlibre.org/create-a-podcast-in-3mn-with-castopod/
* Upstream app code repository: https://code.podlibre.org/podlibre/castopod-host
* YunoHost documentation for this app: https://yunohost.org/app_castopod
* Report a bug: https://github.com/YunoHost-Apps/castopod_ynh/issues

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
or
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**More info regarding app packaging:** https://yunohost.org/packaging_apps