FROM python:3.12-slim

# Create a non-root user
RUN adduser --disabled-password --gecos '' devcontainer

# Install git and x11-apps
RUN apt-get update && apt-get install -y \
    git \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*
