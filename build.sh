#!/bin/bash

IRIS_PROJECT_FOLDER_NAME=irisdemodb-atelier-project
GIT_REPO_NAME=irisdemo-base-irisdb-community
TAG=version-$(cat ./VERSION)
IMAGE_NAME=intersystemsdc/$GIT_REPO_NAME:$TAG

docker build --build-arg IRIS_PROJECT_FOLDER_NAME=$IRIS_PROJECT_FOLDER_NAME --force-rm -t $IMAGE_NAME . 