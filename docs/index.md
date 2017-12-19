# Docker4PHP Getting Started

Docker4PHP is a set of docker containers optimized for PHP. Use docker-compose.yml file from [docker4php repository](https://github.com/wodby/docker4php) to spin up local environment on Linux, Mac OS X and Windows. 

Docker4PHP is designed to be used for local development, if you're looking for a production solution see [using in production](production.md).

## Overview

The PHP stack consist of the following containers:

[wodby/php-nginx]: https://github.com/wodby/php-nginx
[wodby/php-apache]: https://github.com/wodby/php-apache
[wodby/php]: https://github.com/wodby/php
[wodby/mariadb]: https://github.com/wodby/mariadb
[wodby/postgres]: https://github.com/wodby/postgres
[wodby/redis]: https://github.com/wodby/redis
[wodby/varnish]: https://github.com/wodby/varnish
[wodby/solr]: https://github.com/wodby/solr
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
[Nginx]: containers/nginx.md
[Apache]: containers/apache.md
[PHP]: containers/php.md
[MariaDB]: containers/mariadb.md
[PostgreSQL]: containers/postgres.md
[Redis]: containers/redis.md
[Varnish]: containers/varnish.md
[Solr]: containers/solr.md
[Memcached]: containers/memcached.md
[Webgrind]: containers/webgrind.md
[Blackfire]: containers/blackfire.md
[Rsyslog]: containers/rsyslog.md
[AthenaPDF]: containers/athenapdf.md

| Container    | Versions           | Service name | Image                              | Enabled by default |
| ------------ | ------------------ | ------------ | ---------------------------------- | ------------------ |
| [Nginx]      | 1.13, 1.12         | `nginx`      | [wodby/php-nginx]                  | ✓                  |
| [Apache]     | 2.4                | `apache`     | [wodby/php-apache]                 |                    |
| [PHP]        | 7.1, 7.0, 5.6, 5.3 | `php`        | [wodby/php]                        |                    |
| [MariaDB]    | 10.2, 10.1         | `mariadb`    | [wodby/mariadb]                    | ✓                  |
| [PostgreSQL] | 10.1, 9.6          | `postgres`   | [wodby/postgres]                   |                    |
| [Redis]      | 4.0, 3.2           | `redis`      | [wodby/redis]                      |                    |
| [Varnish]    | 4.1                | `varnish`    | [wodby/varnish]                    |                    |
| [Solr]       | 7.x, 6.x, 5.5, 5.4 | `solr`       | [wodby/solr]                       |                    |
| [Memcached]  | 1.4                | `memcached`  | [wodby/memcached]                  |                    |
| [Webgrind]   | 1.5                | `webgrind`   | [wodby/webgrind]                   |                    |
| [Blackfire]  | latest             | `blackfire`  | [blackfire/blackfire]              |                    |
| [Rsyslog]    | latest             | `rsyslog`    | [wodby/rsyslog]                    |                    |
| [AthenaPDF]  | 2.10.0             | `athenapdf`  | [arachnysdocker/athenapdf-service] |                    |
| Mailhog      | latest             | `mailhog`    | [mailhog/mailhog]                  | ✓                  |
| Adminer      | 4.3                | `adminer`    | [wodby/adminer]                    |                    |
| phpMyAdmin   | latest             | `pma`        | [phpmyadmin/phpmyadmin]            |                    |
| Node         | latest             | `node`       | [_/node]                           |                    |
| Portainer    | latest             | `portainer`  | [portainer/portainer]              | ✓                  |
| Traefik      | latest             | `traefik`    | [_/traefik]                        | ✓                  |

## Requirements

* Install Docker ([Linux](https://docs.docker.com/engine/installation), [Docker for Mac](https://docs.docker.com/engine/installation/mac) or [Docker for Windows (10+ Pro)](https://docs.docker.com/engine/installation/windows))
* For Linux additionally install [docker compose](https://docs.docker.com/compose/install)

## Must know before you start

1. **(!!!) You will lose MariaDB data** if you run `docker-compose down`. Instead use `docker-compose stop` to stop containers. Alternatively, you can use a manual volume for mariadb data (see compose file), this way your data will always persist 
2. To avoid potential problems with permissions between your host and containers please follow [these instructions](permissions.md)
3. _For macOS users_: Out of box Docker for Mac volumes has poor performance. However there are workarounds, read more [here](macos.md)
4. For better reliability we release images with stability tags (e.g. `wodby/php:7.1-X.X.X`) which correspond to git tags. We **strongly recommend** using images only with stability tags. 

## Usage 

0. Read [must know before you start](#must-know-before-you-start) 
1. Download `docker-compose.yml` file from the [latest stable release](https://github.com/wodby/docker4php/releases) to your PHP project root
2. Make sure`NGINX_SERVER_ROOT` (or `APACHE_SERVER_ROOT`) is set to your project public directory with `index.php` (by default `/var/www/html/public`)  
3. Optional: import existing database for [MariaDB](containers/mariadb.md#import-existing-database), for [PostgreSQL](containers/postgres.md#import-existing-database)
4. Optional: uncomment lines in the compose file to run _redis_, _solr_, etc
5. [Configure domains](domains.md) 
6. Run containers: `docker-compose up -d`
7. That's it! Your php application should be up and running at [http://php.docker.localhost:8000](http://php.docker.localhost:8000). If you need to run multiple projects simultaneously see [this article](multiple-projects.md)
8. You can see status of your containers and their logs via portainer: [http://portainer.php.docker.localhost:8000](http://portainer.php.docker.localhost:8000)

You can stop containers by executing:
```bash
docker-compose stop
```

Feel free to adjust volumes and ports in the compose file for your convenience. Also, read [how to access containers](access.md) and [how to get logs](logs.md)

## Status

We're actively working on these instructions and containers. More options will be added soon. If you have a feature request or found a bug please [submit an issue on GitHub](https://github.com/wodby/docker4php/issues/new) or [![Wodby Slack](https://www.google.com/s2/favicons?domain=www.slack.com) join us on Slack](https://slack.wodby.com)

## License

This project is licensed under the MIT open source license.
