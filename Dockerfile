FROM alpine:3.9

VOLUME ["/opt/TS3AudioBot"]

COPY run.sh /

RUN apk add --no-cache mono opus opus-dev ffmpeg youtube-dl --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    && apk add --no-cache --virtual=.build-dependencies ca-certificates --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \ 
    && cert-sync /etc/ssl/certs/ca-certificates.crt \ 
    && mkdir -p /opt/TS3AudioBot \
    && chmod a+x /run.sh

WORKDIR /opt/TS3AudioBot

CMD ["/run.sh"]

