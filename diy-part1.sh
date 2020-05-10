#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# fw876/helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Lienol/openwrt-package
sed -i '$a src-git lienol https://github.com/Lancenas/lienol-openwrt-package.git' feeds.conf.default

git clone https://github.com/atrandys/luci-udptools package/luci-udptools
git clone https://github.com/awesome-openwrt/luci-app-passwall package/luci-passwall
git clone https://github.com/awesome-openwrt/luci-app-ssr-plus package/luci-ssr-plus
