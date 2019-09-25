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
~~そうしないと"VT-x is not avaliable"っていうエラーが出てきます．~~
1. ubuntu上でcloneしたmerged.runを実行する。 

       ファイル名はcuckoo-vmにすること
1. cucko cuckoo webを起動する

## 

## Install
```
sudo sh merged.run
```
