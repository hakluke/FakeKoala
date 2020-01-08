FROM postgres:12.1-alpine

COPY ./sql/init-db.sql /docker-entrypoint-initdb.d/
COPY ./data/*.csv /data/
EXPOSE 5432
