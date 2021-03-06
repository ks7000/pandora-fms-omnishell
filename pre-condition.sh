#!/bin/bash

# If a command fails, exit immediately:
set -e

# Verify for httpd service installed, download and install if necessary:
[ `rpm -qa | grep -i httpd | wc -l` -lt 1 ] || yum install -y --verbose httpd
