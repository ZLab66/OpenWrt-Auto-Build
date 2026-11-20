
#!/bin/bash

# ==========================================
# OpenWrt 自定义脚本
# 文件名称：diy-part2.sh
# 脚本用途：安装自定义插件及修改系统配置
# 执行阶段：更新并安装软件源之后
# ==========================================

# 修改默认内网 IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# 添加 Argon 主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 添加 OpenAppFilter 一款家长控制软件
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# 修改默认主机名
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
