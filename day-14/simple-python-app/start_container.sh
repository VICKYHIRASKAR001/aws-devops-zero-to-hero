#!/bin/bash
set -e

echo "Pulling latest Docker image..."
docker pull vicky1306/simple-python-flask-app:latest

echo "Starting container on port 5000..."
docker run -d -p 5000:5000 --name simple-flask-app vicky1306/simple-python-flask-app:latest
