#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
echo "=> Building Docker Image..."
docker build \
  --tag ud-capstone:latest \
  --file Dockerfile .

# Step 2:
docker image ls

## Step 3:
docker run -d -p 8000:80 --log-driver local --name capstone ud-capstone:latest
