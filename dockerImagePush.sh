#!/bin/bash

#Build docker image
docker build -t dockertraining_flask2 .

#Docker push
docker push nasuheren/dockertraining_flask2:latest