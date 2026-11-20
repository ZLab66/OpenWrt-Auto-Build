
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

# 修改默认内网 IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 添加 Argon 主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 添加 OpenAppFilter 一款家长控制软件
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# 修改默认主机名
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
