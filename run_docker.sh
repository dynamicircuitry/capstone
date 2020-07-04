#!/usr/bin/env bash

#PULL Code
git clone https://github.com/dynamicircuitry/cap-code.git ./tmp-code/

#BUILD
echo "=> Building Docker Image..."
docker build \
  --tag ud-capstone:latest \
  --file Dockerfile ./tmp-code

#RUN
docker run -d -p 8000:80 --log-driver local --name capstone ud-capstone:latest

rm -rf ./tmp-code/
