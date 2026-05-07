FROM alpine:3.18 AS ffmpeg-builder
RUN apk add --no-cache ffmpeg

FROM n8nio/n8n:latest
COPY --from=ffmpeg-builder /usr/bin/ffmpeg /usr/bin/ffmpeg
COPY --from=ffmpeg-builder /usr/bin/ffprobe /usr/bin/ffprobe
COPY --from=ffmpeg-builder /usr/lib/libav* /usr/lib/
COPY --from=ffmpeg-builder /usr/lib/libsw* /usr/lib/
COPY --from=ffmpeg-builder /usr/lib/libpostproc* /usr/lib/
COPY --from=ffmpeg-builder /usr/lib/libdrm* /usr/lib/
COPY --from=ffmpeg-builder /usr/lib/libxcb* /usr/lib/
COPY --from=ffmpeg-builder /lib/libz* /lib/
COPY --from=ffmpeg-builder /usr/lib/libx264* /usr/lib/
COPY --from=ffmpeg-builder /usr/lib/libmp3lame* /usr/lib/
