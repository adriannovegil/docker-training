#!/bin/bash

# Compile the image
#
# Options:
#     docker build    build the image from the Dockerfile.
#     -t              Name and optionally a tag in the 'name:tag' format.
#     .               path to the Dockerfile.
#
docker build -t eg_python-web .

# Execute the container
#
# Options:
#     docker run      runs a container.
#     --rm            remove the container after the execution.
#     eg_python-web  is the image you run, for example the hello-world.
#                     When you specify an image, Docker looks first for the
#                     image on your Docker host. If the image does not exist locally,
#                     then the image is pulled from the public image registry Docker
#                     Hub.
#
# Commands:
#     docker exec -i -t ae419e5dd0c2 /bin/bash
docker run -ti -p 8080:8080 --rm eg_python-web /opt/webserver/run.sh /logs
