#!/bin/bash

# build docker image
echo "docker build"
docker build -t dockertraining .

# image tag
echo "docker image tag"
docker tag dockertraining nasuheren/dockertraining:latest

# push docker hub
echo "docker push"
docker push nasuheren/dockertraining:latest

# deploy
echo "deploy.sh"
./deploy.sh
