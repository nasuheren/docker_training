#!/bin/bash

#Docker pull
echo "docker pull"
res=$(docker image inspect nasuheren/dockertraining:latest --format="exists")
if [ "$res" != "exists" ]; then
    docker pull nasuheren/dockertraining:latest
fi

#stop and remove
echo "echo stop and remove"
ce=$(docker ps -a --format "{{.Names}}" | grep "^dockertraining$")
if [ "$ce" != "" ]; then
    docker container stop $ce
    docker rm -f $ce
    #run
    docker run -d --name dockertraining nasuheren/dockertraining:latest
else
    #run
    docker run -d --name dockertraining nasuheren/dockertraining:latest
fi
