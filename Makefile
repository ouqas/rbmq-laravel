# THIS := $(realpath $(lastword $(MAKEFILE_LIST)))
# HERE := $(shell dirname $(THIS))


.PHONY: all

override p= dddddd



setup: up run 

up:
	docker-compose up -d 

run:
	docker-compose exec nginx-fpm npm run dev 


rebuild:
	docker-compose up -d --build
	
down:
	docker-compose down 

composer-require:
	docker-compose exec nginx-fpm composer require $(p)


# npm:
# 	docker-compose exec nginx-fpm npm install  $(p)
	

migrate:
	docker-compose exec nginx-fpm php artisan migrate



test:
	docker-compose exec nginx-fpm php artisan test



