# AWS CI/CD Pipeline for a Dockerized Web Application

## Project Objective
Design and implement an end-to-end AWS CI/CD pipeline that automatically builds, tests, containerizes, and deploys a web application to EC2 using AWS CodePipeline, CodeBuild, CodeDeploy, and ECR.

## Overview
This project demonstrates the incremental design and implementation of a production-ready CI/CD pipeline on AWS for a containerized web application.  
The focus is on automation, repeatability, and disciplined DevOps practices rather than application complexity or one-click deployments.

The pipeline is built phase by phase to clearly illustrate how each AWS service contributes to the overall delivery workflow.

---

## CI/CD Flow
GitHub → CodePipeline → CodeBuild → Amazon ECR → CodeDeploy → EC2

---

## Architecture
Architecture diagrams are introduced starting from **Phase 1**, when the first functional component (a Dockerized application) is created.  
Each subsequent phase adds a new layer to the pipeline and is documented with a corresponding architecture diagram.

---

## Technologies Used
- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy
- Amazon ECR
- Amazon EC2
- Docker
- GitHub

---

## Phase Breakdown
- Phase 0: Project Planning & Repository Setup ✅
- Phase 1: Application Development & Dockerization
- Phase 2: Container Registry (Amazon ECR)
- Phase 3: Build Automation (AWS CodeBuild)
- Phase 4: Deployment Automation (AWS CodeDeploy)
- Phase 5: End-to-End CI/CD Pipeline (AWS CodePipeline)

---

## Status
Phase 0 completed. Project is ready to proceed with application development and Dockerization.

