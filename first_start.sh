#!/bin/bash

# build docker image
docker build -t dockertraining .

# push docker hub
docker push nasuheren/dockertraining:latest

# deploy
./deploy.sh
