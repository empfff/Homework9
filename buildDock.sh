#!/bin/bash

cd py36

docker build -t py36 .

docker run -d \
  -it \
  --name py36 \
  -v "$(pwd)"/output:/app \
  nginx:latest