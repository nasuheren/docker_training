#!/bin/bash

#Docker pull

res=$(docker image inspect nasuheren/dockertraining:latest --format="exists")
if [ "$res" != "exists" ]; then
    echo "docker pull"
    docker pull nasuheren/dockertraining:latest
fi

#stop and remove
ce=$(docker ps -a --format "{{.Names}}" | grep "^dockertraining$")
if [ "$ce" != "" ]; then
    echo "echo stop and remove"
    docker container stop $ce
    docker rm -f $ce
    #run
    docker run -d --name dockertraining nasuheren/dockertraining:latest
else
    echo "run"
    #run
    docker run -d --name dockertraining nasuheren/dockertraining:latest
fi
