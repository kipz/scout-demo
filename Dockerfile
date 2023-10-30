FROM alpine:3.15.5@sha256:26284c09912acfc5497b462c5da8a2cd14e01b4f3ffa876596f5289dd8eab7f2 AS before

RUN apk -U upgrade

FROM alpine:3.15.5@sha256:26284c09912acfc5497b462c5da8a2cd14e01b4f3ffa876596f5289dd8eab7f2 AS after

RUN echo "https://dl-cdn.alpinelinux.org/alpine/v3.15/community/" > /etc/apk/repositories && \
    echo "https://dl-cdn.alpinelinux.org/alpine/v3.17/main/" >> /etc/apk/repositories && \
    echo "https://dl-cdn.alpinelinux.org/alpine/v3.11/main/" >> /etc/apk/repositories

RUN apk --no-cache add zlib=="1.2.12-r1" \
    openssl=="1.1.1l-r0" \
    knot-mod-geoip
RUN echo foo:7
