#!/usr/bin/env bash

# Build the image
docker build --build-arg RABBITMQ_DEFAULT_USER=admin \
              --build-arg RABBITMQ_DEFAULT_PASS=admin \
              -t wanghs/rabbitmq:3.8-management .

# Push the image
docker login
docker tag wanghs/rabbitmq:3.8-management wanghangsheng/rabbitmq-3.8-management:latest
docker push wanghangsheng/rabbitmq-3.8-management:latest

# Start the container
docker run -d --name local-rabbitmq -p 5672:5672 -p 15672:15672 wanghs/rabbitmq:3.8-management