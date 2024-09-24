#!/bin/sh

cd dist
rm -f sha256.txt
sha256sum $(ls . | grep -v sha256.txt) >> sha256.txt

cd ..
gh release create v1.66.1 ./dist/* --notes "Binaries built from https://github.com/grpc/grpc/releases/tag/v1.66.1"