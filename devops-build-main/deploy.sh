#!/bin/bash

echo "Stopping old container..."

docker stop react-container
docker rm react-container

echo "Starting new container..."

docker run -d -p 80:80 --name react-container react-devops-app

echo "Deployment Completed"
