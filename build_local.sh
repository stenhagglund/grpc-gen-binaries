#!/bin/sh

mkdir -p dist/
mkdir -p build/
cd build/

git clone --depth 1 --branch v1.66.1 https://github.com/grpc/grpc

cd grpc
bazelisk build //src/compiler:grpc_python_plugin.stripped
cp ./bazel-bin/src/compiler/grpc_python_plugin ../../dist/protoc-gen-python-grpc-darwin-arm64
chmod +x "../../dist/protoc-gen-python-grpc-darwin-arm64"