# AWS CI/CD Pipeline for a Dockerized Web Application

## Project Objective
Design and implement an end-to-end AWS CI/CD pipeline that automatically builds, tests, containerizes, and deploys a web application to EC2 using AWS CodePipeline, CodeBuild, CodeDeploy, and ECR.

---

## Overview
This project demonstrates the incremental design and implementation of a production-ready CI/CD pipeline on AWS for a containerized web application.

The emphasis is on **DevOps fundamentals, automation discipline, and reproducibility**, following a phase-by-phase approach similar to real-world engineering workflows rather than one-click deployments.

---

## CI/CD Flow
GitHub → CodePipeline → CodeBuild → Amazon ECR → CodeDeploy → EC2

---

## Architecture

### Phase 1 — Dockerized Application (Local)
![Phase 1 Architecture](architecture/phase-1-dockerized-app.png)

In this phase, a minimal web application is developed and packaged into a Docker container.  
The application is built and validated locally to ensure consistent runtime behavior before introducing any AWS CI/CD services.

This phase establishes a stable, reproducible artifact that will later be integrated into Amazon ECR, CodeBuild, and CodeDeploy.

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
- Phase 1: Application Development & Dockerization ✅
- Phase 2: Container Registry (Amazon ECR)
- Phase 3: Build Automation (AWS CodeBuild)
- Phase 4: Deployment Automation (AWS CodeDeploy)
- Phase 5: End-to-End CI/CD Pipeline (AWS CodePipeline)

---

## Status
Phase 1 completed.  
The application is successfully containerized, validated locally, and ready to be integrated with AWS CI/CD services in the next phase.

