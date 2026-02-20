#!/bin/bash
docker stop aws-cicd-container || true
docker rm aws-cicd-container || true

