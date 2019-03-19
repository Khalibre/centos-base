# Base Docker image for Khalibre projects

This repository contains base image that is used to build the portfolio of Docker images for Khalibre projects.

## Base image

This image is used as a base image for Khalibre images. It provides a base layer that includes:

1. A `tomcat` user (uid/gid `1000`) with home directory set to `/opt/tomcat`
2. A few tools that may be useful when extending the image or installing software, like `unzip`.

### Operating system

This image uses CentOS 7.

### Working directory

This image has the working directory set to `/opt/tomcat`, which is the `tomcat` user home directory at the same time.

### Availability

The `Dockerfile` is available in the `master` branch and is built in the Docker HUB as `khalibre/centos-base:latest`.
