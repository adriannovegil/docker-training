#!/bin/bash

# Compile the image
#
# Options:
#     docker build    build the image from the Dockerfile.
#     -t              Name and optionally a tag in the 'name:tag' format.
#     .               path to the Dockerfile.
#
docker build -t eg_postgresql .

# Execute the container
#
# Options:
#     docker run      runs a container.
#     --rm            remove the container after the execution.
#     -p              binding between local port and container port.
#     eg_postgresql   is the image you run, for example the hello-world.
#                     When you specify an image, Docker looks first for the
#                     image on your Docker host. If the image does not exist locally,
#                     then the image is pulled from the public image registry Docker
#                     Hub.
#
docker run --rm -p 127.0.0.1:32770:5432 eg_postgresql
