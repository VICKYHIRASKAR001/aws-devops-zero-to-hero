#!/bin/bash
set -e

# Get running container ID
containerid=$(docker ps -q)

if [ -n "$containerid" ]; then
    echo "Stopping container: $containerid"
    docker stop $containerid
    echo "Removing container..."
    docker rm -f $containerid
else
    echo "No running container found."
fi
