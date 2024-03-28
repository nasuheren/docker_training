#!/bin/bash

#Docker pull
docker pull nasuheren/dockertraining_flask:latest

#stop and remove
docker container stop dockertraining
docker rm dockertraining

#run
docker run -d --name dockertraining nasuheren/dockertraining_flask:latest