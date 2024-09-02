#!/bin/bash

PG_USER="quantumgrid"
PG_PASSWORD="P4ssword!"
PG_DB="quantumgrid"

USERS=("postservice" "pageservice" "commentservice")
PASSWORD="P4ssword!"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER $PG_USER WITH PASSWORD '$PG_PASSWORD';
    CREATE DATABASE $PG_DB;
    GRANT ALL PRIVILEGES ON DATABASE $PG_DB TO $PG_USER;

    \connect $PG_DB;

    $(for USER in "${USERS[@]}"; do
        echo "CREATE USER $USER WITH PASSWORD '$PASSWORD';"
        echo "CREATE SCHEMA $USER AUTHORIZATION $USER;"
        echo "GRANT ALL PRIVILEGES ON SCHEMA $USER TO $USER;"
    done)
EOSQL

echo "PostgreSQL initial setup is complete."
