# build-openwrt
use github workflow actions to build openwrt

## Build with Docker Locally

Volumes Binding for Docker must be case-sensitive, [case-insensitive by default On MacOS][1], You
can use `Disk Utility` tool to Create an **case-sensitive** volume and use it to binding.

## Verify the Linux Kernel for Container Compatibility

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

## references

* [https://github.com/P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
* [https://github.com/KFERMercer/OpenWrt-CI](https://github.com/KFERMercer/OpenWrt-CI)
* [https://github.com/esirplayground/AutoBuild-OpenWrt](https://github.com/esirplayground/AutoBuild-OpenWrt)
* [https://github.com/P3TERX/openwrt-build-env](https://github.com/P3TERX/openwrt-build-env)
[1]: https://docker-docs.netlify.app/docker-for-mac/osxfs/#case-sensitivity
[2]: https://github.com/openwrt/docker
