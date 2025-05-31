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