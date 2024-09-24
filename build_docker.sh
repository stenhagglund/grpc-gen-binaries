#!/bin/sh

mkdir -p dist/

docker build --platform=linux/amd64 -t grpc-gen-binaries .
docker container rm grpc-gen-binaries > /dev/null
docker run --name grpc-gen-binaries grpc-gen-binaries /bin/true
docker cp grpc-gen-binaries:/usr/local/bin/protoc-gen-python-grpc-linux-amd64 ./dist/protoc-gen-python-grpc-linux-amd64