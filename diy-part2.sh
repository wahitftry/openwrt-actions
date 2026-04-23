#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# 1. Mengubah IP Default Router
# Diubah ke 192.168.31.1 (IP default bawaan pabrik Xiaomi) agar aman 
# dan tidak bentrok dengan IP modem ISP (yang biasanya 192.168.1.1)
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 2. Mengubah Nama Hostname Router
# Mengubah "OpenWrt" menjadi "Redmi-AC2100" agar terlihat profesional
# dan mudah dikenali saat dipindai di jaringan Wi-Fi/LAN
sed -i 's/OpenWrt/Redmi-AC2100/g' package/base-files/files/bin/config_generate

# 3. Mengubah Tema Default ke Argon (DIMATIKAN)
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
