# Docker - basic commands

## Overview

- Version and Tag
- Docker Commands

```shell
docker pull

docker run                                             = pulls image and starts container
docker run {image_name} -d                             = starts a new container container
docker run -p{host_port}:{container_port} {image_name} =
docker start {container_id}                            = starts stopped container

docker stop {container_id}                             = stops the container

docker ps -a                                           = list all containers

docker exec -it {container_id} /bin/bash               = access container terminal

docker logs {container_id}                             = print the logs on the screen
```

## CONTAINER port vs HOST port

- Multiple containers can run on your hosting machine
- The hosting machine has only certain ports available
- Conflict when same port on host machine
- Creates a bind between the host machine and the container
