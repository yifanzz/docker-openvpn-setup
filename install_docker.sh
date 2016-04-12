#!/bin/bash

set -e

# install https support for apt-get
apt-get update
apt-get install apt-transport-https ca-certificates

# add docker key to apt repo
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | tee /etc/apt/sources.list.d/docker.list

# confirm the new repo is used, probably not necessary, consider removing
apt-get update
apt-cache policy docker-engine

# install optional image extras for best support and install docker
apt-get install -y linux-image-extra-$(uname -r) linux-image-generic-lts-trusty docker-engine