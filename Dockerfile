# Base image
FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && apt-get install -y valgrind


# Working directory
WORKDIR /os_dev


