#!/bin/bash

PORT=8080

# Checks if port 8080 is free
if lsof -i :$PORT &> /dev/null; then
  echo "The port $PORT is already in use."
  exit 1
fi

# Init de app & redirects stoud to logs/app.log
echo "Starting app in port $PORT..."
python3 app/main.py >> logs/app.log 2>&1 &
echo "App Started."

