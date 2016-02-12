#!/bin/bash
set -e

# replace the current config with ours from the image
rm -f /var/lib/ghost/config.js
cp /our-config.js /var/lib/ghost/config.js

# run their entrypoint, passing along args to this script
/entrypoint.sh "$@"
