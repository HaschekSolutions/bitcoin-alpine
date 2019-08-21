FROM alpine:edge
LABEL maintainer="Christian Haschek <office@haschek-solutions.com>"

# Add packages
RUN apk upgrade -U && \
    apk --update --repository=http://dl-4.alpinelinux.org/alpine/edge/testing add \
    openssl wget ca-certificates bitcoin bitcoin-cli

ADD btc_init /
RUN mkdir /bitcoin
ENV HOME /bitcoin
VOLUME ["/bitcoin"]
WORKDIR /bitcoin

EXPOSE 8332 8333

CMD ["/btc_init"]