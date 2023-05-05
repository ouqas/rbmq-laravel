#!/bin/bash

cp ./docker-compose/nginx/nginx.conf /etc/nginx/nginx.conf

cp .env-deploy .env



echo "copying the deploy env"

composer install --no-dev


php artisan key:generate
php artisan config:clear
php artisan view:clear
php artisan cache:clear
php artisan migrate

sh docker-compose/config.sh 