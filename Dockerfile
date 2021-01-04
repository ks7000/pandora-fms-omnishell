# Base image from Docker Hub:
FROM centos:centos6.9

# It copies pre-condition to the filesystem:
COPY pre-condition.sh /pre-condition.sh

# Change permission to execute pre-condition:
RUN chmod +x /pre-condition.sh

# Docker container starts up and run:
ENTRYPOINT ["/pre-condition.sh"]
