# Docker-based PHP stack

[![Build Status](https://github.com/wodby/docker4php/workflows/Run%20tests/badge.svg)](https://github.com/wodby/docker4php/actions)

## Introduction

Docker4PHP is a set of docker images optimized for PHP. Use
`compose.yml` file from the [latest stable release](https://github.com/wodby/docker4php/releases) to spin up local environment on Linux, Mac OS X and Windows.

* Read the docs on [**how to use**](https://wodby.com/docs/1.0/stacks/php/local#usage)
* Ask questions on [Discord](http://discord.wodby.com/)
* Ask questions on [Slack](http://slack.wodby.com/)
* Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements

## Stack

The PHP stack consists of the following containers:

| Container             | Versions                | Image                                     | Enabled by default |
|-----------------------|-------------------------|-------------------------------------------|--------------------|
| [Nginx]               | 1.31, 1.30              | [wodby/nginx]                             | ✓                  |
| [Apache]              | 2.4                     | [wodby/apache]                            |                    |
| [PHP]                 | 8.5, 8.4, 8.3, 8.2      | [wodby/php]                               | ✓                  |
| Crond                 |                         | [wodby/php]                               |                    |
| [MariaDB]             | 11.8, 11.4, 10.11, 10.6 | [wodby/mariadb]                           | ✓                  |
| [PostgreSQL]          | 18, 17, 16, 15, 14      | [wodby/postgres]                          |                    |
| [Valkey]              | 9.0, 8.1, 8.0, 7        | [wodby/valkey]                            |                    |
| [Redis]               | 8.6, 8.4, 8.2, 7.4      | [wodby/redis]                             |                    |
| [Memcached]           | 1                       | [wodby/memcached]                         |                    |
| [Node.js]             | 26, 24, 22              | [wodby/node]                              |                    |
| Vinyl ([Varnish])     | 8.0, 6.0                | [wodby/vinyl]                             |                    |
| [Solr]                | 10, 9                   | [wodby/solr]                              |                    |
| OpenSearch            | 2                       | [opensearchproject/opensearch]            |                    |
| OpenSearch Dashboards | 2                       | [opensearchproject/opensearch-dashboards] |                    |
| [OpenSMTPD]           | 7                       | [wodby/opensmtpd]                         |                    |
| Mailpit               | latest                  | [axllent/mailpit]                         | ✓                  |
| Gotenberg             | latest                  | [gotenberg/gotenberg]                     |                    |
| [Rsyslog]             | latest                  | [wodby/rsyslog]                           |                    |
| [Webgrind]            | 1                       | [wodby/webgrind]                          |                    |
| [Xhprof viewer]       | latest                  | [wodby/xhprof]                            |                    |
| Adminer               | 6                       | [wodby/adminer]                           |                    |
| phpMyAdmin            | latest                  | [phpmyadmin/phpmyadmin]                   |                    |
| Traefik               | 3                       | [_/traefik]                               | ✓                  |

## Documentation

Full documentation is available at https://wodby.com/docs/1.0/stacks/php/local

## Image tags

Wodby images that package upstream software use `[VERSION]-r[N]` tags, for example
`wodby/mariadb:11.4-r0`. `11.4` selects the MariaDB version line and `r0` identifies
the Wodby image revision. Revisions include application updates and image changes;
review the image release notes before upgrading because the revision number does
not indicate compatibility.

Major/minor tags share a revision counter per image repository. Full-version tags,
such as `11.4.2-r0`, start at `r0` again for each exact upstream version. Matching
Git tags identify the source commit for each published revision. Development
variants retain their qualifier, for example `8.5-dev-r0`.

Use the versioned image tags supplied in `.env` instead of floating tags such as
`latest`. Previously published tags remain available. Wodby software such as Backup
uses semantic product versions, and third-party images follow their own tag formats.
See the [image revision policy](https://github.com/wodby/images#image-revisions)
for details.

## Maintenance

We regularly update images used in this stack and release them together, see [releases page](https://github.com/wodby/docker4php/releases) for full changelog and update instructions. Most of routine updates for images and this project performed by [the bot](https://github.com/wodbot) via scripts located at [wodby/images](https://github.com/wodby/images).

## Other Docker4x projects

* [docker4drupal](https://github.com/wodby/docker4drupal)
* [docker4wordpress](https://github.com/wodby/docker4wordpress)
* [docker4ruby](https://github.com/wodby/docker4ruby)
* [docker4python](https://github.com/wodby/docker4python)

## License

This project is licensed under the MIT open source license.

[Apache]: https://wodby.com/docs/1.0/stacks/php/containers#apache

[MariaDB]: https://wodby.com/docs/1.0/stacks/php/containers#mariadb

[Memcached]: https://wodby.com/docs/1.0/stacks/php/containers#memcached

[Nginx]: https://wodby.com/docs/1.0/stacks/php/containers#nginx

[Node.js]: https://wodby.com/docs/1.0/stacks/php/containers#nodejs

[OpenSMTPD]: https://wodby.com/docs/1.0/stacks/php/containers#opensmtpd

[PHP]: https://wodby.com/docs/1.0/stacks/php/containers#php

[PostgreSQL]: https://wodby.com/docs/1.0/stacks/php/containers#postgresql

[Valkey]: https://wodby.com/docs/1.0/stacks/php/containers#valkey

[Redis]: https://wodby.com/docs/1.0/stacks/php/containers#redis

[Rsyslog]: https://wodby.com/docs/1.0/stacks/php/containers#rsyslog

[Solr]: https://wodby.com/docs/1.0/stacks/solr

[Varnish]: https://wodby.com/docs/1.0/stacks/php/containers#varnish

[Webgrind]: https://wodby.com/docs/1.0/stacks/php/containers#webgrind

[XHProf viewer]: https://wodby.com/docs/1.0/stacks/php/containers#xhprof-viewer

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

[wodby/redis]: https://github.com/wodby/redis

[wodby/varnish]: https://github.com/wodby/varnish

[wodby/vinyl]: https://github.com/wodby/vinyl

[wodby/webgrind]: https://hub.docker.com/r/wodby/webgrind

[wodby/xhprof]: https://hub.docker.com/r/wodby/xhprof

[opensearchproject/opensearch]: https://hub.docker.com/r/opensearchproject/opensearch

[opensearchproject/opensearch-dashboards]: https://hub.docker.com/r/opensearchproject/opensearch-dashboards
