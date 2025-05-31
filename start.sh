#!/bin/bash

PORT=8080

# Checks if port 8080 is free
if lsof -i :$PORT &> /dev/null; then
  echo "The port $PORT is already in use."
  exit 1
fi

# Create logs directory if it doesn't exist
mkdir -p logs

echo "Starting app in port $PORT..."
exec python3 app/main.py > logs/app.log 2>&1 &

