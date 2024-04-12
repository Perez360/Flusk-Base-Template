#!/bin/bash

docker kill flusk-base-template

docker rm flusk-base-template

docker rmi flusk-base-template:latest

DOCKER_BUILDKIT=1 docker buildx build --platform linux/amd64 -f Dockerfile -t flusk-base-template:latest .

docker compose up flusk-base-template
