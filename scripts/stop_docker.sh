#!/bin/bash
set -e

echo "Stopping existing Docker containers..."

cd /root/SF-demo-manuall

# Stop existing containers (ignore errors if none)
docker compose -f docker-compose.manual.yml down || true

echo "Docker containers stopped successfully."
