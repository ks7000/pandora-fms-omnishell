# Base image from Docker Hub:
FROM centos:centos6.9

# Base image 
# FROM alpine:latest

# installes required packages for our script
#RUN	apk add --no-cache \
#  bash \
#  ca-certificates \
#  curl \
#  jq

# Copies your code file  repository to the filesystem 
#COPY entrypoint.sh /entrypoint.sh
COPY pre-condition.sh /pre-condition.sh

# Change permission to execute the script and
RUN chmod +x /pre-condition.sh

# File to execute when the docker container starts up
ENTRYPOINT ["/pre-condition.sh"]
