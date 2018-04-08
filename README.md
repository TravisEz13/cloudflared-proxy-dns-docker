# Cloudflare Proxy DNS Docker Container

## Overview

A container to run a proxy DNS server to CloudFlare's DNS over HTTPs service.

## References

This is based on [CloudFlare's Instructions](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/) to setup the service.

## To run the service

```
docker run -p 53:53 travisez13/cloudflared-proxy-dns-docker
```