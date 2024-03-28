#!/bin/bash

#Build docker image
docker build -t dockertraining_flask2 .

#Docker push
docker nasuheren/dockertraining_flask2:latest