#! /usr/bin/env pwsh
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$tag = $($args[0])
Write-Host "starting to build docker image, tag:${tag}"
Write-Host "step1: npm install"
npm install --registry https://registry.npmmirror.com --foreground-scripts --maxsockets=10 --fetch-retries=3
Write-Host "step2: npm run build"
npm run build
Write-Host "step3: uv sync"
uv sync
Write-Host "step4: docker build image"
docker build -t $tag  -f Dockerfile-cgws .
Write-Host "build docker image end"
