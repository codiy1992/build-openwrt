#!/bin/bash

# Remove default feeds
# sed -i 's/^\(.*packages\)/#\1/' feeds.conf.default
# sed -i 's/^\(.*luci\)/#\1/' feeds.conf.default

# Add other feed source
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >> feeds.conf.default

cd /work

# Add OpenClash
git clone --depth 1 https://github.com/vernesong/OpenClash.git openclash
mv openclash/luci-app-openclash openwrt/package/

