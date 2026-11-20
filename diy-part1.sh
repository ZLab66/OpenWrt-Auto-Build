#!/bin/bash

# ==========================================
# OpenWrt 自定义脚本
# 文件名称：diy-part1.sh
# 脚本用途：添加自定义软件源
# 执行阶段：更新软件源之前
# ==========================================

# 添加 iStore 插件源
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default

# 添加 PassWall 插件源（二选一）
echo 'src-git passwall_luci https://github.com/Openwrt-Passwall/openwrt-passwall.git;main' >> feeds.conf.default
#echo 'src-git passwall2 https://github.com/Openwrt-Passwall/openwrt-passwall2.git;main' >> feeds.conf.default

# 添加 PassWall 和 PassWall 2 共用依赖包
echo 'src-git passwall_packages https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git;main' >> feeds.conf.default

