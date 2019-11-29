# setting up an master or worker raspberry

## 1 - writing images on sd

 [raspbian_lite_latest]: https://raspberry-pi.fr/download/raspbian_lite_latest.zip

* format sd cart to ntfs

* unzip file

```shell
unzip raspbian_lite_latest.zip
```

* find the place of the sd card ( ex /dev/sda)
```shell
export PATH_CARD_SD="/dev/sda"
```
* flash card

```shell
sudo dd bs=1M if=2019-09-26-raspbian-buster-lite.img of=$PATH_CARD_SD status=progress conv=fsync
```

* mount boot partition and

```shell
cd /mount/$USER/boot
touch ssh
```

## 2 - install on raspberry


* first connect to raspberry via ssh

```shell
nmap -sP 192.168.1.1/24
ssh pi@RASP_IP
```

the init password is `raspberry`


* then change the root password

```shell
passwd
```
* update system and repo
```shell
sudo apt-get update && sudo apt-get upgrade
```

### install zsh ( and git)

```shell
sudo apt-get install git zsh
```

* making it default

```shell
sudo chsh -s /bin/zsh
```

* install oh_my_zsh

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
