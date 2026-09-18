#!/bin/bash

docker run -it $@ -v ${PWD}:/root/xml2rfc ghcr.io/ietf-tools/xml2rfc-dev:latest
docker run --rm `# automatically remove container upon termination` \
  -v "$(pwd):/data" `# bind current working directory to /data` \
  ghcr.io/ietf-tools/xml2rfc-slim:latest \
  --html example.xml
# if input is example.xml, output will be example.html
