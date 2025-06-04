#! /bin/bash
tag=$1
echo "starting to build docker image, tag:$tag"
echo "step1: npm install"
npm install  --registry https://registry.npmmirror.com --foreground-scripts --maxsockets=10 --fetch-retries=3
echo "step2: npm run build"
npm run build
echo "step3: uv sync"
uv sync
echo "step4: docker build image"
docker build -t $tag  -f Dockerfile-cgws .
echo "build docker image end"