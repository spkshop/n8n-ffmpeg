FROM n8nio/n8n:latest

USER root

RUN (apk add --no-cache ffmpeg 2>/dev/null || apt-get update && apt-get install -y ffmpeg) && echo "FFmpeg installed"

USER node
