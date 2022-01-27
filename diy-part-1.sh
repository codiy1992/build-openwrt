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

# Use Lean's package and luci replace openwrt defaults
# sed -i 's/^\(.*packages\)/#\1/' feeds.conf.default
# sed -i 's/^\(.*luci\)/#\1/' feeds.conf.default
# echo 'src-git packages https://github.com/coolsnowwolf/packages' >> feeds.conf.default
# echo 'src-git luci https://github.com/coolsnowwolf/luci' >> feeds.conf.default
# Add other feed source
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

cd /work

# Add OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git openclash
mv openclash/luci-app-openclash openwrt/package/

