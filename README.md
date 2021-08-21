# Directory Backuper docker image
Backup&Compress a directory regularly. 

## Enviroments
| Variable   |   Description      |
|----------|:-------------:|
| DRIVER   | the backup compression method `tar`, `tar.gz`, `tar.bz2`, `tar.xz` |
| DURATION | Linux `sleep` time format |
| COUNT | Number of last backup that must be saved to volume. if number become longer than this value the first created backup file will be removed |


## Sample Docker-Compose file
```
version: "3.8"
services:
  backuper:
    image: gitiserver/dir-backup:1.0
    environment:
      DRIVER: "tar.gz"
      DURATION: "1d"
      COUNT: 5
    volumes:
      - "YourPathForBackup:/var/data:ro"
      - "backups_storage:/var/scripts/backup/backups"
volumes:
  backups_storage:
```