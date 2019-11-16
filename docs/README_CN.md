- [日语版](../README_JP.md)
- [英文版](../README.md)
```
   ____ _   _  ____ _  _____   ___     __     ____  __
  / ___| | | |/ ___| |/ / _ \ / _ \    \ \   / /  \/  |
 | |   | | | | |   | ' / | | | | | |____\ \ / /| |\/| |
 | |___| |_| | |___| . \ |_| | |_| |_____\ V / | |  | |
  \____|\___/ \____|_|\_\___/ \___/       \_/  |_|  |_|

```
Cuckoo Sandbox自动化安装脚本
## 功能描述
Cuckoo Sandbox是一款高效的动态解析木马的工具.但是它的安装过程异常繁琐。在Ubuntu18.04中克隆本repositry，并只需要执行一个脚本就可以全自动的安装Cuckoo Sandbox。
## 安装演示

<div align="center">
<img src="https://github.com/tdu-isl/cuckoo-vm/wiki/images/demo.gif" alt="属性" title="demo">
</div>

### Requirement
- VIrtualBox 6.0

### 注意
因为AMD家的某些CPU不支持\[Nested VT-x/AMD-V\]功能。所以如果你的CPU不支持这个功能的话，在安装好Ubuntu18.04后请直接从 安装 的第 3 步骤开始。

## 安装
1. 在VirtualBox中安装Ubuntu18.04虚拟机
2. 将虚拟机的 \[Nested VT-x/AMD-V\] 设置为有效
3. 克隆本库至虚拟机中
4. 执行库中的install.sh

    > $ sh install.sh

5. 第四步结束后，依次启动cuckoo, cuckoo web

    > $ cuckoo
    > $ cuckoo web

## 已安装的工具
- Cuckoo Sandbox
- Wireshark
- Volatility
- jq

## Licence
[MIT](https://github.com/tdu-isl/cuckoo-vm/blob/develop/LICENSE)
## Author
- [appBana](https://github.com/howmuch515)
- [Syuukakou](https://github.com/Syuukakou)
- [ro-iida](https://github.com/rotten3156)
- [m-book](https://github.com/m-book)
- [waricopy](https://github.com/waricopy)
- [yuk1h1raA](https://github.com/yuk1h1ra)
