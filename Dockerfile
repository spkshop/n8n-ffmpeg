FROM node:18-alpine

RUN apk add --no-cache ffmpeg

RUN npm install -g n8n@latest --ignore-scripts

EXPOSE 5678

CMD ["n8n", "start"]
