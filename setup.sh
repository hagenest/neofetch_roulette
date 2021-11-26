#!/bin/sh

# Author : Christian Hagenest

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"

docker build -t tumblefetch -f Dockerfiles/DockerfileTumbleweed .
docker build -t fedorafetch -f Dockerfiles/DockerfileFedora .
docker build -t ubuntuuufetch -f Dockerfiles/DockerfileUbuntu .
docker build -t alpinefetch -f Dockerfiles/DockerfileAlpine .
docker build -t centosfetch -f Dockerfiles/DockerfileCentos .
docker build -t debianfetch -f Dockerfiles/DockerfileDebian .
docker build -t almafetch -f Dockerfiles/DockerfileAlma .