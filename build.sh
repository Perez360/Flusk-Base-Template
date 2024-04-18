#!/bin/bash

docker kill flask-base-template

docker rm flask-base-template

docker rmi flask-base-template:latest

DOCKER_BUILDKIT=1 docker buildx build --platform linux/amd64 -f Dockerfile -t flask-base-template:latest .

docker compose up flask-base-template
