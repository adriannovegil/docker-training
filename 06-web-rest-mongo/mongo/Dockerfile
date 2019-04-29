#
# MongoDB database Dockerfile.
#
FROM ubuntu

# Maintainer details
MAINTAINER Adrian Novegil "adrian.novegil@gmail.com"

# Install MongoDB.
RUN \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
  apt-get update && \
  apt-get install -y mongodb-org vim wget curl git && \
  rm -rf /var/lib/apt/lists/*

# Define mountable directories.
VOLUME /data/db

# load the data files into the container
#ADD files/data-example /data/data-example
#ADD files/mongo-import.sh /data/mongo-import.sh

# Define working directory.
WORKDIR /data

# Do executable the run scripts
#RUN chmod +x mongo-import.sh

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017
