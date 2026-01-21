#!/bin/bash

# install git
yum -y install git

# install curl
yum -y install curl

# install docker using official script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm -f get-docker.sh

# install Docker Compose (plugin)
yum -y install docker-compose-plugin

# enable and start docker
systemctl enable --now docker || true

# Print Docker and Docker Compose version
echo "=== Docker Version ==="
docker --version
echo "=== Docker Compose Version ==="
docker compose version

# install nginx
yum -y install nginx

# Print nginx version
echo "=== Nginx Version ==="
nginx -V

# install hugo via dnf (for Fedora/RHEL)
dnf install -y hugo

# Print Hugo version
echo "=== Hugo Version ==="
hugo version
