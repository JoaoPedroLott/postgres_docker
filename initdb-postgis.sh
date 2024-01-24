#!/bin/bash
set -e

# Crie a extensão PostGIS no banco de dados
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE EXTENSION IF NOT EXISTS public.postgis;
EOSQL