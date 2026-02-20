#!/bin/bash

AWS_REGION="ap-south-1"
ACCOUNT_ID="020423264252"
REPO_NAME="aws-cicd-webapp"

IMAGE="$ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$REPO_NAME:latest"

echo "Logging into Amazon ECR..."
aws ecr get-login-password --region $AWS_REGION | \
docker login --username AWS --password-stdin $ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com

echo "Stopping old container..."
docker stop aws-cicd-container || true
docker rm aws-cicd-container || true

echo "Pulling latest image..."
docker pull $IMAGE

echo "Starting new container..."
docker run -d -p 80:5000 --name aws-cicd-container $IMAGE
