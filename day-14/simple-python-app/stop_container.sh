#!/bin/bash
set -e

echo "Stopping any existing container running on port 5000..."

# Find container running on port 5000
running=$(docker ps -q --filter "publish=5000")

if [ -n "$running" ]; then
    echo "Stopping container $running..."
    docker stop $running || true
    docker rm $running || true
else
    echo "No container found on port 5000."
fi

