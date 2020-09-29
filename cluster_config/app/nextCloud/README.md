```
 kubectl create namespace nextcloud                                              ```

```

create pvc

```
ka -f pv.yaml
ka -f pvc.yaml
```

creat database

connect to database (look at readme in sql folder)

```psql
CREATE USER nextcloud WITH PASSWORD 'password' CREATEDB;
```

and connect with keycloak user
```shell
psql --host 127.0.0.1 -U nextcloud -d postgres -p 5432
```

and create the pg_database

```psql
CREATE DATABASE nextcloud;
```

deploye

```
 helm repo add nextcloud https://nextcloud.github.io/helm/
helm repo update  
```
helm install nextcloud  --namespace nextcloud nextcloud/nextcloud -f values.yaml -f secret-values.yaml
```
