FROM postgres:12.1-alpine

COPY ./sql/init-db.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
