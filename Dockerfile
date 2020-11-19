FROM alpine:3.12

RUN apk add --no-cache \
    bash \
    gzip \
    mysql-client \
    mariadb-connector-c \
    postgresql-client

ENV DB_BACKUP_CRON_SCHEDULE="0 0 * * *"
ENV DB_BACKUP_USER=root
ENV DB_BACKUP_MAX_DAYS=30
ENV DB_BACKUP_MAX_FILES=30

COPY docker-entrypoint bin /usr/local/bin/
COPY lib /usr/local/lib

VOLUME [ "/data/backup" ]

ENTRYPOINT [ "docker-entrypoint" ]
