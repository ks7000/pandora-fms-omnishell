#!/bin/bash
set -e

url="${INPUT_URL_ID}"
echo $url

http_head=$(curl -I "${url}")
echo $http_head

echo "::set-output name=http_head::$http_head"



