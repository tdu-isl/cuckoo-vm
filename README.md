```
   ____ _   _  ____ _  _____   ___     __     ____  __ 
  / ___| | | |/ ___| |/ / _ \ / _ \    \ \   / /  \/  |
 | |   | | | | |   | ' / | | | | | |____\ \ / /| |\/| |
 | |___| |_| | |___| . \ |_| | |_| |_____\ V / | |  | |
  \____|\___/ \____|_|\_\___/ \___/       \_/  |_|  |_|
                                                       
```

Cuckoo sandboxの自動ビルドスクリプト

## Requirement
- Ubuntu 18.04

## Preparation
- PCのシステムがWindowsの場合では、まずVMware ProまたはVirtualboxを入れて、Ubuntu18.04をインストールしてから、InstallHost.runを実行する。この時、VMware ProまたはVirtualboxに建てられたUbuntuの「ネスデッドVT-x/AMD-V」を有効化する。そうしないと"VT-x is not avaliable"っていうエラーが出てきます．
- ホストOS上にあるVirtualBox VMの設定から「ネステッドVT-x/AMD-Vを有効化」を有効化する。
    - もし上記が有効化できない場合は、VirtualBox VMの保存フォルダ(VirtualBox VMsなど)にて、以下のようにVBoxManageを実行すると解決することがあります。
        ```
        VBoxManage modifyvm YourVmName --nested-hw-virt on
        ```

## Install
```
sudo sh InstallHost.run
```
