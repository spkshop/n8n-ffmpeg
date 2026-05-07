FROM alpine:3.18 AS ffmpeg-builder
RUN apk add --no-cache ffmpeg alsa-lib pulseaudio-libs sdl2

FROM n8nio/n8n:latest
COPY --from=ffmpeg-builder /usr/bin/ffmpeg /usr/bin/ffmpeg
COPY --from=ffmpeg-builder /usr/bin/ffprobe /usr/bin/ffprobe
COPY --from=ffmpeg-builder /usr/lib /usr/lib
COPY --from=ffmpeg-builder /lib /lib
