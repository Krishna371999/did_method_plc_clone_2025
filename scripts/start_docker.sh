#!/bin/bash
set -e

echo "Starting Docker containers with the latest image..."

cd /root/SF-demo-manuall

# Log in to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 267008473951.dkr.ecr.us-east-1.amazonaws.com

# Pull the latest image from ECR
docker compose -f docker-compose.manual.yml pull

# Start containers
docker compose -f docker-compose.manual.yml up -d

echo "Deployment completed successfully!"
