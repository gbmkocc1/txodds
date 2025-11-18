# Simple IP Echo Flask App

This project contains:
- Python Flask app
- Dockerfile
- Kubernetes manifests
- GitHub Action to build/push Docker image
- Terraform example for EKS

## How to run locally

docker build -f docker/Dockerfile -t test-ip-echo .
docker run -p 8080:8080 test-ip-echo

curl http://localhost:8080
