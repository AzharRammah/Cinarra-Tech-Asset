FROM python:3.11-slim

WORKDIR /app

# Copy code and script
COPY app/ ./app/
COPY start.sh ./

# Install dependencies
RUN apt-get update && apt-get install -y lsof && rm -rf /var/lib/apt/lists/*

# Permissions for the startup script
RUN chmod +x start.sh

EXPOSE 8080

CMD ["./start.sh"]
