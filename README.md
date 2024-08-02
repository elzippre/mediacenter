# mediacenter

creates docker container for jellyfin, radarr, sonarr, jackett, lidarr and transmission.

## usage of...

### apps2install.txt
- add all services you like to install into apps2install.txt
- put each folder name in a new line

### Configuration

#### .env file
```bash
PIHOLEPW=Password123
DOCKERPATH=/srv/mediacenter
MEDIAPATH=/mnt/data/mediafiles
TZ=Europe/Vienna
```


### create.sh
Creates the .env files for all containers and spins them up.

./create.sh -m MediaFolderRoot -d ContainerFolderRoot -i IPADDRs 

### stop.sh
Stops all container.

### update.sh
Updates all containers and restarts them, containers must be stopped first!
