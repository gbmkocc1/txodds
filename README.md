TXOdds Technical Assignment

This repository contains a simple Python Flask application along with DevOps components including Docker, Kubernetes manifests, GitHub Actions CI/CD, and Terraform infrastructure examples.

 1. Flask Application

The application displays the client’s public IP address.

Location:

app/app.py

Run locally
cd app
pip3 install -r requirements.txt
python3 app.py


The app runs at:

http://localhost:5000

 2. Docker

A Dockerfile is provided to containerize the Flask app.

Location:

Dockerfile

Build & Run Docker locally
docker build -t flask-ip-app .
docker run -p 5000:5000 flask-ip-app

 3. Kubernetes Manifests

Kubernetes resources are included to deploy the app in a cluster.

Directory:

k8s/

Files:

namespace.yaml

deployment.yaml

service.yaml

Apply to Kubernetes:
kubectl apply -f k8s/

 4. GitHub Actions CI/CD

A workflow is included to:

Build the Docker image

Push it to Docker Hub

Location:

.github/workflows/docker-build.yml


The workflow uses GitHub Secrets:

DOCKERHUB_USERNAME

DOCKERHUB_TOKEN

 5. Terraform Example (EKS Infrastructure)

Example Terraform files demonstrating how to provision EKS and deploy the app.

Directory:

terraform/


This includes:

VPC

EKS Cluster

Node Group

Initialize Terraform
cd terraform
terraform init
terraform plan

 Project Structure
txodds/
│── app/
│   ├── app.py
│   ├── requirements.txt
│── k8s/
│   ├── namespace.yaml
│   ├── deployment.yaml
│   ├── service.yaml
│── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│── .github/workflows/
│   ├── docker-build.yml
│── Dockerfile
│── README.md  ← (this documentation)

 Summary

This repo fulfills all required tasks:

✔ Flask app showing public IP
✔ Dockerfile
✔ Kubernetes manifests
✔ GitHub Actions pipeline to Docker Hub
✔ Terraform example for EKS
✔ Documentation
