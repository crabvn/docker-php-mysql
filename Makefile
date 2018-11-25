up:
	docker-compose -f "environment/development.yml" stop
	docker-compose -f "environment/development.yml" up -d
down:
	docker-compose -f environment/development.yml down
stop:
	docker-compose -f environment/development.yml stop
start:
	docker-compose -f environment/development.yml start
provision: up
	docker exec -it docker_php_mysql_php bash -c "apt-get update;  apt-get install -y curl; curl -sL https://deb.nodesource.com/setup_8.x | bash -; apt-get install -y git unzip wget ntp gnupg curl sudo nano nodejs; curl -sL https://getcomposer.org/installer | php -- --install-dir /usr/bin --filename composer; composer install;"
artisan:
	docker exec -it docker_php_mysql_php bash -c "php artisan key:generate; php artisan vendor:publish --provider="Laravel\Horizon\HorizonServiceProvider"; php artisan storage:link"
php-bash-login:
	docker exec -it docker_php_mysql_php bash