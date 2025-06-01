# STEP1

# Hello World HTTP Server

This project is a simple Python-based HTTP server that exposes a `GET` endpoint on port **8080** and returns a `Hello World` message.

##  Project Structure

```bash
├── app/
│ └── main.py # HTTP server source code
├── logs/ # Directory for application logs
└── start.sh # Startup script for the application
```

##  Features

- Starts an HTTP server on port 8080.
- Returns `"Hello World"` on `GET` requests.
- Startup script checks if port 8080 is available before launching.
- All stdout/stderr logs are redirected to `logs/app.log`.

##  Requirements

- Python 3.x
- Unix-like OS (for `lsof` in `start.sh`)

##  Installation

1. Clone the repository:

```bash
git clone https://github.com/AzharRammah/Cinarra-Tech-Asset.git
cd Cinarra-Tech-Asset
```

2. Make sure you have Python 3 installed.

3. Give execution permission to the startup script:

```bash
chmod +x start.sh
```

## Usage 

Run the startup script:

```bash
./start.sh
```

This script will:

- Check if port 8080 is free.
- Start the Python HTTP server `(app/main.py).`
- Redirect all logs (stdout and stderr) `to logs/app.log.`

You can check the logs with:

```bash
tail -f logs/app.log
```

Open your browser or use curl to test the endpoint:

```bash
curl http://localhost:8080
```
You should see:

```bash
Hello World
```

# STEP 2

# Docker + Docker Compose Setup

This step adds containerization to the project using Docker and Docker Compose. The app runs inside a Docker container, exposing port 8080, and connects to a PostgreSQL database container.

## Files added

- `Dockerfile`: Defines the Docker image for the Python app.
- `docker-compose.yml`: Defines the services (`web` and `db`) and volumes

## Dockerfile

- Builds an image that runs the app on port 8080.
- Uses Python 3.13-slim as the base image.
- Copies the app source and startup script.
- Sets executable permissions for `start.sh`.
- Uses `start.sh` to launch the app.

## docker-compose.yml

- `web` service: builds and runs the app container.
- `db` service: runs PostgreSQL (latest version).
- Volumes are used for data persistence:
  - `./logs` mapped to `/app/logs` for app logs.
  - `db_data` volume mapped to PostgreSQL data directory.
- Port 8080 exposed from `web` service to the host.

## Environment Variables

- Use a `.env` file or set environment variables:
  - `POSTGRES_USER`
  - `POSTGRES_PASSWORD`
  - `POSTGRES_DB`

## How to run

Build and start the containers:

```bash
docker-compose up -d --build
```

## Data Persistence

- Database data is persisted in the Docker volume `db_data.`
- Application logs are persisted on your host machine in the `logs/` directory.

## Cleaning up

To stop and remove containers, networks, and volumes created by Docker Compose:

```bash
docker-compose down -v
```

Removing containers will delete the database data unless volumes are preserved.

# STEP 3

## CI/CD Workflow

This project includes a basic Continuous Integration (CI) pipeline using GitHub Actions to:

1. **Install dependencies** 

   Runs `pip install -r requirements.txt` to install required Python packages.

2. **Run basic tests** 

   Checks that the application responds correctly by curling `localhost:8080`.

3. **Start the app in the background** 

   Launches the server so the tests can interact with it.

4. **Stop the app**  

   Cleans up by stopping the application after tests complete.

### How to add a real production deployment

To extend this workflow with automatic production deployment, you can add steps such as:

- **Build and push Docker image**  

  Build the Docker image with `docker build` and push it to a registry (Docker Hub, AWS ECR, GCP Container Registry, etc.).

- **Deploy to production environment**  

  Use tools like SSH, Ansible, Terraform, Kubernetes, AWS ECS/EKS, or any other platform to update the running service in production.

