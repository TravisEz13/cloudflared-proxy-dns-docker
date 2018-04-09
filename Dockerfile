FROM ubuntu:xenial

# Add the cloudflared package file to the image
ADD https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.deb /cloudflare.deb

# Install the cloudflared package and certificates
RUN apt-get update && \
    apt-get full-upgrade --yes && \
    apt-get install -y ca-certificates && \
    dpkg -i /cloudflare.deb && \
    apt-get install -f && \
    apt-get autoclean --yes && \
    apt-get clean --yes

# Add the cloudflared configuration to the image
COPY config.yml /usr/local/etc/cloudflared/config.yaml

# Expose the port and launch the service
ENV LOCAL_PORT     53

EXPOSE $LOCAL_PORT/tcp $LOCAL_PORT/udp

CMD  cloudflared proxy-dns --port $LOCAL_PORT --address 0.0.0.0

ARG VCS_REF
ARG BUILD_DATE

LABEL maintainer="Travis Plunk <github@ez13.net>" \
      readme.md="https://github.com/travisez13/cloudflared-proxy-dns-docker/blob/master/README.md" \
      description="This Dockerfile will install and run cloudflared proxy-dns." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.usage="https://github.com/travisez13/cloudflared-proxy-dns-docker/tree/master/README.md" \
      org.label-schema.url="https://github.com/travisez13/cloudflared-proxy-dns-docker/blob/master/README.md" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/travisez13/cloudflared-proxy-dns-docker" \
      org.label-schema.name="cloudflared-proxy-dns-docker" \
      org.label-schema.vendor="travisez13" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.docker.cmd="docker run -p 53:53 travisez13/cloudflared-proxy-dns-docker" \
      org.label-schema.docker.cmd.devel="docker run -p 53:53/tcp -p 53:53/udp travisez13/cloudflared-proxy-dns-docker" \
      org.label-schema.docker.cmd.test="docker run -p 53:53/tcp -p 53:53/udp travisez13/cloudflared-proxy-dns-docker" \
      org.label-schema.docker.cmd.help="docker run -p 53:53/tcp -p 53:53/udp travisez13/cloudflared-proxy-dns-docker"
