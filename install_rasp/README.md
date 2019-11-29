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
export CHEMIN_CARTE_SD="/dev/sda"
```
* flash card

```shell
sudo dd bs=1M if=2019-09-26-raspbian-buster-lite.img of=$CHEMIN_CARTE_SD status=progress conv=fsync
```

* mount boot partition and

```shell
cd /mount/$USER/boot
touch ssh
```

## 2 - install on raspberry
