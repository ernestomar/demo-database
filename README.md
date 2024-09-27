# demo-database

This is a demo database, in order to test this example you need to follow these steps.

1. Start the database

```bash
docker run --name billing -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8.4
```

2. Connect to database

```bash
docker exec -it  billing mysql -u root -p
```

3. Create the database

```sql
CREATE DATABASE billing;
```

4. Connect to database

```sql
use billing;
```

5. Create the structure copying the data from `crebas.sql`

6. Verify if we have the tables

```sql
SHOW TABLES
```

7. Populate the  database with the content from `data.sql`

8. Play with your database.