#!/bin/bash

source ../../envvars.txt

docker run \
    -d \
    -e COMPOSER_CARD=${COMPOSER_CARD} \
    -e COMPOSER_NAMESPACES=${COMPOSER_NAMESPACES} \
    -e COMPOSER_AUTHENTICATION=${COMPOSER_AUTHENTICATION} \
    -e COMPOSER_MULTIUSER=${COMPOSER_MULTIUSER} \
    -e COMPOSER_DATASOURCES="${COMPOSER_DATASOURCES}" \
    -v ~/.composer:/home/composer/.composer \
    --name rest \
    --network composer_default \
    -p 3000:3000 \
    myorg/composer-rest-server