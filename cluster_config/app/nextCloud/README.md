 kubectl create namespace nextcloud                                                           



https://kauri.io/48-deploy-nextcloud-on-kuberbetes-the-selfhosted-d/f958350b22794419b09fc34c7284b02e/a

```
ka -f pv.yaml
ka -f pvc.yaml
```


helm install nextcloud  --namespace nextcloud stable/nextcloud -f values.yaml
