FROM replicated/vendor-cli:0.45.0

RUN apk update \
 && apk add --no-cache curl jq \
 && rm -rf /var/cache/apk/*

# YQ, using the github release
RUN curl -s https://api.github.com/repos/mikefarah/yq/releases/latest | \
  jq '.assets[] | select(.name == "yq_linux_amd64").browser_download_url' | \
  xargs curl --location --output /usr/local/bin/yq && \
  chmod 755 /usr/local/bin/yq
  
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]