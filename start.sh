#!/bin/bash

PORT=8080

if lsof -i :$PORT &> /dev/null; then
  echo "The port $PORT is already in use."
  exit 1
fi

# Create logs directory if it doesn't exist
mkdir -p /app/logs

# Redirect stdout and stderr to the log file
echo "Starting app on port $PORT..."
exec python3 app/main.py >> /app/logs/app.log 2>&1
