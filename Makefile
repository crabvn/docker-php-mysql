build:
	docker-compose -f "environment/development.yml" build

up: build
	docker-compose -f "environment/development.yml" up -d

down:
	docker-compose -f environment/development.yml down

stop:
	docker-compose -f environment/development.yml stop

start:
	docker-compose -f environment/development.yml start

provision: up
	docker exec -it lumen_php_1 bash -c "composer install"

artisan:
	docker exec -it lumen_php_1 bash -c "php artisan migrate"

php-bash-login:
	docker exec -it lumen_php_1 bash