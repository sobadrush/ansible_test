#!/bin/bash

docker build --platform linux/amd64 -f ./Dockerfile --no-cache -t ubuntu-ssh:v1 .