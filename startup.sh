#!/usr/bin/bash

sudo sysctl -w vm.max_map_count=262144
docker-compose down
docker-compose up -d
echo "Remember to goto http://127.0.0.1:9000/ and not https"
