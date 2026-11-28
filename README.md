# OpenWrt x86_64 固件

基于 OpenWrt 官方正式稳定版源码编译的 x86_64 通用固件，采用 SquashFS 文件系统和 GRUB EFI 引导方式，适用于支持 x86_64 架构的软路由、工控机及普通 PC。

## 固件信息

| 项目 | 配置 |
|---|---|
| 固件平台 | x86_64 |
| 目标设备 | Generic |
| CPU 架构 | x86_64 |
| 文件系统 | SquashFS |
| 引导方式 | GRUB EFI |
| 镜像类型 | Combined EFI |
| 压缩格式 | GZIP |
| 默认 LAN 地址 | `192.168.1.1` |
| 默认管理地址 | `http://192.168.1.1` |
| 源码 | OpenWrt 官方正式稳定版维护分支 |

## 内置功能与软件

固件基于 OpenWrt 官方源码编译，并根据实际使用需求添加第三方软件源及相关软件包。

| 插件列表 | 说明 |
|---|---|
| iStore | 软件包管理与应用安装 |
| PassWall | 网络代理与分流 |
| Argon | LuCI 管理界面主题 |
| OpenAppFilter | 上网行为管理 |
| 待添加... | 待添加... |

具体软件包以每次发布的固件配置为准。

## 硬件兼容性

本固件面向 x86_64 Generic 平台，适用于：

- x86_64 软路由设备
- Intel / AMD 架构工控机
- 普通 x86_64 台式机
- 支持 UEFI 启动的迷你主机

请确认设备支持 x86_64 架构，并具有兼容的 UEFI 启动环境。

## 固件安装

### 安装前准备

1. 确认设备为 x86_64 架构。
2. 确认设备支持 UEFI 启动。
3. 下载对应版本的 Combined EFI 固件。
4. 解压 `.gz` 文件，获得 `.img` 镜像。
5. 备份设备原有系统及重要数据。

### 写入固件

可以使用以下工具将镜像写入目标硬盘或 SSD：

- [balenaEtcher](https://etcher.balena.io/)
- [Rufus](https://rufus.ie/)
- [USB Image Tool](https://www.alexpage.de/usb-image-tool/)

选择解压后的 `.img` 文件，写入目标存储设备。

**注意：** 写入操作会覆盖目标磁盘上的原有数据，请确认磁盘选择正确。


## 更新记录

固件跟随 OpenWrt 官方正式稳定版对应的维护分支更新。

每个发布版本均对应一个确定的源码 Commit，可通过 Release 名称识别源码版本。

历史固件保留在 Releases 中，可按需下载使用。

## 项目地址

- 固件仓库：[ZLab66/OpenWrt-Auto-Build](https://github.com/ZLab66/OpenWrt-Auto-Build)
- 固件下载：[GitHub Releases](https://github.com/ZLab66/OpenWrt-Auto-Build/releases)
- OpenWrt 官方项目：[openwrt/openwrt](https://github.com/openwrt/openwrt)

## 致谢

- [OpenWrt](https://github.com/openwrt/openwrt)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [OpenWrt-Passwall](https://github.com/Openwrt-Passwall)
- [LinkEase/iStore](https://github.com/linkease/istore)
- [luci-theme-argon](https://github.com/jerrykuku/luci-theme-argon)
- [OpenAppFilter](https://github.com/destan19/OpenAppFilter)

本项目使用的第三方软件及组件遵循各自的开源许可证。
