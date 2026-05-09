FROM node:18-alpine

RUN apk add --no-cache \
    ffmpeg \
    python3 \
    make \
    g++ \
    linux-headers \
    udev \
    && ln -sf python3 /usr/bin/python

RUN npm install -g n8n@latest

EXPOSE 5678

CMD ["n8n", "start"]
