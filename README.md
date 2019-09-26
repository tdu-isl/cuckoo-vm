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
- virtualbox 6.0

## Preparation
1. VMware ProまたはVirtualboxに建てられたUbuntuの「ネスデッドVT-x/AMD-V」を有効化する。  

        もし上記が有効化できない場合は、VirtualBox VMの保存フォルダ(VirtualBox VMsなど)にて、以下のようにVBoxManageを実行すると解決することがあります。
        VBoxManage modifyvm YourVmName --nested-hw-virt on
1. ubuntu上でcloneしたInstalledHost.runを実行する。 

       cloneしたファイル名はcuckoo-vmにしてください。
       InstalledHost.runが実行できない場合はフォルダの名変更後、再起動してください。
1. cucko cuckoo webを起動する

        cuckoo-web起動時にエラーが出たら以下のコマンド両方使ってください。
        (下ではcloneした場所をデスクトップ直下を想定しています。  
        他の階層にある方は、InstallHost.runの下２行にある部分のpathを編集してください。)
        cp -f  ~/デスクトップ/cuckoo-vm/reporting.conf .cuckoo/conf
        cp -f  ~/デスクトップ/cuckoo-vm/virtualbox.conf .cuckoo/conf

## 

## Install
```
sudo sh  InstalledHost.run
```
