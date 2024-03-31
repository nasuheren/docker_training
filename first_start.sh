#!/bin/bash

# build docker image
docker build -t dockertraining_flask .

# push docker hub
docker push nasuheren/dockertraining:latest

# deploy
./deploy.sh
