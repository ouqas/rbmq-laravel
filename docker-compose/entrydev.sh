#!/bin/bash

if [ ! -f "vendor/autoload.php" ]; then
    composer install 
fi

if [ ! -f ".env" ]; then
    echo "Creating env file for env $APP_ENV"
    cp .env.example .env
else
    echo "env file exists."
fi

php artisan key:generate
php artisan config:clear
php artisan view:clear
php artisan cache:clear
php artisan migrate



if [ -d "node_modules" ]; then  
    npm install
fi





sh docker-compose/config.sh
# php-fpm -D
# nginx -g "daemon off;"
# exec "$@"