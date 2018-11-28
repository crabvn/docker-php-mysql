## Development

### Required
* Docker https://www.docker.com/
* Docker compose https://docs.docker.com/compose/
* Make `sudo make install`

### Run
`make up`

Access http://localhost:8081

## List **make** command:
* `make up` stop then start containers
* `make down` stop then remove containers
* `make stop` stop app
* `make start` start app
* `make php-bash-login` login to php container 
* `make provision up` start containers then install the packages
* `make artsian` php artisan do setup. Check the Makefile for detail

## Start your own project
Copy your project folders to source folder. That's it! Enjoy your PHP project
