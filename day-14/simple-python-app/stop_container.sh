#!/bin/bash
set -e

# Stop any running container using port 5000
CONTAINER_ID=$(docker ps -q --filter "publish=5000")

if [ -n "$CONTAINER_ID" ]; then
  echo "Stopping container on port 5000: $CONTAINER_ID"
  docker stop $CONTAINER_ID
  docker rm $CONTAINER_ID
else
  echo "No running container found on port 5000"
fi


