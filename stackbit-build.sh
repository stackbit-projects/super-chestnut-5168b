#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 5fe5168bb7a11a691761b7b5

echo "stackbit-build.sh: finished build"
