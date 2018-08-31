# Docker-based PHP stack

[![Build Status](https://travis-ci.org/wodby/docker4php.svg?branch=master)](https://travis-ci.org/wodby/docker4php)

## Introduction

Docker4PHP is a set of docker images optimized for PHP. Use `docker-compose.yml` file from the [latest stable release](https://github.com/wodby/docker4php/releases) to spin up local environment on Linux, Mac OS X and Windows. 

* Read the docs on [**how to use**](https://wodby.com/docs/stacks/php/local#usage)
* Follow [@wodbycloud](https://twitter.com/wodbycloud) for updates announcements
* Join [community slack](https://slack.wodby.com) to ask questions

## Stack

The PHP stack consist of the following containers:

| Container     | Versions           | Service name    | Image                              | Default |
| ------------- | ------------------ | --------------- | ---------------------------------- | ------- |
| [Nginx]       | 1.15, 1.14         | `nginx`         | [wodby/nginx]                      | ✓       |
| [Apache]      | 2.4                | `apache`        | [wodby/apache]                     |         |
| [PHP]         | 7.x, 5.6           | `php`           | [wodby/php]                        |         |
| [MariaDB]     | 10.3, 10.2, 10.1   | `mariadb`       | [wodby/mariadb]                    | ✓       |
| [PostgreSQL]  | 10, 9.x            | `postgres`      | [wodby/postgres]                   |         |
| [Redis]       | 4.0, 3.2           | `redis`         | [wodby/redis]                      |         |
| [Node.js]     | 10.9, 8.11, 6.14   | `node`          | [wodby/node]                       |         |
| [Varnish]     | 4.1                | `varnish`       | [wodby/varnish]                    |         |
| [Solr]        | 7.x, 6.6, 5.5      | `solr`          | [wodby/solr]                       |         |
| Elasticsearch | 6.x, 5.6, 5.5, 5.4 | `elasticsearch` | [wodby/elasticsearch]              |         |
| Kibana        | 6.x, 5.6, 5.5, 5.4 | `kibana`        | [wodby/kibana]                     |         |
| [Memcached]   | 1.5                | `memcached`     | [wodby/memcached]                  |         |
| [Webgrind]    | 1.5                | `webgrind`      | [wodby/webgrind]                   |         |
| [Blackfire]   | latest             | `blackfire`     | [blackfire/blackfire]              |         |
| [Rsyslog]     | latest             | `rsyslog`       | [wodby/rsyslog]                    |         |
| [AthenaPDF]   | 2.10.0             | `athenapdf`     | [arachnysdocker/athenapdf-service] |         |
| [Mailhog]     | latest             | `mailhog`       | [mailhog/mailhog]                  | ✓       |
| [OpenSMTPD]   | 6.0                | `opensmtpd`     | [wodby/opensmtpd]                  |         |
| Adminer       | 4.6                | `adminer`       | [wodby/adminer]                    |         |
| phpMyAdmin    | latest             | `pma`           | [phpmyadmin/phpmyadmin]            |         |
| Portainer     | latest             | `portainer`     | [portainer/portainer]              | ✓       |
| Traefik       | latest             | `traefik`       | [_/traefik]                        | ✓       |

## Documentation

Full documentation is available at https://wodby.com/docs/stacks/php/local

## Maintenance

We regularly update images used in this stack and release them together, see [releases page](https://github.com/wodby/docker4php/releases) for full changelog and update instructions.

## License

This project is licensed under the MIT open source license.

[Apache]: https://wodby.com/stacks/php/docs/containers/apache
[AthenaPDF]: https://wodby.com/stacks/php/docs/containers/athenapdf/
[Blackfire]: https://wodby.com/stacks/php/docs/containers/blackfire/
[Mailhog]: https://wodby.com/stacks/php/docs/containers/mailhog/
[MariaDB]: https://wodby.com/stacks/php/docs/containers/mariadb
[Memcached]: https://wodby.com/stacks/php/docs/containers/memcached/
[Nginx]: https://wodby.com/stacks/php/docs/containers/nginx
[Node.js]: https://wodby.com/stacks/php/docs/containers/node
[OpenSMTPD]: https://wodby.com/stacks/php/docs/containers/opensmtpd/
[PHP]: https://wodby.com/stacks/php/docs/containers/php/
[PostgreSQL]: https://wodby.com/stacks/php/docs/containers/postgres
[Redis]: https://wodby.com/stacks/php/docs/containers/redis
[Rsyslog]: https://wodby.com/stacks/php/docs/containers/rsyslog/
[Solr]: https://wodby.com/stacks/php/docs/containers/solr/
[Varnish]: https://wodby.com/stacks/php/docs/containers/varnish
[Webgrind]: https://wodby.com/stacks/php/docs/containers/webgrind/

[_/traefik]: https://hub.docker.com/_/traefik
[arachnysdocker/athenapdf-service]: https://hub.docker.com/r/arachnysdocker/athenapdf-service
[blackfire/blackfire]: https://hub.docker.com/r/blackfire/blackfire
[mailhog/mailhog]: https://hub.docker.com/r/mailhog/mailhog
[phpmyadmin/phpmyadmin]: https://hub.docker.com/r/phpmyadmin/phpmyadmin
[portainer/portainer]: https://hub.docker.com/portainer/portainer
[wodby/adminer]: https://hub.docker.com/r/wodby/adminer
[wodby/elasticsearch]: https://github.com/wodby/elasticsearch
[wodby/kibana]: https://github.com/wodby/kibana
[wodby/mariadb]: https://github.com/wodby/mariadb
[wodby/memcached]: https://github.com/wodby/memcached
[wodby/node]: https://github.com/wodby/node
[wodby/opensmtpd]: https://github.com/wodby/opensmtpd
[wodby/php-apache]: https://github.com/wodby/php-apache
[wodby/php-nginx]: https://github.com/wodby/php-nginx
[wodby/php]: https://github.com/wodby/php
[wodby/postgres]: https://github.com/wodby/postgres
[wodby/redis]: https://github.com/wodby/redis
[wodby/rsyslog]: https://hub.docker.com/r/wodby/rsyslog
[wodby/solr]: https://github.com/wodby/solr
[wodby/varnish]: https://github.com/wodby/varnish
[wodby/webgrind]: https://hub.docker.com/r/wodby/webgrind
