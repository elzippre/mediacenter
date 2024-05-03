#!/bin/bash
# MediaCenter Install Script

echo "Enter all variables in .env file!"
echo "MEDIAPATH, DOCKERPATH, JCPUS, JMEMORYY"

cat .env

cp .env ./prowlarr/
cp .env ./jellyfin/
cp .env ./lidarr/
cp .env ./radarr
cp .env ./sonarr/
cp .env ./transmission/ 

echo "Done, variables written to .env!"

docker compose -f ./prowlarr/docker-compose.yaml up -d
docker compose -f ./jellyfin/docker-compose.yaml up -d
docker compose -f ./lidarr/docker-compose.yaml up -d
docker compose -f ./radarr/docker-compose.yaml up -d
docker compose -f ./sonarr/docker-compose.yaml up -d
docker compose -f ./transmission/docker-compose.yaml up -d


