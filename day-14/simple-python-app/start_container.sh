#!/bin/bash
docker stop simple-python-flask-app || true
docker rm simple-python-flask-app || true

docker pull vicky1306/simple-python-flask-app:latest

docker run -d \
    --name simple-python-flask-app \
    -p 5000:5000 \
    vicky1306/simple-python-flask-app:latest
