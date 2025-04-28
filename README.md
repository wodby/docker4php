# Docker-based PHP stack

[![Build Status](https://github.com/wodby/docker4php/workflows/Run%20tests/badge.svg)](https://github.com/wodby/docker4php/actions)

## Introduction

Docker4PHP is a set of docker images optimized for PHP. Use
`compose.yml` file from the [latest stable release](https://github.com/wodby/docker4php/releases) to spin up local environment on Linux, Mac OS X and Windows.

* Read the docs on [**how to use**](https://wodby.com/docs/stacks/php/local#usage)
* Ask questions on [Discord](http://discord.wodby.com/)
* Ask questions on [Slack](http://slack.wodby.com/)
* Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements

## Stack

The PHP stack consist of the following containers:

| Container             | Versions                | Image                                     | ARM64 support | Enabled by default |
|-----------------------|-------------------------|-------------------------------------------|---------------|--------------------|
| [Nginx]               | 1.28, 1.27              | [wodby/nginx]                             | ✓             | ✓                  |
| [Apache]              | 2.4                     | [wodby/apache]                            | ✓             |                    |
| [PHP]                 | 8.4, 8.3, 8.2, 8.1      | [wodby/php]                               | ✓             | ✓                  |
| Crond                 |                         | [wodby/php]                               | ✓             |                    |
| [MariaDB]             | 11.4, 10.11, 10.6, 10.5 | [wodby/mariadb]                           | ✓             | ✓                  |
| [PostgreSQL]          | 17, 16, 15, 14, 13      | [wodby/postgres]                          | ✓             |                    |
| [Valkey]              | 8, 7                    | [wodby/valkey]                            | ✓             |                    |
| [Memcached]           | 1                       | [wodby/memcached]                         | ✓             |                    |
| [Node.js]             | 22, 20, 18              | [wodby/node]                              | ✓             |                    |
| [Varnish]             | 6.0                     | [wodby/varnish]                           | ✓             |                    |
| [Solr]                | 9                       | [wodby/solr]                              | ✓             |                    |
| OpenSearch            | 2                       | [opensearchproject/opensearch]            | ✓             |                    |
| OpenSearch Dashboards | 2                       | [opensearchproject/opensearch-dashboards] | ✓             |                    |
| [OpenSMTPD]           | 7                       | [wodby/opensmtpd]                         | ✓             |                    |
| Mailpit               | latest                  | [axllent/mailpit]                         | ✓             | ✓                  |
| Gotenberg             | latest                  | [gotenberg/gotenberg]                     | ✓             |                    |
| [Rsyslog]             | latest                  | [wodby/rsyslog]                           | ✓             |                    |
| [Webgrind]            | 1                       | [wodby/webgrind]                          | ✓             |                    |
| [Xhprof viewer]       | latest                  | [wodby/xhprof]                            | ✓             |                    |
| Adminer               | 5                       | [wodby/adminer]                           | ✓             |                    |
| phpMyAdmin            | latest                  | [phpmyadmin/phpmyadmin]                   |               |                    |
| Traefik               | latest                  | [_/traefik]                               | ✓             | ✓                  |

## Documentation

Full documentation is available at https://wodby.com/docs/stacks/php/local

## Images' tags

Images tags format is `[VERSION]-[STABILITY_TAG]` where:

`[VERSION]` is the _version of an application_ (without patch version) running in a container, e.g.
`wodby/nginx:1.15-x.x.x` where Nginx version is `1.15` and
`x.x.x` is a stability tag. For some images we include both major and minor version like PHP
`7.2`, for others we include only major like Valkey `7`.

`[STABILITY_TAG]` is the _version of an image_ that corresponds to a git tag of the image repository, e.g.
`wodby/mariadb:10.2-3.3.8` has MariaDB `10.2` and stability tag [
`3.3.8`](https://github.com/wodby/mariadb/releases/tag/3.3.8). New stability tags include patch updates for applications and image's fixes/improvements (new env vars, orchestration actions fixes, etc). Stability tag changes described in the corresponding a git tag description. Stability tags follow [semantic versioning](https://semver.org/).

We highly encourage to use images only with stability tags.

## Maintenance

We regularly update images used in this stack and release them together, see [releases page](https://github.com/wodby/docker4php/releases) for full changelog and update instructions. Most of routine updates for images and this project performed by [the bot](https://github.com/wodbot) via scripts located at [wodby/images](https://github.com/wodby/images).

## Other Docker4x projects

* [docker4drupal](https://github.com/wodby/docker4drupal)
* [docker4wordpress](https://github.com/wodby/docker4wordpress)
* [docker4ruby](https://github.com/wodby/docker4ruby)
* [docker4python](https://github.com/wodby/docker4python)

## License

This project is licensed under the MIT open source license.

[Apache]: https://wodby.com/docs/stacks/php/containers#apache

[MariaDB]: https://wodby.com/docs/stacks/php/containers#mariadb

[Memcached]: https://wodby.com/docs/stacks/php/containers#memcached

[Nginx]: https://wodby.com/docs/stacks/php/containers#nginx

[Node.js]: https://wodby.com/docs/stacks/php/containers#nodejs

[OpenSMTPD]: https://wodby.com/docs/stacks/php/containers#opensmtpd

[PHP]: https://wodby.com/docs/stacks/php/containers#php

[PostgreSQL]: https://wodby.com/docs/stacks/php/containers#postgresql

[Valkey]: https://wodby.com/docs/stacks/php/containers#valkey

[Rsyslog]: https://wodby.com/docs/stacks/php/containers#rsyslog

[Solr]: https://wodby.com/docs/stacks/solr

[Varnish]: https://wodby.com/docs/stacks/php/containers#varnish

[Webgrind]: https://wodby.com/docs/stacks/php/containers#webgrind

[XHProf viewer]: https://wodby.com/docs/stacks/php/containers#xhprof-viewer

[_/traefik]: https://hub.docker.com/_/traefik

[gotenberg/gotenberg]: https://hub.docker.com/r/gotenberg/gotenberg

[axllent/mailpit]: https://hub.docker.com/r/axllent/mailpit

[phpmyadmin/phpmyadmin]: https://hub.docker.com/r/phpmyadmin/phpmyadmin

[wodby/adminer]: https://hub.docker.com/r/wodby/adminer

[wodby/apache]: https://github.com/wodby/apache

[wodby/mariadb]: https://github.com/wodby/mariadb

[wodby/memcached]: https://github.com/wodby/memcached

[wodby/nginx]: https://github.com/wodby/nginx

[wodby/node]: https://github.com/wodby/node

[wodby/opensmtpd]: https://github.com/wodby/opensmtpd

[wodby/php]: https://github.com/wodby/php

[wodby/postgres]: https://github.com/wodby/postgres

[wodby/rsyslog]: https://hub.docker.com/r/wodby/rsyslog

[wodby/solr]: https://github.com/wodby/solr

[wodby/valkey]: https://github.com/wodby/valkey

[wodby/varnish]: https://github.com/wodby/varnish

[wodby/webgrind]: https://hub.docker.com/r/wodby/webgrind

[wodby/xhprof]: https://hub.docker.com/r/wodby/xhprof

[opensearchproject/opensearch]: https://hub.docker.com/r/opensearchproject/opensearch

[opensearchproject/opensearch-dashboards]: https://hub.docker.com/r/opensearchproject/opensearch-dashboards
