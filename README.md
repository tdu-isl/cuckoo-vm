```
   ____ _   _  ____ _  _____   ___     __     ____  __ 
  / ___| | | |/ ___| |/ / _ \ / _ \    \ \   / /  \/  |
 | |   | | | | |   | ' / | | | | | |____\ \ / /| |\/| |
 | |___| |_| | |___| . \ |_| | |_| |_____\ V / | |  | |
  \____|\___/ \____|_|\_\___/ \___/       \_/  |_|  |_|
                                                       
```

Cuckoo Sandboxの自動ビルドスクリプトです。

## Requirement
- Ubuntu 18.04
- virtualbox 6.0

## Preparation
1. VMware ProまたはVirtualboxに建てられたUbuntuの「ネスデッドVT-x/AMD-V」を有効化する。  

        もし上記が有効化できない場合は、VirtualBox VMの保存フォルダ(VirtualBox VMsなど)にて、以下のようにVBoxManageを実行すると解決することがあります。
        VBoxManage modifyvm YourVmName --nested-hw-virt on
1. Ubuntu上でcloneしたInstallHost.runを実行する。  
        * cloneしたファイル名はcuckoo-vmにしてください。  
        * InstallHost.runが実行できない場合はファイル名変更後、再起動してください。

 
        sudo sh  InstallHost.run

1. cucko cuckoo webを起動する  

        cuckoo  
        cuckoo web
