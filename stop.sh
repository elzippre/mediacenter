#!/bin/bash
# MediaCenter Stop Script


for app in $(cat apps2install.txt )
do
   docker compose -f ./$app/docker-compose.yaml --env-file ./.env down
done


