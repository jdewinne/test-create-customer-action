FROM replicated/vendor-cli:0.45.0

RUN apk update \
 && apk add --no-cache jq \
 && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]