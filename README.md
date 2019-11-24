# k8s-rasb-config

## 2 - enable ssh

* export the patht to the sd card

```
export BOOT_PATH_R="run/media/{username}/boot"
export DATA_PATH_R="run/media/{username}/boot"
```

* enable ssh

```
touch $BOOT_PATH_R/ssh
```



## 3 - config static IP:

choose an ip and

```
nano BOOT_PATH_R/cmdline.txt
```

add `ip=192.168.X.X` at the end of the file
