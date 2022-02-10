# OpenWrt as a Docker Image

## Docker in docker

If you run OpenWrt as a docker container, you can't run another docker daemon inside this container.
but you can create a volume mapping `/var/run/docker.sock` to this container, and use it to manage
the host's container.

## Change Nameserver

In file `/etc/resolv.conf`, default nameserver is `127.0.0.11` change to a known public nameserver like `114.114.114.114`

```
nameserver 114.114.114.114
options ndots:0
```

## References
* [Example Dockerfile](https://openwrt.org/docs/guide-user/virtualization/docker_openwrt_image#example_dockerfile)
* [Docker in Docker](https://hub.docker.com/_/docker/)
