## Development

### Required
* Docker https://www.docker.com/
* Docker compose https://docs.docker.com/compose/
* Make `sudo make install`

### Run first time
1. `make provision up` 
2. cd source
3. cp .env.example .env
4. `make artisan`
5. `make php-bash-login`
6. `php artisan migrate` or `php artisan db:seed --class=DevDatabaseSeeder` for more seed data
7. `npm install`
8. `npm run dev`

### Run from the second time
`make up`

Access http://localhost:8000

## List **make** command:
* `make up` stop then start containers
* `make down` stop then remove containers
* `make stop` stop app
* `make start` start app
* `make php-bash-login` login to php container 
* `make provision up` start containers then install the packages
* `make artsian` php artisan do setup. Check the Makefile for detail

# docker-php-mysql
