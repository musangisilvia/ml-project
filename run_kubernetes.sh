#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=amekamnakinini/app:api

# Run the Docker Hub container with kubernetes
kubectl create deploy app --image=$dockerpath

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward pod/app-7c8f48b847-lxm9n --address 0.0.0.0 8000:80
