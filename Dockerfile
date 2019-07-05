FROM alpine:3.9

RUN apk add --no-cache mono opus opus-dev ffmpeg youtube-dl --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN apk add --no-cache --virtual=.build-dependencies ca-certificates --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \ 
    && cert-sync /etc/ssl/certs/ca-certificates.crt \ 
    && mkdir -p /opt/TS3AudioBot


COPY run.sh /run.sh
RUN chmod a+x /run.sh

VOLUME [/opt/TS3AudioBot]

CMD /run.sh

