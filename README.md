# STEP1

# Hello World HTTP Server

This project is a simple Python-based HTTP server that exposes a `GET` endpoint on port **8080** and returns a `Hello World` message.

## 📁 Project Structure

├── app/
│ └── main.py # HTTP server source code
├── logs/ # Directory for application logs
└── start.sh # Startup script for the application


## 🚀 Features

- Starts an HTTP server on port 8080.
- Returns `"Hello World"` on `GET` requests.
- Startup script checks if port 8080 is available before launching.
- All stdout/stderr logs are redirected to `logs/app.log`.

## 🛠 Requirements

- Python 3.x
- Unix-like OS (for `lsof` in `start.sh`)

## ⚙️ Installation

1. Clone the repository:

```bash
git clone https://github.com/AzharRammah/Cinarra-Tech-Asset.git
cd Cinarra-Tech-Asset
