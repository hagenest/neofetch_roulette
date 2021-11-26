#!/bin/sh

# Author : Christian Hagenest

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$parent_path"
cd Dockerfiles

containers=("tumblefetch" "fedorafetch" "ubuntuuufetch" "centosfetch" "almafetch" "alpinefetch" "debianfetch")

rand=${containers[RANDOM%${#containers[@]}]}
docker run --name neofetch_roulette $rand

docker stop neofetch_roulette
docker rm neofetch_roulette