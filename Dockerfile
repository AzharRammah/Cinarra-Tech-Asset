FROM python:3.13-slim

WORKDIR /app

COPY app/ ./app

EXPOSE 8080

CMD ["python3", "app/main.py"]
