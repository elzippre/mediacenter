#!/bin/bash
# MediaCenter Install Script

while getopts "m:d:h:i:\?:*" option
do
   case $option in
      m) echo mediapath=$OPTARG > .env;;
      d) echo dockerpath=$OPTARG >> .env;;
      i) echo ipaddress= $OPTARG >> .env;;
      \?) echo "Invalid option" & exit;;
      h|*) echo "-h this help, -m media path, -d Docker data path, -i IP address for containers" & exit;;
    esac
done

cat .env

echo "Done, variables written to .env!"
cp .env ./jellyfin
cp .env ./jackett
cp .env ./lidarr
cp .env ./radarr
cp .env ./sonarr
cp .env ./transmission
echo "Done, copying .env files to container folders!"

docker-compose -f ./jackett/docker-compose.yaml -f ./jellyfin/docker-compose.yaml -f ./lidarr/docker-compose.yaml -f ./radarr/docker-compose.yaml -f ./sonarr/docker-compose.yaml -f ./transmission/docker-compose.yaml up -d


