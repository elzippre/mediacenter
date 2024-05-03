# mediacenter

creates docker container for jellyfin, radarr, sonarr, jackett, lidarr and transmission.

## usage of...

### create.sh
Creates the .env files for all containers and spins them up.

./create.sh -m MediaFolderRoot -d ContainerFolderRoot -i IPADDRs 

### stop.sh
Stops all container.

### update.sh
Updates all containers and restarts them, containers must be stopped first!
