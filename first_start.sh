#!/bin/bash

# build docker image
docker build -t dockertraining .

# image tag
docker tag dockertraining nasuheren/dockertraining:latest

# push docker hub
docker push nasuheren/dockertraining:latest

# deploy
./deploy.sh
