#
# Nginx/NodeJS Dockerfile
#
FROM ubuntu

# Maintainer details
MAINTAINER Adrian Novegil "adrian.novegil@gmail.com"

# Install libraries
RUN apt-get update && apt-get install -y \
	curl \
	python \
	make \
	g++

# Get the latest node.js and npm versions and install
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install -y \
	nodejs npm
RUN apt-get install -y build-essential

# Copy source code
COPY files/app /var/www/api

# Install dependencies
RUN cd /var/www/api; npm install

EXPOSE 5000

CMD ["node", "/var/www/api/server.js"]
