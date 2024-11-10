#!/bin/bash
# MediaCenter Update Script
echo "Updating images for containers"
for app in $(cat apps2install.txt )
do
   docker compose -f ./$app/docker-compose.yaml --env-file ./.env pull
done
echo "Done, downloading images!"

for app in $(cat apps2install.txt )
do
   docker compose -f ./$app/docker-compose.yaml --env-file ./.env -d
done
echo "Done, updating containers!"
