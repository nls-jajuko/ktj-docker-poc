#!/bin/bash

#set -e
#ON_ERROR_STOP=1 
psql -v --username "$POSTGRES_USER" -c 'CREATE DATABASE oskaridb;'
psql -v --username "$POSTGRES_USER" --dbname oskaridb -c 'CREATE USER oskari;'
psql -v --username "$POSTGRES_USER" --dbname oskaridb -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO oskari;'
psql -v --username "$POSTGRES_USER" --dbname oskaridb -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO oskari;'
psql -v --username "$POSTGRES_USER" --dbname oskaridb -c "ALTER USER oskari WITH PASSWORD 'oskari';"
psql -v --username "$POSTGRES_USER" --dbname oskaridb -c 'CREATE EXTENSION postgis'
pg_restore -d oskaridb /docker-entrypoint-initdb.d/demokanta
