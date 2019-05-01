#
# Java 1.7 & Jetty & Maven Dockerfile
#
FROM java:7

# Maintainer details
MAINTAINER Adrian Novegil "adrian.novegil@gmail.com"

# Update packages and install maven
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list

RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y vim wget curl git maven mongodb-org-shell

# Create working directory
RUN mkdir -p /data

# Install the test app
ADD ./files/docker-maven-tomcat /data/docker-maven-tomcat

WORKDIR /data/docker-maven-tomcat/

# Do executable the run script
RUN chmod +x run.sh

# Expose ports
EXPOSE 8080
