# Base image
FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# Copy .vimrc file to the container
COPY ./vimrc_container /root/.vimrc

# install app dependencies
RUN apt-get update &&\
    apt-get install -y valgrind &&\ 
    apt-get install -y vim &&\ 
    apt-get install -y cmake &&\
    apt-get install -y gcc mono-mcs &&\ 
    rm -rf /var/lib/apt/lists/*


# Working directory
WORKDIR /os_dev


