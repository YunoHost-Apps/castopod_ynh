<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Castopod

[![集成程度](https://apps.yunohost.org/badge/integration/castopod)](https://ci-apps.yunohost.org/ci/apps/castopod/)
![工作状态](https://apps.yunohost.org/badge/state/castopod)
![维护状态](https://apps.yunohost.org/badge/maintained/castopod)

[![使用 YunoHost 安装 Castopod](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=castopod)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Castopod。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

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

**分发版本：** 1.13.3~ynh1

**演示：** <https://podcast.podlibre.org/@podlibre_fr>

## 截图

![Castopod 的截图](./doc/screenshots/screenshot.png)

## 文档与资源

- 官方应用网站： <https://castopod.org/>
- 官方管理文档： <https://docs.castopod.org/>
- 上游应用代码库： <https://code.castopod.org/adaures/castopod>
- YunoHost 商店： <https://apps.yunohost.org/app/castopod>
- 报告 bug： <https://github.com/YunoHost-Apps/castopod_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/castopod_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
或
sudo yunohost app upgrade castopod -u https://github.com/YunoHost-Apps/castopod_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
