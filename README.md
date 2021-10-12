# DB backup

DB backup script in docker

## Environment Variables

| Name                       | Description                                   | Default              |
|----------------------------|-----------------------------------------------|----------------------|
| `DB_TYPE`                  | DB type (`mariadb`, `postgresql`)             | `""`                 |
| `DB_HOST`                  | DB host                                       | `""`                 |
| `DB_PORT`                  | DB port                                       | Depends on `DB_TYPE` |
| `DB_DATABASE`              | Database to backup                            | `""`                 |
| `DB_USER`                  | DB username                                   | `""`                 |
| `DB_PASSWORD`              | DB password                                   | `""`                 |
| `DB_BACKUP_EXTRA_OPTS`     | Extra arguments to pass to the backup command | `""`                 |
| `DB_BACKUP_USER`           | The user who run the script (via cronjob)     | `root`               |
| `DB_BACKUP_MAX_FILES`      | Maximum number of backup files to keep        | `10`                 |
| `DB_BACKUP_MAX_DAYS`       | Maximum number of days to keep backup files   | `10`                 |
| `DB_BACKUP_FILE_EXTENSION` | Extension for the backup file                 | `.sql`               |
| `DB_BACKUP_COMPRESSION`    | Compression method (`none`, `gzip`)           | `none`               |
