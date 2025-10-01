docker exec db-db-1 /bin/sh -c "pg_dump -h 127.0.0.1 -U userName -W -d dbname -v -Fc > /var/lib/postgresql/data/dump.dat"

docker exec db-db-2 /bin/sh -c "pg_restore -h 127.0.0.1 -U userName -v -d dbname < /var/lib/postgresql/data/dump.dat"