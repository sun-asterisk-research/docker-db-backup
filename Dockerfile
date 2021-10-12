FROM alpine:3.13

RUN apk add --no-cache \
    bash \
    gzip \
    mysql-client \
    mariadb-connector-c \
    postgresql-client \
    tzdata

ENV DB_BACKUP_CRON_SCHEDULE="0 0 * * *"
ENV DB_BACKUP_USER=root
ENV DB_BACKUP_FILE_EXTENSION=".sql"
ENV DB_BACKUP_COMPRESSION=none
ENV DB_BACKUP_MAX_DAYS=10
ENV DB_BACKUP_MAX_FILES=10

COPY docker-entrypoint bin /usr/local/bin/
COPY lib /usr/local/lib

VOLUME [ "/data/backup" ]

ENTRYPOINT [ "docker-entrypoint" ]
