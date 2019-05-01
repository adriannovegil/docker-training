#
# Python Dockerfile
#
FROM ubuntu:14.04

# Maintainer details
MAINTAINER Adrian Novegil "adrian.novegil@gmail.com"

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git && \
  rm -rf /var/lib/apt/lists/*

# create working directory
RUN mkdir -p /data

# Install the test app
ADD ./files/docker-python /data/docker-python
WORKDIR /data/docker-python

# Do executable the run script
RUN chmod +x run.sh

# Expose ports
EXPOSE 80
