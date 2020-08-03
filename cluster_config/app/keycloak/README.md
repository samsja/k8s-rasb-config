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

```shell
helm install --name keycloak -f k8s/keycloak/<b>$ENVIRONMENT</b>/values.yaml --namespace default  stable/keycloak
```
