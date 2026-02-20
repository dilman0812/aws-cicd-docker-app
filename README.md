# AWS CI/CD Pipeline for a Dockerized Web Application

## Project Objective
Design and implement an end-to-end AWS CI/CD pipeline that automatically builds, tests, containerizes, and deploys a web application to EC2 using AWS CodePipeline, CodeBuild, CodeDeploy, and ECR.

---

## Overview
This project demonstrates the incremental design and implementation of a production-ready CI/CD pipeline on AWS for a containerized web application.

The emphasis is on **DevOps fundamentals, automation discipline, reproducibility, and cost-aware operations**, following a structured phase-by-phase approach similar to real-world engineering workflows.

---

## CI/CD Flow
GitHub → CodeBuild → Amazon ECR → CodeDeploy → EC2  
(CodePipeline orchestration introduced in Phase 5)

---

## Architecture

### Phase 1 — Dockerized Application (Local)
![Phase 1 Architecture](architecture/phase-1-dockerized-app.png)

A minimal web application is developed and packaged into a Docker container.  
The application is built and validated locally to ensure consistent runtime behavior before introducing AWS services.

---

### Phase 2 — EC2 & Amazon ECR Integration
![Phase 2 Architecture](architecture/phase-2-ecr.png)

AWS infrastructure required for container distribution is introduced.  
An EC2 instance is integrated with a private Amazon ECR repository using an IAM role.

The Docker image is manually pushed and pulled to validate secure container lifecycle management.

---

### Phase 3 — Build Automation with AWS CodeBuild
![Phase 3 Architecture](architecture/phase-3-codebuild.png)

Build automation is introduced using AWS CodeBuild.  
Source code is pulled from GitHub, the Docker image is built inside AWS using `buildspec.yml`, and the image is automatically pushed to Amazon ECR.

This establishes a true Continuous Integration (CI) foundation.

---

### Phase 4 — Deployment Automation with AWS CodeDeploy
![Phase 4 Architecture](architecture/phase-4-codedeploy.png)

Deployment automation is introduced using AWS CodeDeploy.  
A deployment bundle stored in Amazon S3 triggers lifecycle hooks on EC2 to:

- Stop existing Docker containers  
- Pull the latest image from Amazon ECR  
- Start a new container instance  

This eliminates manual SSH-based deployments and completes Continuous Deployment (CD) automation.

---

## Phase Breakdown
- Phase 0: Project Planning & Repository Setup ✅
- Phase 1: Application Development & Dockerization ✅
- Phase 2: EC2 & Amazon ECR Setup ✅
- Phase 3: Build Automation (AWS CodeBuild) ✅
- Phase 4: Deployment Automation (AWS CodeDeploy) ✅
- Phase 5: End-to-End CI/CD Orchestration (AWS CodePipeline)

---

## Current Status
Phases 1–4 completed.

- Docker builds are automated using AWS CodeBuild  
- Container images are stored in Amazon ECR  
- Deployments to EC2 are automated using AWS CodeDeploy  
- EC2 instances are stopped between validations to maintain cost efficiency  

The final phase introduces AWS CodePipeline to orchestrate the entire workflow end-to-end.
