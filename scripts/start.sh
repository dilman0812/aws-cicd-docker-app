#!/bin/bash

IMAGE="020423264252.dkr.ecr.ap-south-1.amazonaws.com/aws-cicd-webapp:latest"

echo "Pulling latest image..."
docker pull $IMAGE

echo "Stopping existing container..."
docker stop aws-cicd-container || true
docker rm aws-cicd-container || true

echo "Removing old image..."
docker image prune -af

echo "Starting new container..."
docker run -d --pull always -p 80:5000 --name aws-cicd-container $IMAGE
