FROM ghcr.io/n8n-io/n8n:latest

USER root
RUN microdnf install -y ffmpeg || \
    tdnf install -y ffmpeg || \
    apt-get install -y ffmpeg || \
    echo "trying alternatives" && \
    apk add --no-cache ffmpeg
USER node
