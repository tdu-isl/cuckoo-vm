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

### Note
現在、VirtualBoxの「ネステッド VT-x/AMD-V」オプションはAMD製のCPUを中心とした一部のCPUのみサポートされています．
サポートされていないCPUにおいては入れ子構造で仮想環境を構築することができない点にご注意ください。

## Install

1. VirtualBoxにUbuntu18.04のVMを作成する
2. 作成したVMの設定から「ネステッド VT-x/AMD-V」を有効化する
3. VM上にこのリポジトリをcloneする(ディレクトリ名は"cuckoo-vm"から変更しないこと)
4. cloneしたリポジトリ内のInstallHost.runを起動する

```sh
$ sh InstallHost.run
```

5. 4の終了後にcucko, cuckoo webをそれぞれ起動する

```sh
$ cuckoo
$ cuckoo web
```

## Licence

[MIT](https://github.com/tdu-isl/cuckoo-vm/blob/develop/LICENSE)

## Author

- [appBana](https://github.com/howmuch515)
- [Syuukakou](https://github.com/Syuukakou)
- [ro-iida](https://github.com/rotten3156)
- [m-book](https://github.com/m-book)
- [waricopy](https://github.com/waricopy)
- [yuk1h1raA](https://github.com/yuk1h1ra)
