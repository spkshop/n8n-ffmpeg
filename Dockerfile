FROM node:18-alpine

RUN apk add --no-cache ffmpeg python3 make g++

RUN npm install -g n8n --prefer-offline

EXPOSE 5678

CMD ["n8n", "start"]
