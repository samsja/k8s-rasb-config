# *MONITORING*

## k8s dashboard



```shell
arkade install kubernetes-dashboard
```




(deprecated)
```shell
helm install --name=k3s-dash --namespace=kube-system stable/kubernetes-dashboard -f values.yaml
```
* token d'authenfication

```shell
kb describe -n kube-system secrets k3s-dash-kubernetes-dashboard-token-4kp87
```
