# build-openwrt
use github workflow actions to build openwrt

## Build with Docker Locally

Volumes Binding for Docker must be case-sensitive, [case-insensitive by default On MacOS][1], You
can use `Disk Utility` tool to Create an **case-sensitive** volume and use it to binding.


## references

* [https://github.com/P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
* [https://github.com/KFERMercer/OpenWrt-CI](https://github.com/KFERMercer/OpenWrt-CI)
* [https://github.com/esirplayground/AutoBuild-OpenWrt](https://github.com/esirplayground/AutoBuild-OpenWrt)
* [https://github.com/P3TERX/openwrt-build-env](https://github.com/P3TERX/openwrt-build-env)
[1]: https://docker-docs.netlify.app/docker-for-mac/osxfs/#case-sensitivity
