# Keycloak


## Create a pg_database


connect to database (look at readme in sql folder)

```psql
CREATE USER keycloak WITH PASSWORD 'password' CREATEDB;
```

and connect with keycloak user
```shell
psql --host 127.0.0.1 -U keycloak -d postgres -p 5432
```

and create the pg_database

```psql
CREATE DATABASE keycloak;
```

## helm installation

```shell
helm repo add codecentric https://codecentric.github.io/helm-charts
```

```shell
helm install keycloak codecentric/keycloak --namespace keycloak -f values.yaml -f values-secret.yaml
```
