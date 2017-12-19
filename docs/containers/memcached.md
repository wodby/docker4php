# Memcached

## Memcached status and hits

You are able to check the status of memcached and its hits by running the following command.
```php
docker-compose exec memcached watch "echo stats | nc 127.0.0.1 11211"
```

## Configuration

Configuration is possible via environment variables. See the full list of variables on [GitHub](https://github.com/wodby/memcached).
