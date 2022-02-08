# OpenWrt as a Docker Image

## References

* [Example Dockerfile](https://openwrt.org/docs/guide-user/virtualization/docker_openwrt_image#example_dockerfile)

## verify the Linux Kernel for Container Compatibility

* Verify the Linux Kernel directly

```shell
wget https://github.com/moby/moby/raw/master/contrib/check-config.sh
chmod +x check-config.sh
./check-config.sh
```

* Verify the Linux Kernel from a .config file

```shell
# dump config into file
zcat /proc/config.gz > kernel.config
# verify
./check-config.sh kernel.config
```
