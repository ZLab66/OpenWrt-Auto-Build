# OpenWrt-Auto-Build

基于 GitHub Actions 的 OpenWrt x86_64 固件自动构建项目。

本项目以 [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt) 为基础进行定制，使用 OpenWrt 官方稳定版源码，针对 x86_64 Generic 设备构建固件。

## 项目特点

- **自动检查更新**：定时检查 OpenWrt 官方正式稳定版更新。
- **自动编译固件**：检测到新版本后自动触发 GitHub Actions 构建。
- **手动指定版本**：支持手动触发构建，也可以指定 OpenWrt 版本 Tag。
- **自动重试编译**：依次尝试多线程、单线程和详细日志模式，提高编译成功率。
- **自定义软件源**：支持 iStore、PassWall 等第三方软件源。
- **自定义固件配置**：通过 `.config` 文件管理固件功能和软件包。
- **自动发布固件**：编译成功后自动创建 GitHub Release。

## 固件信息

| 项目 | 配置 |
|---|---|
| 目标平台 | x86_64 |
| 目标设备 | Generic |
| 文件系统 | SquashFS |
| 引导方式 | GRUB EFI |
| 镜像格式 | Combined EFI |
| 压缩格式 | GZIP |
| 源码版本 | OpenWrt 官方正式稳定版 |

## 使用说明

1. Fork 或克隆本仓库。
2. 根据需要修改仓库中的 `.config` 文件。
3. 根据需要修改 `feeds.conf.default` 和自定义脚本。
4. 进入 GitHub 仓库的 Actions 页面。
5. 选择对应的工作流，手动启动构建。
6. 留空版本 Tag 时自动获取最新正式稳定版，也可以手动指定版本。
7. 构建成功后，在仓库的 Releases 页面获取固件。

## 仓库文件说明

| 文件或目录 | 用途 |
|---|---|
| `.config` | OpenWrt 固件配置文件 |
| `feeds.conf.default` | 第三方软件源配置 |
| `diy-part1.sh` | 更新软件源之前执行的自定义脚本 |
| `diy-part2.sh` | 安装软件源之后执行的自定义脚本 |
| `.github/workflows/openwrt-builder.yml` | 固件编译与发布工作流 |
| `.github/workflows/update-checker.yml` | 官方稳定版更新检查工作流 |

## 固件下载

编译成功后，固件将自动发布到 GitHub Releases。

发布内容仅保留压缩后的 Combined EFI 镜像文件：

`*combined-efi.img.gz`

历史版本 Release 不会因新版本发布而自动删除。

## 致谢

本项目的实现离不开以下开源项目及服务：

- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [GitHub Actions](https://github.com/features/actions)
- [Microsoft Azure](https://azure.microsoft.com)
- [OpenWrt-Passwall](https://github.com/Openwrt-Passwall)
- [LinkEase/iStore](https://github.com/linkease/istore)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## 开源许可

本项目基于 [MIT License](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE) 使用和修改。

原项目版权归 P3TERX 所有，相关版权声明及许可证条款予以保留。
