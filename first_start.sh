#!/bin/bash

# build docker image
cd /Desktop/docker_training
docker build -t dockertraining_flask .

# push docker hub
docker push nasuheren/dockertraining_flask:latest

# deploy
cd /Desktop/docker_training
./deploy.sh
