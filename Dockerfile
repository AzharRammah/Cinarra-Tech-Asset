# Dockerfile

FROM python:3.13-slim

# Create working directory
WORKDIR /app

# Copy application
COPY app/ ./app
COPY start.sh .

# Create logs dir
RUN mkdir -p logs

# Make start script executable
RUN chmod +x start.sh

# Expose port 8080
EXPOSE 8080

# Run app
CMD ["./start.sh"]

