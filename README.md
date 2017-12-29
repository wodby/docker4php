# Docker-based PHP stack

[![Build Status](https://travis-ci.org/wodby/docker4php.svg?branch=master)](https://travis-ci.org/wodby/docker4php)
[![Wodby Slack](http://slack.wodby.com/badge.svg)](http://slack.wodby.com)
[![Wodby Twitter](https://img.shields.io/twitter/follow/wodbyhq.svg?style=social&label=Follow)](https://twitter.com/wodbyhq)

## Introduction

Docker4PHP is a set of docker images optimized for PHP. Use `docker-compose.yml` file from the [latest stable release](https://github.com/wodby/docker4php/releases) to spin up local environment on Linux, Mac OS X and Windows. 

Read [**Quick Start**](https://wodby.com/stacks/php/docs/local/quick-start).

## Stack

[wodby/php-nginx]: https://github.com/wodby/php-nginx
[wodby/php-apache]: https://github.com/wodby/php-apache
[wodby/php]: https://github.com/wodby/php
[wodby/mariadb]: https://github.com/wodby/mariadb
[wodby/postgres]: https://github.com/wodby/postgres
[wodby/redis]: https://github.com/wodby/redis
[wodby/varnish]: https://github.com/wodby/varnish
[wodby/solr]: https://github.com/wodby/solr
[wodby/elasticsearch]: https://github.com/wodby/elasticsearch
[wodby/kibana]: https://github.com/wodby/kibana
[wodby/memcached]: https://github.com/wodby/memcached
[wodby/webgrind]: https://hub.docker.com/r/wodby/webgrind
[blackfire/blackfire]: https://hub.docker.com/r/blackfire/blackfire
[wodby/rsyslog]: https://hub.docker.com/r/wodby/rsyslog
[arachnysdocker/athenapdf-service]: https://hub.docker.com/r/arachnysdocker/athenapdf-service
[mailhog/mailhog]: https://hub.docker.com/r/mailhog/mailhog
[wodby/adminer]: https://hub.docker.com/r/wodby/adminer
[phpmyadmin/phpmyadmin]: https://hub.docker.com/r/phpmyadmin/phpmyadmin
[portainer/portainer]: https://hub.docker.com/portainer/portainer
[_/node]: https://hub.docker.com/_/node
[_/traefik]: https://hub.docker.com/_/traefik

The PHP stack consist of the following containers:

| Container     | Versions           | Service name    | Image                              | Enabled by default |
| ------------- | ------------------ | --------------- | ---------------------------------- | ------------------ |
| Nginx         | 1.13, 1.12         | `nginx`         | [wodby/php-nginx]                  | ✓                  |
| Apache        | 2.4                | `apache`        | [wodby/php-apache]                 |                    |
| PHP           | 7.x, 5.6           | `php`           | [wodby/php]                        |                    |
| MariaDB       | 10.2, 10.1         | `mariadb`       | [wodby/mariadb]                    | ✓                  |
| PostgreSQL    | 10.1, 9.6          | `postgres`      | [wodby/postgres]                   |                    |
| Redis         | 4.0, 3.2           | `redis`         | [wodby/redis]                      |                    |
| Varnish       | 4.1                | `varnish`       | [wodby/varnish]                    |                    |
| Solr          | 7.x, 6.x, 5.5, 5.4 | `solr`          | [wodby/solr]                       |                    |
| Elasticsearch | 6.x, 5.5, 5.4      | `elasticsearch` | [wodby/elasticsearch]              |                    |
| Kibana        | 6.x, 5.5, 5.4      | `kibana`        | [wodby/kibana]                     |                    |
| Memcached     | 1.4                | `memcached`     | [wodby/memcached]                  |                    |
| Webgrind      | 1.5                | `webgrind`      | [wodby/webgrind]                   |                    |
| Blackfire     | latest             | `blackfire`     | [blackfire/blackfire]              |                    |
| Rsyslog       | latest             | `rsyslog`       | [wodby/rsyslog]                    |                    |
| AthenaPDF     | 2.10.0             | `athenapdf`     | [arachnysdocker/athenapdf-service] |                    |
| Mailhog       | latest             | `mailhog`       | [mailhog/mailhog]                  | ✓                  |
| Adminer       | 4.3                | `adminer`       | [wodby/adminer]                    |                    |
| phpMyAdmin    | latest             | `pma`           | [phpmyadmin/phpmyadmin]            |                    |
| Node          | latest             | `node`          | [_/node]                           |                    |
| Portainer     | latest             | `portainer`     | [portainer/portainer]              | ✓                  |
| Traefik       | latest             | `traefik`       | [_/traefik]                        | ✓                  |

## Documentation

Full documentation is available at https://wodby.com/stacks/php/docs/local

## License

This project is licensed under the MIT open source license.
