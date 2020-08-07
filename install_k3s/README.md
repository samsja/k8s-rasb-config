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

## merge both old kubeconfig ( if existing) to add new rasp cluster:

```shell
cp ~/.kube/config ~/.kube/old_config
KUBECONFIG=~/.kube/config:~/someotherconfig
kubectl config view --flatten > ~/.kube/configs
```


## when restart to avoid NotReady status:

```shell
sudo systemctl enable k3s
```


if not working

```shell
sudo systemctl restart k3s
```
