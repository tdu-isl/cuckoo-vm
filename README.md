```
   ____ _   _  ____ _  _____   ___     __     ____  __
  / ___| | | |/ ___| |/ / _ \ / _ \    \ \   / /  \/  |
 | |   | | | | |   | ' / | | | | | |____\ \ / /| |\/| |
 | |___| |_| | |___| . \ |_| | |_| |_____\ V / | |  | |
  \____|\___/ \____|_|\_\___/ \___/       \_/  |_|  |_|

```

Cuckoo Sandbox の自動ビルドスクリプトです。

## Description

Cuckoo Sandbox は有用なマルウェア動的解析ツールですが、その環境構築は煩雑です。
VM 上の Ubuntu にリポジトリをクローンし、シェルスクリプト 1 つ実行すれば全自動で Cuckoo Sandbox の実行環境を構築します。

## demo

<div align="center">
<img src="https://github.com/tdu-isl/cuckoo-vm/wiki/images/demo.gif" alt="属性" title="demo">
</div>

## Requirement

- VirtualBox 6.0

### Note

現在、VirtualBox の「ネステッド VT-x/AMD-V」オプションは AMD 製の CPU を中心とした一部の CPU のみサポートされています。
サポートされていない CPU をお使いの場合は、ホストマシンに直接 Ubuntu18.04 をインストールし下記インストール手順の 3 番目からインストール作業を進めてください。

## Install

1. VirtualBox に Ubuntu18.04 の VM を作成する
2. 作成した VM の設定から「ネステッド VT-x/AMD-V」を有効化する
3. VM 上にこのリポジトリを clone する(ディレクトリ名は"cuckoo-vm"から変更しないこと)
4. clone したリポジトリ内の install.sh を起動する

```sh
$ sh install.sh
```

5. 4 の終了後に cucko, cuckoo web をそれぞれ起動する

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
