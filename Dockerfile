FROM alpine:3.18

RUN apk add --no-cache curl jq \
    && adduser -D -u 1000 actionuser

COPY entrypoint.sh /entrypoint.sh

USER actionuser

ENTRYPOINT ["/entrypoint.sh"]
