# Bash Cheet Sheet

### System links:

```
	ln -sfv <file to link> <symlink>
```

* s - Create a symbolic link
* f - If the target file already exists, then unlink it so that the link may occur.
* v - Cause ln to be verbose, showing files as they are processed.

### See what processes are running

```
  htop
```

or

```
  ps aux | grep php
```

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


# Python Related Commands

Create new virtual env with Python3:

```
$ mkvirtualenv --python=/usr/local/bin/python3 <env>
```

Format JSON in terminal:

```
$ curl -i -H "Accept: application/json" -X POST -d "first_name=Hammy" < JSON URL > | python -m json.tool
```

Set python path to current directory:

```
$ export PYTHONPATH=$PYTHONPATH:$PWD
```

Simple HTTP Server:

```
$ python -m SimpleHTTPServer 8000
```

# Postgres Commands

Import database with correct permissions:

```
$ psql -d <DATABASE NAME> -U <USERNAME> -f <FILENAME>
```

Export database without permissions:

```
pg_dump --no-owner --no-acl <DATABASE NAME> --host=<HOSTNAME> --port=5432 --username <USERNAME> --password > <FILENAME>
```

# MongoDB and Docker-compose

```
docker-compose exec -T <mongodb service> sh -c 'mongodump --archive' > db.dump
```

```
docker-compose exec -T <mongodb service> sh -c 'mongorestore --archive' < db.dump
```



# Services

```
$ journalctl -e -f -n40 -u someservice
```

# Generate random string

```
$ openssl rand -base64 56
```
