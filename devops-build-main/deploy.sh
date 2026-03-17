#!/bin/bash

echo "Pulling latest image"

docker pull hclkarthi/dev-react:latest

docker stop react-container || true
docker rm react-container || true

docker run -d -p 80:80 --name react-container hclkarthi/dev-react:latest

echo "Deployment completed"
