#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

git clone https://github.com/bestmomo/laravel5-example.git laravel
cd laravel
composer install
php artisan key:generate
sed -i "s/^DB_HOST=.*/DB_HOST=mariadb/" .env
sed -i "s/^DB_DATABASE=.*/DB_DATABASE=php/" .env
sed -i "s/^DB_USERNAME=.*/DB_USERNAME=php/" .env
sed -i "s/^DB_PASSWORD=.*/DB_PASSWORD=php/" .env
php artisan migrate --seed
php artisan vendor:publish

curl -s nginx | grep -q "Laravel 5"