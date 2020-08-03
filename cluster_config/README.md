# *CLUSTER CONFIG*


## Connect to Dockerhub

```shell
docker login
```

```shell
kubectl create secret generic regcred \                                                      [336b237]
    --from-file=.dockerconfigjson=$HOME.docker/config.json \
    --type=kubernetes.io/dockerconfigjson

```

##  Install helm/tiller (arm):

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
