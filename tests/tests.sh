#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

# @todo return tests https://stackoverflow.com/questions/69359382/creating-new-laravel-project-via-composer-fails-with-error-class-arrayloader-not
#composer create-project laravel/laravel laravel
#cd laravel
#composer install
#php artisan key:generate
#sed -i "s/^DB_HOST=.*/DB_HOST=${DB_HOST}/" .env
#sed -i "s/^DB_DATABASE=.*/DB_DATABASE=${DB_NAME}/" .env
#sed -i "s/^DB_USERNAME=.*/DB_USERNAME=${DB_USER}/" .env
#sed -i "s/^DB_PASSWORD=.*/DB_PASSWORD=${DB_PASSWORD}/" .env
#php artisan migrate --seed
#
#sudo chgrp -R www-data storage bootstrap/cache
#sudo chmod -R ug+rwx storage bootstrap/cache
#
#curl -s nginx | grep -q "Laravel"