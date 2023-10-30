FROM alpine

RUN apk -U upgrade

RUN apk --no-cache add knot-mod-geoip
RUN echo "hello webinar"
