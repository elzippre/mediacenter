#!/bin/bash
# MediaCenter Update Script
echo "Updating images for containers"
docker-compose -f ./jackett/docker-compose.yaml -f ./jellyfin/docker-compose.yaml -f ./lidarr/docker-compose.yaml -f ./radarr/docker-compose.yaml -f ./sonarr/docker-compose.yaml -f ./transmission/docker-compose.yaml pull 
echo "Done, downloading images!"
docker-compose -f ./jackett/docker-compose.yaml -f ./jellyfin/docker-compose.yaml -f ./lidarr/docker-compose.yaml -f ./radarr/docker-compose.yaml -f ./sonarr/docker-compose.yaml -f ./transmission/docker-compose.yaml up -d 
echo "Done, updating containers!"
