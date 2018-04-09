# Cloudflare Proxy DNS Docker Container

## Overview

A container to run a proxy DNS server to CloudFlare's DNS over HTTPs service.

## To run the service

```
docker run -p 53:53 travisez13/cloudflared-proxy-dns
```

## Images

### Latest Release Image

[![](https://images.microbadger.com/badges/version/travisez13/cloudflared-proxy-dns.svg)](https://microbadger.com/images/travisez13/cloudflared-proxy-dns "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/travisez13/cloudflared-proxy-dns.svg)](https://microbadger.com/images/travisez13/cloudflared-proxy-dns "Get your own image badge on microbadger.com")

### Latest Edge Image

[![](https://images.microbadger.com/badges/image/travisez13/cloudflared-proxy-dns:edge.svg)](https://microbadger.com/images/travisez13/cloudflared-proxy-dns:release-v1.0-preview.1.2 "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/travisez13/cloudflared-proxy-dns:edge.svg)](https://microbadger.com/images/travisez13/cloudflared-proxy-dns:release-v1.0-preview.1.2 "Get your own version badge on microbadger.com")

## References

This is based on [CloudFlare's Instructions](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/) to setup the service.
