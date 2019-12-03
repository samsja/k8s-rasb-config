# Installing k3s

## install k3sup on laptop controller:

```shell
curl -sLS https://get.k3sup.dev | sh
sudo install k3sup /usr/local/bin/
```

```shell
k3sup install --ip $SERVER_IP --user $USER
k3sup join --ip $AGENT_IP --server-ip $SERVER_IP --user $USER
```
