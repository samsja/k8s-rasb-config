# *CLUSTER CONFIG*

## 1. Install helm/tiller (arm):

* create tiller service serviceaccount

```shell
kubectl -n kube-system create serviceaccount tiller
```

 and give it cluste admin role:

```shell
 kubectl create -n kube-system clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
```

init tiller with helm:

```shelm
helm init --service-account ti
ller --tiller-image jessestuart/tiller:latest-arm
```
