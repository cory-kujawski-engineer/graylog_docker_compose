#!/usr/bin/bash

docker-compose down -v
docker volume ls
docker network ls
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)
docker container rm $(docker ps -a -q)
docker rmi $(docker images -q)
