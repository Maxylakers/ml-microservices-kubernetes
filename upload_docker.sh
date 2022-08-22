#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=scorpionrevolver/max-app:v1.1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag max-app:v1.0 scorpionrevolver/max-app:v1.0-latest

# Step 3:
# Push image to a docker repository
docker image push scorpionrevolver/max-app:v1.0-latest
