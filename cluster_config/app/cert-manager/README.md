

(deprecated)
```shell
kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v0.16.0/cert-manager.crds.yaml
```

(good)

```shell
helm repo add jetstack https://charts.jetstack.io && helm repo update
```

```
kubectl create namespace cert-manager
```

```shell
helm install cert-manager jetstack/cert-manager --namespace cert-manager   --set installCRDs=true --version v1.0.1
```

```shell
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=home.samsja.fr"

```
```shell
kubectl create secret tls samsja-cloud-tls --key="tls.key" --cert="tls.crt"
```
