#!/bin/sh
# 
# @desc [morefine S500黑苹果安装后一键优化脚本]
# @author [DalianSky]
# @email [daliansky2008@mail.com]
# @create date 2022-05-06 09:23:13
# @modify date 2022-05-06 09:23:13
# 调用url: sh -c "$(curl -fsSL https://ghproxy.com/https://raw.githubusercontent.com/daliansky/morefine-S500-Hackintosh/main/Tools/morefine-s500.sh)"
echo "正在执行S500一键优化脚本，该脚本包括："
echo "启用macOS安装应用允许任何来源 / 修复睡眠唤醒 / 修复 无法登录App Store；"
echo "请输入当前用户的密码，然后回车"
sudo spctl --master-disable		# 启用macOS安装应用允许任何来源
sudo rm -rf /Library/Preferences/SystemConfiguration/NetworkInterfaces.plist*
sudo pmset -b hibernatemode 0		# 内存供电，内存镜像不写入硬盘
sudo pmset -b acwake 0			# 关闭被同一 iCloud 下的设备唤醒
echo "morefine S500一键优化脚本执行完毕，请重启机器！"
