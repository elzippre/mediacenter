#!/bin/bash
# MediaCenter Stop Script

docker compose -f ./prowlarr/docker-compose.yaml -f ./jellyfin/docker-compose.yaml -f ./lidarr/docker-compose.yaml -f ./radarr/docker-compose.yaml -f ./sonarr/docker-compose.yaml -f ./transmission/docker-compose.yaml --env-file .env down


