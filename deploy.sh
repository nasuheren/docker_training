#!/bin/bash

#Docker pull
res=$(docker image inspect nasuheren/dockertraining_flask:latest --format="exists")
if [ "$res" != "exists" ]; then
    docker pull nasuheren/dockertraining_flask:latest
fi

#stop and remove
ce=$(docker ps -a --format "{{.Names}}" | grep "^dockertraining$")
if [ "$ce" != "" ]; then
    docker container stop $ce
    docker rm -f $ce
fi

#run
docker run -d --name dockertraining nasuheren/dockertraining_flask:latest
