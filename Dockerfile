# Start from official n8n image
FROM n8nio/n8n:latest

# Switch to root to install additional dependencies
USER root

# Update apt and install ffmpeg
RUN apt-get update \
    && apt-get install -y ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Switch back to node user
USER node
