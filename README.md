# Docker-based PHP stack

[![Build Status](https://travis-ci.org/wodby/docker4php.svg?branch=master)](https://travis-ci.org/wodby/docker4php)

## Introduction

Docker4PHP is a set of docker images optimized for PHP. Use `docker-compose.yml` file from the [latest stable release](https://github.com/wodby/docker4php/releases) to spin up local environment on Linux, Mac OS X and Windows. 

* Read the docs on [**how to use**](https://wodby.com/docs/stacks/php/local#usage)
* Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements
* Join [community slack](https://slack.wodby.com) to ask questions

## Stack

The PHP stack consist of the following containers:

| Container       | Versions            | Service name    | Image                              | Default |
| -------------   | ------------------  | --------------- | ---------------------------------- | ------- |
| [Nginx]         | 1.15, 1.14          | `nginx`         | [wodby/nginx]                      | ✓       |
| [Apache]        | 2.4                 | `apache`        | [wodby/apache]                     |         |
| [PHP]           | 7.3, 7.2, 7.1, 5.6* | `php`           | [wodby/php]                        |         |
| [MariaDB]       | 10.3, 10.2, 10.1    | `mariadb`       | [wodby/mariadb]                    | ✓       |
| [PostgreSQL]    | 11, 10, 9.x         | `postgres`      | [wodby/postgres]                   |         |
| [Redis]         | 5, 4                | `redis`         | [wodby/redis]                      |         |
| [Memcached]     | 1                   | `memcached`     | [wodby/memcached]                  |         |
| [Node.js]       | 10, 8, 6            | `node`          | [wodby/node]                       |         |
| [Varnish]       | 6.0, 4.1            | `varnish`       | [wodby/varnish]                    |         |
| [Solr]          | 7.x, 6.6, 5.5       | `solr`          | [wodby/solr]                       |         |
| [Elasticsearch] | 6.x, 5.6, 5.5, 5.4  | `elasticsearch` | [wodby/elasticsearch]              |         |
| [Kibana]        | 6.x, 5.6, 5.5, 5.4  | `kibana`        | [wodby/kibana]                     |         |
| [OpenSMTPD]     | 6.0                 | `opensmtpd`     | [wodby/opensmtpd]                  |         |
| [Mailhog]       | latest              | `mailhog`       | [mailhog/mailhog]                  | ✓       |
| [AthenaPDF]     | 2.10.0              | `athenapdf`     | [arachnysdocker/athenapdf-service] |         |
| [Rsyslog]       | latest              | `rsyslog`       | [wodby/rsyslog]                    |         |
| [Blackfire]     | latest              | `blackfire`     | [blackfire/blackfire]              |         |
| [Webgrind]      | 1.5                 | `webgrind`      | [wodby/webgrind]                   |         |
| [Xhprof viewer] | latest              | `xhprof`        | [wodby/xhprof]                     |         |
| Adminer         | 4.6                 | `adminer`       | [wodby/adminer]                    |         |
| phpMyAdmin      | latest              | `pma`           | [phpmyadmin/phpmyadmin]            |         |
| Portainer       | latest              | `portainer`     | [portainer/portainer]              | ✓       |
| Traefik         | latest              | `traefik`       | [_/traefik]                        | ✓       |

*❕PHP 5.6 [has reached end of life](http://php.net/supported-versions.php) and no longer supported by PHP team, we strongly advise you to migrate to the latest stable 7.x version.

## Documentation

Full documentation is available at https://wodby.com/docs/stacks/php/local

## Images' tags

Images tags format is `[VERSION]-[STABILITY_TAG]` where:

`[VERSION]` is the _version of an application_ (without patch version) running in a container, e.g. `wodby/nginx:1.15-x.x.x` where Nginx version is `1.15` and `x.x.x` is a stability tag. For some images we include both major and minor version like PHP `7.2`, for others we include only major like Redis `5`. 

`[STABILITY_TAG]` is the _version of an image_ that corresponds to a git tag of the image repository, e.g. `wodby/mariadb:10.2-3.3.8` has MariaDB `10.2` and stability tag [`3.3.8`](https://github.com/wodby/mariadb/releases/tag/3.3.8). New stability tags include patch updates for applications and image's fixes/improvements (new env vars, orchestration actions fixes, etc). Stability tag changes described in the corresponding a git tag description. Stability tags follow [semantic versioning](https://semver.org/).

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
[AthenaPDF]: https://wodby.com/docs/stacks/php/containers#athenapdf
[Blackfire]: https://wodby.com/docs/stacks/php/containers#blackfire
[Elasticsearch]: https://wodby.com/docs/stacks/elasticsearch
[Kibana]: https://wodby.com/docs/stacks/elasticsearch
[Mailhog]: https://wodby.com/docs/stacks/php/containers#mailhog
[MariaDB]: https://wodby.com/docs/stacks/php/containers#mariadb
[Memcached]: https://wodby.com/docs/stacks/php/containers#memcached
[Nginx]: https://wodby.com/docs/stacks/php/containers#nginx
[Node.js]: https://wodby.com/docs/stacks/php/containers#nodejs
[OpenSMTPD]: https://wodby.com/docs/stacks/php/containers#opensmtpd
[PHP]: https://wodby.com/docs/stacks/php/containers#php
[PostgreSQL]: https://wodby.com/docs/stacks/php/containers#postgresql
[Redis]: https://wodby.com/docs/stacks/php/containers#redis
[Rsyslog]: https://wodby.com/docs/stacks/php/containers#rsyslog
[Solr]: https://wodby.com/docs/stacks/solr
[Varnish]: https://wodby.com/docs/stacks/php/containers#varnish
[Webgrind]: https://wodby.com/docs/stacks/php/containers#webgrind
[XHProf viewer]: https://wodby.com/docs/stacks/php/containers#xhprof-viewer

[_/traefik]: https://hub.docker.com/_/traefik
[arachnysdocker/athenapdf-service]: https://hub.docker.com/r/arachnysdocker/athenapdf-service
[blackfire/blackfire]: https://hub.docker.com/r/blackfire/blackfire
[mailhog/mailhog]: https://hub.docker.com/r/mailhog/mailhog
[phpmyadmin/phpmyadmin]: https://hub.docker.com/r/phpmyadmin/phpmyadmin
[portainer/portainer]: https://hub.docker.com/portainer/portainer
[wodby/adminer]: https://hub.docker.com/r/wodby/adminer
[wodby/apache]: https://github.com/wodby/apache
[wodby/elasticsearch]: https://github.com/wodby/elasticsearch
[wodby/kibana]: https://github.com/wodby/kibana
[wodby/mariadb]: https://github.com/wodby/mariadb
[wodby/memcached]: https://github.com/wodby/memcached
[wodby/nginx]: https://github.com/wodby/nginx
[wodby/node]: https://github.com/wodby/node
[wodby/opensmtpd]: https://github.com/wodby/opensmtpd
[wodby/php]: https://github.com/wodby/php
[wodby/postgres]: https://github.com/wodby/postgres
[wodby/redis]: https://github.com/wodby/redis
[wodby/rsyslog]: https://hub.docker.com/r/wodby/rsyslog
[wodby/solr]: https://github.com/wodby/solr
[wodby/varnish]: https://github.com/wodby/varnish
[wodby/webgrind]: https://hub.docker.com/r/wodby/webgrind
[wodby/xhprof]: https://hub.docker.com/r/wodby/xhprof
