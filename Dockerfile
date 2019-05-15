FROM tenna/ubuntu:latest
MAINTAINER Peter L. Berghold <pberghold@tenna.com>
LABEL com.tenna.vendor = "Tenna LLC"
LABEL com.tenna.author = "Peter L. Berghold <pberghold@tenna.com>"
LABEL com.tenna.description = "Ubuntu platform with MongoDB preinstalled"
LABEL com.tenna.version     = "0.5.0"

#
# Update the OS, grab some essential tools to make all this work 
RUN  export DEBIAN_FRONTEND=noninteractive && \
     apt-get update && \
     apt-get -y dist-upgrade && \
     apt-get -y install wget curl apt-utils build-essential gcc make git


# Grab all the goodness that this image needs. 
RUN export DEBIAN_FRONTEND=noninteractive && \
     apt-get update && \
     apt-get -y install  \
			mongodb-server mongodb-clients mongo-tools
