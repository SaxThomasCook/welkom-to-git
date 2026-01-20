#! /bin/bash

# install git
yum -y install git

# install curl
yum -y install curl

# install docker using official script
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
rm -f get-docker.sh

# enable and start docker
systemctl enable --now docker || true

# install Docker Compose (plugin) if available, fallback to legacy package if present
yum -y install docker-compose-plugin || yum -y install docker-compose || true

# install nginx
yum -y install nginx

# install hugo via dnf (for Fedora/RHEL)
dnf install -y hugo
