#!/bin/bash
set -m

# Remove a potentially pre-existing server.pid for Rails.
rm -rf /app/tmp/pids/server.pid
rm -rf /app/tmp/cache/*

# Execute the command specified in the Dockerfile's CMD
exec "$@"