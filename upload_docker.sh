#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="dcada88/capstone"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag ud-capstone $dockerpath:latest

# Step 3:
docker push $dockerpath
