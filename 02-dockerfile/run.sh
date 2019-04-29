#!/bin/bash

# Compile the image
#
# Options:
#     docker build    build the image from the Dockerfile.
#     -t              Name and optionally a tag in the 'name:tag' format.
#     .               path to the Dockerfile.
#
docker build -t eg_hello-world .

# Execute the container
#
# Options:
#     docker run      runs a container.
#     --rm            remove the container after the execution.
#     --name          set a name to the container.
#     eg_hello-world  is the image you run, for example the hello-world.
#                     When you specify an image, Docker looks first for the
#                     image on your Docker host. If the image does not exist locally,
#                     then the image is pulled from the public image registry Docker
#                     Hub.
#
docker run --rm --name my_eg_hello-world eg_hello-world
