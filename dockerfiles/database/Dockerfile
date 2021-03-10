FROM postgres:latest

ENV POSTGRES_USER="postgres" POSTGRES_PASSWORD="Postgres10!!"

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql
