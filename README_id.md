<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Castopod untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/castopod.svg)](https://ci-apps.yunohost.org/ci/apps/castopod/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/castopod.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/castopod.maintain.svg)

[![Pasang Castopod dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Castopod secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

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

**Versi terkirim:** 1.12.5~ynh1

**Demo:** <https://podcast.podlibre.org/@podlibre_fr>

## Tangkapan Layar

![Tangkapan Layar pada Castopod](./doc/screenshots/screenshot.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://castopod.org/>
- Dokumentasi admin resmi: <https://docs.castopod.org/>
- Depot kode aplikasi hulu: <https://code.castopod.org/adaures/castopod>
- Gudang YunoHost: <https://apps.yunohost.org/app/castopod>
- Laporkan bug: <https://github.com/YunoHost-Apps/castopod_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
atau
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
