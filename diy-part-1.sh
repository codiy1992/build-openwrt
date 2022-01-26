#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

cd /work

# Add Some Packages From Lede
git clone --depth 1 https://github.com/coolsnowwolf/lede -b master lede
mv lede/package/lean/luci-app-webadmin openwrt/package/
mv lede/package/lean/luci-app-docker openwrt/package/
mv lede/package/lean/luci-lib-docker openwrt/package/
mv lede/package/lean/luci-theme-argon openwrt/package/

# Add Kcptun From Passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git passwall
mv passwall/kcptun openwrt/package/

# Add OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git openclash
mv openclash/luci-app-openclash openwrt/package/


