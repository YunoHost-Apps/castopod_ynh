<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Castopod YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/castopod)](https://ci-apps.yunohost.org/ci/apps/castopod/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/castopod)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/castopod)

[![Instalatu Castopod YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Castopod YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Castopod is a free & open-source hosting platform made for podcasters who want engage and interact with their audience.
Castopod is easy to install and was built on top of CodeIgniter4, a powerful PHP framework with a very small footprint.


### Features

- Focused on data sovereignty: your content, audience, and analytics belong to you, and you only
- Podcasting 2.0 features: GUID, locked, transcripts, funding, chapters, location, persons, soundbites…
- Built-in social network, analytics, marketing tools
- Monetization
- Publish your episodes everywhere with RSS:
- Podcast import: move your existing podcast into Castopod
- Move your podcast out of Castopod
- Multi-tenant: host as many podcasts as you want
- Multi-user: add contributors and set roles

**Paketatutako bertsioa:** 1.13.1~ynh1

**Demoa:** <https://podcast.podlibre.org/@podlibre_fr>

## Pantaila-argazkiak

![Castopod(r)en pantaila-argazkia](./doc/screenshots/screenshot.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://castopod.org/>
- Administratzaileen dokumentazio ofiziala: <https://docs.castopod.org/>
- Jatorrizko aplikazioaren kode-gordailua: <https://code.castopod.org/adaures/castopod>
- YunoHost Denda: <https://apps.yunohost.org/app/castopod>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/castopod_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
edo
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
