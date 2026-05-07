FROM node:18-alpine AS base
RUN apk add --no-cache ffmpeg

FROM n8nio/n8n
COPY --from=base /usr/bin/ffmpeg /usr/bin/ffmpeg
COPY --from=base /usr/lib/libav* /usr/lib/
COPY --from=base /usr/lib/libsw* /usr/lib/
COPY --from=base /usr/lib/libpostproc* /usr/lib/
