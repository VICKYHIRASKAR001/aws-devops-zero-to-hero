#!/bin/bash
set -e

docker pull vicky1306/simple-python-flask-app

# Run with fixed container name so it's easier to manage
docker run -d --name flaskapp -p 5000:5000 vicky1306/simple-python-flask-app
