#
# Nginx/NodeJS Dockerfile
#
FROM ubuntu

# Maintainer details
MAINTAINER Adrian Novegil "adrian.novegil@gmail.com"

# Update the repository
RUN apt-get update

# Install necessary tools
RUN apt-get install -y nano wget dialog net-tools

# Download and Install Nginx
RUN apt-get install -y nginx

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file from the current directory
ADD files/nginx.conf /etc/nginx/

# Append "daemon off;" to the configuration file
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Remove default sites-enabled
RUN rm /etc/nginx/sites-enabled/default

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD service nginx start
