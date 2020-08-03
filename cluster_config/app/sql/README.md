'''shell
 kubectl create namespace database
'''


```shell
helm repo add bitnami https://charts.bitnami.com/bitnami    
```

'''shell
helm install --namespace "database"  main-psql bitnami/postgresql -f values.yaml '''
'''



PostgreSQL can be accessed via port 5432 on the following DNS name from within your cluster:

    main-psql-postgresql.database.svc.cluster.local - Read/Write connection

To get the password for "postgres" run:

    export POSTGRES_PASSWORD=$(kubectl get secret --namespace database main-psql-postgresql -o jsonpath="{.data.postgresql-password}" | base64 --decode)

To connect to your database run the following command:

    kubectl run main-psql-postgresql-client --rm --tty -i --restart='Never' --namespace database --image docker.io/postgres:12 --env="PGPASSWORD=$POSTGRES_PASSWORD" --command -- psql --host main-psql-postgresql -U postgres -d postgres -p 5432



To connect to your database from outside the cluster execute the following commands:

    kubectl port-forward --namespace database svc/main-psql-postgresql 5432:5432 &
    PGPASSWORD="$POSTGRES_PASSWORD" psql --host 127.0.0.1 -U postgres -d postgres -p 5432

* then create a user and a database
