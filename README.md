# cuckoo-vm
Cuckoo sandboxの自動ビルドスクリプト

## Requirement
- Ubuntu 18.04

## Preparation
- ホストOS上にあるVirtualBox VMの設定から「ネステッドVT-x/AMD-Vを有効化」を有効化する。
    - もし上記が有効化できない場合は、VirtualBox VMの保存フォルダ(VirtualBox VMsなど)にて、以下のようにVBoxManageを実行すると解決することがあります。
        ```
        VBoxManage modifyvm YourVmName --nested-hw-virt on
        ```

## Install
```
sudo sh InstallHost.run
```
