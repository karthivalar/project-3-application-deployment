#!/bin/bash

echo "Building Docker Image"

docker build -t devops-build-main_react-app .

docker tag devops-build-main_react-app hclkarthi/dev-react:latest

docker push hclkarthi/dev-react:latest

echo "Image pushed successfully"
