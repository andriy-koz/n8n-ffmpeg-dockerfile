# Start from official n8n image
FROM n8nio/n8n:latest

# Switch to root to install additional dependencies
USER root

# Install ffmpeg using apk (Alpine’s package manager)
RUN apk update \
    && apk add --no-cache ffmpeg

# Switch back to node user
USER node
