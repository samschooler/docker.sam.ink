#!/bin/bash
. ./scripts/settings.sh
docker run --rm --name $container_name -v $PWD/data/$container_name/var/lib/ghost/content:/var/lib/ghost/content -v $PWD/config/config.js:/var/lib/ghost/content/config.js -e "NODE_ENV=production" -d ghost