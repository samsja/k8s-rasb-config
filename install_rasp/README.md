# setting up an master or worker raspberry

##  writing images on sd

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
cd /media/$USER/boot
touch ssh
```

##  install on raspberry


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

change the hostname :

edit :
 - /etc/hostname
 - /etc/hosts

 and replace raspbery pi with the new hostname

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

and add lambda mod theme

```shell
cd /home/pi/.oh-my-zsh/custom/themes
curl -fsSL https://raw.githubusercontent.com/halfo/lambda-mod-zsh-theme/master/lambda-mod.zsh-theme > lambda-mod.zsh-theme
```

then change theme in .zshrc :
 ``

and

```shell
source .zshrc
```

### customize the logging menu

```shell
sudo apt-get install neofetch -y
sudo bash -c $'echo "#!/bin/sh
 \n neofetch --source /home/pi/other/pictures/salameche.txt" >> /etc/update-motd.d/05-neofetch '
sudo chmod +x /etc/update-motd.d/05-neofetch
```

and add #!/bin/sh at the begining of 05-neofetch

and finaly add custom ascii art

```shell
sudo nano /.config/neofetch/config.conf
```

edit ~/.config/neofetch/config.conf gand add alias:
`image_source="/home/pi/other/pictures/salameche.txt" `
