FROM alpine:3.21.0

LABEL maintainer="nao <naost3rn@gmail.com"

RUN set -x && \
    apk update && \
    apk add --no-cache speedtest-cli supervisor

RUN echo '*/10 * * * * /usr/bin/speedtest --json' >> /var/spool/cron/crontabs/root

COPY supervisord.ini /etc/

# CMD ["/usr/bin/speedtest"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.ini"]