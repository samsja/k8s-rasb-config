

(deprecated)
```shell
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.16.0/cert-manager.crds.yaml
```

(good)

```shell
helm repo add jetstack https://charts.jetstack.io && helm repo update
```
```shell
helm install cert-manager jetstack/cert-manager --namespace kube-system   --set installCRDs=true--version v0.16.0
```
