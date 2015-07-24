# php7-dev
Use docker to build a PHP-7.0.0 source development environment.

## Step 0:
Install [docker](http://docs.docker.com/mac/started/) and [docker-compose](https://docs.docker.com/compose/install/) to your system.

## Step 1:
``$ git clone https://github.com/songrgg/php7-dev.git``

### Using zip to get PHP-7.0.0
Download a PHP-7.0.0 source zip from Github, and unzip it to the ``php-dev/php7`` folder.

### Using git clone to get PHP-7.0.0
``$ cd php7-dev``  
``$ git clone --branch PHP-7.0.0 --recursive https://songrgg@github.com/php/php-src.git php7``

### Anyway, get a PHP-7.0.0 to ``php-dev/php7`` folder.

**Screenshot:**
![folder tree](https://raw.githubusercontent.com/songrgg/php7-dev/master/folder_tree.png)

## Step 2:
Start docker to have a development environment.

``$ docker-compose up -d source``

## Step 3:
Login the docker machine to develop.

``$ docker ps -a``  
``$ docker exec -it php7dev_source_1 /bin/bash``
