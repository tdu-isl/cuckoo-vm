[In Japanese](docs/README_JP.md)

```
   ____ _   _  ____ _  _____   ___     __     ____  __
  / ___| | | |/ ___| |/ / _ \ / _ \    \ \   / /  \/  |
 | |   | | | | |   | ' / | | | | | |____\ \ / /| |\/| |
 | |___| |_| | |___| . \ |_| | |_| |_____\ V / | |  | |
  \____|\___/ \____|_|\_\___/ \___/       \_/  |_|  |_|

```

This is the automatic building scripts of Cuckoo Sandbox.


## Description
Although Cuckoo Sandbox is a useful dynamic analysis tools of malwares, it's building is complicated.
Cloning this repository on VM(Ubuntu), executing one script build Cuckoo Sandbox automatically.

## Demo

<div align="center">
<img src="https://github.com/tdu-isl/cuckoo-vm/wiki/images/demo.gif" alt="属性" title="demo">
</div>

## Requirement

- VirtualBox 6.0

### Note
Now, VirtualBox "Nested VT-x/AMD-V" only support some CPUs, AMD CPUs.
If you used a non-supported CPU, you would install Ubuntu 18.04 directly on the host machine and proceed with the installation from the third installation step below.

## Install

1. Build Ubuntu 18.04 on VirtualBox
2. Enable "Nested VT-x/AMD-V" in the VM setting.
3. Clone this repository on VM
4. Start `install.sh` in this repository.

```sh
$ sh install.sh
```

5. After finishing 4, wake up cuckoo, cuckoo-web.

```sh
$ cuckoo
$ cuckoo web
```

## Installed Tools
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
