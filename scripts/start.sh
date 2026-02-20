#!/bin/bash
docker pull 020423264252.dkr.ecr.ap-south-1.amazonaws.com/aws-cicd-webapp:latest
docker run -d -p 80:5000 --name aws-cicd-container \
020423264252.dkr.ecr.ap-south-1.amazonaws.com/aws-cicd-webapp:latest

