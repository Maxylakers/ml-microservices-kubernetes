#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath=scorpionrevolver/max-app:v1.0-latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run max-kube-app --image=$dockerpath --port=80
echo "Docker ID and Image: $dockerpath"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward max-kube-app 8000:80

