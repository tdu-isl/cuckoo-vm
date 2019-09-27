```
   ____ _   _  ____ _  _____   ___     __     ____  __
  / ___| | | |/ ___| |/ / _ \ / _ \    \ \   / /  \/  |
 | |   | | | | |   | ' / | | | | | |____\ \ / /| |\/| |
 | |___| |_| | |___| . \ |_| | |_| |_____\ V / | |  | |
  \____|\___/ \____|_|\_\___/ \___/       \_/  |_|  |_|

```

Cuckoo Sandbox の自動ビルドスクリプトです。

## Description
Cuckoo Sandboxは有用なマルウェア動的解析ツールですが、その環境構築は煩雑です。
VM上のUbuntuにリポジトリをクローンし、シェルスクリプト1つ実行すれば全自動でCuckoo Sandboxの実行環境を構築します。

## Requirement

- Ubuntu 18.04
- virtualbox 6.0

## Preparation

1.  VMware Pro または Virtualbox に建てられた Ubuntu の「ネスデッド VT-x/AMD-V」を有効化する。

        もし上記が有効化できない場合は、VirtualBox VMの保存フォルダ(VirtualBox VMsなど)にて、以下のようにVBoxManageを実行すると解決することがあります。
        VBoxManage modifyvm YourVmName --nested-hw-virt on

1.  Ubuntu 上で clone した InstallHost.run を実行する。  
     _ clone したファイル名は cuckoo-vm にしてください。  
     _ InstallHost.run が実行できない場合はファイル名変更後、再起動してください。


        sudo sh  InstallHost.run

1.  cucko cuckoo web を起動する

        cuckoo
        cuckoo web
