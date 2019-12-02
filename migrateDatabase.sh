#!/usr/bin/env bash

source ./.env

cat ./script.sql | docker-compose exec -T database mysql -u "${DATABASE_USERNAME}" -p"${DATABASE_PASSWORD}" "${DATABASE_NAME}"
