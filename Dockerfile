FROM alpine:3.8
LABEL maintainer="Christian Haschek <office@haschek-solutions.com>"

# Add PHP 7
RUN apk upgrade -U && \
    apk --update --repository=http://dl-4.alpinelinux.org/alpine/edge/testing add \
    openssl wget ca-certificates bitcoin

VOLUME ["/root/.bitcoin"]

EXPOSE 8332 8333 18332 18333

CMD bitcoind