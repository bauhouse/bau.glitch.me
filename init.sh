#!/bin/bash
set -e

if [ ! -d themes/casper ]; then
(
  git submodule update --init
)

if [ ! -d .data ]; then
(
  mkdir .data
)

if [ ! -d logs ]; then
(
  mkdir logs
)

if [ ! -f .data/ghost-local.db ]; then
(
  cd node_modules/ghost
  knex-migrator init
  mv content/data/ghost-dev.db ~/.data/ghost-local.db
)
fi

jq ".url=\"https://$PROJECT_DOMAIN.glitch.me\"" config.development.json.base > config.development.json
