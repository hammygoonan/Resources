# Bash Cheet Sheet

### System links:

```
	ln -sfv <file to link> <symlink>
```

* s - Create a symbolic link
* f - If the target file already exists, then unlink it so that the link may occur.
* v - Cause ln to be verbose, showing files as they are processed.


### Copy SSH Key

```pbcopy < ~/.ssh/id_rsa.pub```

### Reload Bash profile

```. ~/.bash_profile```

### Permissions

```
find < directory > -type d -exec chmod 755 {} \;
```
```
find < directory > -type f -exec chmod 644 {} \;
```

### Local HTTP Server

```
$ python3 -m http.server
```

### Generate random string

```
$ openssl rand -base64 56
```


### Postgres Commands

Import database with correct permissions:

```
$ psql -d <DATABASE NAME> -U <USERNAME> -f <FILENAME>
```

Export database without permissions:

```
pg_dump --no-owner --no-acl <DATABASE NAME> --host=<HOSTNAME> --port=5432 --username <USERNAME> --password > <FILENAME>
```

or

```
pg_dump <DB NAME> -U <USER> -O -x -Fc -W > database.sql
```

Drop database:

```
DROP SCHEMA public CASCADE;
CREATE SCHEMA public;

GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;
```

### MongoDB and Docker-compose

```
docker-compose exec -T <mongodb service> sh -c 'mongodump --archive' > db.dump
```

```
docker-compose exec -T <mongodb service> sh -c 'mongorestore --archive' < db.dump
```

### Services

```
$ journalctl -e -f -n40 -u someservice
```
