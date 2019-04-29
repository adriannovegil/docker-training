#
# Python Web Dockerfile
#
FROM ubuntu:14.04

# Maintainer details
MAINTAINER Adrian Novegil "adrian.novegil@gmail.com"

# Install python
RUN apt-get update && apt-get install -y python

# Add the server files.
ADD files/webserver.py /opt/webserver/webserver.py
ADD files/run.sh /opt/webserver/run.sh
ADD files/index.html /opt/webserver/index.html

# Define de volume to store logs.
VOLUME logs

EXPOSE 8080
