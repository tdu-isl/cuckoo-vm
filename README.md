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

- VirtualBox 6.0

## Install

1. VirtualBoxもしくはVMwar ProにUbuntu18.04のVMを作成する
2. 作成したVMの設定から「ネスデッド VT-x/AMD-V」を有効化する

もし上記が有効化できない場合は、VirtualBox VMの保存フォルダ("VirtualBox VMs"など)にて、以下のようにVBoxManageを実行すると解決することがあります。

```sh
VBoxManage modifyvm <your-vmname> --nested-hw-virt on
```

3. VM上にこのリポジトリをcloneする(ディレクトリ名は"cuckoo-vm"から変更しないこと)
4. cloneしたリポジトリ内のInstallHost.runを起動する

```sh
$ sh InstallHost.run
```

5. 4の終了後にcucko, cuckoo webをそれぞれ起動する

```sh
cuckoo
cuckoo web
```
