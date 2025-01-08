<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Castopod для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/castopod)](https://ci-apps.yunohost.org/ci/apps/castopod/)
![Состояние работы](https://apps.yunohost.org/badge/state/castopod)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/castopod)

[![Установите Castopod с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Castopod быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

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

**Поставляемая версия:** 1.13.3~ynh1

**Демо-версия:** <https://podcast.podlibre.org/@podlibre_fr>

## Снимки экрана

![Снимок экрана Castopod](./doc/screenshots/screenshot.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://castopod.org/>
- Официальная документация администратора: <https://docs.castopod.org/>
- Репозиторий кода главной ветки приложения: <https://code.castopod.org/adaures/castopod>
- Магазин YunoHost: <https://apps.yunohost.org/app/castopod>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/castopod_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
или
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
